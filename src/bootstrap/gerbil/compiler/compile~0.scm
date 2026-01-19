(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/compile::timestamp 1768863413)
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
        (letrec ((_%hash-e159650%_
                  (lambda (_%id159652%_)
                    (symbol-hash
                     (let () (declare (not safe)) (gx#stx-e _%id159652%_))))))
          (let ()
            (declare (not safe))
            (make-hash-table__%
             '#f
             absent-value
             absent-value
             gx#bound-identifier=?
             _%hash-e159650%_
             absent-value
             absent-value
             absent-value
             absent-value)))))
    (define gxc#::collect-bindings::t
      (let ((__tmp161037 (list gxc#::void::t))
            (__tmp161036 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-bindings::t
         '::collect-bindings
         __tmp161037
         '()
         __tmp161036
         '#f)))
    (define gxc#::collect-bindings?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-bindings::t)))
    (define gxc#make-::collect-bindings
      (lambda _%$args159646%_
        (apply make-instance gxc#::collect-bindings::t _%$args159646%_)))
    (define gxc#::collect-bindings-bind-methods!
      (let ((__tmp161038
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
        (__make-atomic-promise __tmp161038)))
    (define gxc#apply-collect-bindings
      (lambda (_%stx159638%_)
        (force gxc#::collect-bindings-bind-methods!)
        (let* ((_%self159641%_
                (let ((__obj161012
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-bindings::t))))
                  __obj161012))
               (__tmp161039
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self159641%_ _%stx159638%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp161039
           gxc#current-compile-method
           _%self159641%_))))
    (define gxc#::lift-modules::t
      (let ((__tmp161041 (list gxc#::void::t))
            (__tmp161040 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::lift-modules::t
         '::lift-modules
         __tmp161041
         '(modules)
         __tmp161040
         '#f)))
    (define gxc#::lift-modules?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::lift-modules::t)))
    (define gxc#make-::lift-modules
      (lambda _%$args159635%_
        (apply make-instance gxc#::lift-modules::t _%$args159635%_)))
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
      (let ((__tmp161042
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
        (__make-atomic-promise __tmp161042)))
    (define gxc#apply-lift-modules__%
      (lambda (_%@@keywords159609%_ _%modules159606159610%_ _%stx159612%_)
        (let ((_%modules159615%_
               (if (eq? _%modules159606159610%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'modules:))
                   _%modules159606159610%_)))
          (force gxc#::lift-modules-bind-methods!)
          (let* ((_%self159617%_
                  (let ((__obj161014
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::lift-modules::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj161014
                       _%modules159615%_
                       '1
                       '#f
                       '#f))
                    __obj161014))
                 (__tmp161043
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self159617%_ _%stx159612%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp161043
             gxc#current-compile-method
             _%self159617%_)))))
    (define gxc#apply-lift-modules__@
      (lambda (_%@@keywords159624%_ . _%args159625%_)
        (apply gxc#apply-lift-modules__%
               _%@@keywords159624%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords159624%_
                  'modules:
                  absent-value))
               _%args159625%_)))
    (define gxc#apply-lift-modules
      (lambda _%args159607159631%_
        (apply keyword-dispatch
               '#(modules:)
               gxc#apply-lift-modules__@
               _%args159607159631%_)))
    (define gxc#::find-runtime-code::t
      (let ((__tmp161045 (list)) (__tmp161044 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-runtime-code::t
         '::find-runtime-code
         __tmp161045
         '()
         __tmp161044
         '#f)))
    (define gxc#::find-runtime-code?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-runtime-code::t)))
    (define gxc#make-::find-runtime-code
      (lambda _%$args159602%_
        (apply make-instance gxc#::find-runtime-code::t _%$args159602%_)))
    (define gxc#::find-runtime-code-bind-methods!
      (let ((__tmp161046
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
        (__make-atomic-promise __tmp161046)))
    (define gxc#apply-find-runtime-code
      (lambda (_%stx159594%_)
        (force gxc#::find-runtime-code-bind-methods!)
        (let* ((_%self159597%_
                (let ((__obj161016
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-runtime-code::t))))
                  __obj161016))
               (__tmp161047
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self159597%_ _%stx159594%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp161047
           gxc#current-compile-method
           _%self159597%_))))
    (define gxc#::find-lambda-expression::t
      (let ((__tmp161049 (list gxc#::false::t))
            (__tmp161048 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-lambda-expression::t
         '::find-lambda-expression
         __tmp161049
         '()
         __tmp161048
         '#f)))
    (define gxc#::find-lambda-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-lambda-expression::t)))
    (define gxc#make-::find-lambda-expression
      (lambda _%$args159591%_
        (apply make-instance gxc#::find-lambda-expression::t _%$args159591%_)))
    (define gxc#::find-lambda-expression-bind-methods!
      (let ((__tmp161050
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
        (__make-atomic-promise __tmp161050)))
    (define gxc#apply-find-lambda-expression
      (lambda (_%stx159583%_)
        (force gxc#::find-lambda-expression-bind-methods!)
        (let* ((_%self159586%_
                (let ((__obj161018
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-lambda-expression::t))))
                  __obj161018))
               (__tmp161051
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self159586%_ _%stx159583%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp161051
           gxc#current-compile-method
           _%self159586%_))))
    (define gxc#::count-values::t
      (let ((__tmp161053 (list gxc#::false-expression::t))
            (__tmp161052 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::count-values::t
         '::count-values
         __tmp161053
         '()
         __tmp161052
         '#f)))
    (define gxc#::count-values?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::count-values::t)))
    (define gxc#make-::count-values
      (lambda _%$args159580%_
        (apply make-instance gxc#::count-values::t _%$args159580%_)))
    (define gxc#::count-values-bind-methods!
      (let ((__tmp161054
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
        (__make-atomic-promise __tmp161054)))
    (define gxc#apply-count-values
      (lambda (_%stx159572%_)
        (force gxc#::count-values-bind-methods!)
        (let* ((_%self159575%_
                (let ((__obj161020
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::count-values::t))))
                  __obj161020))
               (__tmp161055
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self159575%_ _%stx159572%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp161055
           gxc#current-compile-method
           _%self159575%_))))
    (define gxc#::generate-runtime-empty::t
      (let ((__tmp161056 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-empty::t
         '::generate-runtime-empty
         __tmp161056
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime-empty?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-empty::t)))
    (define gxc#make-::generate-runtime-empty
      (lambda _%$args159569%_
        (apply make-instance gxc#::generate-runtime-empty::t _%$args159569%_)))
    (define gxc#::generate-runtime-empty-bind-methods!
      (let ((__tmp161057
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
        (__make-atomic-promise __tmp161057)))
    (define gxc#::generate-loader::t
      (let ((__tmp161059 (list gxc#::generate-runtime-empty::t))
            (__tmp161058 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-loader::t
         '::generate-loader
         __tmp161059
         '()
         __tmp161058
         '#f)))
    (define gxc#::generate-loader?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-loader::t)))
    (define gxc#make-::generate-loader
      (lambda _%$args159565%_
        (apply make-instance gxc#::generate-loader::t _%$args159565%_)))
    (define gxc#::generate-loader-bind-methods!
      (let ((__tmp161060
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
        (__make-atomic-promise __tmp161060)))
    (define gxc#apply-generate-loader
      (lambda (_%stx159557%_)
        (force gxc#::generate-loader-bind-methods!)
        (let* ((_%self159560%_
                (let ((__obj161023
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-loader::t))))
                  __obj161023))
               (__tmp161061
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self159560%_ _%stx159557%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp161061
           gxc#current-compile-method
           _%self159560%_))))
    (define gxc#::generate-runtime::t
      (let ((__tmp161062 (list gxc#::generate-runtime-empty::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime::t
         '::generate-runtime
         __tmp161062
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime::t)))
    (define gxc#make-::generate-runtime
      (lambda _%$args159554%_
        (apply make-instance gxc#::generate-runtime::t _%$args159554%_)))
    (define gxc#::generate-runtime-bind-methods!
      (let ((__tmp161063
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
        (__make-atomic-promise __tmp161063)))
    (define gxc#apply-generate-runtime
      (lambda (_%stx159546%_)
        (force gxc#::generate-runtime-bind-methods!)
        (let* ((_%self159549%_
                (let ((__obj161025
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime::t))))
                  __obj161025))
               (__tmp161064
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self159549%_ _%stx159546%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp161064
           gxc#current-compile-method
           _%self159549%_))))
    (define gxc#::generate-runtime-phi::t
      (let ((__tmp161066 (list gxc#::generate-runtime::t))
            (__tmp161065 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-phi::t
         '::generate-runtime-phi
         __tmp161066
         '()
         __tmp161065
         '#f)))
    (define gxc#::generate-runtime-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-phi::t)))
    (define gxc#make-::generate-runtime-phi
      (lambda _%$args159543%_
        (apply make-instance gxc#::generate-runtime-phi::t _%$args159543%_)))
    (define gxc#::generate-runtime-phi-bind-methods!
      (let ((__tmp161067
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
        (__make-atomic-promise __tmp161067)))
    (define gxc#apply-generate-runtime-phi
      (lambda (_%stx159535%_)
        (force gxc#::generate-runtime-phi-bind-methods!)
        (let* ((_%self159538%_
                (let ((__obj161027
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime-phi::t))))
                  __obj161027))
               (__tmp161068
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self159538%_ _%stx159535%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp161068
           gxc#current-compile-method
           _%self159538%_))))
    (define gxc#::collect-expression-refs::t
      (let ((__tmp161069 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-expression-refs::t
         '::collect-expression-refs
         __tmp161069
         '(table)
         '()
         '#f)))
    (define gxc#::collect-expression-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-expression-refs::t)))
    (define gxc#make-::collect-expression-refs
      (lambda _%$args159532%_
        (apply make-instance
               gxc#::collect-expression-refs::t
               _%$args159532%_)))
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
      (let ((__tmp161070
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
        (__make-atomic-promise __tmp161070)))
    (define gxc#apply-collect-expression-refs__%
      (lambda (_%@@keywords159506%_ _%table159503159507%_ _%stx159509%_)
        (let ((_%table159512%_
               (if (eq? _%table159503159507%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table159503159507%_)))
          (force gxc#::collect-expression-refs-bind-methods!)
          (let* ((_%self159514%_
                  (let ((__obj161029
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#::collect-expression-refs::t
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj161029
                       _%table159512%_
                       '1
                       '#f
                       '#f))
                    __obj161029))
                 (__tmp161071
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self159514%_ _%stx159509%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp161071
             gxc#current-compile-method
             _%self159514%_)))))
    (define gxc#apply-collect-expression-refs__@
      (lambda (_%@@keywords159521%_ . _%args159522%_)
        (apply gxc#apply-collect-expression-refs__%
               _%@@keywords159521%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords159521%_
                  'table:
                  absent-value))
               _%args159522%_)))
    (define gxc#apply-collect-expression-refs
      (lambda _%args159504159528%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-expression-refs__@
               _%args159504159528%_)))
    (define gxc#::generate-meta::t
      (let ((__tmp161073 (list gxc#::void-expression::t))
            (__tmp161072 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta::t
         '::generate-meta
         __tmp161073
         '(state)
         __tmp161072
         '#f)))
    (define gxc#::generate-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta::t)))
    (define gxc#make-::generate-meta
      (lambda _%$args159499%_
        (apply make-instance gxc#::generate-meta::t _%$args159499%_)))
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
      (let ((__tmp161074
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
        (__make-atomic-promise __tmp161074)))
    (define gxc#apply-generate-meta__%
      (lambda (_%@@keywords159473%_ _%state159470159474%_ _%stx159476%_)
        (let ((_%state159479%_
               (if (eq? _%state159470159474%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state159470159474%_)))
          (force gxc#::generate-meta-bind-methods!)
          (let* ((_%self159481%_
                  (let ((__obj161031
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj161031
                       _%state159479%_
                       '1
                       '#f
                       '#f))
                    __obj161031))
                 (__tmp161075
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self159481%_ _%stx159476%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp161075
             gxc#current-compile-method
             _%self159481%_)))))
    (define gxc#apply-generate-meta__@
      (lambda (_%@@keywords159488%_ . _%args159489%_)
        (apply gxc#apply-generate-meta__%
               _%@@keywords159488%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords159488%_
                  'state:
                  absent-value))
               _%args159489%_)))
    (define gxc#apply-generate-meta
      (lambda _%args159471159495%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta__@
               _%args159471159495%_)))
    (define gxc#::generate-meta-phi::t
      (let ((__tmp161077 (list)) (__tmp161076 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta-phi::t
         '::generate-meta-phi
         __tmp161077
         '(state)
         __tmp161076
         '#f)))
    (define gxc#::generate-meta-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta-phi::t)))
    (define gxc#make-::generate-meta-phi
      (lambda _%$args159466%_
        (apply make-instance gxc#::generate-meta-phi::t _%$args159466%_)))
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
      (let ((__tmp161078
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
        (__make-atomic-promise __tmp161078)))
    (define gxc#apply-generate-meta-phi__%
      (lambda (_%@@keywords159440%_ _%state159437159441%_ _%stx159443%_)
        (let ((_%state159446%_
               (if (eq? _%state159437159441%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state159437159441%_)))
          (force gxc#::generate-meta-phi-bind-methods!)
          (let* ((_%self159448%_
                  (let ((__obj161033
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta-phi::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj161033
                       _%state159446%_
                       '1
                       '#f
                       '#f))
                    __obj161033))
                 (__tmp161079
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self159448%_ _%stx159443%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp161079
             gxc#current-compile-method
             _%self159448%_)))))
    (define gxc#apply-generate-meta-phi__@
      (lambda (_%@@keywords159455%_ . _%args159456%_)
        (apply gxc#apply-generate-meta-phi__%
               _%@@keywords159455%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords159455%_
                  'state:
                  absent-value))
               _%args159456%_)))
    (define gxc#apply-generate-meta-phi
      (lambda _%args159438159462%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta-phi__@
               _%args159438159462%_)))
    (define gxc#collect-bindings-define-values%
      (lambda (_%self159366%_ _%stx159367%_)
        (let* ((_%g159369159386%_
                (lambda (_%g159370159383%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g159370159383%_))))
               (_%g159368159433%_
                (lambda (_%g159370159389%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g159370159389%_))
                      (let ((_%e159373159391%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g159370159389%_))))
                        (let ((_%hd159374159394%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e159373159391%_)))
                              (_%tl159375159396%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e159373159391%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl159375159396%_))
                              (let ((_%e159376159399%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl159375159396%_))))
                                (let ((_%hd159377159402%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e159376159399%_)))
                                      (_%tl159378159404%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e159376159399%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl159378159404%_))
                                      (let ((_%e159379159407%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl159378159404%_))))
                                        (let ((_%hd159380159410%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e159379159407%_)))
                                              (_%tl159381159412%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e159379159407%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl159381159412%_))
                                              ((lambda (_%L159415%_
                                                        _%L159416%_)
                                                 (let ((__tmp161080
                                                        (lambda (_%bind159431%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#identifier? _%bind159431%_))
                      (gxc#add-module-binding! _%bind159431%_ '#f)
                      '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#stx-for-each1
                                                    __tmp161080
                                                    _%L159416%_)))
                                               _%hd159380159410%_
                                               _%hd159377159402%_)
                                              (_%g159369159386%_
                                               _%g159370159389%_))))
                                      (_%g159369159386%_ _%g159370159389%_))))
                              (_%g159369159386%_ _%g159370159389%_))))
                      (_%g159369159386%_ _%g159370159389%_)))))
          (_%g159368159433%_ _%stx159367%_))))
    (define gxc#collect-bindings-define-syntax%
      (lambda (_%self159298%_ _%stx159299%_)
        (let* ((_%g159301159318%_
                (lambda (_%g159302159315%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g159302159315%_))))
               (_%g159300159363%_
                (lambda (_%g159302159321%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g159302159321%_))
                      (let ((_%e159305159323%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g159302159321%_))))
                        (let ((_%hd159306159326%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e159305159323%_)))
                              (_%tl159307159328%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e159305159323%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl159307159328%_))
                              (let ((_%e159308159331%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl159307159328%_))))
                                (let ((_%hd159309159334%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e159308159331%_)))
                                      (_%tl159310159336%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e159308159331%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl159310159336%_))
                                      (let ((_%e159311159339%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl159310159336%_))))
                                        (let ((_%hd159312159342%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e159311159339%_)))
                                              (_%tl159313159344%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e159311159339%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl159313159344%_))
                                              ((lambda (_%L159347%_
                                                        _%L159348%_)
                                                 (gxc#add-module-binding!
                                                  _%L159348%_
                                                  '#t))
                                               _%hd159312159342%_
                                               _%hd159309159334%_)
                                              (_%g159301159318%_
                                               _%g159302159321%_))))
                                      (_%g159301159318%_ _%g159302159321%_))))
                              (_%g159301159318%_ _%g159302159321%_))))
                      (_%g159301159318%_ _%g159302159321%_)))))
          (_%g159300159363%_ _%stx159299%_))))
    (define gxc#lift-modules-module%
      (lambda (_%self159240%_ _%stx159241%_)
        (let* ((_%g159243159257%_
                (lambda (_%g159244159254%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g159244159254%_))))
               (_%g159242159295%_
                (lambda (_%g159244159260%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g159244159260%_))
                      (let ((_%e159247159262%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g159244159260%_))))
                        (let ((_%hd159248159265%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e159247159262%_)))
                              (_%tl159249159267%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e159247159262%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl159249159267%_))
                              (let ((_%e159250159270%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl159249159267%_))))
                                (let ((_%hd159251159273%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e159250159270%_)))
                                      (_%tl159252159275%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e159250159270%_))))
                                  ((lambda (_%L159278%_ _%L159279%_)
                                     (let ((_%ctx159292%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-local-e__0
                                               _%L159279%_))))
                                       (set-box!
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self159240%_
                                           'modules))
                                        (cons _%ctx159292%_
                                              (unbox (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self159240%_
                                                        'modules)))))
                                       (let ((__tmp161081
                                              (lambda ()
                                                (let ((__tmp161082
                                                       (##structure-ref
                                                        _%ctx159292%_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self159240%_
                                                   __tmp161082)))))
                                         (declare (not safe))
                                         (call-with-parameters__1
                                          __tmp161081
                                          gx#current-expander-context
                                          _%ctx159292%_))))
                                   _%tl159252159275%_
                                   _%hd159251159273%_)))
                              (_%g159243159257%_ _%g159244159260%_))))
                      (_%g159243159257%_ _%g159244159260%_)))))
          (_%g159242159295%_ _%stx159241%_))))
    (define gxc#current-compile-decls-unsafe?
      (lambda ()
        (let ((_%decls159193159195%_
               (let () (declare (not safe)) (gxc#current-compile-decls))))
          (if _%decls159193159195%_
              (let ((_%decls159198%_ _%decls159193159195%_))
                (let _%lp159200%_ ((_%rest159202%_ _%decls159198%_))
                  (let* ((_%rest159203159211%_ _%rest159202%_)
                         (_%else159205159219%_ (lambda () '#f))
                         (_%K159207159228%_
                          (lambda (_%decls159222%_ _%decl159223%_)
                            (if (equal? _%decl159223%_ '(not safe))
                                '#t
                                (if (equal? _%decl159223%_ '(safe))
                                    '#f
                                    (_%lp159200%_ _%decls159222%_))))))
                    (if (pair? _%rest159203159211%_)
                        (let ((_%hd159208159231%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest159203159211%_)))
                              (_%tl159209159233%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest159203159211%_))))
                          (let* ((_%decl159236%_ _%hd159208159231%_)
                                 (_%decls159238%_ _%tl159209159233%_))
                            (_%K159207159228%_
                             _%decls159238%_
                             _%decl159236%_)))
                        (_%else159205159219%_)))))
              '#f))))
    (define gxc#add-module-binding!
      (lambda (_%id159187%_ _%syntax?159188%_)
        (let ((_%eid159190%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id159187%_))
                '1
                gx#binding::t
                '#f))
              (_%ht159191%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-symbol-table))
                '2
                gxc#symbol-table::t
                '#f)))
          (if (let () (declare (not safe)) (interned-symbol? _%eid159190%_))
              '#!void
              (let ((__tmp161083
                     (let ((__tmp161084
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__0
                               _%eid159190%_))))
                       (declare (not safe))
                       (gx#make-binding-id__1 __tmp161084 _%syntax?159188%_))))
                (declare (not safe))
                (hash-put! _%ht159191%_ _%eid159190%_ __tmp161083))))))
    (define gxc#generate-runtime-identifier
      (lambda (_%id159185%_)
        (gxc#generate-runtime-identifier-key
         (let () (declare (not safe)) (gx#core-identifier-key _%id159185%_)))))
    (define gxc#generate-runtime-identifier-key
      (lambda (_%key159140%_)
        (if (let () (declare (not safe)) (interned-symbol? _%key159140%_))
            _%key159140%_
            (if (uninterned-symbol? _%key159140%_)
                (let ()
                  (declare (not safe))
                  (gxc#generate-runtime-gensym-reference__0 _%key159140%_))
                (let* ((_%key159144159151%_ _%key159140%_)
                       (_%E159146159155%_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (error '"No clause matching"
                                   _%key159144159151%_
                                   '([eid . mark])))
                          '#!void))
                       (_%K159147159173%_
                        (lambda (_%mark159158%_ _%eid159159%_)
                          (let ((_%$e159161%_
                                 (##structure-ref
                                  _%mark159158%_
                                  '1
                                  gx#expander-mark::t
                                  '#f)))
                            (if _%$e159161%_
                                ((lambda (_%ht159164%_)
                                   (let ((_%$e159166%_
                                          (let ()
                                            (declare (not safe))
                                            (hash-get
                                             _%ht159164%_
                                             _%eid159159%_))))
                                     (if _%$e159166%_
                                         ((lambda (_%id159169%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (interned-symbol?
                                                   _%id159169%_))
                                                _%id159169%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _%id159169%_))))
                                          _%$e159166%_)
                                         (gxc#generate-runtime-identifier-key
                                          _%eid159159%_))))
                                 _%$e159161%_)
                                (gxc#generate-runtime-identifier-key
                                 _%eid159159%_))))))
                  (if (pair? _%key159144159151%_)
                      (let ((_%hd159148159176%_
                             (let ()
                               (declare (not safe))
                               (##car _%key159144159151%_)))
                            (_%tl159149159178%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%key159144159151%_))))
                        (let* ((_%eid159181%_ _%hd159148159176%_)
                               (_%mark159183%_ _%tl159149159178%_))
                          (_%K159147159173%_ _%mark159183%_ _%eid159181%_)))
                      (_%E159146159155%_)))))))
    (define gxc#generate-runtime-empty
      (lambda (_%self159137%_ _%stx159138%_) '(begin)))
    (define gxc#generate-runtime-begin%
      (lambda (_%self158984%_ _%stx158985%_)
        (letrec ((_%simplify158987%_
                  (lambda (_%body159035%_)
                    (let _%lp159037%_ ((_%rest159039%_ _%body159035%_)
                                       (_%r159040%_ '()))
                      (let* ((_%rest159041159049%_ _%rest159039%_)
                             (_%else159043159057%_
                              (lambda () (reverse _%r159040%_)))
                             (_%K159045159125%_
                              (lambda (_%rest159060%_ _%hd159061%_)
                                (let* ((_%hd159062159078%_ _%hd159061%_)
                                       (_%else159066159086%_
                                        (lambda ()
                                          (_%lp159037%_
                                           _%rest159060%_
                                           (cons _%hd159061%_ _%r159040%_)))))
                                  (let ((_%K159074159115%_
                                         (lambda (_%exprs159113%_)
                                           (_%lp159037%_
                                            (let ()
                                              (declare (not safe))
                                              (__foldr1
                                               cons
                                               _%rest159060%_
                                               _%exprs159113%_))
                                            _%r159040%_)))
                                        (_%K159069159099%_
                                         (lambda ()
                                           (if (null? _%rest159060%_)
                                               (_%lp159037%_
                                                _%rest159060%_
                                                (cons _%hd159061%_
                                                      _%r159040%_))
                                               (_%lp159037%_
                                                _%rest159060%_
                                                _%r159040%_))))
                                        (_%K159068159091%_
                                         (lambda ()
                                           (if (null? _%rest159060%_)
                                               (_%lp159037%_
                                                _%rest159060%_
                                                (cons _%hd159061%_
                                                      _%r159040%_))
                                               (_%lp159037%_
                                                _%rest159060%_
                                                _%r159040%_)))))
                                    (let ((_%try-match159065159094%_
                                           (lambda ()
                                             (if (symbol? _%hd159062159078%_)
                                                 (_%K159068159091%_)
                                                 (_%else159066159086%_)))))
                                      (if (pair? _%hd159062159078%_)
                                          (let ((_%tl159076159120%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd159062159078%_)))
                                                (_%hd159075159118%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd159062159078%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd159075159118%_
                                                         'begin))
                                                (let ((_%exprs159123%_
                                                       _%tl159076159120%_))
                                                  (_%K159074159115%_
                                                   _%exprs159123%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd159075159118%_
                                                             'quote))
                                                    (if (pair? _%tl159076159120%_)
                                                        (let ((_%tl159073159107%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%tl159076159120%_))))
                  (if (null? _%tl159073159107%_)
                      (_%K159069159099%_)
                      (_%try-match159065159094%_)))
                (_%try-match159065159094%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%try-match159065159094%_))))
                                          (_%try-match159065159094%_))))))))
                        (if (pair? _%rest159041159049%_)
                            (let ((_%hd159046159128%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest159041159049%_)))
                                  (_%tl159047159130%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest159041159049%_))))
                              (let* ((_%hd159133%_ _%hd159046159128%_)
                                     (_%rest159135%_ _%tl159047159130%_))
                                (_%K159045159125%_
                                 _%rest159135%_
                                 _%hd159133%_)))
                            (_%else159043159057%_)))))))
          (let* ((_%g158989158999%_
                  (lambda (_%g158990158996%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g158990158996%_))))
                 (_%g158988159032%_
                  (lambda (_%g158990159002%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g158990159002%_))
                        (let ((_%e158992159004%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g158990159002%_))))
                          (let ((_%hd158993159007%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e158992159004%_)))
                                (_%tl158994159009%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e158992159004%_))))
                            ((lambda (_%L159012%_)
                               (let* ((_%body159027%_
                                       (map (lambda (_%g159022159024%_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%self158984%_
                                                 _%g159022159024%_)))
                                            _%L159012%_))
                                      (_%body159029%_
                                       (_%simplify158987%_ _%body159027%_)))
                                 (if (let ((__tmp161085
                                            (length _%body159029%_)))
                                       (declare (not safe))
                                       (##fx= __tmp161085 '1))
                                     (car _%body159029%_)
                                     (cons 'begin _%body159029%_))))
                             _%tl158994159009%_)))
                        (_%g158989158999%_ _%g158990159002%_)))))
            (_%g158988159032%_ _%stx158985%_)))))
    (define gxc#generate-runtime-begin-foreign%
      (lambda (_%self158945%_ _%stx158946%_)
        (let* ((_%g158948158958%_
                (lambda (_%g158949158955%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g158949158955%_))))
               (_%g158947158981%_
                (lambda (_%g158949158961%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g158949158961%_))
                      (let ((_%e158951158963%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g158949158961%_))))
                        (let ((_%hd158952158966%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e158951158963%_)))
                              (_%tl158953158968%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e158951158963%_))))
                          ((lambda (_%L158971%_)
                             (cons 'begin
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax->datum _%L158971%_))))
                           _%tl158953158968%_)))
                      (_%g158948158958%_ _%g158949158961%_)))))
          (_%g158947158981%_ _%stx158946%_))))
    (define gxc#generate-runtime-begin-annotation%
      (lambda (_%self158709%_ _%stx158710%_)
        (let* ((_%__stx159675159676%_ _%stx158710%_)
               (_%g158714158766%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx159675159676%_)))))
          (let ((_%__kont159677159678%_
                 (lambda (_%L158927%_ _%L158928%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self158709%_ _%L158927%_))))
                (_%__kont159679159680%_
                 (lambda (_%L158875%_ _%L158876%_ _%L158877%_)
                   (if (let ((__tmp161086
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%L158877%_))))
                         (declare (not safe))
                         (##memq __tmp161086 '(@inline)))
                       '(begin)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self158709%_ _%L158875%_)))))
                (_%__kont159683159684%_
                 (lambda (_%L158795%_ _%L158796%_)
                   (let ((_%decls158811%_ (map gx#syntax->datum _%L158796%_)))
                     (let ((__tmp161089
                            (lambda ()
                              (cons 'begin
                                    (cons (cons 'declare _%decls158811%_)
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self158709%_
                                                   _%L158795%_))
                                                '())))))
                           (__tmp161087
                            (let ((__tmp161088
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-decls))))
                              (declare (not safe))
                              (__foldr1 cons __tmp161088 _%decls158811%_))))
                       (declare (not safe))
                       (call-with-parameters__1
                        __tmp161089
                        gxc#current-compile-decls
                        __tmp161087))))))
            (let* ((_%__match159730159731%_
                    (lambda (_%e158730158819%_
                             _%hd158731158822%_
                             _%tl158732158824%_
                             _%e158733158827%_
                             _%hd158734158830%_
                             _%tl158735158832%_
                             _%e158736158835%_
                             _%hd158737158838%_
                             _%tl158738158840%_
                             _%__splice159681159682%_
                             _%target158739158843%_
                             _%tl158741158845%_)
                      (letrec ((_%loop158742158848%_
                                (lambda (_%hd158740158851%_
                                         _%param158746158853%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd158740158851%_))
                                      (let ((_%e158743158856%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd158740158851%_))))
                                        (let ((_%lp-tl158745158861%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e158743158856%_)))
                                              (_%lp-hd158744158859%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e158743158856%_))))
                                          (_%loop158742158848%_
                                           _%lp-tl158745158861%_
                                           (cons _%lp-hd158744158859%_
                                                 _%param158746158853%_))))
                                      (let ((_%param158747158864%_
                                             (reverse _%param158746158853%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl158735158832%_))
                                            (let ((_%e158748158867%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl158735158832%_))))
                                              (let ((_%tl158750158872%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e158748158867%_)))
                                                    (_%hd158749158870%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e158748158867%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl158750158872%_))
                                                    (let ((_%L158875%_
                                                           _%hd158749158870%_)
                                                          (_%L158876%_
                                                           _%param158747158864%_)
                                                          (_%L158877%_
                                                           _%hd158737158838%_))
                                                      (if (and (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier? _%L158877%_))
                       (not (let ((__tmp161090
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L158877%_))))
                              (declare (not safe))
                              (##memq __tmp161090 gxc#gambit-annotations))))
                  (_%__kont159679159680%_ _%L158875%_ _%L158876%_ _%L158877%_)
                  (_%__kont159683159684%_
                   _%hd158749158870%_
                   _%hd158734158830%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g158714158766%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g158714158766%_))))))))
                        (_%loop158742158848%_ _%target158739158843%_ '()))))
                   (_%__match159704159705%_
                    (lambda (_%e158718158903%_
                             _%hd158719158906%_
                             _%tl158720158908%_
                             _%e158721158911%_
                             _%hd158722158914%_
                             _%tl158723158916%_
                             _%e158724158919%_
                             _%hd158725158922%_
                             _%tl158726158924%_)
                      (let ((_%L158927%_ _%hd158725158922%_)
                            (_%L158928%_ _%hd158722158914%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%L158928%_))
                            (_%__kont159677159678%_ _%L158927%_ _%L158928%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd158722158914%_))
                                (let ((_%e158736158835%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd158722158914%_))))
                                  (let ((_%tl158738158840%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e158736158835%_)))
                                        (_%hd158737158838%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e158736158835%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl158738158840%_))
                                        (let ((_%__splice159681159682%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%tl158738158840%_
                                                  '0))))
                                          (let ((_%tl158741158845%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice159681159682%_
                                                    '1)))
                                                (_%target158739158843%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice159681159682%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl158741158845%_))
                                                (_%__match159730159731%_
                                                 _%e158718158903%_
                                                 _%hd158719158906%_
                                                 _%tl158720158908%_
                                                 _%e158721158911%_
                                                 _%hd158722158914%_
                                                 _%tl158723158916%_
                                                 _%e158736158835%_
                                                 _%hd158737158838%_
                                                 _%tl158738158840%_
                                                 _%__splice159681159682%_
                                                 _%target158739158843%_
                                                 _%tl158741158845%_)
                                                (_%__kont159683159684%_
                                                 _%hd158725158922%_
                                                 _%hd158722158914%_))))
                                        (_%__kont159683159684%_
                                         _%hd158725158922%_
                                         _%hd158722158914%_))))
                                (_%__kont159683159684%_
                                 _%hd158725158922%_
                                 _%hd158722158914%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx159675159676%_))
                  (let ((_%e158718158903%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx159675159676%_))))
                    (let ((_%tl158720158908%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e158718158903%_)))
                          (_%hd158719158906%_
                           (let ()
                             (declare (not safe))
                             (##car _%e158718158903%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl158720158908%_))
                          (let ((_%e158721158911%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl158720158908%_))))
                            (let ((_%tl158723158916%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e158721158911%_)))
                                  (_%hd158722158914%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e158721158911%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl158723158916%_))
                                  (let ((_%e158724158919%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl158723158916%_))))
                                    (let ((_%tl158726158924%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e158724158919%_)))
                                          (_%hd158725158922%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e158724158919%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl158726158924%_))
                                          (_%__match159704159705%_
                                           _%e158718158903%_
                                           _%hd158719158906%_
                                           _%tl158720158908%_
                                           _%e158721158911%_
                                           _%hd158722158914%_
                                           _%tl158723158916%_
                                           _%e158724158919%_
                                           _%hd158725158922%_
                                           _%tl158726158924%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd158722158914%_))
                                              (let ((_%e158736158835%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd158722158914%_))))
                                                (let ((_%tl158738158840%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e158736158835%_)))
                                                      (_%hd158737158838%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e158736158835%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl158738158840%_))
                                                      (let ((_%__splice159681159682%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl158738158840%_
                        '0))))
                (let ((_%tl158741158845%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice159681159682%_ '1)))
                      (_%target158739158843%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice159681159682%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl158741158845%_))
                      (_%__match159730159731%_
                       _%e158718158903%_
                       _%hd158719158906%_
                       _%tl158720158908%_
                       _%e158721158911%_
                       _%hd158722158914%_
                       _%tl158723158916%_
                       _%e158736158835%_
                       _%hd158737158838%_
                       _%tl158738158840%_
                       _%__splice159681159682%_
                       _%target158739158843%_
                       _%tl158741158845%_)
                      (let () (declare (not safe)) (_%g158714158766%_)))))
              (let () (declare (not safe)) (_%g158714158766%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g158714158766%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd158722158914%_))
                                      (let ((_%e158736158835%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd158722158914%_))))
                                        (let ((_%tl158738158840%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e158736158835%_)))
                                              (_%hd158737158838%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e158736158835%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl158738158840%_))
                                              (let ((_%__splice159681159682%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl158738158840%_
                                                        '0))))
                                                (let ((_%tl158741158845%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice159681159682%_
                                                          '1)))
                                                      (_%target158739158843%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice159681159682%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl158741158845%_))
                                                      (_%__match159730159731%_
                                                       _%e158718158903%_
                                                       _%hd158719158906%_
                                                       _%tl158720158908%_
                                                       _%e158721158911%_
                                                       _%hd158722158914%_
                                                       _%tl158723158916%_
                                                       _%e158736158835%_
                                                       _%hd158737158838%_
                                                       _%tl158738158840%_
                                                       _%__splice159681159682%_
                                                       _%target158739158843%_
                                                       _%tl158741158845%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g158714158766%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g158714158766%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g158714158766%_))))))
                          (let () (declare (not safe)) (_%g158714158766%_)))))
                  (let () (declare (not safe)) (_%g158714158766%_))))))))
    (define gxc#generate-runtime-declare%
      (lambda (_%self158668%_ _%stx158669%_)
        (let* ((_%g158671158681%_
                (lambda (_%g158672158678%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g158672158678%_))))
               (_%g158670158706%_
                (lambda (_%g158672158684%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g158672158684%_))
                      (let ((_%e158674158686%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g158672158684%_))))
                        (let ((_%hd158675158689%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e158674158686%_)))
                              (_%tl158676158691%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e158674158686%_))))
                          ((lambda (_%L158694%_)
                             (let ((_%decls158704%_
                                    (map gx#syntax->datum _%L158694%_)))
                               (let ((__tmp161091
                                      (let ((__tmp161092
                                             (let ()
                                               (declare (not safe))
                                               (gxc#current-compile-decls))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp161092
                                         _%decls158704%_))))
                                 (declare (not safe))
                                 (gxc#current-compile-decls __tmp161091))
                               (cons 'declare _%decls158704%_)))
                           _%tl158676158691%_)))
                      (_%g158671158681%_ _%g158672158684%_)))))
          (_%g158670158706%_ _%stx158669%_))))
    (define gxc#generate-runtime-define-values%
      (lambda (_%self158414%_ _%stx158415%_)
        (let* ((_%g158417158434%_
                (lambda (_%g158418158431%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g158418158431%_))))
               (_%g158416158665%_
                (lambda (_%g158418158437%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g158418158437%_))
                      (let ((_%e158421158439%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g158418158437%_))))
                        (let ((_%hd158422158442%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e158421158439%_)))
                              (_%tl158423158444%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e158421158439%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl158423158444%_))
                              (let ((_%e158424158447%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl158423158444%_))))
                                (let ((_%hd158425158450%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e158424158447%_)))
                                      (_%tl158426158452%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e158424158447%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl158426158452%_))
                                      (let ((_%e158427158455%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl158426158452%_))))
                                        (let ((_%hd158428158458%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e158427158455%_)))
                                              (_%tl158429158460%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e158427158455%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl158429158460%_))
                                              ((lambda (_%L158463%_
                                                        _%L158464%_)
                                                 (let* ((_%__stx159783159784%_
                                                         _%L158464%_)
                                                        (_%g158481158495%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx159783159784%_)))))
                                                   (let ((_%__kont159785159786%_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _%self158414%_
                                                               _%L158463%_))))
                                                         (_%__kont159787159788%_
                                                          (lambda (_%L158627%_)
                                                            (let ((_%eid158636%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%L158627%_))))
                      (let ((_%lambda-expr158637158639%_
                             (gxc#apply-find-lambda-expression _%L158463%_)))
                        (if _%lambda-expr158637158639%_
                            (let* ((_%lambda-expr158642%_
                                    _%lambda-expr158637158639%_)
                                   (__tmp161093
                                    (let ()
                                      (declare (not safe))
                                      (gxc#current-compile-runtime-names))))
                              (declare (not safe))
                              (hash-put!
                               __tmp161093
                               _%lambda-expr158642%_
                               _%eid158636%_))
                            '#f))
                      (cons 'define
                            (cons _%eid158636%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__1
                                           _%self158414%_
                                           _%L158463%_))
                                        '()))))))
                 (_%__kont159789159790%_
                  (lambda ()
                    (let* ((_%tmp158502%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%body158611%_
                            (let _%lp158504%_ ((_%rest158506%_ _%L158464%_)
                                               (_%k158507%_ '0)
                                               (_%r158508%_ '()))
                              (let* ((_%__stx159753159754%_ _%rest158506%_)
                                     (_%g158513158530%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx159753159754%_)))))
                                (let ((_%__kont159755159756%_
                                       (lambda (_%L158598%_)
                                         (_%lp158504%_
                                          _%L158598%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k158507%_ '1))
                                          _%r158508%_)))
                                      (_%__kont159757159758%_
                                       (lambda (_%L158571%_ _%L158572%_)
                                         (_%lp158504%_
                                          _%L158571%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k158507%_ '1))
                                          (cons (cons 'define
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#generate-runtime-binding-id
                                                               _%L158572%_))
                                                            (cons (gxc#generate-runtime-values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tmp158502%_
                           _%k158507%_
                           _%L158571%_)
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%r158508%_))))
                                      (_%__kont159759159760%_
                                       (lambda (_%L158542%_)
                                         (let ((__tmp161094
                                                (cons (cons 'define
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#generate-runtime-binding-id _%L158542%_))
                          (cons (gxc#generate-runtime-values->list
                                 _%tmp158502%_
                                 _%k158507%_)
                                '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (__foldl1
                                            cons
                                            __tmp161094
                                            _%r158508%_))))
                                      (_%__kont159761159762%_
                                       (lambda () (reverse _%r158508%_))))
                                  (let ((_%g158511158558%_
                                         (lambda ()
                                           (let ((_%L158542%_
                                                  _%__stx159753159754%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%L158542%_))
                                                 (_%__kont159759159760%_
                                                  _%L158542%_)
                                                 (_%__kont159761159762%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx159753159754%_))
                                        (let ((_%e158516158587%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx159753159754%_))))
                                          (let ((_%tl158518158592%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e158516158587%_)))
                                                (_%hd158517158590%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e158516158587%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd158517158590%_))
                                                (let ((_%e158519158595%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd158517158590%_))))
                                                  (if (equal? _%e158519158595%_
                                                              '#f)
                                                      (_%__kont159755159756%_
                                                       _%tl158518158592%_)
                                                      (_%__kont159757159758%_
                                                       _%tl158518158592%_
                                                       _%hd158517158590%_)))
                                                (_%__kont159757159758%_
                                                 _%tl158518158592%_
                                                 _%hd158517158590%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g158511158558%_)))))))))
                      (cons 'begin
                            (cons (cons 'define
                                        (cons _%tmp158502%_
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self158414%_
                                                       _%L158463%_))
                                                    '())))
                                  (cons (gxc#generate-runtime-check-values
                                         _%tmp158502%_
                                         _%L158464%_
                                         _%L158463%_)
                                        _%body158611%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx159783159784%_))
                                                         (let ((_%e158483158649%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx159783159784%_))))
                   (let ((_%tl158485158654%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e158483158649%_)))
                         (_%hd158484158652%_
                          (let ()
                            (declare (not safe))
                            (##car _%e158483158649%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-datum? _%hd158484158652%_))
                         (let ((_%e158486158657%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd158484158652%_))))
                           (if (equal? _%e158486158657%_ '#f)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl158485158654%_))
                                   (_%__kont159785159786%_)
                                   (_%__kont159789159790%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl158485158654%_))
                                   (_%__kont159787159788%_ _%hd158484158652%_)
                                   (_%__kont159789159790%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl158485158654%_))
                             (_%__kont159787159788%_ _%hd158484158652%_)
                             (_%__kont159789159790%_)))))
                 (_%__kont159789159790%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd158428158458%_
                                               _%hd158425158450%_)
                                              (_%g158417158434%_
                                               _%g158418158437%_))))
                                      (_%g158417158434%_ _%g158418158437%_))))
                              (_%g158417158434%_ _%g158418158437%_))))
                      (_%g158417158434%_ _%g158418158437%_)))))
          (_%g158416158665%_ _%stx158415%_))))
    (define gxc#generate-runtime-check-values
      (lambda (_%vals158389%_ _%hd158390%_ _%expr158391%_)
        (let ((_%$e158393%_ (gxc#apply-count-values _%expr158391%_)))
          (if _%$e158393%_
              ((lambda (_%count158396%_)
                 (let ((_%len158398%_
                        (let ()
                          (declare (not safe))
                          (gx#stx-length _%hd158390%_)))
                       (_%cmp158399%_
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-list? _%hd158390%_))
                            fx=
                            fx>=)))
                   (if (or (let ()
                             (declare (not safe))
                             (##fx= _%len158398%_ '0))
                           (_%cmp158399%_ _%count158396%_ _%len158398%_))
                       '#!void
                       (let ()
                         (declare (not safe))
                         (gxc#raise-compile-error
                          '"Value count mismatch"
                          _%expr158391%_
                          _%hd158390%_)))))
               _%$e158393%_)
              (let* ((_%len158405%_
                      (let ()
                        (declare (not safe))
                        (gx#stx-length _%hd158390%_)))
                     (_%cmp158407%_
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-list? _%hd158390%_))
                          '##fx=
                          '##fx>=))
                     (_%errmsg158409%_
                      (let ((__tmp161096
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-list? _%hd158390%_))
                                 '"Context expects "
                                 '"Context expects at least "))
                            (__tmp161095 (number->string _%len158405%_)))
                        (declare (not safe))
                        (##string-append __tmp161096 __tmp161095 '" values")))
                     (_%count158411%_
                      (let ()
                        (declare (not safe))
                        (gxc#generate-runtime-temporary__0))))
                (if (if (let ()
                          (declare (not safe))
                          (gx#stx-list? _%hd158390%_))
                        '#f
                        (let () (declare (not safe)) (##fx= _%len158405%_ '0)))
                    '#!void
                    (cons 'let
                          (cons (cons (cons _%count158411%_
                                            (cons (gxc#generate-runtime-values-count
                                                   _%vals158389%_)
                                                  '()))
                                      '())
                                (cons (cons 'if
                                            (cons (cons 'not
                                                        (cons (if (gxc#current-compile-decls-unsafe?)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%cmp158407%_
                                (cons _%count158411%_
                                      (cons _%len158405%_ '())))
                          (cons 'let
                                (cons '()
                                      (cons '(declare (not safe))
                                            (cons (cons _%cmp158407%_
                                                        (cons _%count158411%_
                                                              (cons _%len158405%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons 'error
                                                              (cons _%errmsg158409%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%count158411%_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))))))))
    (define gxc#generate-runtime-values-count
      (lambda (_%var158384%_)
        (letrec ((_%generate-inline158386%_
                  (lambda ()
                    (cons 'if
                          (cons (cons '##values? (cons _%var158384%_ '()))
                                (cons (cons '##values-length
                                            (cons _%var158384%_ '()))
                                      (cons '1 '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline158386%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline158386%_) '()))))))))
    (define gxc#generate-runtime-values-ref
      (lambda (_%var158377%_ _%i158378%_ _%rest158379%_)
        (letrec ((_%generate-inline158381%_
                  (lambda ()
                    (if (and (let ()
                               (declare (not safe))
                               (##fx= _%i158378%_ '0))
                             (not (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%rest158379%_))))
                        (cons 'if
                              (cons (cons '##values? (cons _%var158377%_ '()))
                                    (cons (cons '##values-ref
                                                (cons _%var158377%_
                                                      (cons '0 '())))
                                          (cons _%var158377%_ '()))))
                        (cons '##values-ref
                              (cons _%var158377%_ (cons _%i158378%_ '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline158381%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline158381%_) '()))))))))
    (define gxc#generate-runtime-values->list
      (lambda (_%var158371%_ _%i158372%_)
        (if (let () (declare (not safe)) (##fx= _%i158372%_ '0))
            (if (gxc#current-compile-decls-unsafe?)
                (cons 'if
                      (cons (cons '##values? (cons _%var158371%_ '()))
                            (cons (cons '##values->list
                                        (cons _%var158371%_ '()))
                                  (cons (cons 'list (cons _%var158371%_ '()))
                                        '()))))
                (cons 'let
                      (cons '()
                            (cons '(declare (not safe))
                                  (cons (cons 'if
                                              (cons (cons '##values?
                                                          (cons _%var158371%_
                                                                '()))
                                                    (cons (cons '##values->list
                                                                (cons _%var158371%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons 'list (cons _%var158371%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
            (if (let () (declare (not safe)) (##fx= _%i158372%_ '1))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons 'if
                          (cons (cons '##values? (cons _%var158371%_ '()))
                                (cons (cons '##cdr
                                            (cons (cons '##values->list
                                                        (cons _%var158371%_
                                                              '()))
                                                  '()))
                                      (cons ''() '()))))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons 'if
                                                  (cons (cons '##values?
                                                              (cons _%var158371%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '##cdr
                            (cons (cons '##values->list
                                        (cons _%var158371%_ '()))
                                  '()))
                      (cons ''() '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons '##list-tail
                          (cons (cons '##values->list (cons _%var158371%_ '()))
                                (cons _%i158372%_ '())))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons '##list-tail
                                                  (cons (cons '##values->list
                                                              (cons _%var158371%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _%i158372%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))))))
    (define gxc#generate-runtime-lambda%
      (lambda (_%self158303%_ _%stx158304%_)
        (let* ((_%g158306158323%_
                (lambda (_%g158307158320%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g158307158320%_))))
               (_%g158305158368%_
                (lambda (_%g158307158326%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g158307158326%_))
                      (let ((_%e158310158328%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g158307158326%_))))
                        (let ((_%hd158311158331%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e158310158328%_)))
                              (_%tl158312158333%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e158310158328%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl158312158333%_))
                              (let ((_%e158313158336%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl158312158333%_))))
                                (let ((_%hd158314158339%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e158313158336%_)))
                                      (_%tl158315158341%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e158313158336%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl158315158341%_))
                                      (let ((_%e158316158344%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl158315158341%_))))
                                        (let ((_%hd158317158347%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e158316158344%_)))
                                              (_%tl158318158349%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e158316158344%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl158318158349%_))
                                              ((lambda (_%L158352%_
                                                        _%L158353%_)
                                                 (gxc#generate-runtime-lambda-form
                                                  _%self158303%_
                                                  _%L158353%_
                                                  _%L158352%_))
                                               _%hd158317158347%_
                                               _%hd158314158339%_)
                                              (_%g158306158323%_
                                               _%g158307158326%_))))
                                      (_%g158306158323%_ _%g158307158326%_))))
                              (_%g158306158323%_ _%g158307158326%_))))
                      (_%g158306158323%_ _%g158307158326%_)))))
          (_%g158305158368%_ _%stx158304%_))))
    (define gxc#generate-runtime-lambda-form
      (lambda (_%self158262%_ _%hd158263%_ _%body158264%_)
        (let* ((_%hd158266%_ (gxc#generate-runtime-lambda-head _%hd158263%_))
               (_%body158268%_
                (let ()
                  (declare (not safe))
                  (gxc#compile-e__1 _%self158262%_ _%body158264%_)))
               (_%body158300%_
                (let* ((_%body158269158277%_ _%body158268%_)
                       (_%else158271158285%_
                        (lambda () (cons _%body158268%_ '())))
                       (_%K158273158290%_
                        (lambda (_%exprs158288%_) _%exprs158288%_)))
                  (if (pair? _%body158269158277%_)
                      (let ((_%hd158274158293%_
                             (let ()
                               (declare (not safe))
                               (##car _%body158269158277%_)))
                            (_%tl158275158295%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%body158269158277%_))))
                        (if (let ()
                              (declare (not safe))
                              (##eq? _%hd158274158293%_ 'begin))
                            (let ((_%exprs158298%_ _%tl158275158295%_))
                              (_%K158273158290%_ _%exprs158298%_))
                            (_%else158271158285%_)))
                      (_%else158271158285%_)))))
          (cons 'lambda (cons _%hd158266%_ _%body158300%_)))))
    (define gxc#generate-runtime-lambda-head
      (lambda (_%hd158260%_)
        (let ()
          (declare (not safe))
          (gx#stx-map1 gxc#generate-runtime-binding-id* _%hd158260%_))))
    (define gxc#generate-runtime-case-lambda%
      (lambda (_%self156799%_ _%stx156800%_)
        (letrec ((_%dispatch-case?156802%_
                  (lambda (_%hd157490%_ _%body157491%_)
                    (let* ((_%form157493%_
                            (cons _%hd157490%_ (cons _%body157491%_ '())))
                           (_%__stx159815159816%_ _%form157493%_)
                           (_%g157498157655%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx159815159816%_)))))
                      (let ((_%__kont159817159818%_
                             (lambda (_%L158180%_ _%L158181%_ _%L158182%_)
                               '#t))
                            (_%__kont159823159824%_
                             (lambda (_%L157968%_
                                      _%L157969%_
                                      _%L157970%_
                                      _%L157971%_
                                      _%L157972%_
                                      _%L157973%_)
                               '#t))
                            (_%__kont159829159830%_
                             (lambda (_%L157763%_
                                      _%L157764%_
                                      _%L157765%_
                                      _%L157766%_)
                               '#t))
                            (_%__kont159831159832%_ (lambda () '#f)))
                        (let* ((_%__match159956159957%_
                                (lambda (_%e157615157667%_
                                         _%hd157616157670%_
                                         _%tl157617157672%_
                                         _%e157618157675%_
                                         _%hd157619157678%_
                                         _%tl157620157680%_
                                         _%e157621157683%_
                                         _%hd157622157686%_
                                         _%tl157623157688%_
                                         _%e157624157691%_
                                         _%hd157625157694%_
                                         _%tl157626157696%_
                                         _%e157627157699%_
                                         _%hd157628157702%_
                                         _%tl157629157704%_
                                         _%e157630157707%_
                                         _%hd157631157710%_
                                         _%tl157632157712%_
                                         _%e157633157715%_
                                         _%hd157634157718%_
                                         _%tl157635157720%_
                                         _%e157636157723%_
                                         _%hd157637157726%_
                                         _%tl157638157728%_
                                         _%e157639157731%_
                                         _%hd157640157734%_
                                         _%tl157641157736%_
                                         _%e157642157739%_
                                         _%hd157643157742%_
                                         _%tl157644157744%_
                                         _%e157645157747%_
                                         _%hd157646157750%_
                                         _%tl157647157752%_
                                         _%e157648157755%_
                                         _%hd157649157758%_
                                         _%tl157650157760%_)
                                  (let ((_%L157763%_ _%hd157649157758%_)
                                        (_%L157764%_ _%hd157640157734%_)
                                        (_%L157765%_ _%hd157631157710%_)
                                        (_%L157766%_ _%hd157616157670%_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (gx#identifier? _%L157766%_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#runtime-identifier=?
                                                _%L157765%_
                                                'apply))
                                             (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L157766%_
                                                _%L157763%_))
                                             (not (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%L157764%_
                                                     _%L157766%_))))
                                        (_%__kont159829159830%_
                                         _%L157763%_
                                         _%L157764%_
                                         _%L157765%_
                                         _%L157766%_)
                                        (_%__kont159831159832%_)))))
                               (_%__match159928159929%_
                                (lambda (_%e157615157667%_
                                         _%hd157616157670%_
                                         _%tl157617157672%_
                                         _%e157618157675%_
                                         _%hd157619157678%_
                                         _%tl157620157680%_
                                         _%e157621157683%_
                                         _%hd157622157686%_
                                         _%tl157623157688%_
                                         _%e157624157691%_
                                         _%hd157625157694%_
                                         _%tl157626157696%_
                                         _%e157627157699%_
                                         _%hd157628157702%_
                                         _%tl157629157704%_
                                         _%e157630157707%_
                                         _%hd157631157710%_
                                         _%tl157632157712%_
                                         _%e157633157715%_
                                         _%hd157634157718%_
                                         _%tl157635157720%_
                                         _%e157636157723%_
                                         _%hd157637157726%_
                                         _%tl157638157728%_
                                         _%e157639157731%_
                                         _%hd157640157734%_
                                         _%tl157641157736%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl157635157720%_))
                                      (let ((_%e157642157739%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl157635157720%_))))
                                        (let ((_%tl157644157744%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e157642157739%_)))
                                              (_%hd157643157742%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e157642157739%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd157643157742%_))
                                              (let ((_%e157645157747%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd157643157742%_))))
                                                (let ((_%tl157647157752%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e157645157747%_)))
                                                      (_%hd157646157750%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e157645157747%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd157646157750%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _%hd157646157750%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl157647157752%_))
                      (let ((_%e157648157755%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl157647157752%_))))
                        (let ((_%tl157650157760%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e157648157755%_)))
                              (_%hd157649157758%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e157648157755%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl157650157760%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl157644157744%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl157620157680%_))
                                      (_%__match159956159957%_
                                       _%e157615157667%_
                                       _%hd157616157670%_
                                       _%tl157617157672%_
                                       _%e157618157675%_
                                       _%hd157619157678%_
                                       _%tl157620157680%_
                                       _%e157621157683%_
                                       _%hd157622157686%_
                                       _%tl157623157688%_
                                       _%e157624157691%_
                                       _%hd157625157694%_
                                       _%tl157626157696%_
                                       _%e157627157699%_
                                       _%hd157628157702%_
                                       _%tl157629157704%_
                                       _%e157630157707%_
                                       _%hd157631157710%_
                                       _%tl157632157712%_
                                       _%e157633157715%_
                                       _%hd157634157718%_
                                       _%tl157635157720%_
                                       _%e157636157723%_
                                       _%hd157637157726%_
                                       _%tl157638157728%_
                                       _%e157639157731%_
                                       _%hd157640157734%_
                                       _%tl157641157736%_
                                       _%e157642157739%_
                                       _%hd157643157742%_
                                       _%tl157644157744%_
                                       _%e157645157747%_
                                       _%hd157646157750%_
                                       _%tl157647157752%_
                                       _%e157648157755%_
                                       _%hd157649157758%_
                                       _%tl157650157760%_)
                                      (_%__kont159831159832%_))
                                  (_%__kont159831159832%_))
                              (_%__kont159831159832%_))))
                      (_%__kont159831159832%_))
                  (_%__kont159831159832%_))
              (_%__kont159831159832%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont159831159832%_))))
                                      (_%__kont159831159832%_))))
                               (_%__match159858159859%_
                                (lambda (_%e157551157808%_
                                         _%hd157552157811%_
                                         _%tl157553157813%_
                                         _%__splice159825159826%_
                                         _%target157554157816%_
                                         _%tl157556157818%_)
                                  (letrec ((_%loop157557157821%_
                                            (lambda (_%hd157555157824%_
                                                     _%arg157561157826%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd157555157824%_))
                                                  (let ((_%e157558157829%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd157555157824%_))))
                                                    (let ((_%lp-tl157560157834%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e157558157829%_)))
                                                          (_%lp-hd157559157832%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e157558157829%_))))
                                                      (_%loop157557157821%_
                                                       _%lp-tl157560157834%_
                                                       (cons _%lp-hd157559157832%_
                                                             _%arg157561157826%_))))
                                                  (let ((_%arg157562157837%_
                                                         (reverse _%arg157561157826%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl157553157813%_))
                                                        (let ((_%e157563157840%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl157553157813%_))))
                  (let ((_%tl157565157845%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e157563157840%_)))
                        (_%hd157564157843%_
                         (let ()
                           (declare (not safe))
                           (##car _%e157563157840%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd157564157843%_))
                        (let ((_%e157566157848%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd157564157843%_))))
                          (let ((_%tl157568157853%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e157566157848%_)))
                                (_%hd157567157851%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e157566157848%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd157567157851%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd157567157851%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl157568157853%_))
                                        (let ((_%e157569157856%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl157568157853%_))))
                                          (let ((_%tl157571157861%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e157569157856%_)))
                                                (_%hd157570157859%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e157569157856%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd157570157859%_))
                                                (let ((_%e157572157864%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd157570157859%_))))
                                                  (let ((_%tl157574157869%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e157572157864%_)))
                                                        (_%hd157573157867%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e157572157864%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd157573157867%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd157573157867%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl157574157869%_))
                        (let ((_%e157575157872%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl157574157869%_))))
                          (let ((_%tl157577157877%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e157575157872%_)))
                                (_%hd157576157875%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e157575157872%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl157577157877%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl157571157861%_))
                                    (let ((_%e157578157880%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl157571157861%_))))
                                      (let ((_%tl157580157885%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e157578157880%_)))
                                            (_%hd157579157883%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e157578157880%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd157579157883%_))
                                            (let ((_%e157581157888%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd157579157883%_))))
                                              (let ((_%tl157583157893%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e157581157888%_)))
                                                    (_%hd157582157891%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e157581157888%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd157582157891%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd157582157891%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl157583157893%_))
                                                            (let ((_%e157584157896%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl157583157893%_))))
                      (let ((_%tl157586157901%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e157584157896%_)))
                            (_%hd157585157899%_
                             (let ()
                               (declare (not safe))
                               (##car _%e157584157896%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl157586157901%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl157580157885%_))
                                (if (let ((__tmp161097
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-length
                                              _%tl157580157885%_))))
                                      (declare (not safe))
                                      (##fx>= __tmp161097 '1))
                                    (let ((_%__splice159827159828%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl157580157885%_
                                              '1))))
                                      (let ((_%tl157589157906%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice159827159828%_
                                                '1)))
                                            (_%target157587157904%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice159827159828%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl157589157906%_))
                                            (let ((_%e157596157909%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl157589157906%_))))
                                              (let ((_%tl157598157914%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e157596157909%_)))
                                                    (_%hd157597157912%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e157596157909%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd157597157912%_))
                                                    (let ((_%e157599157917%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd157597157912%_))))
                                                      (let ((_%tl157601157922%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e157599157917%_)))
                    (_%hd157600157920%_
                     (let () (declare (not safe)) (##car _%e157599157917%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd157600157920%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _%hd157600157920%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl157601157922%_))
                            (let ((_%e157602157925%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl157601157922%_))))
                              (let ((_%tl157604157930%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e157602157925%_)))
                                    (_%hd157603157928%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e157602157925%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl157604157930%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl157598157914%_))
                                        (letrec ((_%loop157590157933%_
                                                  (lambda (_%hd157588157936%_
                                                           _%xarg157594157938%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd157588157936%_))
                                                        (let ((_%e157591157941%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd157588157936%_))))
                  (let ((_%lp-tl157593157946%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e157591157941%_)))
                        (_%lp-hd157592157944%_
                         (let ()
                           (declare (not safe))
                           (##car _%e157591157941%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd157592157944%_))
                        (let ((_%e157605157949%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd157592157944%_))))
                          (let ((_%tl157607157954%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e157605157949%_)))
                                (_%hd157606157952%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e157605157949%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd157606157952%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _%hd157606157952%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl157607157954%_))
                                        (let ((_%e157608157957%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl157607157954%_))))
                                          (let ((_%tl157610157962%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e157608157957%_)))
                                                (_%hd157609157960%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e157608157957%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl157610157962%_))
                                                (_%loop157590157933%_
                                                 _%lp-tl157593157946%_
                                                 (cons _%hd157609157960%_
                                                       _%xarg157594157938%_))
                                                (_%__match159928159929%_
                                                 _%e157551157808%_
                                                 _%hd157552157811%_
                                                 _%tl157553157813%_
                                                 _%e157563157840%_
                                                 _%hd157564157843%_
                                                 _%tl157565157845%_
                                                 _%e157566157848%_
                                                 _%hd157567157851%_
                                                 _%tl157568157853%_
                                                 _%e157569157856%_
                                                 _%hd157570157859%_
                                                 _%tl157571157861%_
                                                 _%e157572157864%_
                                                 _%hd157573157867%_
                                                 _%tl157574157869%_
                                                 _%e157575157872%_
                                                 _%hd157576157875%_
                                                 _%tl157577157877%_
                                                 _%e157578157880%_
                                                 _%hd157579157883%_
                                                 _%tl157580157885%_
                                                 _%e157581157888%_
                                                 _%hd157582157891%_
                                                 _%tl157583157893%_
                                                 _%e157584157896%_
                                                 _%hd157585157899%_
                                                 _%tl157586157901%_))))
                                        (_%__match159928159929%_
                                         _%e157551157808%_
                                         _%hd157552157811%_
                                         _%tl157553157813%_
                                         _%e157563157840%_
                                         _%hd157564157843%_
                                         _%tl157565157845%_
                                         _%e157566157848%_
                                         _%hd157567157851%_
                                         _%tl157568157853%_
                                         _%e157569157856%_
                                         _%hd157570157859%_
                                         _%tl157571157861%_
                                         _%e157572157864%_
                                         _%hd157573157867%_
                                         _%tl157574157869%_
                                         _%e157575157872%_
                                         _%hd157576157875%_
                                         _%tl157577157877%_
                                         _%e157578157880%_
                                         _%hd157579157883%_
                                         _%tl157580157885%_
                                         _%e157581157888%_
                                         _%hd157582157891%_
                                         _%tl157583157893%_
                                         _%e157584157896%_
                                         _%hd157585157899%_
                                         _%tl157586157901%_))
                                    (_%__match159928159929%_
                                     _%e157551157808%_
                                     _%hd157552157811%_
                                     _%tl157553157813%_
                                     _%e157563157840%_
                                     _%hd157564157843%_
                                     _%tl157565157845%_
                                     _%e157566157848%_
                                     _%hd157567157851%_
                                     _%tl157568157853%_
                                     _%e157569157856%_
                                     _%hd157570157859%_
                                     _%tl157571157861%_
                                     _%e157572157864%_
                                     _%hd157573157867%_
                                     _%tl157574157869%_
                                     _%e157575157872%_
                                     _%hd157576157875%_
                                     _%tl157577157877%_
                                     _%e157578157880%_
                                     _%hd157579157883%_
                                     _%tl157580157885%_
                                     _%e157581157888%_
                                     _%hd157582157891%_
                                     _%tl157583157893%_
                                     _%e157584157896%_
                                     _%hd157585157899%_
                                     _%tl157586157901%_))
                                (_%__match159928159929%_
                                 _%e157551157808%_
                                 _%hd157552157811%_
                                 _%tl157553157813%_
                                 _%e157563157840%_
                                 _%hd157564157843%_
                                 _%tl157565157845%_
                                 _%e157566157848%_
                                 _%hd157567157851%_
                                 _%tl157568157853%_
                                 _%e157569157856%_
                                 _%hd157570157859%_
                                 _%tl157571157861%_
                                 _%e157572157864%_
                                 _%hd157573157867%_
                                 _%tl157574157869%_
                                 _%e157575157872%_
                                 _%hd157576157875%_
                                 _%tl157577157877%_
                                 _%e157578157880%_
                                 _%hd157579157883%_
                                 _%tl157580157885%_
                                 _%e157581157888%_
                                 _%hd157582157891%_
                                 _%tl157583157893%_
                                 _%e157584157896%_
                                 _%hd157585157899%_
                                 _%tl157586157901%_))))
                        (_%__match159928159929%_
                         _%e157551157808%_
                         _%hd157552157811%_
                         _%tl157553157813%_
                         _%e157563157840%_
                         _%hd157564157843%_
                         _%tl157565157845%_
                         _%e157566157848%_
                         _%hd157567157851%_
                         _%tl157568157853%_
                         _%e157569157856%_
                         _%hd157570157859%_
                         _%tl157571157861%_
                         _%e157572157864%_
                         _%hd157573157867%_
                         _%tl157574157869%_
                         _%e157575157872%_
                         _%hd157576157875%_
                         _%tl157577157877%_
                         _%e157578157880%_
                         _%hd157579157883%_
                         _%tl157580157885%_
                         _%e157581157888%_
                         _%hd157582157891%_
                         _%tl157583157893%_
                         _%e157584157896%_
                         _%hd157585157899%_
                         _%tl157586157901%_))))
                (let ((_%xarg157595157965%_ (reverse _%xarg157594157938%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl157565157845%_))
                      (let ((_%L157968%_ _%hd157603157928%_)
                            (_%L157969%_ _%xarg157595157965%_)
                            (_%L157970%_ _%hd157585157899%_)
                            (_%L157971%_ _%hd157576157875%_)
                            (_%L157972%_ _%tl157556157818%_)
                            (_%L157973%_ _%arg157562157837%_))
                        (if (and (let ((__tmp161098
                                        (let ((__tmp161099
                                               (lambda (_%g158016158019%_
                                                        _%g158017158021%_)
                                                 (cons _%g158016158019%_
                                                       _%g158017158021%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp161099
                                           '()
                                           _%L157973%_))))
                                   (declare (not safe))
                                   (gx#identifier-list? __tmp161098))
                                 (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L157972%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _%L157971%_
                                    'apply))
                                 (let ((__tmp161102
                                        (length (let ((__tmp161103
                                                       (lambda (_%g158023158026%_
                                                                _%g158024158028%_)
                                                         (cons _%g158023158026%_
                                                               _%g158024158028%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp161103
                                                   '()
                                                   _%L157973%_))))
                                       (__tmp161100
                                        (length (let ((__tmp161101
                                                       (lambda (_%g158030158033%_
                                                                _%g158031158035%_)
                                                         (cons _%g158030158033%_
                                                               _%g158031158035%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp161101
                                                   '()
                                                   _%L157969%_)))))
                                   (declare (not safe))
                                   (##fx= __tmp161102 __tmp161100))
                                 (let ((__tmp161106
                                        (let ((__tmp161107
                                               (lambda (_%g158037158040%_
                                                        _%g158038158042%_)
                                                 (cons _%g158037158040%_
                                                       _%g158038158042%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp161107
                                           '()
                                           _%L157973%_)))
                                       (__tmp161104
                                        (let ((__tmp161105
                                               (lambda (_%g158044158047%_
                                                        _%g158045158049%_)
                                                 (cons _%g158044158047%_
                                                       _%g158045158049%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp161105
                                           '()
                                           _%L157969%_))))
                                   (declare (not safe))
                                   (__andmap2
                                    gx#free-identifier=?
                                    __tmp161106
                                    __tmp161104))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L157972%_
                                    _%L157968%_))
                                 (not (let ((__tmp161111
                                             (lambda (_%g158051158053%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#free-identifier=?
                                                  _%g158051158053%_
                                                  _%L157970%_))))
                                            (__tmp161108
                                             (let ((__tmp161110
                                                    (lambda (_%g158055158058%_
                                                             _%g158056158060%_)
                                                      (cons _%g158055158058%_
                                                            _%g158056158060%_)))
                                                   (__tmp161109
                                                    (cons _%L157972%_ '())))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp161110
                                                __tmp161109
                                                _%L157973%_))))
                                        (declare (not safe))
                                        (__find __tmp161111 __tmp161108))))
                            (_%__kont159823159824%_
                             _%L157968%_
                             _%L157969%_
                             _%L157970%_
                             _%L157971%_
                             _%L157972%_
                             _%L157973%_)
                            (_%__match159928159929%_
                             _%e157551157808%_
                             _%hd157552157811%_
                             _%tl157553157813%_
                             _%e157563157840%_
                             _%hd157564157843%_
                             _%tl157565157845%_
                             _%e157566157848%_
                             _%hd157567157851%_
                             _%tl157568157853%_
                             _%e157569157856%_
                             _%hd157570157859%_
                             _%tl157571157861%_
                             _%e157572157864%_
                             _%hd157573157867%_
                             _%tl157574157869%_
                             _%e157575157872%_
                             _%hd157576157875%_
                             _%tl157577157877%_
                             _%e157578157880%_
                             _%hd157579157883%_
                             _%tl157580157885%_
                             _%e157581157888%_
                             _%hd157582157891%_
                             _%tl157583157893%_
                             _%e157584157896%_
                             _%hd157585157899%_
                             _%tl157586157901%_)))
                      (_%__match159928159929%_
                       _%e157551157808%_
                       _%hd157552157811%_
                       _%tl157553157813%_
                       _%e157563157840%_
                       _%hd157564157843%_
                       _%tl157565157845%_
                       _%e157566157848%_
                       _%hd157567157851%_
                       _%tl157568157853%_
                       _%e157569157856%_
                       _%hd157570157859%_
                       _%tl157571157861%_
                       _%e157572157864%_
                       _%hd157573157867%_
                       _%tl157574157869%_
                       _%e157575157872%_
                       _%hd157576157875%_
                       _%tl157577157877%_
                       _%e157578157880%_
                       _%hd157579157883%_
                       _%tl157580157885%_
                       _%e157581157888%_
                       _%hd157582157891%_
                       _%tl157583157893%_
                       _%e157584157896%_
                       _%hd157585157899%_
                       _%tl157586157901%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop157590157933%_
                                           _%target157587157904%_
                                           '()))
                                        (_%__match159928159929%_
                                         _%e157551157808%_
                                         _%hd157552157811%_
                                         _%tl157553157813%_
                                         _%e157563157840%_
                                         _%hd157564157843%_
                                         _%tl157565157845%_
                                         _%e157566157848%_
                                         _%hd157567157851%_
                                         _%tl157568157853%_
                                         _%e157569157856%_
                                         _%hd157570157859%_
                                         _%tl157571157861%_
                                         _%e157572157864%_
                                         _%hd157573157867%_
                                         _%tl157574157869%_
                                         _%e157575157872%_
                                         _%hd157576157875%_
                                         _%tl157577157877%_
                                         _%e157578157880%_
                                         _%hd157579157883%_
                                         _%tl157580157885%_
                                         _%e157581157888%_
                                         _%hd157582157891%_
                                         _%tl157583157893%_
                                         _%e157584157896%_
                                         _%hd157585157899%_
                                         _%tl157586157901%_))
                                    (_%__match159928159929%_
                                     _%e157551157808%_
                                     _%hd157552157811%_
                                     _%tl157553157813%_
                                     _%e157563157840%_
                                     _%hd157564157843%_
                                     _%tl157565157845%_
                                     _%e157566157848%_
                                     _%hd157567157851%_
                                     _%tl157568157853%_
                                     _%e157569157856%_
                                     _%hd157570157859%_
                                     _%tl157571157861%_
                                     _%e157572157864%_
                                     _%hd157573157867%_
                                     _%tl157574157869%_
                                     _%e157575157872%_
                                     _%hd157576157875%_
                                     _%tl157577157877%_
                                     _%e157578157880%_
                                     _%hd157579157883%_
                                     _%tl157580157885%_
                                     _%e157581157888%_
                                     _%hd157582157891%_
                                     _%tl157583157893%_
                                     _%e157584157896%_
                                     _%hd157585157899%_
                                     _%tl157586157901%_))))
                            (_%__match159928159929%_
                             _%e157551157808%_
                             _%hd157552157811%_
                             _%tl157553157813%_
                             _%e157563157840%_
                             _%hd157564157843%_
                             _%tl157565157845%_
                             _%e157566157848%_
                             _%hd157567157851%_
                             _%tl157568157853%_
                             _%e157569157856%_
                             _%hd157570157859%_
                             _%tl157571157861%_
                             _%e157572157864%_
                             _%hd157573157867%_
                             _%tl157574157869%_
                             _%e157575157872%_
                             _%hd157576157875%_
                             _%tl157577157877%_
                             _%e157578157880%_
                             _%hd157579157883%_
                             _%tl157580157885%_
                             _%e157581157888%_
                             _%hd157582157891%_
                             _%tl157583157893%_
                             _%e157584157896%_
                             _%hd157585157899%_
                             _%tl157586157901%_))
                        (_%__match159928159929%_
                         _%e157551157808%_
                         _%hd157552157811%_
                         _%tl157553157813%_
                         _%e157563157840%_
                         _%hd157564157843%_
                         _%tl157565157845%_
                         _%e157566157848%_
                         _%hd157567157851%_
                         _%tl157568157853%_
                         _%e157569157856%_
                         _%hd157570157859%_
                         _%tl157571157861%_
                         _%e157572157864%_
                         _%hd157573157867%_
                         _%tl157574157869%_
                         _%e157575157872%_
                         _%hd157576157875%_
                         _%tl157577157877%_
                         _%e157578157880%_
                         _%hd157579157883%_
                         _%tl157580157885%_
                         _%e157581157888%_
                         _%hd157582157891%_
                         _%tl157583157893%_
                         _%e157584157896%_
                         _%hd157585157899%_
                         _%tl157586157901%_))
                    (_%__match159928159929%_
                     _%e157551157808%_
                     _%hd157552157811%_
                     _%tl157553157813%_
                     _%e157563157840%_
                     _%hd157564157843%_
                     _%tl157565157845%_
                     _%e157566157848%_
                     _%hd157567157851%_
                     _%tl157568157853%_
                     _%e157569157856%_
                     _%hd157570157859%_
                     _%tl157571157861%_
                     _%e157572157864%_
                     _%hd157573157867%_
                     _%tl157574157869%_
                     _%e157575157872%_
                     _%hd157576157875%_
                     _%tl157577157877%_
                     _%e157578157880%_
                     _%hd157579157883%_
                     _%tl157580157885%_
                     _%e157581157888%_
                     _%hd157582157891%_
                     _%tl157583157893%_
                     _%e157584157896%_
                     _%hd157585157899%_
                     _%tl157586157901%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match159928159929%_
                                                     _%e157551157808%_
                                                     _%hd157552157811%_
                                                     _%tl157553157813%_
                                                     _%e157563157840%_
                                                     _%hd157564157843%_
                                                     _%tl157565157845%_
                                                     _%e157566157848%_
                                                     _%hd157567157851%_
                                                     _%tl157568157853%_
                                                     _%e157569157856%_
                                                     _%hd157570157859%_
                                                     _%tl157571157861%_
                                                     _%e157572157864%_
                                                     _%hd157573157867%_
                                                     _%tl157574157869%_
                                                     _%e157575157872%_
                                                     _%hd157576157875%_
                                                     _%tl157577157877%_
                                                     _%e157578157880%_
                                                     _%hd157579157883%_
                                                     _%tl157580157885%_
                                                     _%e157581157888%_
                                                     _%hd157582157891%_
                                                     _%tl157583157893%_
                                                     _%e157584157896%_
                                                     _%hd157585157899%_
                                                     _%tl157586157901%_))))
                                            (_%__match159928159929%_
                                             _%e157551157808%_
                                             _%hd157552157811%_
                                             _%tl157553157813%_
                                             _%e157563157840%_
                                             _%hd157564157843%_
                                             _%tl157565157845%_
                                             _%e157566157848%_
                                             _%hd157567157851%_
                                             _%tl157568157853%_
                                             _%e157569157856%_
                                             _%hd157570157859%_
                                             _%tl157571157861%_
                                             _%e157572157864%_
                                             _%hd157573157867%_
                                             _%tl157574157869%_
                                             _%e157575157872%_
                                             _%hd157576157875%_
                                             _%tl157577157877%_
                                             _%e157578157880%_
                                             _%hd157579157883%_
                                             _%tl157580157885%_
                                             _%e157581157888%_
                                             _%hd157582157891%_
                                             _%tl157583157893%_
                                             _%e157584157896%_
                                             _%hd157585157899%_
                                             _%tl157586157901%_))))
                                    (_%__match159928159929%_
                                     _%e157551157808%_
                                     _%hd157552157811%_
                                     _%tl157553157813%_
                                     _%e157563157840%_
                                     _%hd157564157843%_
                                     _%tl157565157845%_
                                     _%e157566157848%_
                                     _%hd157567157851%_
                                     _%tl157568157853%_
                                     _%e157569157856%_
                                     _%hd157570157859%_
                                     _%tl157571157861%_
                                     _%e157572157864%_
                                     _%hd157573157867%_
                                     _%tl157574157869%_
                                     _%e157575157872%_
                                     _%hd157576157875%_
                                     _%tl157577157877%_
                                     _%e157578157880%_
                                     _%hd157579157883%_
                                     _%tl157580157885%_
                                     _%e157581157888%_
                                     _%hd157582157891%_
                                     _%tl157583157893%_
                                     _%e157584157896%_
                                     _%hd157585157899%_
                                     _%tl157586157901%_))
                                (_%__match159928159929%_
                                 _%e157551157808%_
                                 _%hd157552157811%_
                                 _%tl157553157813%_
                                 _%e157563157840%_
                                 _%hd157564157843%_
                                 _%tl157565157845%_
                                 _%e157566157848%_
                                 _%hd157567157851%_
                                 _%tl157568157853%_
                                 _%e157569157856%_
                                 _%hd157570157859%_
                                 _%tl157571157861%_
                                 _%e157572157864%_
                                 _%hd157573157867%_
                                 _%tl157574157869%_
                                 _%e157575157872%_
                                 _%hd157576157875%_
                                 _%tl157577157877%_
                                 _%e157578157880%_
                                 _%hd157579157883%_
                                 _%tl157580157885%_
                                 _%e157581157888%_
                                 _%hd157582157891%_
                                 _%tl157583157893%_
                                 _%e157584157896%_
                                 _%hd157585157899%_
                                 _%tl157586157901%_))
                            (_%__kont159831159832%_))))
                    (_%__kont159831159832%_))
                (_%__kont159831159832%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont159831159832%_))))
                                            (_%__kont159831159832%_))))
                                    (_%__kont159831159832%_))
                                (_%__kont159831159832%_))))
                        (_%__kont159831159832%_))
                    (_%__kont159831159832%_))
                (_%__kont159831159832%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont159831159832%_))))
                                        (_%__kont159831159832%_))
                                    (_%__kont159831159832%_))
                                (_%__kont159831159832%_))))
                        (_%__kont159831159832%_))))
                (_%__kont159831159832%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop157557157821%_
                                     _%target157554157816%_
                                     '()))))
                               (_%__match159846159847%_
                                (lambda (_%e157503158068%_
                                         _%hd157504158071%_
                                         _%tl157505158073%_
                                         _%__splice159819159820%_
                                         _%target157506158076%_
                                         _%tl157508158078%_)
                                  (letrec ((_%loop157509158081%_
                                            (lambda (_%hd157507158084%_
                                                     _%arg157513158086%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd157507158084%_))
                                                  (let ((_%e157510158089%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd157507158084%_))))
                                                    (let ((_%lp-tl157512158094%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e157510158089%_)))
                                                          (_%lp-hd157511158092%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e157510158089%_))))
                                                      (_%loop157509158081%_
                                                       _%lp-tl157512158094%_
                                                       (cons _%lp-hd157511158092%_
                                                             _%arg157513158086%_))))
                                                  (let ((_%arg157514158097%_
                                                         (reverse _%arg157513158086%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl157505158073%_))
                                                        (let ((_%e157515158100%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl157505158073%_))))
                  (let ((_%tl157517158105%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e157515158100%_)))
                        (_%hd157516158103%_
                         (let ()
                           (declare (not safe))
                           (##car _%e157515158100%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd157516158103%_))
                        (let ((_%e157518158108%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd157516158103%_))))
                          (let ((_%tl157520158113%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e157518158108%_)))
                                (_%hd157519158111%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e157518158108%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd157519158111%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd157519158111%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl157520158113%_))
                                        (let ((_%e157521158116%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl157520158113%_))))
                                          (let ((_%tl157523158121%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e157521158116%_)))
                                                (_%hd157522158119%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e157521158116%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd157522158119%_))
                                                (let ((_%e157524158124%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd157522158119%_))))
                                                  (let ((_%tl157526158129%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e157524158124%_)))
                                                        (_%hd157525158127%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e157524158124%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd157525158127%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd157525158127%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl157526158129%_))
                        (let ((_%e157527158132%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl157526158129%_))))
                          (let ((_%tl157529158137%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e157527158132%_)))
                                (_%hd157528158135%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e157527158132%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl157529158137%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl157523158121%_))
                                    (let ((_%__splice159821159822%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl157523158121%_
                                              '0))))
                                      (let ((_%tl157532158142%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice159821159822%_
                                                '1)))
                                            (_%target157530158140%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice159821159822%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl157532158142%_))
                                            (letrec ((_%loop157533158145%_
                                                      (lambda (_%hd157531158148%_
                                                               _%xarg157537158150%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd157531158148%_))
                                                            (let ((_%e157534158153%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd157531158148%_))))
                      (let ((_%lp-tl157536158158%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e157534158153%_)))
                            (_%lp-hd157535158156%_
                             (let ()
                               (declare (not safe))
                               (##car _%e157534158153%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd157535158156%_))
                            (let ((_%e157539158161%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd157535158156%_))))
                              (let ((_%tl157541158166%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e157539158161%_)))
                                    (_%hd157540158164%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e157539158161%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd157540158164%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd157540158164%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl157541158166%_))
                                            (let ((_%e157542158169%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl157541158166%_))))
                                              (let ((_%tl157544158174%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e157542158169%_)))
                                                    (_%hd157543158172%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e157542158169%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl157544158174%_))
                                                    (_%loop157533158145%_
                                                     _%lp-tl157536158158%_
                                                     (cons _%hd157543158172%_
                                                           _%xarg157537158150%_))
                                                    (_%__match159858159859%_
                                                     _%e157503158068%_
                                                     _%hd157504158071%_
                                                     _%tl157505158073%_
                                                     _%__splice159819159820%_
                                                     _%target157506158076%_
                                                     _%tl157508158078%_))))
                                            (_%__match159858159859%_
                                             _%e157503158068%_
                                             _%hd157504158071%_
                                             _%tl157505158073%_
                                             _%__splice159819159820%_
                                             _%target157506158076%_
                                             _%tl157508158078%_))
                                        (_%__match159858159859%_
                                         _%e157503158068%_
                                         _%hd157504158071%_
                                         _%tl157505158073%_
                                         _%__splice159819159820%_
                                         _%target157506158076%_
                                         _%tl157508158078%_))
                                    (_%__match159858159859%_
                                     _%e157503158068%_
                                     _%hd157504158071%_
                                     _%tl157505158073%_
                                     _%__splice159819159820%_
                                     _%target157506158076%_
                                     _%tl157508158078%_))))
                            (_%__match159858159859%_
                             _%e157503158068%_
                             _%hd157504158071%_
                             _%tl157505158073%_
                             _%__splice159819159820%_
                             _%target157506158076%_
                             _%tl157508158078%_))))
                    (let ((_%xarg157538158177%_
                           (reverse _%xarg157537158150%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl157517158105%_))
                          (let ((_%L158180%_ _%xarg157538158177%_)
                                (_%L158181%_ _%hd157528158135%_)
                                (_%L158182%_ _%arg157514158097%_))
                            (if (and (let ((__tmp161112
                                            (let ((__tmp161113
                                                   (lambda (_%g158210158213%_
                                                            _%g158211158215%_)
                                                     (cons _%g158210158213%_
                                                           _%g158211158215%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp161113
                                               '()
                                               _%L158182%_))))
                                       (declare (not safe))
                                       (gx#identifier-list? __tmp161112))
                                     (let ((__tmp161116
                                            (length (let ((__tmp161117
                                                           (lambda (_%g158217158220%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g158218158222%_)
                     (cons _%g158217158220%_ _%g158218158222%_))))
              (declare (not safe))
              (__foldr1 __tmp161117 '() _%L158182%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (__tmp161114
                                            (length (let ((__tmp161115
                                                           (lambda (_%g158224158227%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g158225158229%_)
                     (cons _%g158224158227%_ _%g158225158229%_))))
              (declare (not safe))
              (__foldr1 __tmp161115 '() _%L158180%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp161116 __tmp161114))
                                     (let ((__tmp161120
                                            (let ((__tmp161121
                                                   (lambda (_%g158231158234%_
                                                            _%g158232158236%_)
                                                     (cons _%g158231158234%_
                                                           _%g158232158236%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp161121
                                               '()
                                               _%L158182%_)))
                                           (__tmp161118
                                            (let ((__tmp161119
                                                   (lambda (_%g158238158241%_
                                                            _%g158239158243%_)
                                                     (cons _%g158238158241%_
                                                           _%g158239158243%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp161119
                                               '()
                                               _%L158180%_))))
                                       (declare (not safe))
                                       (__andmap2
                                        gx#free-identifier=?
                                        __tmp161120
                                        __tmp161118))
                                     (not (let ((__tmp161124
                                                 (lambda (_%g158245158247%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g158245158247%_
                                                      _%L158181%_))))
                                                (__tmp161122
                                                 (let ((__tmp161123
                                                        (lambda (_%g158249158252%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g158250158254%_)
                  (cons _%g158249158252%_ _%g158250158254%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp161123
                                                    '()
                                                    _%L158182%_))))
                                            (declare (not safe))
                                            (__find __tmp161124 __tmp161122))))
                                (_%__kont159817159818%_
                                 _%L158180%_
                                 _%L158181%_
                                 _%L158182%_)
                                (_%__match159858159859%_
                                 _%e157503158068%_
                                 _%hd157504158071%_
                                 _%tl157505158073%_
                                 _%__splice159819159820%_
                                 _%target157506158076%_
                                 _%tl157508158078%_)))
                          (_%__match159858159859%_
                           _%e157503158068%_
                           _%hd157504158071%_
                           _%tl157505158073%_
                           _%__splice159819159820%_
                           _%target157506158076%_
                           _%tl157508158078%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop157533158145%_
                                               _%target157530158140%_
                                               '()))
                                            (_%__match159858159859%_
                                             _%e157503158068%_
                                             _%hd157504158071%_
                                             _%tl157505158073%_
                                             _%__splice159819159820%_
                                             _%target157506158076%_
                                             _%tl157508158078%_))))
                                    (_%__match159858159859%_
                                     _%e157503158068%_
                                     _%hd157504158071%_
                                     _%tl157505158073%_
                                     _%__splice159819159820%_
                                     _%target157506158076%_
                                     _%tl157508158078%_))
                                (_%__match159858159859%_
                                 _%e157503158068%_
                                 _%hd157504158071%_
                                 _%tl157505158073%_
                                 _%__splice159819159820%_
                                 _%target157506158076%_
                                 _%tl157508158078%_))))
                        (_%__match159858159859%_
                         _%e157503158068%_
                         _%hd157504158071%_
                         _%tl157505158073%_
                         _%__splice159819159820%_
                         _%target157506158076%_
                         _%tl157508158078%_))
                    (_%__match159858159859%_
                     _%e157503158068%_
                     _%hd157504158071%_
                     _%tl157505158073%_
                     _%__splice159819159820%_
                     _%target157506158076%_
                     _%tl157508158078%_))
                (_%__match159858159859%_
                 _%e157503158068%_
                 _%hd157504158071%_
                 _%tl157505158073%_
                 _%__splice159819159820%_
                 _%target157506158076%_
                 _%tl157508158078%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match159858159859%_
                                                 _%e157503158068%_
                                                 _%hd157504158071%_
                                                 _%tl157505158073%_
                                                 _%__splice159819159820%_
                                                 _%target157506158076%_
                                                 _%tl157508158078%_))))
                                        (_%__match159858159859%_
                                         _%e157503158068%_
                                         _%hd157504158071%_
                                         _%tl157505158073%_
                                         _%__splice159819159820%_
                                         _%target157506158076%_
                                         _%tl157508158078%_))
                                    (_%__match159858159859%_
                                     _%e157503158068%_
                                     _%hd157504158071%_
                                     _%tl157505158073%_
                                     _%__splice159819159820%_
                                     _%target157506158076%_
                                     _%tl157508158078%_))
                                (_%__match159858159859%_
                                 _%e157503158068%_
                                 _%hd157504158071%_
                                 _%tl157505158073%_
                                 _%__splice159819159820%_
                                 _%target157506158076%_
                                 _%tl157508158078%_))))
                        (_%__match159858159859%_
                         _%e157503158068%_
                         _%hd157504158071%_
                         _%tl157505158073%_
                         _%__splice159819159820%_
                         _%target157506158076%_
                         _%tl157508158078%_))))
                (_%__match159858159859%_
                 _%e157503158068%_
                 _%hd157504158071%_
                 _%tl157505158073%_
                 _%__splice159819159820%_
                 _%target157506158076%_
                 _%tl157508158078%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop157509158081%_
                                     _%target157506158076%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx159815159816%_))
                              (let ((_%e157503158068%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx159815159816%_))))
                                (let ((_%tl157505158073%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e157503158068%_)))
                                      (_%hd157504158071%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e157503158068%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd157504158071%_))
                                      (let ((_%__splice159819159820%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%hd157504158071%_
                                                '0))))
                                        (let ((_%tl157508158078%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice159819159820%_
                                                  '1)))
                                              (_%target157506158076%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice159819159820%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl157508158078%_))
                                              (_%__match159846159847%_
                                               _%e157503158068%_
                                               _%hd157504158071%_
                                               _%tl157505158073%_
                                               _%__splice159819159820%_
                                               _%target157506158076%_
                                               _%tl157508158078%_)
                                              (_%__match159858159859%_
                                               _%e157503158068%_
                                               _%hd157504158071%_
                                               _%tl157505158073%_
                                               _%__splice159819159820%_
                                               _%target157506158076%_
                                               _%tl157508158078%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl157505158073%_))
                                          (let ((_%e157618157675%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl157505158073%_))))
                                            (let ((_%tl157620157680%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e157618157675%_)))
                                                  (_%hd157619157678%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e157618157675%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd157619157678%_))
                                                  (let ((_%e157621157683%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd157619157678%_))))
                                                    (let ((_%tl157623157688%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e157621157683%_)))
                                                          (_%hd157622157686%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e157621157683%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd157622157686%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd157622157686%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl157623157688%_))
                          (let ((_%e157624157691%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl157623157688%_))))
                            (let ((_%tl157626157696%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e157624157691%_)))
                                  (_%hd157625157694%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e157624157691%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd157625157694%_))
                                  (let ((_%e157627157699%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd157625157694%_))))
                                    (let ((_%tl157629157704%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e157627157699%_)))
                                          (_%hd157628157702%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e157627157699%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd157628157702%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd157628157702%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl157629157704%_))
                                                  (let ((_%e157630157707%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl157629157704%_))))
                                                    (let ((_%tl157632157712%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e157630157707%_)))
                                                          (_%hd157631157710%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e157630157707%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl157632157712%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl157626157696%_))
                      (let ((_%e157633157715%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl157626157696%_))))
                        (let ((_%tl157635157720%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e157633157715%_)))
                              (_%hd157634157718%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e157633157715%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd157634157718%_))
                              (let ((_%e157636157723%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd157634157718%_))))
                                (let ((_%tl157638157728%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e157636157723%_)))
                                      (_%hd157637157726%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e157636157723%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd157637157726%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd157637157726%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl157638157728%_))
                                              (let ((_%e157639157731%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl157638157728%_))))
                                                (let ((_%tl157641157736%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e157639157731%_)))
                                                      (_%hd157640157734%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e157639157731%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl157641157736%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl157635157720%_))
                                                          (let ((_%e157642157739%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl157635157720%_))))
                    (let ((_%tl157644157744%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e157642157739%_)))
                          (_%hd157643157742%_
                           (let ()
                             (declare (not safe))
                             (##car _%e157642157739%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd157643157742%_))
                          (let ((_%e157645157747%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd157643157742%_))))
                            (let ((_%tl157647157752%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e157645157747%_)))
                                  (_%hd157646157750%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e157645157747%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd157646157750%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _%hd157646157750%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl157647157752%_))
                                          (let ((_%e157648157755%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl157647157752%_))))
                                            (let ((_%tl157650157760%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e157648157755%_)))
                                                  (_%hd157649157758%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e157648157755%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl157650157760%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl157644157744%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl157620157680%_))
                                                          (_%__match159956159957%_
                                                           _%e157503158068%_
                                                           _%hd157504158071%_
                                                           _%tl157505158073%_
                                                           _%e157618157675%_
                                                           _%hd157619157678%_
                                                           _%tl157620157680%_
                                                           _%e157621157683%_
                                                           _%hd157622157686%_
                                                           _%tl157623157688%_
                                                           _%e157624157691%_
                                                           _%hd157625157694%_
                                                           _%tl157626157696%_
                                                           _%e157627157699%_
                                                           _%hd157628157702%_
                                                           _%tl157629157704%_
                                                           _%e157630157707%_
                                                           _%hd157631157710%_
                                                           _%tl157632157712%_
                                                           _%e157633157715%_
                                                           _%hd157634157718%_
                                                           _%tl157635157720%_
                                                           _%e157636157723%_
                                                           _%hd157637157726%_
                                                           _%tl157638157728%_
                                                           _%e157639157731%_
                                                           _%hd157640157734%_
                                                           _%tl157641157736%_
                                                           _%e157642157739%_
                                                           _%hd157643157742%_
                                                           _%tl157644157744%_
                                                           _%e157645157747%_
                                                           _%hd157646157750%_
                                                           _%tl157647157752%_
                                                           _%e157648157755%_
                                                           _%hd157649157758%_
                                                           _%tl157650157760%_)
                                                          (_%__kont159831159832%_))
                                                      (_%__kont159831159832%_))
                                                  (_%__kont159831159832%_))))
                                          (_%__kont159831159832%_))
                                      (_%__kont159831159832%_))
                                  (_%__kont159831159832%_))))
                          (_%__kont159831159832%_))))
                  (_%__kont159831159832%_))
              (_%__kont159831159832%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont159831159832%_))
                                          (_%__kont159831159832%_))
                                      (_%__kont159831159832%_))))
                              (_%__kont159831159832%_))))
                      (_%__kont159831159832%_))
                  (_%__kont159831159832%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont159831159832%_))
                                              (_%__kont159831159832%_))
                                          (_%__kont159831159832%_))))
                                  (_%__kont159831159832%_))))
                          (_%__kont159831159832%_))
                      (_%__kont159831159832%_))
                  (_%__kont159831159832%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont159831159832%_))))
                                          (_%__kont159831159832%_)))))
                              (_%__kont159831159832%_)))))))
                 (_%dispatch-case-e156803%_
                  (lambda (_%hd156954%_ _%body156955%_)
                    (let* ((_%form156957%_
                            (cons _%hd156954%_ (cons _%body156955%_ '())))
                           (_%__stx159959159960%_ _%form156957%_)
                           (_%g156961157085%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx159959159960%_)))))
                      (let ((_%__kont159961159962%_
                             (lambda (_%L157456%_ _%L157457%_ _%L157458%_)
                               (let ((__tmp161125
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L157457%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self156799%_
                                  __tmp161125))))
                            (_%__kont159967159968%_
                             (lambda (_%L157304%_
                                      _%L157305%_
                                      _%L157306%_
                                      _%L157307%_)
                               (let ((__tmp161126
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L157304%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self156799%_
                                  __tmp161126))))
                            (_%__kont159971159972%_
                             (lambda (_%L157170%_ _%L157171%_ _%L157172%_)
                               (let ((__tmp161127
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L157170%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self156799%_
                                  __tmp161127)))))
                        (let* ((_%__match160068160069%_
                                (lambda (_%e157051157090%_
                                         _%hd157052157093%_
                                         _%tl157053157095%_
                                         _%e157054157098%_
                                         _%hd157055157101%_
                                         _%tl157056157103%_
                                         _%e157057157106%_
                                         _%hd157058157109%_
                                         _%tl157059157111%_
                                         _%e157060157114%_
                                         _%hd157061157117%_
                                         _%tl157062157119%_
                                         _%e157063157122%_
                                         _%hd157064157125%_
                                         _%tl157065157127%_
                                         _%e157066157130%_
                                         _%hd157067157133%_
                                         _%tl157068157135%_
                                         _%e157069157138%_
                                         _%hd157070157141%_
                                         _%tl157071157143%_
                                         _%e157072157146%_
                                         _%hd157073157149%_
                                         _%tl157074157151%_
                                         _%e157075157154%_
                                         _%hd157076157157%_
                                         _%tl157077157159%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl157071157143%_))
                                      (let ((_%e157078157162%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl157071157143%_))))
                                        (let ((_%tl157080157167%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e157078157162%_)))
                                              (_%hd157079157165%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e157078157162%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl157080157167%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl157056157103%_))
                                                  (_%__kont159971159972%_
                                                   _%hd157076157157%_
                                                   _%hd157067157133%_
                                                   _%hd157052157093%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g156961157085%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g156961157085%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g156961157085%_)))))
                               (_%__match159998159999%_
                                (lambda (_%e157012157208%_
                                         _%hd157013157211%_
                                         _%tl157014157213%_
                                         _%__splice159969159970%_
                                         _%target157015157216%_
                                         _%tl157017157218%_)
                                  (letrec ((_%loop157018157221%_
                                            (lambda (_%hd157016157224%_
                                                     _%arg157022157226%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd157016157224%_))
                                                  (let ((_%e157019157229%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd157016157224%_))))
                                                    (let ((_%lp-tl157021157234%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e157019157229%_)))
                                                          (_%lp-hd157020157232%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e157019157229%_))))
                                                      (_%loop157018157221%_
                                                       _%lp-tl157021157234%_
                                                       (cons _%lp-hd157020157232%_
                                                             _%arg157022157226%_))))
                                                  (let ((_%arg157023157237%_
                                                         (reverse _%arg157022157226%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl157014157213%_))
                                                        (let ((_%e157024157240%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl157014157213%_))))
                  (let ((_%tl157026157245%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e157024157240%_)))
                        (_%hd157025157243%_
                         (let ()
                           (declare (not safe))
                           (##car _%e157024157240%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd157025157243%_))
                        (let ((_%e157027157248%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd157025157243%_))))
                          (let ((_%tl157029157253%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e157027157248%_)))
                                (_%hd157028157251%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e157027157248%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd157028157251%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd157028157251%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl157029157253%_))
                                        (let ((_%e157030157256%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl157029157253%_))))
                                          (let ((_%tl157032157261%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e157030157256%_)))
                                                (_%hd157031157259%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e157030157256%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd157031157259%_))
                                                (let ((_%e157033157264%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd157031157259%_))))
                                                  (let ((_%tl157035157269%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e157033157264%_)))
                                                        (_%hd157034157267%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e157033157264%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd157034157267%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd157034157267%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl157035157269%_))
                        (let ((_%e157036157272%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl157035157269%_))))
                          (let ((_%tl157038157277%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e157036157272%_)))
                                (_%hd157037157275%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e157036157272%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl157038157277%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl157032157261%_))
                                    (let ((_%e157039157280%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl157032157261%_))))
                                      (let ((_%tl157041157285%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e157039157280%_)))
                                            (_%hd157040157283%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e157039157280%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd157040157283%_))
                                            (let ((_%e157042157288%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd157040157283%_))))
                                              (let ((_%tl157044157293%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e157042157288%_)))
                                                    (_%hd157043157291%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e157042157288%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd157043157291%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd157043157291%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl157044157293%_))
                                                            (let ((_%e157045157296%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl157044157293%_))))
                      (let ((_%tl157047157301%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e157045157296%_)))
                            (_%hd157046157299%_
                             (let ()
                               (declare (not safe))
                               (##car _%e157045157296%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl157047157301%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl157026157245%_))
                                (_%__kont159967159968%_
                                 _%hd157046157299%_
                                 _%hd157037157275%_
                                 _%tl157017157218%_
                                 _%arg157023157237%_)
                                (_%__match160068160069%_
                                 _%e157012157208%_
                                 _%hd157013157211%_
                                 _%tl157014157213%_
                                 _%e157024157240%_
                                 _%hd157025157243%_
                                 _%tl157026157245%_
                                 _%e157027157248%_
                                 _%hd157028157251%_
                                 _%tl157029157253%_
                                 _%e157030157256%_
                                 _%hd157031157259%_
                                 _%tl157032157261%_
                                 _%e157033157264%_
                                 _%hd157034157267%_
                                 _%tl157035157269%_
                                 _%e157036157272%_
                                 _%hd157037157275%_
                                 _%tl157038157277%_
                                 _%e157039157280%_
                                 _%hd157040157283%_
                                 _%tl157041157285%_
                                 _%e157042157288%_
                                 _%hd157043157291%_
                                 _%tl157044157293%_
                                 _%e157045157296%_
                                 _%hd157046157299%_
                                 _%tl157047157301%_))
                            (let ()
                              (declare (not safe))
                              (_%g156961157085%_)))))
                    (let () (declare (not safe)) (_%g156961157085%_)))
                (let () (declare (not safe)) (_%g156961157085%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g156961157085%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g156961157085%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g156961157085%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g156961157085%_)))))
                        (let () (declare (not safe)) (_%g156961157085%_)))
                    (let () (declare (not safe)) (_%g156961157085%_)))
                (let () (declare (not safe)) (_%g156961157085%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g156961157085%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g156961157085%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g156961157085%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g156961157085%_)))))
                        (let () (declare (not safe)) (_%g156961157085%_)))))
                (let () (declare (not safe)) (_%g156961157085%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop157018157221%_
                                     _%target157015157216%_
                                     '()))))
                               (_%__match159986159987%_
                                (lambda (_%e156966157344%_
                                         _%hd156967157347%_
                                         _%tl156968157349%_
                                         _%__splice159963159964%_
                                         _%target156969157352%_
                                         _%tl156971157354%_)
                                  (letrec ((_%loop156972157357%_
                                            (lambda (_%hd156970157360%_
                                                     _%arg156976157362%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd156970157360%_))
                                                  (let ((_%e156973157365%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd156970157360%_))))
                                                    (let ((_%lp-tl156975157370%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e156973157365%_)))
                                                          (_%lp-hd156974157368%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e156973157365%_))))
                                                      (_%loop156972157357%_
                                                       _%lp-tl156975157370%_
                                                       (cons _%lp-hd156974157368%_
                                                             _%arg156976157362%_))))
                                                  (let ((_%arg156977157373%_
                                                         (reverse _%arg156976157362%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl156968157349%_))
                                                        (let ((_%e156978157376%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl156968157349%_))))
                  (let ((_%tl156980157381%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e156978157376%_)))
                        (_%hd156979157379%_
                         (let ()
                           (declare (not safe))
                           (##car _%e156978157376%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd156979157379%_))
                        (let ((_%e156981157384%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd156979157379%_))))
                          (let ((_%tl156983157389%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e156981157384%_)))
                                (_%hd156982157387%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e156981157384%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd156982157387%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd156982157387%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl156983157389%_))
                                        (let ((_%e156984157392%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl156983157389%_))))
                                          (let ((_%tl156986157397%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e156984157392%_)))
                                                (_%hd156985157395%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e156984157392%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd156985157395%_))
                                                (let ((_%e156987157400%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd156985157395%_))))
                                                  (let ((_%tl156989157405%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e156987157400%_)))
                                                        (_%hd156988157403%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e156987157400%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd156988157403%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd156988157403%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl156989157405%_))
                        (let ((_%e156990157408%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl156989157405%_))))
                          (let ((_%tl156992157413%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e156990157408%_)))
                                (_%hd156991157411%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e156990157408%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl156992157413%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl156986157397%_))
                                    (let ((_%__splice159965159966%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl156986157397%_
                                              '0))))
                                      (let ((_%tl156995157418%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice159965159966%_
                                                '1)))
                                            (_%target156993157416%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice159965159966%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl156995157418%_))
                                            (letrec ((_%loop156996157421%_
                                                      (lambda (_%hd156994157424%_
                                                               _%xarg157000157426%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd156994157424%_))
                                                            (let ((_%e156997157429%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd156994157424%_))))
                      (let ((_%lp-tl156999157434%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e156997157429%_)))
                            (_%lp-hd156998157432%_
                             (let ()
                               (declare (not safe))
                               (##car _%e156997157429%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd156998157432%_))
                            (let ((_%e157002157437%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd156998157432%_))))
                              (let ((_%tl157004157442%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e157002157437%_)))
                                    (_%hd157003157440%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e157002157437%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd157003157440%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd157003157440%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl157004157442%_))
                                            (let ((_%e157005157445%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl157004157442%_))))
                                              (let ((_%tl157007157450%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e157005157445%_)))
                                                    (_%hd157006157448%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e157005157445%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl157007157450%_))
                                                    (_%loop156996157421%_
                                                     _%lp-tl156999157434%_
                                                     (cons _%hd157006157448%_
                                                           _%xarg157000157426%_))
                                                    (_%__match159998159999%_
                                                     _%e156966157344%_
                                                     _%hd156967157347%_
                                                     _%tl156968157349%_
                                                     _%__splice159963159964%_
                                                     _%target156969157352%_
                                                     _%tl156971157354%_))))
                                            (_%__match159998159999%_
                                             _%e156966157344%_
                                             _%hd156967157347%_
                                             _%tl156968157349%_
                                             _%__splice159963159964%_
                                             _%target156969157352%_
                                             _%tl156971157354%_))
                                        (_%__match159998159999%_
                                         _%e156966157344%_
                                         _%hd156967157347%_
                                         _%tl156968157349%_
                                         _%__splice159963159964%_
                                         _%target156969157352%_
                                         _%tl156971157354%_))
                                    (_%__match159998159999%_
                                     _%e156966157344%_
                                     _%hd156967157347%_
                                     _%tl156968157349%_
                                     _%__splice159963159964%_
                                     _%target156969157352%_
                                     _%tl156971157354%_))))
                            (_%__match159998159999%_
                             _%e156966157344%_
                             _%hd156967157347%_
                             _%tl156968157349%_
                             _%__splice159963159964%_
                             _%target156969157352%_
                             _%tl156971157354%_))))
                    (let ((_%xarg157001157453%_
                           (reverse _%xarg157000157426%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl156980157381%_))
                          (_%__kont159961159962%_
                           _%xarg157001157453%_
                           _%hd156991157411%_
                           _%arg156977157373%_)
                          (_%__match159998159999%_
                           _%e156966157344%_
                           _%hd156967157347%_
                           _%tl156968157349%_
                           _%__splice159963159964%_
                           _%target156969157352%_
                           _%tl156971157354%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop156996157421%_
                                               _%target156993157416%_
                                               '()))
                                            (_%__match159998159999%_
                                             _%e156966157344%_
                                             _%hd156967157347%_
                                             _%tl156968157349%_
                                             _%__splice159963159964%_
                                             _%target156969157352%_
                                             _%tl156971157354%_))))
                                    (_%__match159998159999%_
                                     _%e156966157344%_
                                     _%hd156967157347%_
                                     _%tl156968157349%_
                                     _%__splice159963159964%_
                                     _%target156969157352%_
                                     _%tl156971157354%_))
                                (_%__match159998159999%_
                                 _%e156966157344%_
                                 _%hd156967157347%_
                                 _%tl156968157349%_
                                 _%__splice159963159964%_
                                 _%target156969157352%_
                                 _%tl156971157354%_))))
                        (_%__match159998159999%_
                         _%e156966157344%_
                         _%hd156967157347%_
                         _%tl156968157349%_
                         _%__splice159963159964%_
                         _%target156969157352%_
                         _%tl156971157354%_))
                    (_%__match159998159999%_
                     _%e156966157344%_
                     _%hd156967157347%_
                     _%tl156968157349%_
                     _%__splice159963159964%_
                     _%target156969157352%_
                     _%tl156971157354%_))
                (_%__match159998159999%_
                 _%e156966157344%_
                 _%hd156967157347%_
                 _%tl156968157349%_
                 _%__splice159963159964%_
                 _%target156969157352%_
                 _%tl156971157354%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match159998159999%_
                                                 _%e156966157344%_
                                                 _%hd156967157347%_
                                                 _%tl156968157349%_
                                                 _%__splice159963159964%_
                                                 _%target156969157352%_
                                                 _%tl156971157354%_))))
                                        (_%__match159998159999%_
                                         _%e156966157344%_
                                         _%hd156967157347%_
                                         _%tl156968157349%_
                                         _%__splice159963159964%_
                                         _%target156969157352%_
                                         _%tl156971157354%_))
                                    (_%__match159998159999%_
                                     _%e156966157344%_
                                     _%hd156967157347%_
                                     _%tl156968157349%_
                                     _%__splice159963159964%_
                                     _%target156969157352%_
                                     _%tl156971157354%_))
                                (_%__match159998159999%_
                                 _%e156966157344%_
                                 _%hd156967157347%_
                                 _%tl156968157349%_
                                 _%__splice159963159964%_
                                 _%target156969157352%_
                                 _%tl156971157354%_))))
                        (_%__match159998159999%_
                         _%e156966157344%_
                         _%hd156967157347%_
                         _%tl156968157349%_
                         _%__splice159963159964%_
                         _%target156969157352%_
                         _%tl156971157354%_))))
                (_%__match159998159999%_
                 _%e156966157344%_
                 _%hd156967157347%_
                 _%tl156968157349%_
                 _%__splice159963159964%_
                 _%target156969157352%_
                 _%tl156971157354%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop156972157357%_
                                     _%target156969157352%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx159959159960%_))
                              (let ((_%e156966157344%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx159959159960%_))))
                                (let ((_%tl156968157349%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e156966157344%_)))
                                      (_%hd156967157347%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e156966157344%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd156967157347%_))
                                      (let ((_%__splice159963159964%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%hd156967157347%_
                                                '0))))
                                        (let ((_%tl156971157354%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice159963159964%_
                                                  '1)))
                                              (_%target156969157352%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice159963159964%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl156971157354%_))
                                              (_%__match159986159987%_
                                               _%e156966157344%_
                                               _%hd156967157347%_
                                               _%tl156968157349%_
                                               _%__splice159963159964%_
                                               _%target156969157352%_
                                               _%tl156971157354%_)
                                              (_%__match159998159999%_
                                               _%e156966157344%_
                                               _%hd156967157347%_
                                               _%tl156968157349%_
                                               _%__splice159963159964%_
                                               _%target156969157352%_
                                               _%tl156971157354%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl156968157349%_))
                                          (let ((_%e157054157098%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl156968157349%_))))
                                            (let ((_%tl157056157103%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e157054157098%_)))
                                                  (_%hd157055157101%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e157054157098%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd157055157101%_))
                                                  (let ((_%e157057157106%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd157055157101%_))))
                                                    (let ((_%tl157059157111%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e157057157106%_)))
                                                          (_%hd157058157109%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e157057157106%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd157058157109%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd157058157109%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl157059157111%_))
                          (let ((_%e157060157114%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl157059157111%_))))
                            (let ((_%tl157062157119%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e157060157114%_)))
                                  (_%hd157061157117%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e157060157114%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd157061157117%_))
                                  (let ((_%e157063157122%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd157061157117%_))))
                                    (let ((_%tl157065157127%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e157063157122%_)))
                                          (_%hd157064157125%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e157063157122%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd157064157125%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd157064157125%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl157065157127%_))
                                                  (let ((_%e157066157130%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl157065157127%_))))
                                                    (let ((_%tl157068157135%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e157066157130%_)))
                                                          (_%hd157067157133%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e157066157130%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl157068157135%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl157062157119%_))
                      (let ((_%e157069157138%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl157062157119%_))))
                        (let ((_%tl157071157143%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e157069157138%_)))
                              (_%hd157070157141%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e157069157138%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd157070157141%_))
                              (let ((_%e157072157146%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd157070157141%_))))
                                (let ((_%tl157074157151%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e157072157146%_)))
                                      (_%hd157073157149%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e157072157146%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd157073157149%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd157073157149%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl157074157151%_))
                                              (let ((_%e157075157154%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl157074157151%_))))
                                                (let ((_%tl157077157159%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e157075157154%_)))
                                                      (_%hd157076157157%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e157075157154%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl157077157159%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl157071157143%_))
                                                          (let ((_%e157078157162%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl157071157143%_))))
                    (let ((_%tl157080157167%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e157078157162%_)))
                          (_%hd157079157165%_
                           (let ()
                             (declare (not safe))
                             (##car _%e157078157162%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl157080157167%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl157056157103%_))
                              (_%__kont159971159972%_
                               _%hd157076157157%_
                               _%hd157067157133%_
                               _%hd156967157347%_)
                              (let ()
                                (declare (not safe))
                                (_%g156961157085%_)))
                          (let () (declare (not safe)) (_%g156961157085%_)))))
                  (let () (declare (not safe)) (_%g156961157085%_)))
              (let () (declare (not safe)) (_%g156961157085%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g156961157085%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g156961157085%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g156961157085%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g156961157085%_)))))
                      (let () (declare (not safe)) (_%g156961157085%_)))
                  (let () (declare (not safe)) (_%g156961157085%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g156961157085%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g156961157085%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g156961157085%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g156961157085%_)))))
                          (let () (declare (not safe)) (_%g156961157085%_)))
                      (let () (declare (not safe)) (_%g156961157085%_)))
                  (let () (declare (not safe)) (_%g156961157085%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g156961157085%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g156961157085%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g156961157085%_))))))))
                 (_%generate1156804%_
                  (lambda (_%args156939%_
                           _%arglen156940%_
                           _%hd156941%_
                           _%body156942%_)
                    (let* ((_%len156944%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-length _%hd156941%_)))
                           (_%condition156949%_
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _%hd156941%_))
                                (if (gxc#current-compile-decls-unsafe?)
                                    (cons '##fx=
                                          (cons _%arglen156940%_
                                                (cons _%len156944%_ '())))
                                    (cons 'let
                                          (cons '()
                                                (cons '(declare (not safe))
                                                      (cons (cons '##fx=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%arglen156940%_ (cons _%len156944%_ '())))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (if (> _%len156944%_ '0)
                                    (if (gxc#current-compile-decls-unsafe?)
                                        (cons '##fx>=
                                              (cons _%arglen156940%_
                                                    (cons _%len156944%_ '())))
                                        (cons 'let
                                              (cons '()
                                                    (cons '(declare (not safe))
                                                          (cons (cons '##fx>=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%arglen156940%_ (cons _%len156944%_ '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '#t)))
                           (_%dispatch156951%_
                            (if (_%dispatch-case?156802%_
                                 _%hd156941%_
                                 _%body156942%_)
                                (_%dispatch-case-e156803%_
                                 _%hd156941%_
                                 _%body156942%_)
                                (gxc#generate-runtime-lambda-form
                                 _%self156799%_
                                 _%hd156941%_
                                 _%body156942%_))))
                      (cons _%condition156949%_
                            (cons (cons 'apply
                                        (cons _%dispatch156951%_
                                              (cons _%args156939%_ '())))
                                  '()))))))
          (let* ((_%g156806156834%_
                  (lambda (_%g156807156831%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g156807156831%_))))
                 (_%g156805156936%_
                  (lambda (_%g156807156837%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g156807156837%_))
                        (let ((_%e156810156839%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g156807156837%_))))
                          (let ((_%hd156811156842%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e156810156839%_)))
                                (_%tl156812156844%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e156810156839%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl156812156844%_))
                                (let ((_g161128_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl156812156844%_
                                          '0))))
                                  (begin
                                    (let ((_g161129_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g161128_)
                                                 (##values-length _g161128_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g161129_ 2)))
                                          (error "Context expects 2 values"
                                                 _g161129_)))
                                    (let ((_%target156813156847%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g161128_ 0)))
                                          (_%tl156815156849%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g161128_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl156815156849%_))
                                          (letrec ((_%loop156816156852%_
                                                    (lambda (_%hd156814156855%_
                                                             _%body156820156857%_
                                                             _%hd156821156859%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd156814156855%_))
                                                          (let ((_%e156817156862%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd156814156855%_))))
                    (let ((_%lp-hd156818156865%_
                           (let ()
                             (declare (not safe))
                             (##car _%e156817156862%_)))
                          (_%lp-tl156819156867%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e156817156862%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd156818156865%_))
                          (let ((_%e156824156870%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd156818156865%_))))
                            (let ((_%hd156825156873%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e156824156870%_)))
                                  (_%tl156826156875%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e156824156870%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl156826156875%_))
                                  (let ((_%e156827156878%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl156826156875%_))))
                                    (let ((_%hd156828156881%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e156827156878%_)))
                                          (_%tl156829156883%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e156827156878%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl156829156883%_))
                                          (_%loop156816156852%_
                                           _%lp-tl156819156867%_
                                           (cons _%hd156828156881%_
                                                 _%body156820156857%_)
                                           (cons _%hd156825156873%_
                                                 _%hd156821156859%_))
                                          (_%g156806156834%_
                                           _%g156807156837%_))))
                                  (_%g156806156834%_ _%g156807156837%_))))
                          (_%g156806156834%_ _%g156807156837%_))))
                  (let ((_%body156822156886%_ (reverse _%body156820156857%_))
                        (_%hd156823156888%_ (reverse _%hd156821156859%_)))
                    ((lambda (_%L156891%_ _%L156892%_)
                       (let ((_%args156911%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%arglen156912%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%name156913%_
                              (let ((_%$e156908%_
                                     (let ((__tmp161130
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-runtime-names))))
                                       (declare (not safe))
                                       (hash-get __tmp161130 _%stx156800%_))))
                                (if _%$e156908%_
                                    _%$e156908%_
                                    ''case-lambda-dispatch))))
                         (cons 'lambda
                               (cons _%args156911%_
                                     (cons (cons 'let
                                                 (cons (cons (cons _%arglen156912%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (gxc#current-compile-decls-unsafe?)
                                     (cons '##length (cons _%args156911%_ '()))
                                     (cons 'let
                                           (cons '()
                                                 (cons '(declare (not safe))
                                                       (cons (cons '##length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%args156911%_ '()))
                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 '()))
                     '())
               (cons (cons 'cond
                           (let ((__tmp161134
                                  (cons (cons 'else
                                              (cons (cons '##raise-wrong-number-of-arguments-exception
                                                          (cons _%name156913%_
                                                                (cons _%args156911%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '()))
                                 (__tmp161131
                                  (map (lambda (_%g156914156917%_
                                                _%g156915156919%_)
                                         (_%generate1156804%_
                                          _%args156911%_
                                          _%arglen156912%_
                                          _%g156914156917%_
                                          _%g156915156919%_))
                                       (let ((__tmp161132
                                              (lambda (_%g156921156924%_
                                                       _%g156922156926%_)
                                                (cons _%g156921156924%_
                                                      _%g156922156926%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp161132
                                          '()
                                          _%L156892%_))
                                       (let ((__tmp161133
                                              (lambda (_%g156928156931%_
                                                       _%g156929156933%_)
                                                (cons _%g156928156931%_
                                                      _%g156929156933%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp161133
                                          '()
                                          _%L156891%_)))))
                             (declare (not safe))
                             (__foldr1 cons __tmp161134 __tmp161131)))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))
                     _%body156822156886%_
                     _%hd156823156888%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop156816156852%_
                                             _%target156813156847%_
                                             '()
                                             '()))
                                          (_%g156806156834%_
                                           _%g156807156837%_)))))
                                (_%g156806156834%_ _%g156807156837%_))))
                        (_%g156806156834%_ _%g156807156837%_)))))
            (_%g156805156936%_ _%stx156800%_)))))
    (define gxc#generate-runtime-let-values%__%
      (lambda (_%self156036%_ _%stx156037%_ _%compiled-body?156038%_)
        (letrec ((_%generate-simple156040%_
                  (lambda (_%hd156784%_ _%body156785%_)
                    (_%coalesce-boolean156041%_
                     (_%simplify-let156042%_
                      (gxc#generate-runtime-simple-let
                       _%self156036%_
                       'let
                       _%hd156784%_
                       _%body156785%_
                       _%compiled-body?156038%_)))))
                 (_%coalesce-boolean156041%_
                  (lambda (_%code156645%_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-boolean-context))
                        (let* ((_%code156646156672%_ _%code156645%_)
                               (_%else156648156680%_
                                (lambda () _%code156645%_))
                               (_%K156650156717%_
                                (lambda (_%expr2156683%_
                                         _%expr1156684%_
                                         _%id156685%_)
                                  (let* ((_%expr2156686156694%_
                                          _%expr2156683%_)
                                         (_%else156688156702%_
                                          (lambda ()
                                            (cons 'or
                                                  (cons _%expr1156684%_
                                                        (cons _%expr2156683%_
                                                              '())))))
                                         (_%K156690156707%_
                                          (lambda (_%exprs156705%_)
                                            (cons 'or
                                                  (cons _%expr1156684%_
                                                        _%exprs156705%_)))))
                                    (if (pair? _%expr2156686156694%_)
                                        (let ((_%hd156691156710%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%expr2156686156694%_)))
                                              (_%tl156692156712%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%expr2156686156694%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd156691156710%_ 'or))
                                              (let ((_%exprs156715%_
                                                     _%tl156692156712%_))
                                                (_%K156690156707%_
                                                 _%exprs156715%_))
                                              (_%else156688156702%_)))
                                        (_%else156688156702%_))))))
                          (if (pair? _%code156646156672%_)
                              (let ((_%hd156651156720%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%code156646156672%_)))
                                    (_%tl156652156722%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%code156646156672%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%hd156651156720%_ 'let))
                                    (if (pair? _%tl156652156722%_)
                                        (let ((_%hd156653156725%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%tl156652156722%_)))
                                              (_%tl156654156727%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%tl156652156722%_))))
                                          (if (pair? _%hd156653156725%_)
                                              (let ((_%hd156665156730%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%hd156653156725%_)))
                                                    (_%tl156666156732%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%hd156653156725%_))))
                                                (if (pair? _%hd156665156730%_)
                                                    (let ((_%hd156667156735%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%hd156665156730%_)))
                                                          (_%tl156668156737%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%hd156665156730%_))))
                                                      (let ((_%id156740%_
                                                             _%hd156667156735%_))
                                                        (if (pair? _%tl156668156737%_)
                                                            (let ((_%hd156669156742%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##car _%tl156668156737%_)))
                          (_%tl156670156744%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl156668156737%_))))
                      (let ((_%expr1156747%_ _%hd156669156742%_))
                        (if (null? _%tl156670156744%_)
                            (if (null? _%tl156666156732%_)
                                (if (pair? _%tl156654156727%_)
                                    (let ((_%hd156655156749%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl156654156727%_)))
                                          (_%tl156656156751%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl156654156727%_))))
                                      (if (pair? _%hd156655156749%_)
                                          (let ((_%hd156657156754%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd156655156749%_)))
                                                (_%tl156658156756%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd156655156749%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd156657156754%_
                                                         'if))
                                                (if (pair? _%tl156658156756%_)
                                                    (let ((_%hd156659156759%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl156658156756%_)))
                                                          (_%tl156660156761%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl156658156756%_))))
                                                      (if ((lambda (_%g156763156765%_)
                                                             (eq? _%g156763156765%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id156740%_))
                   _%hd156659156759%_)
                  (if (pair? _%tl156660156761%_)
                      (let ((_%hd156661156768%_
                             (let ()
                               (declare (not safe))
                               (##car _%tl156660156761%_)))
                            (_%tl156662156770%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%tl156660156761%_))))
                        (if ((lambda (_%g156772156774%_)
                               (eq? _%g156772156774%_ _%id156740%_))
                             _%hd156661156768%_)
                            (if (pair? _%tl156662156770%_)
                                (let ((_%hd156663156777%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl156662156770%_)))
                                      (_%tl156664156779%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl156662156770%_))))
                                  (let ((_%expr2156782%_ _%hd156663156777%_))
                                    (if (null? _%tl156664156779%_)
                                        (if (null? _%tl156656156751%_)
                                            (_%K156650156717%_
                                             _%expr2156782%_
                                             _%expr1156747%_
                                             _%id156740%_)
                                            (_%else156648156680%_))
                                        (_%else156648156680%_))))
                                (_%else156648156680%_))
                            (_%else156648156680%_)))
                      (_%else156648156680%_))
                  (_%else156648156680%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else156648156680%_))
                                                (_%else156648156680%_)))
                                          (_%else156648156680%_)))
                                    (_%else156648156680%_))
                                (_%else156648156680%_))
                            (_%else156648156680%_))))
                    (_%else156648156680%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else156648156680%_)))
                                              (_%else156648156680%_)))
                                        (_%else156648156680%_))
                                    (_%else156648156680%_)))
                              (_%else156648156680%_)))
                        _%code156645%_)))
                 (_%simplify-let156042%_
                  (lambda (_%code156344%_)
                    (let* ((_%code156345156417%_ _%code156344%_)
                           (_%else156350156425%_ (lambda () _%code156344%_)))
                      (let ((_%K156409156625%_
                             (lambda (_%expr156623%_) _%expr156623%_))
                            (_%K156392156571%_
                             (lambda (_%body156567%_
                                      _%expr156568%_
                                      _%id156569%_)
                               (cons 'let
                                     (cons (cons (cons _%id156569%_
                                                       (cons _%expr156568%_
                                                             '()))
                                                 '())
                                           _%body156567%_))))
                            (_%K156369156495%_
                             (lambda (_%body156489%_
                                      _%expr2156490%_
                                      _%id2156491%_
                                      _%expr1156492%_
                                      _%id1156493%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1156493%_
                                                       (cons _%expr1156492%_
                                                             '()))
                                                 (cons (cons _%id2156491%_
                                                             (cons _%expr2156490%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body156489%_))))
                            (_%K156352156434%_
                             (lambda (_%body156429%_
                                      _%bind156430%_
                                      _%expr1156431%_
                                      _%id1156432%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1156432%_
                                                       (cons _%expr1156431%_
                                                             '()))
                                                 _%bind156430%_)
                                           _%body156429%_)))))
                        (if (pair? _%code156345156417%_)
                            (let ((_%tl156411156630%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%code156345156417%_)))
                                  (_%hd156410156628%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%code156345156417%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd156410156628%_ 'let))
                                  (if (pair? _%tl156411156630%_)
                                      (let ((_%tl156413156635%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%tl156411156630%_)))
                                            (_%hd156412156633%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%tl156411156630%_))))
                                        (if (null? _%hd156412156633%_)
                                            (if (pair? _%tl156413156635%_)
                                                (let ((_%tl156415156640%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%tl156413156635%_)))
                                                      (_%hd156414156638%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%tl156413156635%_))))
                                                  (if (null? _%tl156415156640%_)
                                                      (let ((_%expr156643%_
                                                             _%hd156414156638%_))
                                                        (_%K156409156625%_
                                                         _%expr156643%_))
                                                      (_%else156350156425%_)))
                                                (_%else156350156425%_))
                                            (if (pair? _%hd156412156633%_)
                                                (let ((_%tl156404156586%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd156412156633%_)))
                                                      (_%hd156403156584%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd156412156633%_))))
                                                  (if (pair? _%hd156403156584%_)
                                                      (let ((_%tl156406156591%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%hd156403156584%_)))
                    (_%hd156405156589%_
                     (let () (declare (not safe)) (##car _%hd156403156584%_))))
                (if (pair? _%tl156406156591%_)
                    (let ((_%tl156408156598%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl156406156591%_)))
                          (_%hd156407156596%_
                           (let ()
                             (declare (not safe))
                             (##car _%tl156406156591%_))))
                      (if (null? _%tl156408156598%_)
                          (if (null? _%tl156404156586%_)
                              (if (pair? _%tl156413156635%_)
                                  (let ((_%tl156398156605%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl156413156635%_)))
                                        (_%hd156397156603%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl156413156635%_))))
                                    (if (pair? _%hd156397156603%_)
                                        (let ((_%tl156400156610%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%hd156397156603%_)))
                                              (_%hd156399156608%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%hd156397156603%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd156399156608%_
                                                       'let))
                                              (if (pair? _%tl156400156610%_)
                                                  (let ((_%tl156402156615%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl156400156610%_)))
                                                        (_%hd156401156613%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl156400156610%_))))
                                                    (if (null? _%hd156401156613%_)
                                                        (if (null? _%tl156398156605%_)
                                                            (let ((_%id156594%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%hd156405156589%_)
                          (_%expr156601%_ _%hd156407156596%_)
                          (_%body156618%_ _%tl156402156615%_))
                      (_%K156392156571%_
                       _%body156618%_
                       _%expr156601%_
                       _%id156594%_))
                    (_%else156350156425%_))
                (if (pair? _%hd156401156613%_)
                    (let ((_%tl156381156544%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%hd156401156613%_)))
                          (_%hd156380156542%_
                           (let ()
                             (declare (not safe))
                             (##car _%hd156401156613%_))))
                      (if (pair? _%hd156380156542%_)
                          (let ((_%tl156383156549%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd156380156542%_)))
                                (_%hd156382156547%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd156380156542%_))))
                            (if (pair? _%tl156383156549%_)
                                (let ((_%tl156385156556%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl156383156549%_)))
                                      (_%hd156384156554%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl156383156549%_))))
                                  (if (null? _%tl156385156556%_)
                                      (if (null? _%tl156381156544%_)
                                          (if (null? _%tl156398156605%_)
                                              (let ((_%id1156518%_
                                                     _%hd156405156589%_)
                                                    (_%expr1156525%_
                                                     _%hd156407156596%_)
                                                    (_%id2156552%_
                                                     _%hd156382156547%_)
                                                    (_%expr2156559%_
                                                     _%hd156384156554%_)
                                                    (_%body156561%_
                                                     _%tl156402156615%_))
                                                (_%K156369156495%_
                                                 _%body156561%_
                                                 _%expr2156559%_
                                                 _%id2156552%_
                                                 _%expr1156525%_
                                                 _%id1156518%_))
                                              (_%else156350156425%_))
                                          (_%else156350156425%_))
                                      (_%else156350156425%_)))
                                (_%else156350156425%_)))
                          (_%else156350156425%_)))
                    (_%else156350156425%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else156350156425%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##eq? _%hd156399156608%_
                                                           'let*))
                                                  (if (pair? _%tl156400156610%_)
                                                      (let ((_%tl156362156478%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%tl156400156610%_)))
                    (_%hd156361156476%_
                     (let () (declare (not safe)) (##car _%tl156400156610%_))))
                (if (null? _%tl156398156605%_)
                    (let ((_%id1156457%_ _%hd156405156589%_)
                          (_%expr1156464%_ _%hd156407156596%_)
                          (_%bind156481%_ _%hd156361156476%_)
                          (_%body156483%_ _%tl156362156478%_))
                      (_%K156352156434%_
                       _%body156483%_
                       _%bind156481%_
                       _%expr1156464%_
                       _%id1156457%_))
                    (_%else156350156425%_)))
              (_%else156350156425%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else156350156425%_))))
                                        (_%else156350156425%_)))
                                  (_%else156350156425%_))
                              (_%else156350156425%_))
                          (_%else156350156425%_)))
                    (_%else156350156425%_)))
              (_%else156350156425%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else156350156425%_))))
                                      (_%else156350156425%_))
                                  (_%else156350156425%_)))
                            (_%else156350156425%_))))))
                 (_%generate-values156043%_
                  (lambda (_%hd156157%_ _%body156158%_)
                    (let _%lp156160%_ ((_%rest156162%_ _%hd156157%_)
                                       (_%bind156163%_ '())
                                       (_%check156164%_ '())
                                       (_%post156165%_ '()))
                      (let* ((_%__stx160288160289%_ _%rest156162%_)
                             (_%g156168156179%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx160288160289%_)))))
                        (let ((_%__kont160290160291%_
                               (lambda (_%L156206%_ _%L156207%_)
                                 (let* ((_%__stx160244160245%_ _%L156207%_)
                                        (_%g156222156247%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx160244160245%_)))))
                                   (let ((_%__kont160246160247%_
                                          (lambda (_%L156320%_ _%L156321%_)
                                            (let ((_%eid156335%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%L156321%_)))
                                                  (_%expr156336%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self156036%_
                                                      _%L156320%_))))
                                              (_%lp156160%_
                                               _%L156206%_
                                               (cons (cons _%eid156335%_
                                                           (cons _%expr156336%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind156163%_)
                                               _%check156164%_
                                               _%post156165%_))))
                                         (_%__kont160248160249%_
                                          (lambda (_%L156268%_ _%L156269%_)
                                            (let* ((_%vals156282%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values156284%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals156282%_
                                                     _%L156269%_
                                                     _%L156268%_))
                                                   (_%refs156286%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals156282%_
                                                     _%L156269%_))
                                                   (_%expr156288%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self156036%_
                                                       _%L156268%_))))
                                              (_%lp156160%_
                                               _%L156206%_
                                               (cons (cons _%vals156282%_
                                                           (cons _%expr156288%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind156163%_)
                                               (cons _%check-values156284%_
                                                     _%check156164%_)
                                               (cons _%refs156286%_
                                                     _%post156165%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx160244160245%_))
                                         (let ((_%e156226156296%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx160244160245%_))))
                                           (let ((_%tl156228156301%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e156226156296%_)))
                                                 (_%hd156227156299%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e156226156296%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd156227156299%_))
                                                 (let ((_%e156229156304%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd156227156299%_))))
                                                   (let ((_%tl156231156309%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e156229156304%_)))
                                                         (_%hd156230156307%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e156229156304%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl156231156309%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl156228156301%_))
                     (let ((_%e156232156312%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl156228156301%_))))
                       (let ((_%tl156234156317%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e156232156312%_)))
                             (_%hd156233156315%_
                              (let ()
                                (declare (not safe))
                                (##car _%e156232156312%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl156234156317%_))
                             (_%__kont160246160247%_
                              _%hd156233156315%_
                              _%hd156230156307%_)
                             (let ()
                               (declare (not safe))
                               (_%g156222156247%_)))))
                     (let () (declare (not safe)) (_%g156222156247%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl156228156301%_))
                     (let ((_%e156240156260%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl156228156301%_))))
                       (let ((_%tl156242156265%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e156240156260%_)))
                             (_%hd156241156263%_
                              (let ()
                                (declare (not safe))
                                (##car _%e156240156260%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl156242156265%_))
                             (_%__kont160248160249%_
                              _%hd156241156263%_
                              _%hd156227156299%_)
                             (let ()
                               (declare (not safe))
                               (_%g156222156247%_)))))
                     (let () (declare (not safe)) (_%g156222156247%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl156228156301%_))
                                                     (let ((_%e156240156260%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl156228156301%_))))
                                                       (let ((_%tl156242156265%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e156240156260%_)))
                     (_%hd156241156263%_
                      (let () (declare (not safe)) (##car _%e156240156260%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl156242156265%_))
                     (_%__kont160248160249%_
                      _%hd156241156263%_
                      _%hd156227156299%_)
                     (let () (declare (not safe)) (_%g156222156247%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g156222156247%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g156222156247%_)))))))
                              (_%__kont160292160293%_
                               (lambda ()
                                 (let* ((_%body156186%_
                                         (if _%compiled-body?156038%_
                                             _%body156158%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self156036%_
                                                _%body156158%_))))
                                        (_%body156188%_
                                         (_%generate-values-post156044%_
                                          _%post156165%_
                                          _%body156186%_))
                                        (_%body156190%_
                                         (_%generate-values-check156045%_
                                          _%check156164%_
                                          _%body156188%_)))
                                   (cons 'let
                                         (cons (reverse _%bind156163%_)
                                               (cons _%body156190%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx160288160289%_))
                              (let ((_%e156172156198%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx160288160289%_))))
                                (let ((_%tl156174156203%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e156172156198%_)))
                                      (_%hd156173156201%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e156172156198%_))))
                                  (_%__kont160290160291%_
                                   _%tl156174156203%_
                                   _%hd156173156201%_)))
                              (_%__kont160292160293%_)))))))
                 (_%generate-values-post156044%_
                  (lambda (_%post156116%_ _%body156117%_)
                    (let _%lp156119%_ ((_%rest156121%_ _%post156116%_)
                                       (_%body156122%_ _%body156117%_))
                      (let* ((_%rest156123156131%_ _%rest156121%_)
                             (_%else156125156139%_ (lambda () _%body156122%_))
                             (_%K156127156145%_
                              (lambda (_%rest156142%_ _%bind156143%_)
                                (_%lp156119%_
                                 _%rest156142%_
                                 (cons 'let
                                       (cons _%bind156143%_
                                             (cons _%body156122%_ '())))))))
                        (if (pair? _%rest156123156131%_)
                            (let ((_%hd156128156148%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest156123156131%_)))
                                  (_%tl156129156150%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest156123156131%_))))
                              (let* ((_%bind156153%_ _%hd156128156148%_)
                                     (_%rest156155%_ _%tl156129156150%_))
                                (_%K156127156145%_
                                 _%rest156155%_
                                 _%bind156153%_)))
                            (_%else156125156139%_))))))
                 (_%generate-values-check156045%_
                  (lambda (_%check156113%_ _%body156114%_)
                    (cons 'begin
                          (let ((__tmp161136 (cons _%body156114%_ '()))
                                (__tmp161135 (reverse _%check156113%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp161136 __tmp161135))))))
          (let* ((_%g156047156064%_
                  (lambda (_%g156048156061%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g156048156061%_))))
                 (_%g156046156110%_
                  (lambda (_%g156048156067%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g156048156067%_))
                        (let ((_%e156051156069%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g156048156067%_))))
                          (let ((_%hd156052156072%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e156051156069%_)))
                                (_%tl156053156074%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e156051156069%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl156053156074%_))
                                (let ((_%e156054156077%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl156053156074%_))))
                                  (let ((_%hd156055156080%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e156054156077%_)))
                                        (_%tl156056156082%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e156054156077%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl156056156082%_))
                                        (let ((_%e156057156085%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl156056156082%_))))
                                          (let ((_%hd156058156088%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e156057156085%_)))
                                                (_%tl156059156090%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e156057156085%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl156059156090%_))
                                                ((lambda (_%L156093%_
                                                          _%L156094%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%L156094%_)
                                                       (_%generate-simple156040%_
                                                        _%L156094%_
                                                        _%L156093%_)
                                                       (_%generate-values156043%_
                                                        _%L156094%_
                                                        _%L156093%_)))
                                                 _%hd156058156088%_
                                                 _%hd156055156080%_)
                                                (_%g156047156064%_
                                                 _%g156048156067%_))))
                                        (_%g156047156064%_
                                         _%g156048156067%_))))
                                (_%g156047156064%_ _%g156048156067%_))))
                        (_%g156047156064%_ _%g156048156067%_)))))
            (_%g156046156110%_ _%stx156037%_)))))
    (define gxc#generate-runtime-let-values%__0
      (lambda (_%self156790%_ _%stx156791%_)
        (let ((_%compiled-body?156793%_ '#f))
          (gxc#generate-runtime-let-values%__%
           _%self156790%_
           _%stx156791%_
           _%compiled-body?156793%_))))
    (define gxc#generate-runtime-let-values%
      (lambda _g161137_
        (let ((_g161138_ (let () (declare (not safe)) (##length _g161137_))))
          (cond ((let () (declare (not safe)) (##fx= _g161138_ 2))
                 (apply gxc#generate-runtime-let-values%__0 _g161137_))
                ((let () (declare (not safe)) (##fx= _g161138_ 3))
                 (apply gxc#generate-runtime-let-values%__% _g161137_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-let-values%
                  _g161137_))))))
    (define gxc#generate-runtime-let-values-bind
      (lambda (_%vals155930%_ _%hd155931%_)
        (let _%lp155933%_ ((_%rest155935%_ _%hd155931%_)
                           (_%k155936%_ '0)
                           (_%r155937%_ '()))
          (let* ((_%__stx160302160303%_ _%rest155935%_)
                 (_%g155942155959%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx160302160303%_)))))
            (let ((_%__kont160304160305%_
                   (lambda (_%L156022%_)
                     (_%lp155933%_
                      _%L156022%_
                      (let () (declare (not safe)) (##fx+ _%k155936%_ '1))
                      _%r155937%_)))
                  (_%__kont160306160307%_
                   (lambda (_%L155995%_ _%L155996%_)
                     (_%lp155933%_
                      _%L155995%_
                      (let () (declare (not safe)) (##fx+ _%k155936%_ '1))
                      (cons (cons (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-binding-id
                                     _%L155996%_))
                                  (cons (gxc#generate-runtime-values-ref
                                         _%vals155930%_
                                         _%k155936%_
                                         _%L155995%_)
                                        '()))
                            _%r155937%_))))
                  (_%__kont160308160309%_
                   (lambda (_%L155971%_)
                     (let ((__tmp161139
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-binding-id
                                           _%L155971%_))
                                        (cons (gxc#generate-runtime-values->list
                                               _%vals155930%_
                                               _%k155936%_)
                                              '()))
                                  '())))
                       (declare (not safe))
                       (__foldl1 cons __tmp161139 _%r155937%_))))
                  (_%__kont160310160311%_ (lambda () (reverse _%r155937%_))))
              (let ((_%g155940155982%_
                     (lambda ()
                       (let ((_%L155971%_ _%__stx160302160303%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%L155971%_))
                             (_%__kont160308160309%_ _%L155971%_)
                             (_%__kont160310160311%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx160302160303%_))
                    (let ((_%e155945156011%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx160302160303%_))))
                      (let ((_%tl155947156016%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e155945156011%_)))
                            (_%hd155946156014%_
                             (let ()
                               (declare (not safe))
                               (##car _%e155945156011%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _%hd155946156014%_))
                            (let ((_%e155948156019%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd155946156014%_))))
                              (if (equal? _%e155948156019%_ '#f)
                                  (_%__kont160304160305%_ _%tl155947156016%_)
                                  (_%__kont160306160307%_
                                   _%tl155947156016%_
                                   _%hd155946156014%_)))
                            (_%__kont160306160307%_
                             _%tl155947156016%_
                             _%hd155946156014%_))))
                    (let () (declare (not safe)) (_%g155940155982%_)))))))))
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_%self155609%_ _%stx155610%_ _%compiled-body?155611%_)
        (letrec ((_%generate-simple155613%_
                  (lambda (_%hd155915%_ _%body155916%_)
                    (gxc#generate-runtime-simple-let
                     _%self155609%_
                     'letrec
                     _%hd155915%_
                     _%body155916%_
                     _%compiled-body?155611%_)))
                 (_%generate-values155614%_
                  (lambda (_%hd155694%_ _%body155695%_)
                    (let _%lp155697%_ ((_%rest155699%_ _%hd155694%_)
                                       (_%bind155700%_ '())
                                       (_%check155701%_ '())
                                       (_%post155702%_ '()))
                      (let* ((_%__stx160376160377%_ _%rest155699%_)
                             (_%g155705155716%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx160376160377%_)))))
                        (let ((_%__kont160378160379%_
                               (lambda (_%L155743%_ _%L155744%_)
                                 (let* ((_%__stx160332160333%_ _%L155744%_)
                                        (_%g155759155784%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx160332160333%_)))))
                                   (let ((_%__kont160334160335%_
                                          (lambda (_%L155891%_ _%L155892%_)
                                            (let ((_%eid155906%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%L155892%_)))
                                                  (_%expr155907%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self155609%_
                                                      _%L155891%_))))
                                              (_%lp155697%_
                                               _%L155743%_
                                               (cons (cons _%eid155906%_
                                                           (cons _%expr155907%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind155700%_)
                                               _%check155701%_
                                               _%post155702%_))))
                                         (_%__kont160336160337%_
                                          (lambda (_%L155805%_ _%L155806%_)
                                            (let* ((_%vals155819%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values155821%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals155819%_
                                                     _%L155806%_
                                                     _%L155805%_))
                                                   (_%refs155823%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals155819%_
                                                     _%L155806%_))
                                                   (_%expr155825%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self155609%_
                                                       _%L155805%_))))
                                              (_%lp155697%_
                                               _%L155743%_
                                               (let ((__tmp161141
                                                      (cons (cons _%vals155819%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr155825%_ '()))
                    _%bind155700%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp161140
                                                      (map (lambda (_%e155827155829%_)
                                                             (let* ((_%g155831155840%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%e155827155829%_)
                            (_%E155833155844%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%g155831155840%_
                                        '([eid _])))
                               '#!void))
                            (_%K155834155849%_
                             (lambda (_%eid155847%_)
                               (cons _%eid155847%_ (cons '#!void '())))))
                       (if (pair? _%g155831155840%_)
                           (let ((_%hd155835155852%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%g155831155840%_)))
                                 (_%tl155836155854%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%g155831155840%_))))
                             (let ((_%eid155857%_ _%hd155835155852%_))
                               (if (pair? _%tl155836155854%_)
                                   (let ((_%tl155838155859%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%tl155836155854%_))))
                                     (if (null? _%tl155838155859%_)
                                         (_%K155834155849%_ _%eid155857%_)
                                         (_%E155833155844%_)))
                                   (_%E155833155844%_))))
                           (_%E155833155844%_))))
                   _%refs155823%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (__foldl1
                                                  cons
                                                  __tmp161141
                                                  __tmp161140))
                                               (cons _%check-values155821%_
                                                     _%check155701%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (__foldl1
                                                  cons
                                                  _%refs155823%_
                                                  _%post155702%_)))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx160332160333%_))
                                         (let ((_%e155763155867%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx160332160333%_))))
                                           (let ((_%tl155765155872%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e155763155867%_)))
                                                 (_%hd155764155870%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e155763155867%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd155764155870%_))
                                                 (let ((_%e155766155875%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd155764155870%_))))
                                                   (let ((_%tl155768155880%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e155766155875%_)))
                                                         (_%hd155767155878%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e155766155875%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl155768155880%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl155765155872%_))
                     (let ((_%e155769155883%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl155765155872%_))))
                       (let ((_%tl155771155888%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e155769155883%_)))
                             (_%hd155770155886%_
                              (let ()
                                (declare (not safe))
                                (##car _%e155769155883%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl155771155888%_))
                             (_%__kont160334160335%_
                              _%hd155770155886%_
                              _%hd155767155878%_)
                             (let ()
                               (declare (not safe))
                               (_%g155759155784%_)))))
                     (let () (declare (not safe)) (_%g155759155784%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl155765155872%_))
                     (let ((_%e155777155797%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl155765155872%_))))
                       (let ((_%tl155779155802%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e155777155797%_)))
                             (_%hd155778155800%_
                              (let ()
                                (declare (not safe))
                                (##car _%e155777155797%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl155779155802%_))
                             (_%__kont160336160337%_
                              _%hd155778155800%_
                              _%hd155764155870%_)
                             (let ()
                               (declare (not safe))
                               (_%g155759155784%_)))))
                     (let () (declare (not safe)) (_%g155759155784%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl155765155872%_))
                                                     (let ((_%e155777155797%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl155765155872%_))))
                                                       (let ((_%tl155779155802%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e155777155797%_)))
                     (_%hd155778155800%_
                      (let () (declare (not safe)) (##car _%e155777155797%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl155779155802%_))
                     (_%__kont160336160337%_
                      _%hd155778155800%_
                      _%hd155764155870%_)
                     (let () (declare (not safe)) (_%g155759155784%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g155759155784%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g155759155784%_)))))))
                              (_%__kont160380160381%_
                               (lambda ()
                                 (let* ((_%body155723%_
                                         (if _%compiled-body?155611%_
                                             _%body155695%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self155609%_
                                                _%body155695%_))))
                                        (_%body155725%_
                                         (_%generate-values-post155616%_
                                          _%post155702%_
                                          _%body155723%_))
                                        (_%body155727%_
                                         (_%generate-values-check155615%_
                                          _%check155701%_
                                          _%body155725%_)))
                                   (cons 'letrec
                                         (cons (reverse _%bind155700%_)
                                               (cons _%body155727%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx160376160377%_))
                              (let ((_%e155709155735%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx160376160377%_))))
                                (let ((_%tl155711155740%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e155709155735%_)))
                                      (_%hd155710155738%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e155709155735%_))))
                                  (_%__kont160378160379%_
                                   _%tl155711155740%_
                                   _%hd155710155738%_)))
                              (_%__kont160380160381%_)))))))
                 (_%generate-values-check155615%_
                  (lambda (_%check155691%_ _%body155692%_)
                    (cons 'begin
                          (let ((__tmp161143 (cons _%body155692%_ '()))
                                (__tmp161142 (reverse _%check155691%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp161143 __tmp161142)))))
                 (_%generate-values-post155616%_
                  (lambda (_%post155684%_ _%body155685%_)
                    (cons 'begin
                          (let ((__tmp161147 (cons _%body155685%_ '()))
                                (__tmp161144
                                 (let ((__tmp161146
                                        (lambda (_%g155686155688%_)
                                          (cons 'set! _%g155686155688%_)))
                                       (__tmp161145 (reverse _%post155684%_)))
                                   (declare (not safe))
                                   (##map __tmp161146 __tmp161145))))
                            (declare (not safe))
                            (__foldr1 cons __tmp161147 __tmp161144))))))
          (let* ((_%g155618155635%_
                  (lambda (_%g155619155632%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g155619155632%_))))
                 (_%g155617155681%_
                  (lambda (_%g155619155638%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g155619155638%_))
                        (let ((_%e155622155640%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g155619155638%_))))
                          (let ((_%hd155623155643%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e155622155640%_)))
                                (_%tl155624155645%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e155622155640%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl155624155645%_))
                                (let ((_%e155625155648%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl155624155645%_))))
                                  (let ((_%hd155626155651%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e155625155648%_)))
                                        (_%tl155627155653%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e155625155648%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl155627155653%_))
                                        (let ((_%e155628155656%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl155627155653%_))))
                                          (let ((_%hd155629155659%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e155628155656%_)))
                                                (_%tl155630155661%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e155628155656%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl155630155661%_))
                                                ((lambda (_%L155664%_
                                                          _%L155665%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%L155665%_)
                                                       (_%generate-simple155613%_
                                                        _%L155665%_
                                                        _%L155664%_)
                                                       (_%generate-values155614%_
                                                        _%L155665%_
                                                        _%L155664%_)))
                                                 _%hd155629155659%_
                                                 _%hd155626155651%_)
                                                (_%g155618155635%_
                                                 _%g155619155638%_))))
                                        (_%g155618155635%_
                                         _%g155619155638%_))))
                                (_%g155618155635%_ _%g155619155638%_))))
                        (_%g155618155635%_ _%g155619155638%_)))))
            (_%g155617155681%_ _%stx155610%_)))))
    (define gxc#generate-runtime-letrec-values%__0
      (lambda (_%self155921%_ _%stx155922%_)
        (let ((_%compiled-body?155924%_ '#f))
          (gxc#generate-runtime-letrec-values%__%
           _%self155921%_
           _%stx155922%_
           _%compiled-body?155924%_))))
    (define gxc#generate-runtime-letrec-values%
      (lambda _g161148_
        (let ((_g161149_ (let () (declare (not safe)) (##length _g161148_))))
          (cond ((let () (declare (not safe)) (##fx= _g161149_ 2))
                 (apply gxc#generate-runtime-letrec-values%__0 _g161148_))
                ((let () (declare (not safe)) (##fx= _g161149_ 3))
                 (apply gxc#generate-runtime-letrec-values%__% _g161148_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-letrec-values%
                  _g161148_))))))
    (define gxc#generate-runtime-letrec*-values%
      (lambda (_%self155190%_ _%stx155191%_)
        (letrec ((_%generate-values155193%_
                  (lambda (_%hd155436%_ _%body155437%_)
                    (let _%lp155439%_ ((_%rest155441%_ _%hd155436%_)
                                       (_%bind155442%_ '()))
                      (let* ((_%rest155443155451%_ _%rest155441%_)
                             (_%else155445155462%_
                              (lambda ()
                                (let ((_%bind155459%_ (reverse _%bind155442%_))
                                      (_%body155460%_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self155190%_
                                          _%body155437%_))))
                                  (cons 'letrec*
                                        (cons _%bind155459%_
                                              (cons _%body155460%_ '()))))))
                             (_%K155447155596%_
                              (lambda (_%rest155465%_ _%hd-bind155466%_)
                                (let* ((_%__stx160390160391%_
                                        _%hd-bind155466%_)
                                       (_%g155469155494%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx160390160391%_)))))
                                  (let ((_%__kont160392160393%_
                                         (lambda (_%L155575%_ _%L155576%_)
                                           (let ((_%eid155590%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-binding-id*
                                                     _%L155576%_)))
                                                 (_%expr155591%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self155190%_
                                                     _%L155575%_))))
                                             (_%lp155439%_
                                              _%rest155465%_
                                              (cons (cons _%eid155590%_
                                                          (cons _%expr155591%_
                                                                '()))
                                                    _%bind155442%_)))))
                                        (_%__kont160394160395%_
                                         (lambda (_%L155515%_ _%L155516%_)
                                           (let* ((_%vals155535%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%tmp155537%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%check-values155539%_
                                                   (gxc#generate-runtime-check-values
                                                    _%tmp155537%_
                                                    _%L155516%_
                                                    _%L155515%_))
                                                  (_%refs155541%_
                                                   (gxc#generate-runtime-let-values-bind
                                                    _%vals155535%_
                                                    _%L155516%_))
                                                  (_%expr155543%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self155190%_
                                                      _%L155515%_))))
                                             (_%lp155439%_
                                              _%rest155465%_
                                              (let ((__tmp161150
                                                     (cons (cons _%vals155535%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'let
                                     (cons (cons (cons _%tmp155537%_
                                                       (cons _%expr155543%_
                                                             '()))
                                                 '())
                                           (cons _%check-values155539%_
                                                 (cons _%tmp155537%_ '()))))
                               '()))
                   _%bind155442%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 __tmp161150
                                                 _%refs155541%_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx160390160391%_))
                                        (let ((_%e155473155551%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx160390160391%_))))
                                          (let ((_%tl155475155556%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e155473155551%_)))
                                                (_%hd155474155554%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e155473155551%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd155474155554%_))
                                                (let ((_%e155476155559%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd155474155554%_))))
                                                  (let ((_%tl155478155564%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e155476155559%_)))
                                                        (_%hd155477155562%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e155476155559%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl155478155564%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl155475155556%_))
                                                            (let ((_%e155479155567%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl155475155556%_))))
                      (let ((_%tl155481155572%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e155479155567%_)))
                            (_%hd155480155570%_
                             (let ()
                               (declare (not safe))
                               (##car _%e155479155567%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl155481155572%_))
                            (_%__kont160392160393%_
                             _%hd155480155570%_
                             _%hd155477155562%_)
                            (let ()
                              (declare (not safe))
                              (_%g155469155494%_)))))
                    (let () (declare (not safe)) (_%g155469155494%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl155475155556%_))
                    (let ((_%e155487155507%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl155475155556%_))))
                      (let ((_%tl155489155512%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e155487155507%_)))
                            (_%hd155488155510%_
                             (let ()
                               (declare (not safe))
                               (##car _%e155487155507%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl155489155512%_))
                            (_%__kont160394160395%_
                             _%hd155488155510%_
                             _%hd155474155554%_)
                            (let ()
                              (declare (not safe))
                              (_%g155469155494%_)))))
                    (let () (declare (not safe)) (_%g155469155494%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl155475155556%_))
                                                    (let ((_%e155487155507%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl155475155556%_))))
                                                      (let ((_%tl155489155512%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e155487155507%_)))
                    (_%hd155488155510%_
                     (let () (declare (not safe)) (##car _%e155487155507%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl155489155512%_))
                    (_%__kont160394160395%_
                     _%hd155488155510%_
                     _%hd155474155554%_)
                    (let () (declare (not safe)) (_%g155469155494%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g155469155494%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g155469155494%_))))))))
                        (if (pair? _%rest155443155451%_)
                            (let ((_%hd155448155599%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest155443155451%_)))
                                  (_%tl155449155601%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest155443155451%_))))
                              (let* ((_%hd-bind155604%_ _%hd155448155599%_)
                                     (_%rest155606%_ _%tl155449155601%_))
                                (_%K155447155596%_
                                 _%rest155606%_
                                 _%hd-bind155604%_)))
                            (_%else155445155462%_))))))
                 (_%generate-letrec?155194%_
                  (lambda (_%hd155326%_)
                    (let _%lp155328%_ ((_%rest155330%_ _%hd155326%_))
                      (let* ((_%rest155331155339%_ _%rest155330%_)
                             (_%else155333155347%_ (lambda () '#t))
                             (_%K155335155424%_
                              (lambda (_%rest155350%_ _%hd-bind155351%_)
                                (let* ((_%g155353155370%_
                                        (lambda (_%g155354155367%_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g155354155367%_))))
                                       (_%g155352155421%_
                                        (lambda (_%g155354155373%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%g155354155373%_))
                                              (let ((_%e155357155375%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%g155354155373%_))))
                                                (let ((_%hd155358155378%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e155357155375%_)))
                                                      (_%tl155359155380%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e155357155375%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd155358155378%_))
                                                      (let ((_%e155360155383%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd155358155378%_))))
                (let ((_%hd155361155386%_
                       (let () (declare (not safe)) (##car _%e155360155383%_)))
                      (_%tl155362155388%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e155360155383%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl155362155388%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl155359155380%_))
                          (let ((_%e155363155391%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl155359155380%_))))
                            (let ((_%hd155364155394%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e155363155391%_)))
                                  (_%tl155365155396%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e155363155391%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl155365155396%_))
                                  ((lambda (_%L155399%_ _%L155400%_)
                                     (if (_%is-lambda-expr?155195%_
                                          _%L155399%_)
                                         (_%lp155328%_ _%rest155350%_)
                                         '#f))
                                   _%hd155364155394%_
                                   _%hd155361155386%_)
                                  (_%g155353155370%_ _%g155354155373%_))))
                          (_%g155353155370%_ _%g155354155373%_))
                      (_%g155353155370%_ _%g155354155373%_))))
              (_%g155353155370%_ _%g155354155373%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g155353155370%_
                                               _%g155354155373%_)))))
                                  (_%g155352155421%_ _%hd-bind155351%_)))))
                        (if (pair? _%rest155331155339%_)
                            (let ((_%hd155336155427%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest155331155339%_)))
                                  (_%tl155337155429%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest155331155339%_))))
                              (let* ((_%hd-bind155432%_ _%hd155336155427%_)
                                     (_%rest155434%_ _%tl155337155429%_))
                                (_%K155335155424%_
                                 _%rest155434%_
                                 _%hd-bind155432%_)))
                            (_%else155333155347%_))))))
                 (_%is-lambda-expr?155195%_
                  (lambda (_%expr155263%_)
                    (let* ((_%__stx160434160435%_ _%expr155263%_)
                           (_%g155266155280%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx160434160435%_)))))
                      (let ((_%__kont160436160437%_
                             (lambda (_%L155308%_ _%L155309%_) '#t))
                            (_%__kont160438160439%_ (lambda () '#f)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%__stx160434160435%_))
                            (let ((_%e155270155292%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%__stx160434160435%_))))
                              (let ((_%tl155272155297%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e155270155292%_)))
                                    (_%hd155271155295%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e155270155292%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd155271155295%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd155271155295%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl155272155297%_))
                                            (let ((_%e155273155300%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl155272155297%_))))
                                              (let ((_%tl155275155305%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e155273155300%_)))
                                                    (_%hd155274155303%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e155273155300%_))))
                                                (_%__kont160436160437%_
                                                 _%tl155275155305%_
                                                 _%hd155274155303%_)))
                                            (_%__kont160438160439%_))
                                        (_%__kont160438160439%_))
                                    (_%__kont160438160439%_))))
                            (_%__kont160438160439%_)))))))
          (let* ((_%g155197155214%_
                  (lambda (_%g155198155211%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g155198155211%_))))
                 (_%g155196155260%_
                  (lambda (_%g155198155217%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g155198155217%_))
                        (let ((_%e155201155219%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g155198155217%_))))
                          (let ((_%hd155202155222%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e155201155219%_)))
                                (_%tl155203155224%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e155201155219%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl155203155224%_))
                                (let ((_%e155204155227%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl155203155224%_))))
                                  (let ((_%hd155205155230%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e155204155227%_)))
                                        (_%tl155206155232%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e155204155227%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl155206155232%_))
                                        (let ((_%e155207155235%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl155206155232%_))))
                                          (let ((_%hd155208155238%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e155207155235%_)))
                                                (_%tl155209155240%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e155207155235%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl155209155240%_))
                                                ((lambda (_%L155243%_
                                                          _%L155244%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%L155244%_)
                                                       (if (_%generate-letrec?155194%_
                                                            _%L155244%_)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self155190%_
                                                            'letrec
                                                            _%L155244%_
                                                            _%L155243%_
                                                            '#f)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self155190%_
                                                            'letrec*
                                                            _%L155244%_
                                                            _%L155243%_
                                                            '#f))
                                                       (_%generate-values155193%_
                                                        _%L155244%_
                                                        _%L155243%_)))
                                                 _%hd155208155238%_
                                                 _%hd155205155230%_)
                                                (_%g155197155214%_
                                                 _%g155198155217%_))))
                                        (_%g155197155214%_
                                         _%g155198155217%_))))
                                (_%g155197155214%_ _%g155198155217%_))))
                        (_%g155197155214%_ _%g155198155217%_)))))
            (_%g155196155260%_ _%stx155191%_)))))
    (define gxc#generate-runtime-simple-let?
      (lambda (_%hd155127%_)
        (let _%lp155129%_ ((_%rest155131%_ _%hd155127%_))
          (let* ((_%rest155132155148%_ _%rest155131%_)
                 (_%else155135155156%_ (lambda () '#f)))
            (let ((_%K155138155169%_
                   (lambda (_%rest155167%_) (_%lp155129%_ _%rest155167%_)))
                  (_%K155137155161%_ (lambda () '#t)))
              (let ((_%try-match155134155164%_
                     (lambda ()
                       (if (null? _%rest155132155148%_)
                           (_%K155137155161%_)
                           (_%else155135155156%_)))))
                (if (pair? _%rest155132155148%_)
                    (let ((_%tl155140155174%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest155132155148%_)))
                          (_%hd155139155172%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest155132155148%_))))
                      (if (pair? _%hd155139155172%_)
                          (let ((_%tl155142155179%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd155139155172%_)))
                                (_%hd155141155177%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd155139155172%_))))
                            (if (pair? _%hd155141155177%_)
                                (let ((_%tl155146155182%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd155141155177%_))))
                                  (if (null? _%tl155146155182%_)
                                      (if (pair? _%tl155142155179%_)
                                          (let ((_%tl155144155185%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl155142155179%_))))
                                            (if (null? _%tl155144155185%_)
                                                (let ((_%rest155188%_
                                                       _%tl155140155174%_))
                                                  (_%lp155129%_
                                                   _%rest155188%_))
                                                (_%else155135155156%_)))
                                          (_%else155135155156%_))
                                      (_%else155135155156%_)))
                                (_%else155135155156%_)))
                          (_%else155135155156%_)))
                    (_%try-match155134155164%_))))))))
    (define gxc#generate-runtime-simple-let
      (lambda (_%self155038%_
               _%form155039%_
               _%hd155040%_
               _%body155041%_
               _%compiled-body?155042%_)
        (letrec ((_%generate1155044%_
                  (lambda (_%bind155083%_)
                    (let* ((_%bind155084155095%_ _%bind155083%_)
                           (_%E155086155099%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%bind155084155095%_
                                       '([[id] expr])))
                              '#!void))
                           (_%K155087155105%_
                            (lambda (_%expr155102%_ _%id155103%_)
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-binding-id*
                                       _%id155103%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self155038%_
                                             _%expr155102%_))
                                          '())))))
                      (if (pair? _%bind155084155095%_)
                          (let ((_%hd155088155108%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%bind155084155095%_)))
                                (_%tl155089155110%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%bind155084155095%_))))
                            (if (pair? _%hd155088155108%_)
                                (let ((_%hd155092155113%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd155088155108%_)))
                                      (_%tl155093155115%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd155088155108%_))))
                                  (let ((_%id155118%_ _%hd155092155113%_))
                                    (if (null? _%tl155093155115%_)
                                        (if (pair? _%tl155089155110%_)
                                            (let ((_%hd155090155120%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl155089155110%_)))
                                                  (_%tl155091155122%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl155089155110%_))))
                                              (let ((_%expr155125%_
                                                     _%hd155090155120%_))
                                                (if (null? _%tl155091155122%_)
                                                    (_%K155087155105%_
                                                     _%expr155125%_
                                                     _%id155118%_)
                                                    (_%E155086155099%_))))
                                            (_%E155086155099%_))
                                        (_%E155086155099%_))))
                                (_%E155086155099%_)))
                          (_%E155086155099%_))))))
          (let* ((_%bind155046%_ (map _%generate1155044%_ _%hd155040%_))
                 (_%body155048%_
                  (if _%compiled-body?155042%_
                      _%body155041%_
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self155038%_ _%body155041%_))))
                 (_%body155080%_
                  (let* ((_%body155049155057%_ _%body155048%_)
                         (_%else155051155065%_
                          (lambda () (cons _%body155048%_ '())))
                         (_%K155053155070%_
                          (lambda (_%exprs155068%_) _%exprs155068%_)))
                    (if (pair? _%body155049155057%_)
                        (let ((_%hd155054155073%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%body155049155057%_)))
                              (_%tl155055155075%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%body155049155057%_))))
                          (if (let ()
                                (declare (not safe))
                                (##eq? _%hd155054155073%_ 'begin))
                              (let ((_%exprs155078%_ _%tl155055155075%_))
                                (_%K155053155070%_ _%exprs155078%_))
                              (_%else155051155065%_)))
                        (_%else155051155065%_)))))
            (cons _%form155039%_ (cons _%bind155046%_ _%body155080%_))))))
    (define gxc#generate-runtime-quote%
      (lambda (_%self154938%_ _%stx154939%_)
        (letrec ((_%generate1154941%_
                  (lambda (_%datum154993%_)
                    (if (or (null? _%datum154993%_)
                            (let ()
                              (declare (not safe))
                              (interned-symbol? _%datum154993%_))
                            (let ()
                              (declare (not safe))
                              (gx#self-quoting? _%datum154993%_))
                            (eof-object? _%datum154993%_))
                        _%datum154993%_
                        (if (uninterned-symbol? _%datum154993%_)
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__%
                               _%datum154993%_
                               '#t))
                            (if (pair? _%datum154993%_)
                                (cons (_%generate1154941%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%datum154993%_)))
                                      (_%generate1154941%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%datum154993%_))))
                                (if (box? _%datum154993%_)
                                    (box (_%generate1154941%_
                                          (unbox _%datum154993%_)))
                                    (if (vector? _%datum154993%_)
                                        (vector-map
                                         _%generate1154941%_
                                         _%datum154993%_)
                                        (if (or (s8vector? _%datum154993%_)
                                                (u8vector? _%datum154993%_)
                                                (s16vector? _%datum154993%_)
                                                (u16vector? _%datum154993%_)
                                                (s32vector? _%datum154993%_)
                                                (u32vector? _%datum154993%_)
                                                (s64vector? _%datum154993%_)
                                                (u64vector? _%datum154993%_)
                                                (f32vector? _%datum154993%_)
                                                (f64vector? _%datum154993%_))
                                            _%datum154993%_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot compile non-primitive quote"
                                               _%stx154939%_)))))))))))
          (let* ((_%g154943154956%_
                  (lambda (_%g154944154953%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g154944154953%_))))
                 (_%g154942154990%_
                  (lambda (_%g154944154959%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g154944154959%_))
                        (let ((_%e154946154961%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g154944154959%_))))
                          (let ((_%hd154947154964%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e154946154961%_)))
                                (_%tl154948154966%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e154946154961%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl154948154966%_))
                                (let ((_%e154949154969%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl154948154966%_))))
                                  (let ((_%hd154950154972%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e154949154969%_)))
                                        (_%tl154951154974%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e154949154969%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl154951154974%_))
                                        ((lambda (_%L154977%_)
                                           (cons 'quote
                                                 (cons (_%generate1154941%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%L154977%_)))
                                                       '())))
                                         _%hd154950154972%_)
                                        (_%g154943154956%_
                                         _%g154944154959%_))))
                                (_%g154943154956%_ _%g154944154959%_))))
                        (_%g154943154956%_ _%g154944154959%_)))))
            (_%g154942154990%_ _%stx154939%_)))))
    (define gxc#generate-runtime-call%
      (lambda (_%self154379%_ _%stx154380%_)
        (letrec ((_%compile-call154382%_
                  (lambda (_%rator154671%_ _%rands154672%_)
                    (let ((_%rator154678%_
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self154379%_
                              _%rator154671%_)))
                          (_%rands154679%_
                           (map (lambda (_%g154673154675%_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%self154379%_
                                     _%g154673154675%_)))
                                _%rands154672%_)))
                      (let* ((_%__stx160481160482%_ _%rator154678%_)
                             (_%g154682154734%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx160481160482%_)))))
                        (let ((_%__kont160483160484%_
                               (lambda (_%L154858%_
                                        _%L154859%_
                                        _%L154860%_
                                        _%L154861%_)
                                 (if (let ((__tmp161153
                                            (let ()
                                              (declare (not safe))
                                              (##length _%rands154679%_)))
                                           (__tmp161151
                                            (length (let ((__tmp161152
                                                           (lambda (_%g154897154900%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g154898154902%_)
                     (cons _%g154897154900%_ _%g154898154902%_))))
              (declare (not safe))
              (__foldr1 __tmp161152 '() _%L154860%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp161153 __tmp161151))
                                     (let* ((_%id154905%_ _%L154861%_)
                                            (_%args154914%_
                                             (let ((__tmp161154
                                                    (lambda (_%g154906154909%_
                                                             _%g154907154911%_)
                                                      (cons _%g154906154909%_
                                                            _%g154907154911%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp161154
                                                '()
                                                _%L154860%_)))
                                            (_%body154923%_
                                             (let ((__tmp161155
                                                    (lambda (_%g154915154918%_
                                                             _%g154916154920%_)
                                                      (cons _%g154915154918%_
                                                            _%g154916154920%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp161155
                                                '()
                                                _%L154859%_)))
                                            (_%init154925%_
                                             (map list
                                                  _%args154914%_
                                                  _%rands154679%_)))
                                       (cons 'let
                                             (cons _%id154905%_
                                                   (cons _%init154925%_
                                                         _%body154923%_))))
                                     (let ((__tmp161156
                                            (let ((__tmp161157
                                                   (lambda (_%g154927154930%_
                                                            _%g154928154932%_)
                                                     (cons _%g154927154930%_
                                                           _%g154928154932%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp161157
                                               '()
                                               _%L154860%_))))
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Illegal loop application; arity mismatch"
                                        _%stx154380%_
                                        __tmp161156
                                        _%rands154679%_)))))
                              (_%__kont160489160490%_
                               (lambda ()
                                 (cons _%rator154678%_ _%rands154679%_))))
                          (let ((_%__match160548160549%_
                                 (lambda (_%e154688154746%_
                                          _%hd154689154749%_
                                          _%tl154690154751%_
                                          _%e154691154754%_
                                          _%hd154692154757%_
                                          _%tl154693154759%_
                                          _%e154694154762%_
                                          _%hd154695154765%_
                                          _%tl154696154767%_
                                          _%e154697154770%_
                                          _%hd154698154773%_
                                          _%tl154699154775%_
                                          _%e154700154778%_
                                          _%hd154701154781%_
                                          _%tl154702154783%_
                                          _%e154703154786%_
                                          _%hd154704154789%_
                                          _%tl154705154791%_
                                          _%e154706154794%_
                                          _%hd154707154797%_
                                          _%tl154708154799%_
                                          _%__splice160485160486%_
                                          _%target154709154802%_
                                          _%tl154711154804%_)
                                   (letrec ((_%loop154712154807%_
                                             (lambda (_%hd154710154810%_
                                                      _%arg154716154812%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%hd154710154810%_))
                                                   (let ((_%e154713154815%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%hd154710154810%_))))
                                                     (let ((_%lp-tl154715154820%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e154713154815%_)))
                                                           (_%lp-hd154714154818%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e154713154815%_))))
                                                       (_%loop154712154807%_
                                                        _%lp-tl154715154820%_
                                                        (cons _%lp-hd154714154818%_
                                                              _%arg154716154812%_))))
                                                   (let ((_%arg154717154823%_
                                                          (reverse _%arg154716154812%_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _%tl154708154799%_))
                                                         (let ((_%__splice160487160488%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice->vector
                           _%tl154708154799%_
                           '0))))
                   (let ((_%tl154720154828%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice160487160488%_ '1)))
                         (_%target154718154826%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice160487160488%_ '0))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl154720154828%_))
                         (letrec ((_%loop154721154831%_
                                   (lambda (_%hd154719154834%_
                                            _%body154725154836%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd154719154834%_))
                                         (let ((_%e154722154839%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd154719154834%_))))
                                           (let ((_%lp-tl154724154844%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e154722154839%_)))
                                                 (_%lp-hd154723154842%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e154722154839%_))))
                                             (_%loop154721154831%_
                                              _%lp-tl154724154844%_
                                              (cons _%lp-hd154723154842%_
                                                    _%body154725154836%_))))
                                         (let ((_%body154726154847%_
                                                (reverse _%body154725154836%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%tl154702154783%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl154696154767%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl154693154759%_))
                                                       (let ((_%e154727154850%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl154693154759%_))))
                 (let ((_%tl154729154855%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e154727154850%_)))
                       (_%hd154728154853%_
                        (let ()
                          (declare (not safe))
                          (##car _%e154727154850%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl154729154855%_))
                       (let ((_%L154858%_ _%hd154728154853%_)
                             (_%L154859%_ _%body154726154847%_)
                             (_%L154860%_ _%arg154717154823%_)
                             (_%L154861%_ _%hd154698154773%_))
                         (if (eq? _%L154861%_ _%L154858%_)
                             (_%__kont160483160484%_
                              _%L154858%_
                              _%L154859%_
                              _%L154860%_
                              _%L154861%_)
                             (_%__kont160489160490%_)))
                       (_%__kont160489160490%_))))
               (_%__kont160489160490%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont160489160490%_))
                                               (_%__kont160489160490%_)))))))
                           (_%loop154721154831%_ _%target154718154826%_ '()))
                         (_%__kont160489160490%_))))
                 (_%__kont160489160490%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%loop154712154807%_
                                      _%target154709154802%_
                                      '())))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx160481160482%_))
                                (let ((_%e154688154746%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx160481160482%_))))
                                  (let ((_%tl154690154751%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e154688154746%_)))
                                        (_%hd154689154749%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e154688154746%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd154689154749%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               'letrec
                                               _%hd154689154749%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl154690154751%_))
                                                (let ((_%e154691154754%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl154690154751%_))))
                                                  (let ((_%tl154693154759%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e154691154754%_)))
                                                        (_%hd154692154757%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e154691154754%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd154692154757%_))
                                                        (let ((_%e154694154762%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd154692154757%_))))
                  (let ((_%tl154696154767%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e154694154762%_)))
                        (_%hd154695154765%_
                         (let ()
                           (declare (not safe))
                           (##car _%e154694154762%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd154695154765%_))
                        (let ((_%e154697154770%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd154695154765%_))))
                          (let ((_%tl154699154775%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e154697154770%_)))
                                (_%hd154698154773%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e154697154770%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl154699154775%_))
                                (let ((_%e154700154778%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl154699154775%_))))
                                  (let ((_%tl154702154783%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e154700154778%_)))
                                        (_%hd154701154781%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e154700154778%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd154701154781%_))
                                        (let ((_%e154703154786%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd154701154781%_))))
                                          (let ((_%tl154705154791%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e154703154786%_)))
                                                (_%hd154704154789%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e154703154786%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd154704154789%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       'lambda
                                                       _%hd154704154789%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl154705154791%_))
                                                        (let ((_%e154706154794%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl154705154791%_))))
                  (let ((_%tl154708154799%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e154706154794%_)))
                        (_%hd154707154797%_
                         (let ()
                           (declare (not safe))
                           (##car _%e154706154794%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%hd154707154797%_))
                        (let ((_%__splice160485160486%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice->vector
                                  _%hd154707154797%_
                                  '0))))
                          (let ((_%tl154711154804%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice160485160486%_ '1)))
                                (_%target154709154802%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _%__splice160485160486%_
                                    '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl154711154804%_))
                                (_%__match160548160549%_
                                 _%e154688154746%_
                                 _%hd154689154749%_
                                 _%tl154690154751%_
                                 _%e154691154754%_
                                 _%hd154692154757%_
                                 _%tl154693154759%_
                                 _%e154694154762%_
                                 _%hd154695154765%_
                                 _%tl154696154767%_
                                 _%e154697154770%_
                                 _%hd154698154773%_
                                 _%tl154699154775%_
                                 _%e154700154778%_
                                 _%hd154701154781%_
                                 _%tl154702154783%_
                                 _%e154703154786%_
                                 _%hd154704154789%_
                                 _%tl154705154791%_
                                 _%e154706154794%_
                                 _%hd154707154797%_
                                 _%tl154708154799%_
                                 _%__splice160485160486%_
                                 _%target154709154802%_
                                 _%tl154711154804%_)
                                (_%__kont160489160490%_))))
                        (_%__kont160489160490%_))))
                (_%__kont160489160490%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont160489160490%_))
                                                (_%__kont160489160490%_))))
                                        (_%__kont160489160490%_))))
                                (_%__kont160489160490%_))))
                        (_%__kont160489160490%_))))
                (_%__kont160489160490%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont160489160490%_))
                                            (_%__kont160489160490%_))
                                        (_%__kont160489160490%_))))
                                (_%__kont160489160490%_)))))))))
          (let* ((_%g154384154407%_
                  (lambda (_%g154385154404%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g154385154404%_))))
                 (_%g154383154668%_
                  (lambda (_%g154385154410%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g154385154410%_))
                        (let ((_%e154388154412%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g154385154410%_))))
                          (let ((_%hd154389154415%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e154388154412%_)))
                                (_%tl154390154417%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e154388154412%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl154390154417%_))
                                (let ((_%e154391154420%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl154390154417%_))))
                                  (let ((_%hd154392154423%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e154391154420%_)))
                                        (_%tl154393154425%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e154391154420%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl154393154425%_))
                                        (let ((_g161158_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl154393154425%_
                                                  '0))))
                                          (begin
                                            (let ((_g161159_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g161158_)
                                                         (##values-length
                                                          _g161158_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g161159_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g161159_)))
                                            (let ((_%target154394154428%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g161158_
                                                      0)))
                                                  (_%tl154396154430%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g161158_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl154396154430%_))
                                                  (letrec ((_%loop154397154433%_
                                                            (lambda (_%hd154395154436%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%rand154401154438%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd154395154436%_))
                          (let ((_%e154398154441%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd154395154436%_))))
                            (let ((_%lp-hd154399154444%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e154398154441%_)))
                                  (_%lp-tl154400154446%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e154398154441%_))))
                              (_%loop154397154433%_
                               _%lp-tl154400154446%_
                               (cons _%lp-hd154399154444%_
                                     _%rand154401154438%_))))
                          (let ((_%rand154402154449%_
                                 (reverse _%rand154401154438%_)))
                            ((lambda (_%L154452%_ _%L154453%_)
                               (if (gxc#current-compile-decls-unsafe?)
                                   (_%compile-call154382%_
                                    _%L154453%_
                                    (let ((__tmp161160
                                           (lambda (_%g154470154473%_
                                                    _%g154471154475%_)
                                             (cons _%g154470154473%_
                                                   _%g154471154475%_))))
                                      (declare (not safe))
                                      (__foldr1 __tmp161160 '() _%L154452%_)))
                                   (let* ((_%__stx160597160598%_ _%L154453%_)
                                          (_%g154479154491%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%__stx160597160598%_)))))
                                     (let ((_%__kont160599160600%_
                                            (lambda ()
                                              (let ((_%f154528%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self154379%_
                                                        _%L154453%_))))
                                                (if (and (let ((__tmp161161
                                                                (symbol->string
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%f154528%_)))
                   (declare (not safe))
                   (##string-prefix? '"##" __tmp161161))
                 (not (let ()
                        (declare (not safe))
                        (##memq _%f154528%_ gxc#checked-primitives))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let _%lp154530%_ ((_%rest154533%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (reverse (let ((__tmp161163
                                                (lambda (_%g154650154653%_
                                                         _%g154651154655%_)
                                                  (cons _%g154650154653%_
                                                        _%g154651154655%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            __tmp161163
                                            '()
                                            _%L154452%_))))
                               (_%bind154535%_ '())
                               (_%args154536%_ '()))
              (let* ((_%rest154537154545%_ _%rest154533%_)
                     (_%else154539154553%_
                      (lambda ()
                        (cons 'let
                              (cons _%bind154535%_
                                    (cons '(declare (not safe))
                                          (cons (cons _%f154528%_
                                                      _%args154536%_)
                                                '()))))))
                     (_%K154541154639%_
                      (lambda (_%rest154556%_ _%e154557%_)
                        (let* ((_%__stx160551160552%_ _%e154557%_)
                               (_%g154562154580%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%__stx160551160552%_)))))
                          (let ((_%__kont160553160554%_
                                 (lambda ()
                                   (_%lp154530%_
                                    _%rest154556%_
                                    _%bind154535%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e154557%_))
                                          _%args154536%_))))
                                (_%__kont160555160556%_
                                 (lambda ()
                                   (_%lp154530%_
                                    _%rest154556%_
                                    _%bind154535%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e154557%_))
                                          _%args154536%_))))
                                (_%__kont160557160558%_
                                 (lambda ()
                                   (let ((_%tmp154587%_
                                          (let ((__tmp161162
                                                 (let ()
                                                   (declare (not safe))
                                                   (##gensym '__tmp))))
                                            (declare (not safe))
                                            (make-symbol__0 __tmp161162))))
                                     (_%lp154530%_
                                      _%rest154556%_
                                      (cons (cons _%tmp154587%_
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__0
                                                           _%e154557%_))
                                                        '()))
                                            _%bind154535%_)
                                      (cons _%tmp154587%_ _%args154536%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx160551160552%_))
                                (let ((_%e154564154618%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx160551160552%_))))
                                  (let ((_%tl154566154623%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e154564154618%_)))
                                        (_%hd154565154621%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e154564154618%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd154565154621%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd154565154621%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl154566154623%_))
                                                (let ((_%e154567154626%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl154566154623%_))))
                                                  (let ((_%tl154569154631%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e154567154626%_)))
                                                        (_%hd154568154629%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e154567154626%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl154569154631%_))
                                                        (_%__kont160553160554%_)
                                                        (_%__kont160557160558%_))))
                                                (_%__kont160557160558%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#quote
                                                   _%hd154565154621%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl154566154623%_))
                                                    (let ((_%e154573154603%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl154566154623%_))))
                                                      (let ((_%tl154575154608%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e154573154603%_)))
                    (_%hd154574154606%_
                     (let () (declare (not safe)) (##car _%e154573154603%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl154575154608%_))
                    (_%__kont160555160556%_)
                    (_%__kont160557160558%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont160557160558%_))
                                                (_%__kont160557160558%_)))
                                        (_%__kont160557160558%_))))
                                (_%__kont160557160558%_)))))))
                (if (pair? _%rest154537154545%_)
                    (let ((_%hd154542154642%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest154537154545%_)))
                          (_%tl154543154644%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest154537154545%_))))
                      (let* ((_%e154647%_ _%hd154542154642%_)
                             (_%rest154649%_ _%tl154543154644%_))
                        (_%K154541154639%_ _%rest154649%_ _%e154647%_)))
                    (_%else154539154553%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%compile-call154382%_
                                                     _%L154453%_
                                                     (let ((__tmp161164
                                                            (lambda (_%g154657154660%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g154658154662%_)
                      (cons _%g154657154660%_ _%g154658154662%_))))
               (declare (not safe))
               (__foldr1 __tmp161164 '() _%L154452%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%__kont160601160602%_
                                            (lambda ()
                                              (_%compile-call154382%_
                                               _%L154453%_
                                               (let ((__tmp161165
                                                      (lambda (_%g154497154500%_
                                                               _%g154498154502%_)
                                                        (cons _%g154497154500%_
                                                              _%g154498154502%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp161165
                                                  '()
                                                  _%L154452%_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%__stx160597160598%_))
                                           (let ((_%e154481154510%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%__stx160597160598%_))))
                                             (let ((_%tl154483154515%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e154481154510%_)))
                                                   (_%hd154482154513%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e154481154510%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd154482154513%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#ref
                                                          _%hd154482154513%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl154483154515%_))
                                                           (let ((_%e154484154518%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl154483154515%_))))
                     (let ((_%tl154486154523%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e154484154518%_)))
                           (_%hd154485154521%_
                            (let ()
                              (declare (not safe))
                              (##car _%e154484154518%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl154486154523%_))
                           (_%__kont160599160600%_)
                           (_%__kont160601160602%_))))
                   (_%__kont160601160602%_))
               (_%__kont160601160602%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont160601160602%_))))
                                           (_%__kont160601160602%_))))))
                             _%rand154402154449%_
                             _%hd154392154423%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop154397154433%_
                                                     _%target154394154428%_
                                                     '()))
                                                  (_%g154384154407%_
                                                   _%g154385154410%_)))))
                                        (_%g154384154407%_
                                         _%g154385154410%_))))
                                (_%g154384154407%_ _%g154385154410%_))))
                        (_%g154384154407%_ _%g154385154410%_)))))
            (_%g154383154668%_ _%stx154380%_)))))
    (define gxc#generate-runtime-call-unchecked%
      (lambda (_%self154122%_ _%stx154123%_)
        (let* ((_%__stx160669160670%_ _%stx154123%_)
               (_%g154126154155%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx160669160670%_)))))
          (let ((_%__kont160671160672%_
                 (lambda (_%L154223%_ _%L154224%_)
                   (if (gxc#current-compile-decls-unsafe?)
                       (gxc#generate-runtime-call%
                        _%self154122%_
                        _%stx154123%_)
                       (let ((_%f154246%_
                              (let ((__tmp161166
                                     (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f '%#ref))
                                           (cons _%L154224%_ '()))))
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self154122%_
                                 __tmp161166))))
                         (let _%lp154248%_ ((_%rest154251%_
                                             (reverse (let ((__tmp161168
                                                             (lambda (_%g154368154371%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g154369154373%_)
                       (cons _%g154368154371%_ _%g154369154373%_))))
                (declare (not safe))
                (__foldr1 __tmp161168 '() _%L154223%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%bind154253%_ '())
                                            (_%args154254%_ '()))
                           (let* ((_%rest154255154263%_ _%rest154251%_)
                                  (_%else154257154271%_
                                   (lambda ()
                                     (cons 'let
                                           (cons _%bind154253%_
                                                 (cons '(declare (not safe))
                                                       (cons (cons _%f154246%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%args154254%_)
                     '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%K154259154357%_
                                   (lambda (_%rest154274%_ _%e154275%_)
                                     (let* ((_%__stx160623160624%_ _%e154275%_)
                                            (_%g154280154298%_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%__stx160623160624%_)))))
                                       (let ((_%__kont160625160626%_
                                              (lambda ()
                                                (_%lp154248%_
                                                 _%rest154274%_
                                                 _%bind154253%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e154275%_))
                                                       _%args154254%_))))
                                             (_%__kont160627160628%_
                                              (lambda ()
                                                (_%lp154248%_
                                                 _%rest154274%_
                                                 _%bind154253%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e154275%_))
                                                       _%args154254%_))))
                                             (_%__kont160629160630%_
                                              (lambda ()
                                                (let ((_%tmp154305%_
                                                       (let ((__tmp161167
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##gensym '__tmp))))
                 (declare (not safe))
                 (make-symbol__0 __tmp161167))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%lp154248%_
                                                   _%rest154274%_
                                                   (cons (cons _%tmp154305%_
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__0 _%e154275%_))
                             '()))
                 _%bind154253%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _%tmp154305%_
                                                         _%args154254%_))))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%__stx160623160624%_))
                                             (let ((_%e154282154336%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%__stx160623160624%_))))
                                               (let ((_%tl154284154341%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e154282154336%_)))
                                                     (_%hd154283154339%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e154282154336%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd154283154339%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#ref
                                                            _%hd154283154339%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl154284154341%_))
                     (let ((_%e154285154344%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl154284154341%_))))
                       (let ((_%tl154287154349%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e154285154344%_)))
                             (_%hd154286154347%_
                              (let ()
                                (declare (not safe))
                                (##car _%e154285154344%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl154287154349%_))
                             (_%__kont160625160626%_)
                             (_%__kont160629160630%_))))
                     (_%__kont160629160630%_))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-eq? '%#quote _%hd154283154339%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl154284154341%_))
                         (let ((_%e154291154321%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl154284154341%_))))
                           (let ((_%tl154293154326%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e154291154321%_)))
                                 (_%hd154292154324%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e154291154321%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl154293154326%_))
                                 (_%__kont160627160628%_)
                                 (_%__kont160629160630%_))))
                         (_%__kont160629160630%_))
                     (_%__kont160629160630%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont160629160630%_))))
                                             (_%__kont160629160630%_)))))))
                             (if (pair? _%rest154255154263%_)
                                 (let ((_%hd154260154360%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%rest154255154263%_)))
                                       (_%tl154261154362%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest154255154263%_))))
                                   (let* ((_%e154365%_ _%hd154260154360%_)
                                          (_%rest154367%_ _%tl154261154362%_))
                                     (_%K154259154357%_
                                      _%rest154367%_
                                      _%e154365%_)))
                                 (_%else154257154271%_))))))))
                (_%__kont160675160676%_
                 (lambda ()
                   (gxc#generate-runtime-call% _%self154122%_ _%stx154123%_))))
            (let ((_%__match160714160715%_
                   (lambda (_%e154130154167%_
                            _%hd154131154170%_
                            _%tl154132154172%_
                            _%e154133154175%_
                            _%hd154134154178%_
                            _%tl154135154180%_
                            _%e154136154183%_
                            _%hd154137154186%_
                            _%tl154138154188%_
                            _%e154139154191%_
                            _%hd154140154194%_
                            _%tl154141154196%_
                            _%__splice160673160674%_
                            _%target154142154199%_
                            _%tl154144154201%_)
                     (letrec ((_%loop154145154204%_
                               (lambda (_%hd154143154207%_
                                        _%rand154149154209%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd154143154207%_))
                                     (let ((_%e154146154212%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd154143154207%_))))
                                       (let ((_%lp-tl154148154217%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e154146154212%_)))
                                             (_%lp-hd154147154215%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e154146154212%_))))
                                         (_%loop154145154204%_
                                          _%lp-tl154148154217%_
                                          (cons _%lp-hd154147154215%_
                                                _%rand154149154209%_))))
                                     (let ((_%rand154150154220%_
                                            (reverse _%rand154149154209%_)))
                                       (_%__kont160671160672%_
                                        _%rand154150154220%_
                                        _%hd154140154194%_))))))
                       (_%loop154145154204%_ _%target154142154199%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx160669160670%_))
                  (let ((_%e154130154167%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx160669160670%_))))
                    (let ((_%tl154132154172%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e154130154167%_)))
                          (_%hd154131154170%_
                           (let ()
                             (declare (not safe))
                             (##car _%e154130154167%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl154132154172%_))
                          (let ((_%e154133154175%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl154132154172%_))))
                            (let ((_%tl154135154180%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e154133154175%_)))
                                  (_%hd154134154178%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e154133154175%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd154134154178%_))
                                  (let ((_%e154136154183%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd154134154178%_))))
                                    (let ((_%tl154138154188%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e154136154183%_)))
                                          (_%hd154137154186%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e154136154183%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd154137154186%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd154137154186%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl154138154188%_))
                                                  (let ((_%e154139154191%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl154138154188%_))))
                                                    (let ((_%tl154141154196%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e154139154191%_)))
                                                          (_%hd154140154194%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e154139154191%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl154141154196%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl154135154180%_))
                      (let ((_%__splice160673160674%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl154135154180%_
                                '0))))
                        (let ((_%tl154144154201%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice160673160674%_ '1)))
                              (_%target154142154199%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice160673160674%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl154144154201%_))
                              (_%__match160714160715%_
                               _%e154130154167%_
                               _%hd154131154170%_
                               _%tl154132154172%_
                               _%e154133154175%_
                               _%hd154134154178%_
                               _%tl154135154180%_
                               _%e154136154183%_
                               _%hd154137154186%_
                               _%tl154138154188%_
                               _%e154139154191%_
                               _%hd154140154194%_
                               _%tl154141154196%_
                               _%__splice160673160674%_
                               _%target154142154199%_
                               _%tl154144154201%_)
                              (_%__kont160675160676%_))))
                      (_%__kont160675160676%_))
                  (_%__kont160675160676%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont160675160676%_))
                                              (_%__kont160675160676%_))
                                          (_%__kont160675160676%_))))
                                  (_%__kont160675160676%_))))
                          (_%__kont160675160676%_))))
                  (_%__kont160675160676%_)))))))
    (define gxc#generate-runtime-if%
      (lambda (_%self153934%_ _%stx153935%_)
        (letrec ((_%simplify153937%_
                  (lambda (_%code154022%_)
                    (let* ((_%code154023154041%_ _%code154022%_)
                           (_%else154025154049%_ (lambda () _%code154022%_))
                           (_%K154027154085%_
                            (lambda (_%expr154052%_ _%test154053%_)
                              (let* ((_%expr154054154062%_ _%expr154052%_)
                                     (_%else154056154070%_
                                      (lambda ()
                                        (cons 'and
                                              (cons _%test154053%_
                                                    (cons _%expr154052%_
                                                          '())))))
                                     (_%K154058154075%_
                                      (lambda (_%exprs154073%_)
                                        (cons 'and
                                              (cons _%test154053%_
                                                    _%exprs154073%_)))))
                                (if (pair? _%expr154054154062%_)
                                    (let ((_%hd154059154078%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%expr154054154062%_)))
                                          (_%tl154060154080%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%expr154054154062%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _%hd154059154078%_ 'and))
                                          (let ((_%exprs154083%_
                                                 _%tl154060154080%_))
                                            (_%K154058154075%_
                                             _%exprs154083%_))
                                          (_%else154056154070%_)))
                                    (_%else154056154070%_))))))
                      (if (pair? _%code154023154041%_)
                          (let ((_%hd154028154088%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%code154023154041%_)))
                                (_%tl154029154090%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%code154023154041%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##eq? _%hd154028154088%_ 'if))
                                (if (pair? _%tl154029154090%_)
                                    (let ((_%hd154030154093%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl154029154090%_)))
                                          (_%tl154031154095%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl154029154090%_))))
                                      (let ((_%test154098%_
                                             _%hd154030154093%_))
                                        (if (pair? _%tl154031154095%_)
                                            (let ((_%hd154032154100%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl154031154095%_)))
                                                  (_%tl154033154102%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl154031154095%_))))
                                              (let ((_%expr154105%_
                                                     _%hd154032154100%_))
                                                (if (pair? _%tl154033154102%_)
                                                    (let ((_%hd154034154107%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl154033154102%_)))
                                                          (_%tl154035154109%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl154033154102%_))))
                                                      (if (pair? _%hd154034154107%_)
                                                          (let ((_%hd154036154112%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%hd154034154107%_)))
                        (_%tl154037154114%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%hd154034154107%_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _%hd154036154112%_ 'quote))
                        (if (pair? _%tl154037154114%_)
                            (let ((_%hd154038154117%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%tl154037154114%_)))
                                  (_%tl154039154119%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%tl154037154114%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd154038154117%_ '#f))
                                  (if (null? _%tl154039154119%_)
                                      (if (null? _%tl154035154109%_)
                                          (_%K154027154085%_
                                           _%expr154105%_
                                           _%test154098%_)
                                          (_%else154025154049%_))
                                      (_%else154025154049%_))
                                  (_%else154025154049%_)))
                            (_%else154025154049%_))
                        (_%else154025154049%_)))
                  (_%else154025154049%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else154025154049%_))))
                                            (_%else154025154049%_))))
                                    (_%else154025154049%_))
                                (_%else154025154049%_)))
                          (_%else154025154049%_))))))
          (let* ((_%g153939153960%_
                  (lambda (_%g153940153957%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g153940153957%_))))
                 (_%g153938154019%_
                  (lambda (_%g153940153963%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g153940153963%_))
                        (let ((_%e153944153965%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g153940153963%_))))
                          (let ((_%hd153945153968%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e153944153965%_)))
                                (_%tl153946153970%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e153944153965%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl153946153970%_))
                                (let ((_%e153947153973%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl153946153970%_))))
                                  (let ((_%hd153948153976%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e153947153973%_)))
                                        (_%tl153949153978%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e153947153973%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl153949153978%_))
                                        (let ((_%e153950153981%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl153949153978%_))))
                                          (let ((_%hd153951153984%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e153950153981%_)))
                                                (_%tl153952153986%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e153950153981%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl153952153986%_))
                                                (let ((_%e153953153989%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl153952153986%_))))
                                                  (let ((_%hd153954153992%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e153953153989%_)))
                                                        (_%tl153955153994%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e153953153989%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl153955153994%_))
                                                        ((lambda (_%L153997%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L153998%_
                          _%L153999%_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#current-compile-boolean-context))
                       (_%simplify153937%_
                        (cons 'if
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _%self153934%_
                                       _%L153999%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self153934%_
                                             _%L153998%_))
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self153934%_
                                                   _%L153997%_))
                                                '())))))
                       (cons 'if
                             (cons (let ((__tmp161169
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self153934%_
                                               _%L153999%_)))))
                                     (declare (not safe))
                                     (call-with-parameters__1
                                      __tmp161169
                                      gxc#current-compile-boolean-context
                                      '#t))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self153934%_
                                            _%L153998%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self153934%_
                                                  _%L153997%_))
                                               '()))))))
                 _%hd153954153992%_
                 _%hd153951153984%_
                 _%hd153948153976%_)
                (_%g153939153960%_ _%g153940153963%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g153939153960%_
                                                 _%g153940153963%_))))
                                        (_%g153939153960%_
                                         _%g153940153963%_))))
                                (_%g153939153960%_ _%g153940153963%_))))
                        (_%g153939153960%_ _%g153940153963%_)))))
            (_%g153938154019%_ _%stx153935%_)))))
    (define gxc#generate-runtime-ref%
      (lambda (_%self153882%_ _%stx153883%_)
        (let* ((_%g153885153898%_
                (lambda (_%g153886153895%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g153886153895%_))))
               (_%g153884153931%_
                (lambda (_%g153886153901%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g153886153901%_))
                      (let ((_%e153888153903%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g153886153901%_))))
                        (let ((_%hd153889153906%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e153888153903%_)))
                              (_%tl153890153908%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e153888153903%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl153890153908%_))
                              (let ((_%e153891153911%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl153890153908%_))))
                                (let ((_%hd153892153914%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e153891153911%_)))
                                      (_%tl153893153916%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e153891153911%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl153893153916%_))
                                      ((lambda (_%L153919%_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#generate-runtime-binding-id
                                            _%L153919%_)))
                                       _%hd153892153914%_)
                                      (_%g153885153898%_ _%g153886153901%_))))
                              (_%g153885153898%_ _%g153886153901%_))))
                      (_%g153885153898%_ _%g153886153901%_)))))
          (_%g153884153931%_ _%stx153883%_))))
    (define gxc#generate-runtime-setq%
      (lambda (_%self153814%_ _%stx153815%_)
        (let* ((_%g153817153834%_
                (lambda (_%g153818153831%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g153818153831%_))))
               (_%g153816153879%_
                (lambda (_%g153818153837%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g153818153837%_))
                      (let ((_%e153821153839%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g153818153837%_))))
                        (let ((_%hd153822153842%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e153821153839%_)))
                              (_%tl153823153844%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e153821153839%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl153823153844%_))
                              (let ((_%e153824153847%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl153823153844%_))))
                                (let ((_%hd153825153850%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e153824153847%_)))
                                      (_%tl153826153852%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e153824153847%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl153826153852%_))
                                      (let ((_%e153827153855%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl153826153852%_))))
                                        (let ((_%hd153828153858%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e153827153855%_)))
                                              (_%tl153829153860%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e153827153855%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl153829153860%_))
                                              ((lambda (_%L153863%_
                                                        _%L153864%_)
                                                 (cons 'set!
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#generate-runtime-binding-id _%L153864%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _%self153814%_ _%L153863%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd153828153858%_
                                               _%hd153825153850%_)
                                              (_%g153817153834%_
                                               _%g153818153837%_))))
                                      (_%g153817153834%_ _%g153818153837%_))))
                              (_%g153817153834%_ _%g153818153837%_))))
                      (_%g153817153834%_ _%g153818153837%_)))))
          (_%g153816153879%_ _%stx153815%_))))
    (define gxc#generate-runtime-struct-instancep%
      (lambda (_%self153625%_ _%stx153626%_)
        (let* ((_%g153628153645%_
                (lambda (_%g153629153642%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g153629153642%_))))
               (_%g153627153811%_
                (lambda (_%g153629153648%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g153629153648%_))
                      (let ((_%e153632153650%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g153629153648%_))))
                        (let ((_%hd153633153653%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e153632153650%_)))
                              (_%tl153634153655%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e153632153650%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl153634153655%_))
                              (let ((_%e153635153658%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl153634153655%_))))
                                (let ((_%hd153636153661%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e153635153658%_)))
                                      (_%tl153637153663%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e153635153658%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl153637153663%_))
                                      (let ((_%e153638153666%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl153637153663%_))))
                                        (let ((_%hd153639153669%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e153638153666%_)))
                                              (_%tl153640153671%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e153638153666%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl153640153671%_))
                                              ((lambda (_%L153674%_
                                                        _%L153675%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self153625%_ _%L153674%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _%self153625%_ _%L153675%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp153690%_ ((_%rest153693%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L153675%_ (cons _%L153674%_ '())))
                                (_%bind153695%_ '())
                                (_%args153696%_ '()))
               (let* ((_%rest153697153705%_ _%rest153693%_)
                      (_%else153699153713%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind153695%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-instance-of?
                                                       _%args153696%_)
                                                 '()))))))
                      (_%K153701153799%_
                       (lambda (_%rest153716%_ _%e153717%_)
                         (let* ((_%__stx160717160718%_ _%e153717%_)
                                (_%g153722153740%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx160717160718%_)))))
                           (let ((_%__kont160719160720%_
                                  (lambda ()
                                    (_%lp153690%_
                                     _%rest153716%_
                                     _%bind153695%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e153717%_))
                                           _%args153696%_))))
                                 (_%__kont160721160722%_
                                  (lambda ()
                                    (_%lp153690%_
                                     _%rest153716%_
                                     _%bind153695%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e153717%_))
                                           _%args153696%_))))
                                 (_%__kont160723160724%_
                                  (lambda ()
                                    (let ((_%tmp153747%_
                                           (let ((__tmp161170
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp161170))))
                                      (_%lp153690%_
                                       _%rest153716%_
                                       (cons (cons _%tmp153747%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e153717%_))
                                                         '()))
                                             _%bind153695%_)
                                       (cons _%tmp153747%_ _%args153696%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx160717160718%_))
                                 (let ((_%e153724153778%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx160717160718%_))))
                                   (let ((_%tl153726153783%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e153724153778%_)))
                                         (_%hd153725153781%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e153724153778%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd153725153781%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd153725153781%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl153726153783%_))
                                                 (let ((_%e153727153786%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl153726153783%_))))
                                                   (let ((_%tl153729153791%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e153727153786%_)))
                                                         (_%hd153728153789%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e153727153786%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl153729153791%_))
                                                         (_%__kont160719160720%_)
                                                         (_%__kont160723160724%_))))
                                                 (_%__kont160723160724%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd153725153781%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl153726153783%_))
                                                     (let ((_%e153733153763%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl153726153783%_))))
                                                       (let ((_%tl153735153768%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e153733153763%_)))
                     (_%hd153734153766%_
                      (let () (declare (not safe)) (##car _%e153733153763%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl153735153768%_))
                     (_%__kont160721160722%_)
                     (_%__kont160723160724%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont160723160724%_))
                                                 (_%__kont160723160724%_)))
                                         (_%__kont160723160724%_))))
                                 (_%__kont160723160724%_)))))))
                 (if (pair? _%rest153697153705%_)
                     (let ((_%hd153702153802%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest153697153705%_)))
                           (_%tl153703153804%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest153697153705%_))))
                       (let* ((_%e153807%_ _%hd153702153802%_)
                              (_%rest153809%_ _%tl153703153804%_))
                         (_%K153701153799%_ _%rest153809%_ _%e153807%_)))
                     (_%else153699153713%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd153639153669%_
                                               _%hd153636153661%_)
                                              (_%g153628153645%_
                                               _%g153629153648%_))))
                                      (_%g153628153645%_ _%g153629153648%_))))
                              (_%g153628153645%_ _%g153629153648%_))))
                      (_%g153628153645%_ _%g153629153648%_)))))
          (_%g153627153811%_ _%stx153626%_))))
    (define gxc#generate-runtime-struct-direct-instancep%
      (lambda (_%self153436%_ _%stx153437%_)
        (let* ((_%g153439153456%_
                (lambda (_%g153440153453%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g153440153453%_))))
               (_%g153438153622%_
                (lambda (_%g153440153459%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g153440153459%_))
                      (let ((_%e153443153461%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g153440153459%_))))
                        (let ((_%hd153444153464%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e153443153461%_)))
                              (_%tl153445153466%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e153443153461%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl153445153466%_))
                              (let ((_%e153446153469%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl153445153466%_))))
                                (let ((_%hd153447153472%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e153446153469%_)))
                                      (_%tl153448153474%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e153446153469%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl153448153474%_))
                                      (let ((_%e153449153477%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl153448153474%_))))
                                        (let ((_%hd153450153480%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e153449153477%_)))
                                              (_%tl153451153482%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e153449153477%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl153451153482%_))
                                              ((lambda (_%L153485%_
                                                        _%L153486%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-direct-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self153436%_ _%L153485%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _%self153436%_ _%L153486%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp153501%_ ((_%rest153504%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L153486%_ (cons _%L153485%_ '())))
                                (_%bind153506%_ '())
                                (_%args153507%_ '()))
               (let* ((_%rest153508153516%_ _%rest153504%_)
                      (_%else153510153524%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind153506%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-direct-instance-of?
                                                       _%args153507%_)
                                                 '()))))))
                      (_%K153512153610%_
                       (lambda (_%rest153527%_ _%e153528%_)
                         (let* ((_%__stx160763160764%_ _%e153528%_)
                                (_%g153533153551%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx160763160764%_)))))
                           (let ((_%__kont160765160766%_
                                  (lambda ()
                                    (_%lp153501%_
                                     _%rest153527%_
                                     _%bind153506%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e153528%_))
                                           _%args153507%_))))
                                 (_%__kont160767160768%_
                                  (lambda ()
                                    (_%lp153501%_
                                     _%rest153527%_
                                     _%bind153506%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e153528%_))
                                           _%args153507%_))))
                                 (_%__kont160769160770%_
                                  (lambda ()
                                    (let ((_%tmp153558%_
                                           (let ((__tmp161171
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp161171))))
                                      (_%lp153501%_
                                       _%rest153527%_
                                       (cons (cons _%tmp153558%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e153528%_))
                                                         '()))
                                             _%bind153506%_)
                                       (cons _%tmp153558%_ _%args153507%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx160763160764%_))
                                 (let ((_%e153535153589%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx160763160764%_))))
                                   (let ((_%tl153537153594%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e153535153589%_)))
                                         (_%hd153536153592%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e153535153589%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd153536153592%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd153536153592%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl153537153594%_))
                                                 (let ((_%e153538153597%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl153537153594%_))))
                                                   (let ((_%tl153540153602%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e153538153597%_)))
                                                         (_%hd153539153600%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e153538153597%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl153540153602%_))
                                                         (_%__kont160765160766%_)
                                                         (_%__kont160769160770%_))))
                                                 (_%__kont160769160770%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd153536153592%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl153537153594%_))
                                                     (let ((_%e153544153574%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl153537153594%_))))
                                                       (let ((_%tl153546153579%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e153544153574%_)))
                     (_%hd153545153577%_
                      (let () (declare (not safe)) (##car _%e153544153574%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl153546153579%_))
                     (_%__kont160767160768%_)
                     (_%__kont160769160770%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont160769160770%_))
                                                 (_%__kont160769160770%_)))
                                         (_%__kont160769160770%_))))
                                 (_%__kont160769160770%_)))))))
                 (if (pair? _%rest153508153516%_)
                     (let ((_%hd153513153613%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest153508153516%_)))
                           (_%tl153514153615%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest153508153516%_))))
                       (let* ((_%e153618%_ _%hd153513153613%_)
                              (_%rest153620%_ _%tl153514153615%_))
                         (_%K153512153610%_ _%rest153620%_ _%e153618%_)))
                     (_%else153510153524%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd153450153480%_
                                               _%hd153447153472%_)
                                              (_%g153439153456%_
                                               _%g153440153459%_))))
                                      (_%g153439153456%_ _%g153440153459%_))))
                              (_%g153439153456%_ _%g153440153459%_))))
                      (_%g153439153456%_ _%g153440153459%_)))))
          (_%g153438153622%_ _%stx153437%_))))
    (define gxc#generate-runtime-struct-ref%
      (lambda (_%self153352%_ _%stx153353%_)
        (let* ((_%g153355153376%_
                (lambda (_%g153356153373%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g153356153373%_))))
               (_%g153354153433%_
                (lambda (_%g153356153379%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g153356153379%_))
                      (let ((_%e153360153381%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g153356153379%_))))
                        (let ((_%hd153361153384%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e153360153381%_)))
                              (_%tl153362153386%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e153360153381%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl153362153386%_))
                              (let ((_%e153363153389%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl153362153386%_))))
                                (let ((_%hd153364153392%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e153363153389%_)))
                                      (_%tl153365153394%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e153363153389%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl153365153394%_))
                                      (let ((_%e153366153397%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl153365153394%_))))
                                        (let ((_%hd153367153400%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e153366153397%_)))
                                              (_%tl153368153402%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e153366153397%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl153368153402%_))
                                              (let ((_%e153369153405%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl153368153402%_))))
                                                (let ((_%hd153370153408%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e153369153405%_)))
                                                      (_%tl153371153410%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e153369153405%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl153371153410%_))
                                                      ((lambda (_%L153413%_
                                                                _%L153414%_
                                                                _%L153415%_)
                                                         (cons '##structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1 _%self153352%_ _%L153413%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self153352%_
                                      _%L153414%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self153352%_
                                            _%L153415%_))
                                         (cons ''#f '()))))))
               _%hd153370153408%_
               _%hd153367153400%_
               _%hd153364153392%_)
              (_%g153355153376%_ _%g153356153379%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g153355153376%_
                                               _%g153356153379%_))))
                                      (_%g153355153376%_ _%g153356153379%_))))
                              (_%g153355153376%_ _%g153356153379%_))))
                      (_%g153355153376%_ _%g153356153379%_)))))
          (_%g153354153433%_ _%stx153353%_))))
    (define gxc#generate-runtime-struct-setq%
      (lambda (_%self153252%_ _%stx153253%_)
        (let* ((_%g153255153280%_
                (lambda (_%g153256153277%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g153256153277%_))))
               (_%g153254153349%_
                (lambda (_%g153256153283%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g153256153283%_))
                      (let ((_%e153261153285%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g153256153283%_))))
                        (let ((_%hd153262153288%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e153261153285%_)))
                              (_%tl153263153290%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e153261153285%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl153263153290%_))
                              (let ((_%e153264153293%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl153263153290%_))))
                                (let ((_%hd153265153296%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e153264153293%_)))
                                      (_%tl153266153298%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e153264153293%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl153266153298%_))
                                      (let ((_%e153267153301%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl153266153298%_))))
                                        (let ((_%hd153268153304%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e153267153301%_)))
                                              (_%tl153269153306%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e153267153301%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl153269153306%_))
                                              (let ((_%e153270153309%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl153269153306%_))))
                                                (let ((_%hd153271153312%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e153270153309%_)))
                                                      (_%tl153272153314%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e153270153309%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl153272153314%_))
                                                      (let ((_%e153273153317%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl153272153314%_))))
                (let ((_%hd153274153320%_
                       (let () (declare (not safe)) (##car _%e153273153317%_)))
                      (_%tl153275153322%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e153273153317%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl153275153322%_))
                      ((lambda (_%L153325%_
                                _%L153326%_
                                _%L153327%_
                                _%L153328%_)
                         (cons '##structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self153252%_
                                        _%L153326%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self153252%_
                                              _%L153325%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self153252%_
                                                    _%L153327%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self153252%_
                                                          _%L153328%_))
                                                       (cons ''#f '())))))))
                       _%hd153274153320%_
                       _%hd153271153312%_
                       _%hd153268153304%_
                       _%hd153265153296%_)
                      (_%g153255153280%_ _%g153256153283%_))))
              (_%g153255153280%_ _%g153256153283%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g153255153280%_
                                               _%g153256153283%_))))
                                      (_%g153255153280%_ _%g153256153283%_))))
                              (_%g153255153280%_ _%g153256153283%_))))
                      (_%g153255153280%_ _%g153256153283%_)))))
          (_%g153254153349%_ _%stx153253%_))))
    (define gxc#generate-runtime-struct-direct-ref%
      (lambda (_%self153168%_ _%stx153169%_)
        (let* ((_%g153171153192%_
                (lambda (_%g153172153189%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g153172153189%_))))
               (_%g153170153249%_
                (lambda (_%g153172153195%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g153172153195%_))
                      (let ((_%e153176153197%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g153172153195%_))))
                        (let ((_%hd153177153200%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e153176153197%_)))
                              (_%tl153178153202%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e153176153197%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl153178153202%_))
                              (let ((_%e153179153205%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl153178153202%_))))
                                (let ((_%hd153180153208%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e153179153205%_)))
                                      (_%tl153181153210%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e153179153205%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl153181153210%_))
                                      (let ((_%e153182153213%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl153181153210%_))))
                                        (let ((_%hd153183153216%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e153182153213%_)))
                                              (_%tl153184153218%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e153182153213%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl153184153218%_))
                                              (let ((_%e153185153221%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl153184153218%_))))
                                                (let ((_%hd153186153224%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e153185153221%_)))
                                                      (_%tl153187153226%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e153185153221%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl153187153226%_))
                                                      ((lambda (_%L153229%_
                                                                _%L153230%_
                                                                _%L153231%_)
                                                         (cons '##direct-structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1 _%self153168%_ _%L153229%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self153168%_
                                      _%L153230%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self153168%_
                                            _%L153231%_))
                                         (cons ''#f '()))))))
               _%hd153186153224%_
               _%hd153183153216%_
               _%hd153180153208%_)
              (_%g153171153192%_ _%g153172153195%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g153171153192%_
                                               _%g153172153195%_))))
                                      (_%g153171153192%_ _%g153172153195%_))))
                              (_%g153171153192%_ _%g153172153195%_))))
                      (_%g153171153192%_ _%g153172153195%_)))))
          (_%g153170153249%_ _%stx153169%_))))
    (define gxc#generate-runtime-struct-direct-setq%
      (lambda (_%self153068%_ _%stx153069%_)
        (let* ((_%g153071153096%_
                (lambda (_%g153072153093%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g153072153093%_))))
               (_%g153070153165%_
                (lambda (_%g153072153099%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g153072153099%_))
                      (let ((_%e153077153101%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g153072153099%_))))
                        (let ((_%hd153078153104%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e153077153101%_)))
                              (_%tl153079153106%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e153077153101%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl153079153106%_))
                              (let ((_%e153080153109%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl153079153106%_))))
                                (let ((_%hd153081153112%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e153080153109%_)))
                                      (_%tl153082153114%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e153080153109%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl153082153114%_))
                                      (let ((_%e153083153117%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl153082153114%_))))
                                        (let ((_%hd153084153120%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e153083153117%_)))
                                              (_%tl153085153122%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e153083153117%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl153085153122%_))
                                              (let ((_%e153086153125%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl153085153122%_))))
                                                (let ((_%hd153087153128%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e153086153125%_)))
                                                      (_%tl153088153130%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e153086153125%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl153088153130%_))
                                                      (let ((_%e153089153133%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl153088153130%_))))
                (let ((_%hd153090153136%_
                       (let () (declare (not safe)) (##car _%e153089153133%_)))
                      (_%tl153091153138%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e153089153133%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl153091153138%_))
                      ((lambda (_%L153141%_
                                _%L153142%_
                                _%L153143%_
                                _%L153144%_)
                         (cons '##direct-structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self153068%_
                                        _%L153142%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self153068%_
                                              _%L153141%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self153068%_
                                                    _%L153143%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self153068%_
                                                          _%L153144%_))
                                                       (cons ''#f '())))))))
                       _%hd153090153136%_
                       _%hd153087153128%_
                       _%hd153084153120%_
                       _%hd153081153112%_)
                      (_%g153071153096%_ _%g153072153099%_))))
              (_%g153071153096%_ _%g153072153099%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g153071153096%_
                                               _%g153072153099%_))))
                                      (_%g153071153096%_ _%g153072153099%_))))
                              (_%g153071153096%_ _%g153072153099%_))))
                      (_%g153071153096%_ _%g153072153099%_)))))
          (_%g153070153165%_ _%stx153069%_))))
    (define gxc#generate-runtime-struct-unchecked-ref%
      (lambda (_%self152863%_ _%stx152864%_)
        (let* ((_%g152866152887%_
                (lambda (_%g152867152884%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g152867152884%_))))
               (_%g152865153065%_
                (lambda (_%g152867152890%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g152867152890%_))
                      (let ((_%e152871152892%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g152867152890%_))))
                        (let ((_%hd152872152895%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e152871152892%_)))
                              (_%tl152873152897%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e152871152892%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl152873152897%_))
                              (let ((_%e152874152900%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl152873152897%_))))
                                (let ((_%hd152875152903%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e152874152900%_)))
                                      (_%tl152876152905%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e152874152900%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl152876152905%_))
                                      (let ((_%e152877152908%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl152876152905%_))))
                                        (let ((_%hd152878152911%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e152877152908%_)))
                                              (_%tl152879152913%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e152877152908%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl152879152913%_))
                                              (let ((_%e152880152916%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl152879152913%_))))
                                                (let ((_%hd152881152919%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e152880152916%_)))
                                                      (_%tl152882152921%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e152880152916%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl152882152921%_))
                                                      ((lambda (_%L152924%_
                                                                _%L152925%_
                                                                _%L152926%_)
                                                         (if (gxc#current-compile-decls-unsafe?)
                                                             (cons '##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__1
                                    _%self152863%_
                                    _%L152924%_))
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self152863%_
                                          _%L152925%_))
                                       (cons ''#f (cons ''#f '())))))
                     (let _%lp152944%_ ((_%rest152947%_
                                         (cons _%L152925%_
                                               (cons _%L152924%_ '())))
                                        (_%bind152949%_ '())
                                        (_%args152950%_ '()))
                       (let* ((_%rest152951152959%_ _%rest152947%_)
                              (_%else152953152967%_
                               (lambda ()
                                 (cons 'let
                                       (cons _%bind152949%_
                                             (cons '(declare (not safe))
                                                   (cons (cons '##unchecked-structure-ref
                                                               (let ((__tmp161172
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons ''#f (cons ''#f '()))))
                         (declare (not safe))
                         (__foldr1 cons __tmp161172 _%args152950%_)))
                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%K152955153053%_
                               (lambda (_%rest152970%_ _%e152971%_)
                                 (let* ((_%__stx160809160810%_ _%e152971%_)
                                        (_%g152976152994%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx160809160810%_)))))
                                   (let ((_%__kont160811160812%_
                                          (lambda ()
                                            (_%lp152944%_
                                             _%rest152970%_
                                             _%bind152949%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e152971%_))
                                                   _%args152950%_))))
                                         (_%__kont160813160814%_
                                          (lambda ()
                                            (_%lp152944%_
                                             _%rest152970%_
                                             _%bind152949%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e152971%_))
                                                   _%args152950%_))))
                                         (_%__kont160815160816%_
                                          (lambda ()
                                            (let ((_%tmp153001%_
                                                   (let ((__tmp161173
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym
                                                             '__tmp))))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp161173))))
                                              (_%lp152944%_
                                               _%rest152970%_
                                               (cons (cons _%tmp153001%_
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__0 _%e152971%_))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind152949%_)
                                               (cons _%tmp153001%_
                                                     _%args152950%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx160809160810%_))
                                         (let ((_%e152978153032%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx160809160810%_))))
                                           (let ((_%tl152980153037%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e152978153032%_)))
                                                 (_%hd152979153035%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e152978153032%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd152979153035%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#ref
                                                        _%hd152979153035%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl152980153037%_))
                                                         (let ((_%e152981153040%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl152980153037%_))))
                   (let ((_%tl152983153045%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e152981153040%_)))
                         (_%hd152982153043%_
                          (let ()
                            (declare (not safe))
                            (##car _%e152981153040%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl152983153045%_))
                         (_%__kont160811160812%_)
                         (_%__kont160815160816%_))))
                 (_%__kont160815160816%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#quote
                                                            _%hd152979153035%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl152980153037%_))
                     (let ((_%e152987153017%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl152980153037%_))))
                       (let ((_%tl152989153022%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e152987153017%_)))
                             (_%hd152988153020%_
                              (let ()
                                (declare (not safe))
                                (##car _%e152987153017%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl152989153022%_))
                             (_%__kont160813160814%_)
                             (_%__kont160815160816%_))))
                     (_%__kont160815160816%_))
                 (_%__kont160815160816%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont160815160816%_))))
                                         (_%__kont160815160816%_)))))))
                         (if (pair? _%rest152951152959%_)
                             (let ((_%hd152956153056%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest152951152959%_)))
                                   (_%tl152957153058%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest152951152959%_))))
                               (let* ((_%e153061%_ _%hd152956153056%_)
                                      (_%rest153063%_ _%tl152957153058%_))
                                 (_%K152955153053%_
                                  _%rest153063%_
                                  _%e153061%_)))
                             (_%else152953152967%_))))))
               _%hd152881152919%_
               _%hd152878152911%_
               _%hd152875152903%_)
              (_%g152866152887%_ _%g152867152890%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g152866152887%_
                                               _%g152867152890%_))))
                                      (_%g152866152887%_ _%g152867152890%_))))
                              (_%g152866152887%_ _%g152867152890%_))))
                      (_%g152866152887%_ _%g152867152890%_)))))
          (_%g152865153065%_ _%stx152864%_))))
    (define gxc#generate-runtime-struct-unchecked-setq%
      (lambda (_%self152642%_ _%stx152643%_)
        (let* ((_%g152645152670%_
                (lambda (_%g152646152667%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g152646152667%_))))
               (_%g152644152860%_
                (lambda (_%g152646152673%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g152646152673%_))
                      (let ((_%e152651152675%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g152646152673%_))))
                        (let ((_%hd152652152678%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e152651152675%_)))
                              (_%tl152653152680%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e152651152675%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl152653152680%_))
                              (let ((_%e152654152683%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl152653152680%_))))
                                (let ((_%hd152655152686%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e152654152683%_)))
                                      (_%tl152656152688%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e152654152683%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl152656152688%_))
                                      (let ((_%e152657152691%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl152656152688%_))))
                                        (let ((_%hd152658152694%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e152657152691%_)))
                                              (_%tl152659152696%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e152657152691%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl152659152696%_))
                                              (let ((_%e152660152699%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl152659152696%_))))
                                                (let ((_%hd152661152702%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e152660152699%_)))
                                                      (_%tl152662152704%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e152660152699%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl152662152704%_))
                                                      (let ((_%e152663152707%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl152662152704%_))))
                (let ((_%hd152664152710%_
                       (let () (declare (not safe)) (##car _%e152663152707%_)))
                      (_%tl152665152712%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e152663152707%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl152665152712%_))
                      ((lambda (_%L152715%_
                                _%L152716%_
                                _%L152717%_
                                _%L152718%_)
                         (if (gxc#current-compile-decls-unsafe?)
                             (cons '##unchecked-structure-set!
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self152642%_
                                            _%L152716%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self152642%_
                                                  _%L152715%_))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self152642%_
                                                        _%L152717%_))
                                                     (cons ''#f
                                                           (cons ''#f '()))))))
                             (let _%lp152739%_ ((_%rest152742%_
                                                 (cons _%L152717%_
                                                       (cons _%L152715%_
                                                             (cons _%L152716%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%bind152744%_ '())
                                                (_%args152745%_ '()))
                               (let* ((_%rest152746152754%_ _%rest152742%_)
                                      (_%else152748152762%_
                                       (lambda ()
                                         (cons 'let
                                               (cons _%bind152744%_
                                                     (cons '(declare
                                                              (not safe))
                                                           (cons (cons '##unchecked-structure-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp161174 (cons ''#f (cons ''#f '()))))
                                 (declare (not safe))
                                 (__foldr1 cons __tmp161174 _%args152745%_)))
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%K152750152848%_
                                       (lambda (_%rest152765%_ _%e152766%_)
                                         (let* ((_%__stx160855160856%_
                                                 _%e152766%_)
                                                (_%g152771152789%_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%__stx160855160856%_)))))
                                           (let ((_%__kont160857160858%_
                                                  (lambda ()
                                                    (_%lp152739%_
                                                     _%rest152765%_
                                                     _%bind152744%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e152766%_))
                                                           _%args152745%_))))
                                                 (_%__kont160859160860%_
                                                  (lambda ()
                                                    (_%lp152739%_
                                                     _%rest152765%_
                                                     _%bind152744%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e152766%_))
                                                           _%args152745%_))))
                                                 (_%__kont160861160862%_
                                                  (lambda ()
                                                    (let ((_%tmp152796%_
                                                           (let ((__tmp161175
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__tmp))))
                     (declare (not safe))
                     (make-symbol__0 __tmp161175))))
              (_%lp152739%_
               _%rest152765%_
               (cons (cons _%tmp152796%_
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__0 _%e152766%_))
                                 '()))
                     _%bind152744%_)
               (cons _%tmp152796%_ _%args152745%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%__stx160855160856%_))
                                                 (let ((_%e152773152827%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%__stx160855160856%_))))
                                                   (let ((_%tl152775152832%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e152773152827%_)))
                                                         (_%hd152774152830%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e152773152827%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _%hd152774152830%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-eq? '%#ref _%hd152774152830%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl152775152832%_))
                         (let ((_%e152776152835%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl152775152832%_))))
                           (let ((_%tl152778152840%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e152776152835%_)))
                                 (_%hd152777152838%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e152776152835%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl152778152840%_))
                                 (_%__kont160857160858%_)
                                 (_%__kont160861160862%_))))
                         (_%__kont160861160862%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-eq? '%#quote _%hd152774152830%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%tl152775152832%_))
                             (let ((_%e152782152812%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%tl152775152832%_))))
                               (let ((_%tl152784152817%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e152782152812%_)))
                                     (_%hd152783152815%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e152782152812%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%tl152784152817%_))
                                     (_%__kont160859160860%_)
                                     (_%__kont160861160862%_))))
                             (_%__kont160861160862%_))
                         (_%__kont160861160862%_)))
                 (_%__kont160861160862%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont160861160862%_)))))))
                                 (if (pair? _%rest152746152754%_)
                                     (let ((_%hd152751152851%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%rest152746152754%_)))
                                           (_%tl152752152853%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%rest152746152754%_))))
                                       (let* ((_%e152856%_ _%hd152751152851%_)
                                              (_%rest152858%_
                                               _%tl152752152853%_))
                                         (_%K152750152848%_
                                          _%rest152858%_
                                          _%e152856%_)))
                                     (_%else152748152762%_))))))
                       _%hd152664152710%_
                       _%hd152661152702%_
                       _%hd152658152694%_
                       _%hd152655152686%_)
                      (_%g152645152670%_ _%g152646152673%_))))
              (_%g152645152670%_ _%g152646152673%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g152645152670%_
                                               _%g152646152673%_))))
                                      (_%g152645152670%_ _%g152646152673%_))))
                              (_%g152645152670%_ _%g152646152673%_))))
                      (_%g152645152670%_ _%g152646152673%_)))))
          (_%g152644152860%_ _%stx152643%_))))
    (define gxc#generate-runtime-loader-import%
      (lambda (_%self152481%_ _%stx152482%_)
        (letrec ((_%import-set-template152484%_
                  (lambda (_%in152587%_ _%phi152588%_)
                    (let ((_%iphi152590%_
                           (fx+ _%phi152588%_
                                (##direct-structure-ref
                                 _%in152587%_
                                 '2
                                 gx#import-set::t
                                 '#f)))
                          (_%imports152591%_
                           (##structure-ref
                            (##direct-structure-ref
                             _%in152587%_
                             '1
                             gx#import-set::t
                             '#f)
                            '8
                            gx#module-context::t
                            '#f)))
                      (let _%lp152593%_ ((_%rest152595%_ _%imports152591%_)
                                         (_%r152596%_ '()))
                        (let* ((_%rest152597152605%_ _%rest152595%_)
                               (_%else152599152613%_ (lambda () _%r152596%_))
                               (_%K152601152630%_
                                (lambda (_%rest152616%_ _%in152617%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%in152617%_
                                         'gx#module-context::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxzero? _%iphi152590%_))
                                          (_%lp152593%_
                                           _%rest152616%_
                                           (cons _%in152617%_ _%r152596%_))
                                          (_%lp152593%_
                                           _%rest152616%_
                                           _%r152596%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%in152617%_
                                             'gx#module-import::t))
                                          (let ((_%iphi152621%_
                                                 (fx+ _%phi152588%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%in152617%_
                                                         '3
                                                         '#f
                                                         '#f)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##fxzero? _%iphi152621%_))
                                                (_%lp152593%_
                                                 _%rest152616%_
                                                 (cons (##direct-structure-ref
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%in152617%_
                                                           '1
                                                           '#f
                                                           '#f))
                                                        '1
                                                        gx#module-export::t
                                                        '#f)
                                                       _%r152596%_))
                                                (_%lp152593%_
                                                 _%rest152616%_
                                                 _%r152596%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 _%in152617%_
                                                 'gx#import-set::t))
                                              (let ((_%xphi152624%_
                                                     (fx+ _%iphi152590%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%in152617%_
                                                             '2
                                                             '#f
                                                             '#f)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##fxzero?
                                                       _%xphi152624%_))
                                                    (_%lp152593%_
                                                     _%rest152616%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in152617%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           _%r152596%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##fxpositive?
                                                           _%xphi152624%_))
                                                        (_%lp152593%_
                                                         _%rest152616%_
                                                         (let ((__tmp161176
                                                                (_%import-set-template152484%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in152617%_
                         _%iphi152590%_)))
                   (declare (not safe))
                   (__foldl1 cons _%r152596%_ __tmp161176)))
                (_%lp152593%_ _%rest152616%_ _%r152596%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%lp152593%_
                                               _%rest152616%_
                                               _%r152596%_)))))))
                          (if (pair? _%rest152597152605%_)
                              (let ((_%hd152602152633%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest152597152605%_)))
                                    (_%tl152603152635%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest152597152605%_))))
                                (let* ((_%in152638%_ _%hd152602152633%_)
                                       (_%rest152640%_ _%tl152603152635%_))
                                  (_%K152601152630%_
                                   _%rest152640%_
                                   _%in152638%_)))
                              (_%else152599152613%_))))))))
          (let* ((_%g152486152496%_
                  (lambda (_%g152487152493%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g152487152493%_))))
                 (_%g152485152584%_
                  (lambda (_%g152487152499%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g152487152499%_))
                        (let ((_%e152489152501%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g152487152499%_))))
                          (let ((_%hd152490152504%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e152489152501%_)))
                                (_%tl152491152506%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e152489152501%_))))
                            ((lambda (_%L152509%_)
                               (let ((_%ht152520%_
                                      (let ()
                                        (declare (not safe))
                                        (make-hash-table-eq))))
                                 (let _%lp152522%_ ((_%rest152524%_
                                                     _%L152509%_)
                                                    (_%loads152525%_ '()))
                                   (letrec ((_%K152527%_
                                             (lambda (_%ctx152577%_
                                                      _%rest152578%_)
                                               (let ((_%id152580%_
                                                      (##structure-ref
                                                       _%ctx152577%_
                                                       '1
                                                       gx#expander-context::t
                                                       '#f)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (__hash-get
                                                        _%ht152520%_
                                                        _%id152580%_))
                                                     (_%lp152522%_
                                                      _%rest152578%_
                                                      _%loads152525%_)
                                                     (let ((_%rt152582%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#module-id->path-string
                                                               _%id152580%_))))
                                                       (let ()
                                                         (declare (not safe))
                                                         (__hash-put!
                                                          _%ht152520%_
                                                          _%id152580%_
                                                          _%rt152582%_))
                                                       (_%lp152522%_
                                                        _%rest152578%_
                                                        (cons _%rt152582%_
                                                              _%loads152525%_))))))))
                                     (let* ((_%rest152528152536%_
                                             _%rest152524%_)
                                            (_%else152530152548%_
                                             (lambda ()
                                               (cons 'begin
                                                     (let ((__tmp161178
                                                            (lambda (_%g152543152545%_)
                                                              (list 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g152543152545%_)))
                   (__tmp161177 (reverse _%loads152525%_)))
               (declare (not safe))
               (##map __tmp161178 __tmp161177)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%K152532152565%_
                                             (lambda (_%rest152551%_
                                                      _%in152552%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-instance-of?
                                                      _%in152552%_
                                                      'gx#module-context::t))
                                                   (_%K152527%_
                                                    _%in152552%_
                                                    _%rest152551%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          _%in152552%_
                                                          'gx#module-import::t))
                                                       (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%in152552%_
                               '3
                               '#f
                               '#f)))
                   (_%K152527%_
                    (##direct-structure-ref
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%in152552%_ '1 '#f '#f))
                     '1
                     gx#module-export::t
                     '#f)
                    _%rest152551%_)
                   (_%lp152522%_ _%rest152551%_ _%loads152525%_))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%in152552%_
                      'gx#import-set::t))
                   (let ((_%phi152557%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%in152552%_
                             '2
                             '#f
                             '#f))))
                     (if (fxzero? _%phi152557%_)
                         (_%K152527%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%in152552%_
                             '1
                             '#f
                             '#f))
                          _%rest152551%_)
                         (if (fxpositive? _%phi152557%_)
                             (let ((_%deps152561%_
                                    (_%import-set-template152484%_
                                     _%in152552%_
                                     '0)))
                               (_%lp152522%_
                                (let ()
                                  (declare (not safe))
                                  (__foldl1
                                   cons
                                   _%rest152551%_
                                   _%deps152561%_))
                                _%loads152525%_))
                             (_%lp152522%_ _%rest152551%_ _%loads152525%_))))
                   (let ()
                     (declare (not safe))
                     (gxc#raise-compile-error
                      '"Unexpected import"
                      _%stx152482%_
                      _%in152552%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (pair? _%rest152528152536%_)
                                           (let ((_%hd152533152568%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%rest152528152536%_)))
                                                 (_%tl152534152570%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%rest152528152536%_))))
                                             (let* ((_%in152573%_
                                                     _%hd152533152568%_)
                                                    (_%rest152575%_
                                                     _%tl152534152570%_))
                                               (_%K152532152565%_
                                                _%rest152575%_
                                                _%in152573%_)))
                                           (_%else152530152548%_)))))))
                             _%tl152491152506%_)))
                        (_%g152486152496%_ _%g152487152499%_)))))
            (_%g152485152584%_ _%stx152482%_)))))
    (define gxc#generate-runtime-quote-syntax%
      (lambda (_%self152294%_ _%stx152295%_)
        (letrec ((_%add-lift!152297%_
                  (lambda (_%expr152479%_)
                    (set-box!
                     (let () (declare (not safe)) (gxc#current-compile-lift))
                     (cons _%expr152479%_
                           (unbox (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-lift)))))))
                 (_%generate-syntax-quote152298%_
                  (lambda (_%id152476%_ _%marks152477%_)
                    (cons '##structure
                          (cons 'gx#syntax-quote::t
                                (cons (cons 'quote (cons _%id152476%_ '()))
                                      (cons '#f
                                            (cons '(gx#current-expander-context)
                                                  (cons _%marks152477%_
                                                        '()))))))))
                 (_%generate-simple152299%_
                  (lambda (_%stxq152471%_)
                    (let ((_%gid152473%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__% '#t)))
                          (_%qid152474%_
                           (gxc#generate-runtime-identifier _%stxq152471%_)))
                      (_%add-lift!152297%_
                       (cons 'define
                             (cons _%gid152473%_
                                   (cons (_%generate-syntax-quote152298%_
                                          _%qid152474%_
                                          ''())
                                         '()))))
                      (let ((__tmp161179
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp161179 _%stxq152471%_ _%gid152473%_))
                      _%gid152473%_)))
                 (_%generate-serialized152300%_
                  (lambda (_%stxq152461%_ _%marks152462%_)
                    (let* ((_%mark-refs152464%_
                            (map _%generate-mark152301%_ _%marks152462%_))
                           (_%gid152466%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%qid152468%_
                            (gxc#generate-runtime-identifier _%stxq152461%_)))
                      (_%add-lift!152297%_
                       (cons 'define
                             (cons _%gid152466%_
                                   (cons (_%generate-syntax-quote152298%_
                                          _%qid152468%_
                                          (cons 'list _%mark-refs152464%_))
                                         '()))))
                      (let ((__tmp161180
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp161180 _%stxq152461%_ _%gid152466%_))
                      _%gid152466%_)))
                 (_%generate-mark152301%_
                  (lambda (_%mark152446%_)
                    (let ((_%$e152448%_
                           (let ((__tmp161181
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-marks))))
                             (declare (not safe))
                             (hash-get __tmp161181 _%mark152446%_))))
                      (if _%$e152448%_
                          _%$e152448%_
                          (let* ((_%gid152452%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-temporary__% '#t)))
                                 (_%repr152454%_
                                  (_%serialize-mark152302%_ _%mark152446%_))
                                 (_%ctx152456%_
                                  (let ((__tmp161182
                                         (##structure-ref
                                          _%mark152446%_
                                          '2
                                          gx#expander-mark::t
                                          '#f)))
                                    (declare (not safe))
                                    (gx#core-context-top__1 __tmp161182)))
                                 (_%ctx-ref152458%_
                                  (if (eq? _%ctx152456%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-context)))
                                      '(gx#current-expander-context)
                                      (cons 'gx#import-module
                                            (cons (cons 'quote
                                                        (cons (_%context-ref152303%_
                                                               _%ctx152456%_)
                                                              '()))
                                                  '())))))
                            (let ((__tmp161183
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-marks))))
                              (declare (not safe))
                              (hash-put!
                               __tmp161183
                               _%mark152446%_
                               _%gid152452%_))
                            (_%add-lift!152297%_
                             (cons 'define
                                   (cons _%gid152452%_
                                         (cons (cons 'gx#core-deserialize-mark
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%repr152454%_ '()))
                   (cons _%ctx-ref152458%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            _%gid152452%_)))))
                 (_%serialize-mark152302%_
                  (lambda (_%mark152393%_)
                    (letrec ((_%quote-e152395%_
                              (lambda (_%sym152444%_)
                                (if (let ()
                                      (declare (not safe))
                                      (interned-symbol? _%sym152444%_))
                                    _%sym152444%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-gensym-reference__0
                                       _%sym152444%_))))))
                      (let* ((_%mark152396152405%_ _%mark152393%_)
                             (_%E152398152409%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%mark152396152405%_
                                         '((expander-mark
                                            subst
                                            ctx
                                            phi
                                            trace))))
                                '#!void))
                             (_%K152399152421%_
                              (lambda (_%trace152412%_
                                       _%phi152413%_
                                       _%ctx152414%_
                                       _%subst152415%_)
                                (let ((_%subs152417%_
                                       (if _%subst152415%_
                                           (let ()
                                             (declare (not safe))
                                             (hash->list _%subst152415%_))
                                           '())))
                                  (cons _%phi152413%_
                                        (let ((__tmp161184
                                               (lambda (_%pair152419%_)
                                                 (cons (_%quote-e152395%_
                                                        (car _%pair152419%_))
                                                       (_%quote-e152395%_
                                                        (cdr _%pair152419%_))))))
                                          (declare (not safe))
                                          (##map __tmp161184
                                                 _%subs152417%_)))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%mark152396152405%_
                               'gx#expander-mark::t))
                            (let* ((_%e152400152424%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark152396152405%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%subst152427%_ _%e152400152424%_)
                                   (_%e152401152429%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark152396152405%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%ctx152432%_ _%e152401152429%_)
                                   (_%e152402152434%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark152396152405%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%phi152437%_ _%e152402152434%_)
                                   (_%e152403152439%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark152396152405%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%trace152442%_ _%e152403152439%_))
                              (_%K152399152421%_
                               _%trace152442%_
                               _%phi152437%_
                               _%ctx152432%_
                               _%subst152427%_))
                            (_%E152398152409%_))))))
                 (_%context-ref152303%_
                  (lambda (_%ctx152380%_)
                    (if (let ((__tmp161185
                               (##structure-ref
                                _%ctx152380%_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (declare (not safe))
                          (##structure-instance-of?
                           __tmp161185
                           'gx#module-context::t))
                        (let ((_%ctx-ref152382%_
                               (_%context-ref-nested152305%_ _%ctx152380%_))
                              (_%ctx-origin152383%_
                               (_%context-ref-origin152304%_ _%ctx152380%_))
                              (_%origin152384%_
                               (_%context-ref-origin152304%_
                                (let ()
                                  (declare (not safe))
                                  (gx#current-expander-context)))))
                          (if (eq? _%origin152384%_ _%ctx-origin152383%_)
                              (let ((_%ref152386%_
                                     (_%context-ref-nested152305%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context)))))
                                (let _%lp152388%_ ((_%ref152390%_
                                                    (cdr _%ref152386%_))
                                                   (_%ctx-ref152391%_
                                                    (cdr _%ctx-ref152382%_)))
                                  (if (and (pair? _%ref152390%_)
                                           (eq? (let ()
                                                  (declare (not safe))
                                                  (##car _%ref152390%_))
                                                (car _%ctx-ref152391%_)))
                                      (_%lp152388%_
                                       (cdr _%ref152390%_)
                                       (cdr _%ctx-ref152391%_))
                                      (cons '#f _%ctx-ref152391%_))))
                              _%ctx-ref152382%_))
                        (let ((__tmp161186
                               (##structure-ref
                                _%ctx152380%_
                                '1
                                gx#expander-context::t
                                '#f)))
                          (declare (not safe))
                          (make-symbol__1 '":" __tmp161186)))))
                 (_%context-ref-origin152304%_
                  (lambda (_%ctx152372%_)
                    (let _%lp152374%_ ((_%ctx152376%_ _%ctx152372%_))
                      (let ((_%super152378%_
                             (##structure-ref
                              _%ctx152376%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super152378%_
                               'gx#module-context::t))
                            (_%lp152374%_ _%super152378%_)
                            _%ctx152376%_)))))
                 (_%context-ref-nested152305%_
                  (lambda (_%ctx152363%_)
                    (let _%lp152365%_ ((_%ctx152367%_ _%ctx152363%_)
                                       (_%r152368%_ '()))
                      (let ((_%super152370%_
                             (##structure-ref
                              _%ctx152367%_
                              '3
                              gx#phi-context::t
                              '#f)))
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
                                   _%r152368%_))
                            (cons (let ((__tmp161187
                                         (##structure-ref
                                          _%ctx152367%_
                                          '1
                                          gx#expander-context::t
                                          '#f)))
                                    (declare (not safe))
                                    (make-symbol__1 '":" __tmp161187))
                                  _%r152368%_)))))))
          (let* ((_%g152307152320%_
                  (lambda (_%g152308152317%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g152308152317%_))))
                 (_%g152306152360%_
                  (lambda (_%g152308152323%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g152308152323%_))
                        (let ((_%e152310152325%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g152308152323%_))))
                          (let ((_%hd152311152328%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e152310152325%_)))
                                (_%tl152312152330%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e152310152325%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl152312152330%_))
                                (let ((_%e152313152333%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl152312152330%_))))
                                  (let ((_%hd152314152336%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e152313152333%_)))
                                        (_%tl152315152338%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e152313152333%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl152315152338%_))
                                        ((lambda (_%L152341%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#identifier? _%L152341%_))
                                               (let ((_%$e152354%_
                                                      (let ((__tmp161188
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#current-compile-identifiers))))
                (declare (not safe))
                (hash-get __tmp161188 _%L152341%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e152354%_
                                                     _%$e152354%_
                                                     (let ((_%marks152358%_
                                                            (##direct-structure-ref
                                                             _%L152341%_
                                                             '4
                                                             gx#syntax-quote::t
                                                             '#f)))
                                                       (if (null? _%marks152358%_)
                                                           (_%generate-simple152299%_
                                                            _%L152341%_)
                                                           (_%generate-serialized152300%_
                                                            _%L152341%_
                                                            _%marks152358%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"Cannot quote non-identifier syntax"
                                                  _%L152341%_))))
                                         _%hd152314152336%_)
                                        (_%g152307152320%_
                                         _%g152308152323%_))))
                                (_%g152307152320%_ _%g152308152323%_))))
                        (_%g152307152320%_ _%g152308152323%_)))))
            (_%g152306152360%_ _%stx152295%_)))))
    (define gxc#generate-runtime-phi-define-runtime%
      (lambda (_%self152226%_ _%stx152227%_)
        (let* ((_%g152229152246%_
                (lambda (_%g152230152243%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g152230152243%_))))
               (_%g152228152291%_
                (lambda (_%g152230152249%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g152230152249%_))
                      (let ((_%e152233152251%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g152230152249%_))))
                        (let ((_%hd152234152254%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e152233152251%_)))
                              (_%tl152235152256%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e152233152251%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl152235152256%_))
                              (let ((_%e152236152259%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl152235152256%_))))
                                (let ((_%hd152237152262%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e152236152259%_)))
                                      (_%tl152238152264%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e152236152259%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl152238152264%_))
                                      (let ((_%e152239152267%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl152238152264%_))))
                                        (let ((_%hd152240152270%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e152239152267%_)))
                                              (_%tl152241152272%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e152239152267%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl152241152272%_))
                                              ((lambda (_%L152275%_
                                                        _%L152276%_)
                                                 (cons 'define
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%L152276%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _%self152226%_ _%L152275%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd152240152270%_
                                               _%hd152237152262%_)
                                              (_%g152229152246%_
                                               _%g152230152249%_))))
                                      (_%g152229152246%_ _%g152230152249%_))))
                              (_%g152229152246%_ _%g152230152249%_))))
                      (_%g152229152246%_ _%g152230152249%_)))))
          (_%g152228152291%_ _%stx152227%_))))
    (define gxc#generate-meta-begin%
      (lambda (_%self152175%_ _%stx152176%_)
        (let* ((_%g152178152188%_
                (lambda (_%g152179152185%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g152179152185%_))))
               (_%g152177152223%_
                (lambda (_%g152179152191%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g152179152191%_))
                      (let ((_%e152181152193%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g152179152191%_))))
                        (let ((_%hd152182152196%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e152181152193%_)))
                              (_%tl152183152198%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e152181152193%_))))
                          ((lambda (_%L152201%_)
                             (let* ((_%c-body152215%_
                                     (map (lambda (_%g152210152212%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self152175%_
                                               _%g152210152212%_)))
                                          _%L152201%_))
                                    (_%c-body152220%_
                                     (let ((__tmp161189
                                            (lambda (_%$obj152217%_)
                                              (not (eq? _%$obj152217%_
                                                        '#!void)))))
                                       (declare (not safe))
                                       (##filter
                                        __tmp161189
                                        _%c-body152215%_))))
                               (cons '%#begin _%c-body152220%_)))
                           _%tl152183152198%_)))
                      (_%g152178152188%_ _%g152179152191%_)))))
          (_%g152177152223%_ _%stx152176%_))))
    (define gxc#generate-meta-begin-syntax%
      (lambda (_%self152080%_ _%stx152081%_)
        (let* ((_%g152083152093%_
                (lambda (_%g152084152090%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g152084152090%_))))
               (_%g152082152172%_
                (lambda (_%g152084152096%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g152084152096%_))
                      (let ((_%e152086152098%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g152084152096%_))))
                        (let ((_%hd152087152101%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e152086152098%_)))
                              (_%tl152088152103%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e152086152098%_))))
                          ((lambda (_%L152106%_)
                             (let* ((_%phi152116%_
                                     (let ((__tmp161190
                                            (let ()
                                              (declare (not safe))
                                              (gx#current-expander-phi))))
                                       (declare (not safe))
                                       (##fx+ __tmp161190 '1)))
                                    (_%block152118%_
                                     (gxc#meta-state-begin-phi!
                                      (let ()
                                        (declare (not safe))
                                        (slot-ref__0 _%self152080%_ 'state))
                                      _%phi152116%_))
                                    (_%compiled152121%_
                                     (let ((__tmp161191
                                            (lambda ()
                                              (gxc#apply-generate-meta-phi__%
                                               '#f
                                               (let ()
                                                 (declare (not safe))
                                                 (slot-ref__0
                                                  _%self152080%_
                                                  'state))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#begin))
                                                     _%L152106%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp161191
                                        gx#current-expander-phi
                                        _%phi152116%_)))
                                    (_%g152124152134%_
                                     (lambda (_%g152125152131%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g152125152131%_))))
                                    (_%g152123152169%_
                                     (lambda (_%g152125152137%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%g152125152137%_))
                                           (let ((_%e152127152139%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%g152125152137%_))))
                                             (let ((_%hd152128152142%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e152127152139%_)))
                                                   (_%tl152129152144%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e152127152139%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd152128152142%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#begin
                                                          _%hd152128152142%_))
                                                       ((lambda (_%L152147%_)
                                                          (let ((_%c-body152164%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (filter (lambda (_%$obj152161%_)
                                   (not (eq? _%$obj152161%_ '#!void)))
                                 _%L152147%_)))
                    (if _%block152118%_
                        (cons '%#begin-syntax
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'load-module '()))
                                                (cons (cons '%#quote
                                                            (cons _%block152118%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%c-body152164%_))
                        (if (null? _%c-body152164%_)
                            '#!void
                            (cons '%#begin-syntax _%c-body152164%_)))))
                _%tl152129152144%_)
               (_%g152124152134%_ _%g152125152137%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g152124152134%_
                                                    _%g152125152137%_))))
                                           (_%g152124152134%_
                                            _%g152125152137%_)))))
                               (_%g152123152169%_ _%compiled152121%_)))
                           _%tl152088152103%_)))
                      (_%g152083152093%_ _%g152084152096%_)))))
          (_%g152082152172%_ _%stx152081%_))))
    (define gxc#generate-meta-module%
      (lambda (_%self152011%_ _%stx152012%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self152011%_ 'state)))
        (let* ((_%g152014152028%_
                (lambda (_%g152015152025%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g152015152025%_))))
               (_%g152013152077%_
                (lambda (_%g152015152031%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g152015152031%_))
                      (let ((_%e152018152033%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g152015152031%_))))
                        (let ((_%hd152019152036%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e152018152033%_)))
                              (_%tl152020152038%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e152018152033%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl152020152038%_))
                              (let ((_%e152021152041%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl152020152038%_))))
                                (let ((_%hd152022152044%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e152021152041%_)))
                                      (_%tl152023152046%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e152021152041%_))))
                                  ((lambda (_%L152049%_ _%L152050%_)
                                     (let ((_%key152063%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#core-identifier-key
                                               _%L152050%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (interned-symbol? _%key152063%_))
                                           '#!void
                                           (let ()
                                             (declare (not safe))
                                             (gxc#raise-compile-error
                                              '"Cannot compile module with uninterned id"
                                              _%stx152012%_
                                              _%L152050%_
                                              _%key152063%_)))
                                       (let* ((_%ctx152065%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-local-e__0
                                                  _%L152050%_)))
                                              (_%code152068%_
                                               (let ((__tmp161192
                                                      (lambda ()
                                                        (let ((__tmp161193
                                                               (##structure-ref
                                                                _%ctx152065%_
                                                                '11
                                                                gx#module-context::t
                                                                '#f)))
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self152011%_
                                                           __tmp161193)))))
                                                 (declare (not safe))
                                                 (call-with-parameters__1
                                                  __tmp161192
                                                  gx#current-expander-context
                                                  _%ctx152065%_)))
                                              (_%rt152070%_
                                               (let ((__tmp161194
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#current-compile-runtime-sections))))
                                                 (declare (not safe))
                                                 (hash-get
                                                  __tmp161194
                                                  _%ctx152065%_)))
                                              (_%loader152072%_
                                               (if _%rt152070%_
                                                   (cons (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons 'load-module '()))
                             (cons (cons '%#quote (cons _%rt152070%_ '()))
                                   '())))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                              (_%modid152074%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _%L152050%_))))
                                         (gxc#meta-state-end-phi!
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self152011%_
                                             'state)))
                                         (cons '%#module
                                               (cons _%modid152074%_
                                                     (cons _%code152068%_
                                                           _%loader152072%_))))))
                                   _%tl152023152046%_
                                   _%hd152022152044%_)))
                              (_%g152014152028%_ _%g152015152031%_))))
                      (_%g152014152028%_ _%g152015152031%_)))))
          (_%g152013152077%_ _%stx152012%_))))
    (define gxc#generate-meta-import-path
      (lambda (_%ctx151998%_ _%context-chain151999%_)
        (let _%lp152001%_ ((_%ctx152003%_ _%ctx151998%_) (_%path152004%_ '()))
          (let ((_%super152006%_
                 (##structure-ref _%ctx152003%_ '3 gx#phi-context::t '#f)))
            (if (memq _%super152006%_ _%context-chain151999%_)
                (cons '#f
                      (cons (car (##structure-ref
                                  _%ctx152003%_
                                  '7
                                  gx#module-context::t
                                  '#f))
                            _%path152004%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%super152006%_
                       'gx#module-context::t))
                    (_%lp152001%_
                     _%super152006%_
                     (cons (car (##structure-ref
                                 _%ctx152003%_
                                 '7
                                 gx#module-context::t
                                 '#f))
                           _%path152004%_))
                    (cons (let ((__tmp161195
                                 (##structure-ref
                                  _%ctx152003%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (make-symbol__1 '":" __tmp161195))
                          _%path152004%_)))))))
    (define gxc#current-context-chain
      (lambda ()
        (let _%lp151991%_ ((_%ctx151993%_
                            (let ()
                              (declare (not safe))
                              (gx#current-expander-context)))
                           (_%r151994%_ '()))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%ctx151993%_ 'gx#module-context::t))
              (_%lp151991%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%ctx151993%_ '3 '#f '#f))
               (cons _%ctx151993%_ _%r151994%_))
              _%r151994%_))))
    (define gxc#generate-meta-import%
      (lambda (_%self151754%_ _%stx151755%_)
        (letrec* ((_%context-chain151757%_ (gxc#current-context-chain))
                  (_%make-import-spec151758%_
                   (lambda (_%in151927%_)
                     (let* ((_%in151928151940%_ _%in151927%_)
                            (_%E151930151944%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%in151928151940%_
                                        '((module-import
                                           (module-export
                                            src-ctx
                                            src-key
                                            src-phi
                                            src-name)
                                           name
                                           phi))))
                               '#!void))
                            (_%K151931151954%_
                             (lambda (_%phi151947%_
                                      _%name151948%_
                                      _%src-name151949%_
                                      _%src-phi151950%_
                                      _%src-key151951%_
                                      _%src-ctx151952%_)
                               (cons _%phi151947%_
                                     (cons (gxc#generate-runtime-identifier-key
                                            _%name151948%_)
                                           (cons _%src-phi151950%_
                                                 (cons (gxc#generate-runtime-identifier-key
                                                        _%src-name151949%_)
                                                       '())))))))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              _%in151928151940%_
                              'gx#module-import::t))
                           (let ((_%e151932151957%_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%in151928151940%_
                                     '1
                                     '#f
                                     '#f))))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    _%e151932151957%_
                                    'gx#module-export::t))
                                 (let* ((_%e151935151960%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e151932151957%_
                                            '1
                                            '#f
                                            '#f)))
                                        (_%src-ctx151963%_ _%e151935151960%_)
                                        (_%e151936151965%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e151932151957%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%src-key151968%_ _%e151936151965%_)
                                        (_%e151937151970%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e151932151957%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%src-phi151973%_ _%e151937151970%_)
                                        (_%e151938151975%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e151932151957%_
                                            '4
                                            '#f
                                            '#f)))
                                        (_%src-name151978%_ _%e151938151975%_)
                                        (_%e151933151980%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in151928151940%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%name151983%_ _%e151933151980%_)
                                        (_%e151934151985%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in151928151940%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%phi151988%_ _%e151934151985%_))
                                   (_%K151931151954%_
                                    _%phi151988%_
                                    _%name151983%_
                                    _%src-name151978%_
                                    _%src-phi151973%_
                                    _%src-key151968%_
                                    _%src-ctx151963%_))
                                 (_%E151930151944%_)))
                           (_%E151930151944%_)))))
                  (_%make-import-path151759%_
                   (lambda (_%ctx151925%_)
                     (gxc#generate-meta-import-path
                      _%ctx151925%_
                      _%context-chain151757%_)))
                  (_%make-import-spec-in151760%_
                   (lambda (_%ctx151922%_ _%in151923%_)
                     (cons 'spec:
                           (cons (_%make-import-path151759%_ _%ctx151922%_)
                                 (reverse _%in151923%_))))))
          (gxc#meta-state-end-phi!
           (let () (declare (not safe)) (slot-ref__0 _%self151754%_ 'state)))
          (let* ((_%g151762151772%_
                  (lambda (_%g151763151769%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g151763151769%_))))
                 (_%g151761151919%_
                  (lambda (_%g151763151775%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g151763151775%_))
                        (let ((_%e151765151777%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g151763151775%_))))
                          (let ((_%hd151766151780%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e151765151777%_)))
                                (_%tl151767151782%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e151765151777%_))))
                            ((lambda (_%L151785%_)
                               (let _%lp151796%_ ((_%rest151798%_ _%L151785%_)
                                                  (_%current-src151799%_ '#f)
                                                  (_%current-in151800%_ '())
                                                  (_%r151801%_ '()))
                                 (let* ((_%rest151802151810%_ _%rest151798%_)
                                        (_%else151804151820%_
                                         (lambda ()
                                           (let ((_%r151818%_
                                                  (if _%current-src151799%_
                                                      (cons (_%make-import-spec-in151760%_
                                                             _%current-src151799%_
                                                             _%current-in151800%_)
                                                            _%r151801%_)
                                                      _%r151801%_)))
                                             (cons '%#import
                                                   (reverse _%r151818%_)))))
                                        (_%K151806151907%_
                                         (lambda (_%rest151823%_ _%in151824%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in151824%_
                                                  'gx#module-import::t))
                                               (let* ((_%in151826151833%_
                                                       _%in151824%_)
                                                      (_%E151828151837%_
                                                       (lambda ()
                                                         (let ()
                                                           (declare (not safe))
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%in151826151833%_
                          '((module-import (module-export src-ctx)))))
                 '#!void))
              (_%K151829151845%_
               (lambda (_%src-ctx151840%_)
                 (if (eq? _%current-src151799%_ _%src-ctx151840%_)
                     (_%lp151796%_
                      _%rest151823%_
                      _%current-src151799%_
                      (cons (_%make-import-spec151758%_ _%in151824%_)
                            _%current-in151800%_)
                      _%r151801%_)
                     (if _%current-src151799%_
                         (_%lp151796%_
                          _%rest151823%_
                          _%src-ctx151840%_
                          (cons (_%make-import-spec151758%_ _%in151824%_) '())
                          (cons (_%make-import-spec-in151760%_
                                 _%current-src151799%_
                                 _%current-in151800%_)
                                _%r151801%_))
                         (_%lp151796%_
                          _%rest151823%_
                          _%src-ctx151840%_
                          (cons (_%make-import-spec151758%_ _%in151824%_) '())
                          _%r151801%_)))))
              (_%e151830151848%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%in151826151833%_ '1 '#f '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%e151830151848%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e151831151851%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%e151830151848%_
                        '1
                        '#f
                        '#f)))
                    (_%src-ctx151854%_ _%e151831151851%_))
               (_%K151829151845%_ _%src-ctx151854%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E151828151837%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%in151824%_
                                                      'gx#import-set::t))
                                                   (let* ((_%phi151857%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in151824%_
                                                              '2
                                                              '#f
                                                              '#f)))
                                                          (_%src151859%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in151824%_
                                                              '1
                                                              '#f
                                                              '#f)))
                                                          (_%src-in151899%_
                                                           (let* ((_%g151860151869%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (_%make-import-path151759%_ _%src151859%_))
                          (_%E151863151873%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (error '"No clause matching"
                                      _%g151860151869%_
                                      '([path])
                                      '(path)))
                             '#!void)))
                     (let ((_%K151865151889%_
                            (lambda (_%path151887%_) _%path151887%_))
                           (_%K151864151879%_
                            (lambda (_%path151877%_)
                              (cons 'in: _%path151877%_))))
                       (if (pair? _%g151860151869%_)
                           (let ((_%tl151867151894%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%g151860151869%_)))
                                 (_%hd151866151892%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%g151860151869%_))))
                             (if (null? _%tl151867151894%_)
                                 (let ((_%path151897%_ _%hd151866151892%_))
                                   (_%K151865151889%_ _%path151897%_))
                                 (let ((_%path151882%_ _%g151860151869%_))
                                   (_%K151864151879%_ _%path151882%_))))
                           (let ((_%path151882%_ _%g151860151869%_))
                             (_%K151864151879%_ _%path151882%_))))))
                  (_%r151901%_
                   (if _%current-src151799%_
                       (cons (_%make-import-spec-in151760%_
                              _%current-src151799%_
                              _%current-in151800%_)
                             _%r151801%_)
                       _%r151801%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%lp151796%_
                                                      _%rest151823%_
                                                      '#f
                                                      '()
                                                      (cons (if (fxzero? _%phi151857%_)
                                                                _%src-in151899%_
                                                                (cons 'phi:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%phi151857%_
                                    (cons _%src-in151899%_ '()))))
                    _%r151901%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-instance-of?
                                                          _%in151824%_
                                                          'gx#module-context::t))
                                                       (let ((_%r151905%_
                                                              (if _%current-src151799%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (_%make-import-spec-in151760%_
                                 _%current-src151799%_
                                 _%current-in151800%_)
                                _%r151801%_)
                          _%r151801%_)))
                 (_%lp151796%_
                  _%rest151823%_
                  '#f
                  '()
                  (cons (cons 'runtime:
                              (_%make-import-path151759%_ _%in151824%_))
                        _%r151905%_)))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (pair? _%rest151802151810%_)
                                       (let ((_%hd151807151910%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest151802151810%_)))
                                             (_%tl151808151912%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest151802151810%_))))
                                         (let* ((_%in151915%_
                                                 _%hd151807151910%_)
                                                (_%rest151917%_
                                                 _%tl151808151912%_))
                                           (_%K151806151907%_
                                            _%rest151917%_
                                            _%in151915%_)))
                                       (_%else151804151820%_)))))
                             _%tl151767151782%_)))
                        (_%g151762151772%_ _%g151763151775%_)))))
            (_%g151761151919%_ _%stx151755%_)))))
    (define gxc#generate-meta-export%
      (lambda (_%self151564%_ _%stx151565%_)
        (letrec* ((_%context-chain151567%_ (gxc#current-context-chain))
                  (_%make-import-path151568%_
                   (lambda (_%ctx151752%_)
                     (gxc#generate-meta-import-path
                      _%ctx151752%_
                      _%context-chain151567%_))))
          (let* ((_%g151570151580%_
                  (lambda (_%g151571151577%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g151571151577%_))))
                 (_%g151569151749%_
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
                               (let _%lp151604%_ ((_%rest151606%_ _%L151593%_)
                                                  (_%r151607%_ '()))
                                 (let* ((_%rest151608151616%_ _%rest151606%_)
                                        (_%else151610151624%_
                                         (lambda ()
                                           (cons '%#export
                                                 (reverse _%r151607%_))))
                                        (_%K151612151737%_
                                         (lambda (_%rest151627%_ _%out151628%_)
                                           (let* ((_%out151629151642%_
                                                   _%out151628%_)
                                                  (_%E151632151646%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%out151629151642%_
                                                              '((module-export
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _
                         key
                         phi
                         name))
                      '((export-set src phi))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#!void)))
                                             (let ((_%K151636151716%_
                                                    (lambda (_%name151712%_
                                                             _%phi151713%_
                                                             _%key151714%_)
                                                      (_%lp151604%_
                                                       _%rest151627%_
                                                       (cons (cons 'spec:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%phi151713%_
                                 (cons (gxc#generate-runtime-identifier-key
                                        _%key151714%_)
                                       (cons (gxc#generate-runtime-identifier-key
                                              _%name151712%_)
                                             '()))))
                     _%r151607%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K151633151696%_
                                                    (lambda (_%phi151650%_
                                                             _%src151651%_)
                                                      (let* ((_%out151691%_
                                                              (if _%src151651%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'import:
                                (cons (let* ((_%g151652151661%_
                                              (_%make-import-path151568%_
                                               _%src151651%_))
                                             (_%E151655151665%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (error '"No clause matching"
                                                         _%g151652151661%_
                                                         '([path])
                                                         '(path)))
                                                '#!void)))
                                        (let ((_%K151657151681%_
                                               (lambda (_%path151679%_)
                                                 _%path151679%_))
                                              (_%K151656151671%_
                                               (lambda (_%path151669%_)
                                                 (cons 'in: _%path151669%_))))
                                          (if (pair? _%g151652151661%_)
                                              (let ((_%tl151659151686%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%g151652151661%_)))
                                                    (_%hd151658151684%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%g151652151661%_))))
                                                (if (null? _%tl151659151686%_)
                                                    (let ((_%path151689%_
                                                           _%hd151658151684%_))
                                                      (_%K151657151681%_
                                                       _%path151689%_))
                                                    (let ((_%path151674%_
                                                           _%g151652151661%_))
                                                      (_%K151656151671%_
                                                       _%path151674%_))))
                                              (let ((_%path151674%_
                                                     _%g151652151661%_))
                                                (_%K151656151671%_
                                                 _%path151674%_)))))
                                      '()))
                          '#t))
                     (_%out151693%_
                      (if (fxzero? _%phi151650%_)
                          _%out151691%_
                          (cons 'phi:
                                (cons _%phi151650%_
                                      (cons _%out151691%_ '()))))))
                (_%lp151604%_
                 _%rest151627%_
                 (cons _%out151693%_ _%r151607%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_%try-match151631151709%_
                                                      (lambda ()
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-direct-instance-of?
                                                               _%out151629151642%_
                                                               'gx#export-set::t))
                                                            (let* ((_%e151634151699%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out151629151642%_
                               '1
                               '#f
                               '#f)))
                           (_%e151635151704%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out151629151642%_
                               '2
                               '#f
                               '#f))))
                      (let ((_%src151702%_ _%e151634151699%_)
                            (_%phi151707%_ _%e151635151704%_))
                        (_%K151633151696%_ _%phi151707%_ _%src151702%_)))
                    (_%E151632151646%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%out151629151642%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e151637151719%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%out151629151642%_
                        '1
                        '#f
                        '#f)))
                    (_%e151638151722%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out151629151642%_
                        '2
                        '#f
                        '#f)))
                    (_%e151639151727%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out151629151642%_
                        '3
                        '#f
                        '#f)))
                    (_%e151640151732%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out151629151642%_
                        '4
                        '#f
                        '#f))))
               (let ((_%key151725%_ _%e151638151722%_)
                     (_%phi151730%_ _%e151639151727%_)
                     (_%name151735%_ _%e151640151732%_))
                 (_%K151636151716%_
                  _%name151735%_
                  _%phi151730%_
                  _%key151725%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%try-match151631151709%_))))))))
                                   (if (pair? _%rest151608151616%_)
                                       (let ((_%hd151613151740%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest151608151616%_)))
                                             (_%tl151614151742%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest151608151616%_))))
                                         (let* ((_%out151745%_
                                                 _%hd151613151740%_)
                                                (_%rest151747%_
                                                 _%tl151614151742%_))
                                           (_%K151612151737%_
                                            _%rest151747%_
                                            _%out151745%_)))
                                       (_%else151610151624%_)))))
                             _%tl151575151590%_)))
                        (_%g151570151580%_ _%g151571151583%_)))))
            (_%g151569151749%_ _%stx151565%_)))))
    (define gxc#generate-meta-provide%
      (lambda (_%self151525%_ _%stx151526%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self151525%_ 'state)))
        (let* ((_%g151528151538%_
                (lambda (_%g151529151535%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g151529151535%_))))
               (_%g151527151561%_
                (lambda (_%g151529151541%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g151529151541%_))
                      (let ((_%e151531151543%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g151529151541%_))))
                        (let ((_%hd151532151546%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e151531151543%_)))
                              (_%tl151533151548%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e151531151543%_))))
                          ((lambda (_%L151551%_)
                             (cons '%#provide
                                   (map gxc#generate-runtime-identifier
                                        _%L151551%_)))
                           _%tl151533151548%_)))
                      (_%g151528151538%_ _%g151529151541%_)))))
          (_%g151527151561%_ _%stx151526%_))))
    (define gxc#generate-meta-extern%
      (lambda (_%self151396%_ _%stx151397%_)
        (letrec ((_%generate1151399%_
                  (lambda (_%id151520%_ _%eid151521%_)
                    (let ((_%eid151523%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%eid151521%_))))
                      (if (let ()
                            (declare (not safe))
                            (interned-symbol? _%eid151523%_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"Cannot compile extern reference"
                             _%stx151397%_
                             _%eid151523%_)))
                      (cons (gxc#generate-runtime-identifier _%id151520%_)
                            (cons _%eid151523%_ '()))))))
          (let* ((_%g151401151429%_
                  (lambda (_%g151402151426%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g151402151426%_))))
                 (_%g151400151517%_
                  (lambda (_%g151402151432%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g151402151432%_))
                        (let ((_%e151405151434%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g151402151432%_))))
                          (let ((_%hd151406151437%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e151405151434%_)))
                                (_%tl151407151439%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e151405151434%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl151407151439%_))
                                (let ((_g161196_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl151407151439%_
                                          '0))))
                                  (begin
                                    (let ((_g161197_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g161196_)
                                                 (##values-length _g161196_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g161197_ 2)))
                                          (error "Context expects 2 values"
                                                 _g161197_)))
                                    (let ((_%target151408151442%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g161196_ 0)))
                                          (_%tl151410151444%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g161196_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl151410151444%_))
                                          (letrec ((_%loop151411151447%_
                                                    (lambda (_%hd151409151450%_
                                                             _%eid151415151452%_
                                                             _%id151416151454%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd151409151450%_))
                                                          (let ((_%e151412151457%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd151409151450%_))))
                    (let ((_%lp-hd151413151460%_
                           (let ()
                             (declare (not safe))
                             (##car _%e151412151457%_)))
                          (_%lp-tl151414151462%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e151412151457%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd151413151460%_))
                          (let ((_%e151419151465%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd151413151460%_))))
                            (let ((_%hd151420151468%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e151419151465%_)))
                                  (_%tl151421151470%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e151419151465%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl151421151470%_))
                                  (let ((_%e151422151473%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl151421151470%_))))
                                    (let ((_%hd151423151476%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e151422151473%_)))
                                          (_%tl151424151478%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e151422151473%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl151424151478%_))
                                          (_%loop151411151447%_
                                           _%lp-tl151414151462%_
                                           (cons _%hd151423151476%_
                                                 _%eid151415151452%_)
                                           (cons _%hd151420151468%_
                                                 _%id151416151454%_))
                                          (_%g151401151429%_
                                           _%g151402151432%_))))
                                  (_%g151401151429%_ _%g151402151432%_))))
                          (_%g151401151429%_ _%g151402151432%_))))
                  (let ((_%eid151417151481%_ (reverse _%eid151415151452%_))
                        (_%id151418151483%_ (reverse _%id151416151454%_)))
                    ((lambda (_%L151486%_ _%L151487%_)
                       (cons '%#extern
                             (map _%generate1151399%_
                                  (let ((__tmp161198
                                         (lambda (_%g151502151505%_
                                                  _%g151503151507%_)
                                           (cons _%g151502151505%_
                                                 _%g151503151507%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp161198 '() _%L151487%_))
                                  (let ((__tmp161199
                                         (lambda (_%g151509151512%_
                                                  _%g151510151514%_)
                                           (cons _%g151509151512%_
                                                 _%g151510151514%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp161199 '() _%L151486%_)))))
                     _%eid151417151481%_
                     _%id151418151483%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop151411151447%_
                                             _%target151408151442%_
                                             '()
                                             '()))
                                          (_%g151401151429%_
                                           _%g151402151432%_)))))
                                (_%g151401151429%_ _%g151402151432%_))))
                        (_%g151401151429%_ _%g151402151432%_)))))
            (_%g151400151517%_ _%stx151397%_)))))
    (define gxc#generate-meta-define-values%
      (lambda (_%self151186%_ _%stx151187%_)
        (letrec ((_%generate1151189%_
                  (lambda (_%id151391%_)
                    (let ((_%eid151393%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%id151391%_)))
                          (_%ident151394%_
                           (gxc#generate-runtime-identifier _%id151391%_)))
                      (cons '%#define-runtime
                            (cons _%ident151394%_ (cons _%eid151393%_ '()))))))
                 (_%generate*151190%_
                  (lambda (_%all151359%_)
                    (let* ((_%all151360151368%_ _%all151359%_)
                           (_%else151362151376%_
                            (lambda () (cons '%#begin _%all151359%_)))
                           (_%K151364151381%_
                            (lambda (_%one151379%_) _%one151379%_)))
                      (if (pair? _%all151360151368%_)
                          (let ((_%hd151365151384%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all151360151368%_)))
                                (_%tl151366151386%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all151360151368%_))))
                            (let ((_%one151389%_ _%hd151365151384%_))
                              (if (null? _%tl151366151386%_)
                                  (_%K151364151381%_ _%one151389%_)
                                  (_%else151362151376%_))))
                          (_%else151362151376%_))))))
          (let* ((_%g151192151209%_
                  (lambda (_%g151193151206%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g151193151206%_))))
                 (_%g151191151356%_
                  (lambda (_%g151193151212%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g151193151212%_))
                        (let ((_%e151196151214%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g151193151212%_))))
                          (let ((_%hd151197151217%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e151196151214%_)))
                                (_%tl151198151219%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e151196151214%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl151198151219%_))
                                (let ((_%e151199151222%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl151198151219%_))))
                                  (let ((_%hd151200151225%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e151199151222%_)))
                                        (_%tl151201151227%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e151199151222%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl151201151227%_))
                                        (let ((_%e151202151230%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl151201151227%_))))
                                          (let ((_%hd151203151233%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e151202151230%_)))
                                                (_%tl151204151235%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e151202151230%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl151204151235%_))
                                                ((lambda (_%L151238%_
                                                          _%L151239%_)
                                                   (let _%lp151255%_ ((_%rest151257%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%L151239%_)
                              (_%r151258%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((_%__stx160934160935%_
                                                             _%rest151257%_)
                                                            (_%g151263151280%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%__stx160934160935%_)))))
               (let ((_%__kont160936160937%_
                      (lambda (_%L151343%_)
                        (_%lp151255%_ _%L151343%_ _%r151258%_)))
                     (_%__kont160938160939%_
                      (lambda (_%L151316%_ _%L151317%_)
                        (_%lp151255%_
                         _%L151316%_
                         (cons (_%generate1151189%_ _%L151317%_)
                               _%r151258%_))))
                     (_%__kont160940160941%_
                      (lambda (_%L151292%_)
                        (_%generate*151190%_
                         (let ((__tmp161200
                                (cons (_%generate1151189%_ _%L151292%_) '())))
                           (declare (not safe))
                           (__foldl1 cons __tmp161200 _%r151258%_)))))
                     (_%__kont160942160943%_
                      (lambda () (_%generate*151190%_ (reverse _%r151258%_)))))
                 (let ((_%g151261151303%_
                        (lambda ()
                          (let ((_%L151292%_ _%__stx160934160935%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L151292%_))
                                (_%__kont160940160941%_ _%L151292%_)
                                (_%__kont160942160943%_))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%__stx160934160935%_))
                       (let ((_%e151266151332%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%__stx160934160935%_))))
                         (let ((_%tl151268151337%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e151266151332%_)))
                               (_%hd151267151335%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e151266151332%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-datum? _%hd151267151335%_))
                               (let ((_%e151269151340%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd151267151335%_))))
                                 (if (equal? _%e151269151340%_ '#f)
                                     (_%__kont160936160937%_
                                      _%tl151268151337%_)
                                     (_%__kont160938160939%_
                                      _%tl151268151337%_
                                      _%hd151267151335%_)))
                               (_%__kont160938160939%_
                                _%tl151268151337%_
                                _%hd151267151335%_))))
                       (let () (declare (not safe)) (_%g151261151303%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd151203151233%_
                                                 _%hd151200151225%_)
                                                (_%g151192151209%_
                                                 _%g151193151212%_))))
                                        (_%g151192151209%_
                                         _%g151193151212%_))))
                                (_%g151192151209%_ _%g151193151212%_))))
                        (_%g151192151209%_ _%g151193151212%_)))))
            (_%g151191151356%_ _%stx151187%_)))))
    (define gxc#generate-meta-define-syntax%
      (lambda (_%self151083%_ _%stx151084%_)
        (let* ((_%g151086151103%_
                (lambda (_%g151087151100%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g151087151100%_))))
               (_%g151085151183%_
                (lambda (_%g151087151106%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g151087151106%_))
                      (let ((_%e151090151108%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g151087151106%_))))
                        (let ((_%hd151091151111%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e151090151108%_)))
                              (_%tl151092151113%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e151090151108%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl151092151113%_))
                              (let ((_%e151093151116%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl151092151113%_))))
                                (let ((_%hd151094151119%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e151093151116%_)))
                                      (_%tl151095151121%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e151093151116%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl151095151121%_))
                                      (let ((_%e151096151124%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl151095151121%_))))
                                        (let ((_%hd151097151127%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e151096151124%_)))
                                              (_%tl151098151129%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e151096151124%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl151098151129%_))
                                              ((lambda (_%L151132%_
                                                        _%L151133%_)
                                                 (let* ((_%eid151148%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#generate-runtime-binding-id
                                                            _%L151133%_)))
                                                        (_%phi151150%_
                                                         (let ((__tmp161201
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#current-expander-phi))))
                   (declare (not safe))
                   (##fx+ __tmp161201 '1)))
                (_%block151152%_
                 (gxc#meta-state-begin-phi!
                  (let ()
                    (declare (not safe))
                    (slot-ref__0 _%self151083%_ 'state))
                  _%phi151150%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%g151155151162%_
                                                           (lambda (_%g151156151159%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g151156151159%_))))
                  (_%g151154151180%_
                   (lambda (_%g151156151165%_)
                     ((lambda (_%L151167%_)
                        (gxc#meta-state-add-phi!
                         (let ()
                           (declare (not safe))
                           (slot-ref__0 _%self151083%_ 'state))
                         _%phi151150%_
                         (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#define-runtime))
                               (cons _%L151167%_ (cons _%L151132%_ '())))))
                      _%g151156151165%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g151154151180%_
                                                      _%eid151148%_))
                                                   (if _%block151152%_
                                                       (cons '%#begin
                                                             (cons (cons '%#begin-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons 'load-module
                                                               '()))
                                                   (cons (cons '%#quote
                                                               (cons _%block151152%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons '%#define-syntax
                                       (cons (gxc#generate-runtime-identifier
                                              _%L151133%_)
                                             (cons _%eid151148%_ '())))
                                 '())))
               (cons '%#define-syntax
                     (cons (gxc#generate-runtime-identifier _%L151133%_)
                           (cons _%eid151148%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd151097151127%_
                                               _%hd151094151119%_)
                                              (_%g151086151103%_
                                               _%g151087151106%_))))
                                      (_%g151086151103%_ _%g151087151106%_))))
                              (_%g151086151103%_ _%g151087151106%_))))
                      (_%g151086151103%_ _%g151087151106%_)))))
          (_%g151085151183%_ _%stx151084%_))))
    (define gxc#generate-meta-define-alias%
      (lambda (_%self151015%_ _%stx151016%_)
        (let* ((_%g151018151035%_
                (lambda (_%g151019151032%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g151019151032%_))))
               (_%g151017151080%_
                (lambda (_%g151019151038%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g151019151038%_))
                      (let ((_%e151022151040%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g151019151038%_))))
                        (let ((_%hd151023151043%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e151022151040%_)))
                              (_%tl151024151045%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e151022151040%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl151024151045%_))
                              (let ((_%e151025151048%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl151024151045%_))))
                                (let ((_%hd151026151051%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e151025151048%_)))
                                      (_%tl151027151053%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e151025151048%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl151027151053%_))
                                      (let ((_%e151028151056%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl151027151053%_))))
                                        (let ((_%hd151029151059%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e151028151056%_)))
                                              (_%tl151030151061%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e151028151056%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl151030151061%_))
                                              ((lambda (_%L151064%_
                                                        _%L151065%_)
                                                 (cons '%#define-alias
                                                       (cons (gxc#generate-runtime-identifier
                                                              _%L151065%_)
                                                             (cons (gxc#generate-runtime-identifier
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%L151064%_)
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd151029151059%_
                                               _%hd151026151051%_)
                                              (_%g151018151035%_
                                               _%g151019151038%_))))
                                      (_%g151018151035%_ _%g151019151038%_))))
                              (_%g151018151035%_ _%g151019151038%_))))
                      (_%g151018151035%_ _%g151019151038%_)))))
          (_%g151017151080%_ _%stx151016%_))))
    (define gxc#generate-meta-phi-define-values%
      (lambda (_%self151012%_ _%stx151013%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self151012%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx151013%_)
        (gxc#generate-meta-define-values% _%self151012%_ _%stx151013%_)))
    (define gxc#generate-meta-phi-expr
      (lambda (_%self151009%_ _%stx151010%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self151009%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx151010%_)
        '#!void))
    (define gxc#meta-state::t
      (let ((__tmp161203 (list)) (__tmp161202 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state::t
         'meta-state
         __tmp161203
         '(src n open blocks)
         __tmp161202
         ':init!)))
    (define gxc#meta-state?
      (let () (declare (not safe)) (__make-class-predicate gxc#meta-state::t)))
    (define gxc#make-meta-state
      (lambda _%$args151006%_
        (apply make-instance gxc#meta-state::t _%$args151006%_)))
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
      (lambda (_%self150992%_ _%ctx150993%_)
        (let ((_%self150996%_ _%self150992%_))
          (if (let ((__tmp161204
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self150996%_))))
                (declare (not safe))
                (##fx< '4 __tmp161204))
              (begin
                (let ((__tmp161205
                       (let ((__tmp161206
                              (##structure-ref
                               _%ctx150993%_
                               '1
                               gx#expander-context::t
                               '#f)))
                         (declare (not safe))
                         (gxc#module-id->path-string __tmp161206))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self150996%_
                   __tmp161205
                   '1
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self150996%_ '1 '2 '#f '#f))
                (let ((__tmp161207
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self150996%_
                   __tmp161207
                   '3
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self150996%_ '() '4 '#f '#f))
                '#!void)
              (let ((__tmp161208
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self150996%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self150996%_
                       '4
                       __tmp161208))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#meta-state::t ':init! gxc#meta-state:::init! '#f))
    (define gxc#meta-state-block::t
      (let ((__tmp161210 (list)) (__tmp161209 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state-block::t
         'meta-state-block
         __tmp161210
         '(ctx phi n code)
         __tmp161209
         '#f)))
    (define gxc#meta-state-block?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#meta-state-block::t)))
    (define gxc#make-meta-state-block
      (lambda _%$args150867%_
        (apply make-instance gxc#meta-state-block::t _%$args150867%_)))
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
      (lambda (_%state150826%_ _%phi150827%_)
        (let* ((_%state150828150836%_ _%state150826%_)
               (_%E150830150840%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%state150828150836%_
                           '((meta-state src n open))))
                  '#!void))
               (_%K150831150849%_
                (lambda (_%open150843%_ _%n150844%_ _%src150845%_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _%open150843%_ _%phi150827%_))
                      '#f
                      (let ((_%block-ref150847%_
                             (let ((__tmp161211 (number->string _%n150844%_)))
                               (declare (not safe))
                               (##string-append
                                _%src150845%_
                                '"~"
                                __tmp161211))))
                        (##structure-set!
                         _%state150826%_
                         (let () (declare (not safe)) (##fx+ _%n150844%_ '1))
                         '2
                         gxc#meta-state::t
                         '#f)
                        (let ((__tmp161212
                               (let ((__tmp161213
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context))))
                                 (declare (not safe))
                                 (##structure
                                  gxc#meta-state-block::t
                                  __tmp161213
                                  _%phi150827%_
                                  _%n150844%_
                                  '()))))
                          (declare (not safe))
                          (hash-put! _%open150843%_ _%phi150827%_ __tmp161212))
                        _%block-ref150847%_)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _%state150828150836%_
                 'gxc#meta-state::t))
              (let* ((_%e150832150852%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state150828150836%_
                         '1
                         '#f
                         '#f)))
                     (_%src150855%_ _%e150832150852%_)
                     (_%e150833150857%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state150828150836%_
                         '2
                         '#f
                         '#f)))
                     (_%n150860%_ _%e150833150857%_)
                     (_%e150834150862%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state150828150836%_
                         '3
                         '#f
                         '#f)))
                     (_%open150865%_ _%e150834150862%_))
                (_%K150831150849%_ _%open150865%_ _%n150860%_ _%src150855%_))
              (_%E150830150840%_)))))
    (define gxc#meta-state-add-phi!
      (lambda (_%state150820%_ _%phi150821%_ _%stx150822%_)
        (let ((_%block150824%_
               (let ((__tmp161214
                      (##structure-ref
                       _%state150820%_
                       '3
                       gxc#meta-state::t
                       '#f)))
                 (declare (not safe))
                 (hash-get __tmp161214 _%phi150821%_))))
          (##structure-set!
           _%block150824%_
           (cons _%stx150822%_
                 (##structure-ref
                  _%block150824%_
                  '4
                  gxc#meta-state-block::t
                  '#f))
           '4
           gxc#meta-state-block::t
           '#f))))
    (define gxc#meta-state-end-phi!
      (lambda (_%state150814%_)
        (##structure-set!
         _%state150814%_
         (let ((__tmp161217
                (lambda (_%_150816%_ _%block150817%_ _%r150818%_)
                  (cons _%block150817%_ _%r150818%_)))
               (__tmp161216
                (##structure-ref _%state150814%_ '4 gxc#meta-state::t '#f))
               (__tmp161215
                (##structure-ref _%state150814%_ '3 gxc#meta-state::t '#f)))
           (declare (not safe))
           (hash-fold __tmp161217 __tmp161216 __tmp161215))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _%state150814%_
         (let () (declare (not safe)) (make-hash-table-eq))
         '3
         gxc#meta-state::t
         '#f)))
    (define gxc#meta-state-end!
      (lambda (_%state150766%_)
        (gxc#meta-state-end-phi! _%state150766%_)
        (let ((__tmp161219
               (lambda (_%block150768%_ _%r150769%_)
                 (let* ((_%block150770150779%_ _%block150768%_)
                        (_%E150772150783%_
                         (lambda ()
                           (let ()
                             (declare (not safe))
                             (error '"No clause matching"
                                    _%block150770150779%_
                                    '((meta-state-block ctx phi n code))))
                           '#!void))
                        (_%K150773150791%_
                         (lambda (_%code150786%_
                                  _%n150787%_
                                  _%phi150788%_
                                  _%ctx150789%_)
                           (if (null? _%code150786%_)
                               _%r150769%_
                               (cons (cons _%ctx150789%_
                                           (cons _%phi150788%_
                                                 (cons _%n150787%_
                                                       (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (reverse _%code150786%_))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%r150769%_)))))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%block150770150779%_
                          'gxc#meta-state-block::t))
                       (let* ((_%e150774150794%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block150770150779%_
                                  '1
                                  '#f
                                  '#f)))
                              (_%ctx150797%_ _%e150774150794%_)
                              (_%e150775150799%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block150770150779%_
                                  '2
                                  '#f
                                  '#f)))
                              (_%phi150802%_ _%e150775150799%_)
                              (_%e150776150804%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block150770150779%_
                                  '3
                                  '#f
                                  '#f)))
                              (_%n150807%_ _%e150776150804%_)
                              (_%e150777150809%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block150770150779%_
                                  '4
                                  '#f
                                  '#f)))
                              (_%code150812%_ _%e150777150809%_))
                         (_%K150773150791%_
                          _%code150812%_
                          _%n150807%_
                          _%phi150802%_
                          _%ctx150797%_))
                       (_%E150772150783%_)))))
              (__tmp161218
               (##structure-ref _%state150766%_ '4 gxc#meta-state::t '#f)))
          (declare (not safe))
          (__foldl1 __tmp161219 '() __tmp161218))))
    (define gxc#collect-expression-refs
      (lambda (_%stx150762%_)
        (let ((_%ht150764%_
               (let () (declare (not safe)) (make-hash-table-eq))))
          (gxc#apply-collect-expression-refs__% '#f _%ht150764%_ _%stx150762%_)
          _%ht150764%_)))
    (define gxc#collect-refs-ref%
      (lambda (_%self150705%_ _%stx150706%_)
        (let* ((_%g150708150721%_
                (lambda (_%g150709150718%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g150709150718%_))))
               (_%g150707150759%_
                (lambda (_%g150709150724%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g150709150724%_))
                      (let ((_%e150711150726%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g150709150724%_))))
                        (let ((_%hd150712150729%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e150711150726%_)))
                              (_%tl150713150731%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e150711150726%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl150713150731%_))
                              (let ((_%e150714150734%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl150713150731%_))))
                                (let ((_%hd150715150737%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e150714150734%_)))
                                      (_%tl150716150739%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e150714150734%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl150716150739%_))
                                      ((lambda (_%L150742%_)
                                         (let* ((_%bind150754%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#resolve-identifier__0
                                                    _%L150742%_)))
                                                (_%eid150756%_
                                                 (if _%bind150754%_
                                                     (##structure-ref
                                                      _%bind150754%_
                                                      '1
                                                      gx#binding::t
                                                      '#f)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%L150742%_))))
                                                (__tmp161220
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self150705%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-put!
                                            __tmp161220
                                            _%eid150756%_
                                            _%eid150756%_)))
                                       _%hd150715150737%_)
                                      (_%g150708150721%_ _%g150709150724%_))))
                              (_%g150708150721%_ _%g150709150724%_))))
                      (_%g150708150721%_ _%g150709150724%_)))))
          (_%g150707150759%_ _%stx150706%_))))
    (define gxc#collect-refs-setq%
      (lambda (_%self150632%_ _%stx150633%_)
        (let* ((_%g150635150652%_
                (lambda (_%g150636150649%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g150636150649%_))))
               (_%g150634150702%_
                (lambda (_%g150636150655%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g150636150655%_))
                      (let ((_%e150639150657%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g150636150655%_))))
                        (let ((_%hd150640150660%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e150639150657%_)))
                              (_%tl150641150662%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e150639150657%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl150641150662%_))
                              (let ((_%e150642150665%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl150641150662%_))))
                                (let ((_%hd150643150668%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e150642150665%_)))
                                      (_%tl150644150670%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e150642150665%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl150644150670%_))
                                      (let ((_%e150645150673%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl150644150670%_))))
                                        (let ((_%hd150646150676%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e150645150673%_)))
                                              (_%tl150647150678%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e150645150673%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl150647150678%_))
                                              ((lambda (_%L150681%_
                                                        _%L150682%_)
                                                 (let* ((_%bind150697%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#resolve-identifier__0
                                                            _%L150682%_)))
                                                        (_%eid150699%_
                                                         (if _%bind150697%_
                                                             (##structure-ref
                                                              _%bind150697%_
                                                              '1
                                                              gx#binding::t
                                                              '#f)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%L150682%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp161221
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self150632%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp161221
                                                      _%eid150699%_
                                                      _%eid150699%_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self150632%_
                                                      _%L150681%_))))
                                               _%hd150646150676%_
                                               _%hd150643150668%_)
                                              (_%g150635150652%_
                                               _%g150636150655%_))))
                                      (_%g150635150652%_ _%g150636150655%_))))
                              (_%g150635150652%_ _%g150636150655%_))))
                      (_%g150635150652%_ _%g150636150655%_)))))
          (_%g150634150702%_ _%stx150633%_))))
    (define gxc#find-runtime-begin%
      (lambda (_%self150589%_ _%stx150590%_)
        (let* ((_%g150592150602%_
                (lambda (_%g150593150599%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g150593150599%_))))
               (_%g150591150629%_
                (lambda (_%g150593150605%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g150593150605%_))
                      (let ((_%e150595150607%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g150593150605%_))))
                        (let ((_%hd150596150610%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e150595150607%_)))
                              (_%tl150597150612%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e150595150607%_))))
                          ((lambda (_%L150615%_)
                             (let ((__tmp161222
                                    (lambda (_%g150624150626%_)
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self150589%_
                                         _%g150624150626%_)))))
                               (declare (not safe))
                               (__ormap1 __tmp161222 _%L150615%_)))
                           _%tl150597150612%_)))
                      (_%g150592150602%_ _%g150593150605%_)))))
          (_%g150591150629%_ _%stx150590%_))))
    (define gxc#count-values-single%
      (lambda (_%self150586%_ _%stx150587%_) '1))
    (define gxc#count-values-call%
      (lambda (_%self150452%_ _%stx150453%_)
        (let* ((_%__stx160964160965%_ _%stx150453%_)
               (_%g150456150485%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx160964160965%_)))))
          (let ((_%__kont160966160967%_
                 (lambda (_%L150553%_ _%L150554%_)
                   (length (let ((__tmp161223
                                  (lambda (_%g150575150578%_ _%g150576150580%_)
                                    (cons _%g150575150578%_
                                          _%g150576150580%_))))
                             (declare (not safe))
                             (__foldr1 __tmp161223 '() _%L150553%_)))))
                (_%__kont160970160971%_ (lambda () '#f)))
            (let ((_%__match161009161010%_
                   (lambda (_%e150460150497%_
                            _%hd150461150500%_
                            _%tl150462150502%_
                            _%e150463150505%_
                            _%hd150464150508%_
                            _%tl150465150510%_
                            _%e150466150513%_
                            _%hd150467150516%_
                            _%tl150468150518%_
                            _%e150469150521%_
                            _%hd150470150524%_
                            _%tl150471150526%_
                            _%__splice160968160969%_
                            _%target150472150529%_
                            _%tl150474150531%_)
                     (letrec ((_%loop150475150534%_
                               (lambda (_%hd150473150537%_
                                        _%rand150479150539%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd150473150537%_))
                                     (let ((_%e150476150542%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd150473150537%_))))
                                       (let ((_%lp-tl150478150547%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e150476150542%_)))
                                             (_%lp-hd150477150545%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e150476150542%_))))
                                         (_%loop150475150534%_
                                          _%lp-tl150478150547%_
                                          (cons _%lp-hd150477150545%_
                                                _%rand150479150539%_))))
                                     (let ((_%rand150480150550%_
                                            (reverse _%rand150479150539%_)))
                                       (let ((_%L150553%_ _%rand150480150550%_)
                                             (_%L150554%_ _%hd150470150524%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L150554%_
                                                'values))
                                             (_%__kont160966160967%_
                                              _%L150553%_
                                              _%L150554%_)
                                             (_%__kont160970160971%_))))))))
                       (_%loop150475150534%_ _%target150472150529%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx160964160965%_))
                  (let ((_%e150460150497%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx160964160965%_))))
                    (let ((_%tl150462150502%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e150460150497%_)))
                          (_%hd150461150500%_
                           (let ()
                             (declare (not safe))
                             (##car _%e150460150497%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl150462150502%_))
                          (let ((_%e150463150505%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl150462150502%_))))
                            (let ((_%tl150465150510%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e150463150505%_)))
                                  (_%hd150464150508%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e150463150505%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd150464150508%_))
                                  (let ((_%e150466150513%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd150464150508%_))))
                                    (let ((_%tl150468150518%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e150466150513%_)))
                                          (_%hd150467150516%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e150466150513%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd150467150516%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd150467150516%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl150468150518%_))
                                                  (let ((_%e150469150521%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl150468150518%_))))
                                                    (let ((_%tl150471150526%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e150469150521%_)))
                                                          (_%hd150470150524%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e150469150521%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl150471150526%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl150465150510%_))
                      (let ((_%__splice160968160969%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl150465150510%_
                                '0))))
                        (let ((_%tl150474150531%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice160968160969%_ '1)))
                              (_%target150472150529%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice160968160969%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl150474150531%_))
                              (_%__match161009161010%_
                               _%e150460150497%_
                               _%hd150461150500%_
                               _%tl150462150502%_
                               _%e150463150505%_
                               _%hd150464150508%_
                               _%tl150465150510%_
                               _%e150466150513%_
                               _%hd150467150516%_
                               _%tl150468150518%_
                               _%e150469150521%_
                               _%hd150470150524%_
                               _%tl150471150526%_
                               _%__splice160968160969%_
                               _%target150472150529%_
                               _%tl150474150531%_)
                              (_%__kont160970160971%_))))
                      (_%__kont160970160971%_))
                  (_%__kont160970160971%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont160970160971%_))
                                              (_%__kont160970160971%_))
                                          (_%__kont160970160971%_))))
                                  (_%__kont160970160971%_))))
                          (_%__kont160970160971%_))))
                  (_%__kont160970160971%_)))))))
    (define gxc#count-values-if%
      (lambda (_%self150355%_ _%stx150356%_)
        (let* ((_%g150358150379%_
                (lambda (_%g150359150376%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g150359150376%_))))
               (_%g150357150449%_
                (lambda (_%g150359150382%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g150359150382%_))
                      (let ((_%e150363150384%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g150359150382%_))))
                        (let ((_%hd150364150387%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e150363150384%_)))
                              (_%tl150365150389%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e150363150384%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl150365150389%_))
                              (let ((_%e150366150392%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl150365150389%_))))
                                (let ((_%hd150367150395%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e150366150392%_)))
                                      (_%tl150368150397%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e150366150392%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl150368150397%_))
                                      (let ((_%e150369150400%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl150368150397%_))))
                                        (let ((_%hd150370150403%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e150369150400%_)))
                                              (_%tl150371150405%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e150369150400%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl150371150405%_))
                                              (let ((_%e150372150408%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl150371150405%_))))
                                                (let ((_%hd150373150411%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e150372150408%_)))
                                                      (_%tl150374150413%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e150372150408%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl150374150413%_))
                                                      ((lambda (_%L150416%_
                                                                _%L150417%_
                                                                _%L150418%_)
                                                         (let ((_%c1150435150437%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1 _%self150355%_ _%L150417%_))))
                   (if _%c1150435150437%_
                       (let* ((_%c1150440%_ _%c1150435150437%_)
                              (_%c2150441150443%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self150355%_
                                  _%L150416%_))))
                         (if _%c2150441150443%_
                             (let ((_%c2150446%_ _%c2150441150443%_))
                               (if (fx= _%c1150440%_ _%c2150446%_)
                                   _%c1150440%_
                                   '#f))
                             '#f))
                       '#f)))
               _%hd150373150411%_
               _%hd150370150403%_
               _%hd150367150395%_)
              (_%g150358150379%_ _%g150359150382%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g150358150379%_
                                               _%g150359150382%_))))
                                      (_%g150358150379%_ _%g150359150382%_))))
                              (_%g150358150379%_ _%g150359150382%_))))
                      (_%g150358150379%_ _%g150359150382%_)))))
          (_%g150357150449%_ _%stx150356%_))))))
