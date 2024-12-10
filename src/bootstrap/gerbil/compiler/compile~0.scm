(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/compile::timestamp 1733870075)
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
        (letrec ((_%hash-e147665%_
                  (lambda (_%id147667%_)
                    (symbol-hash
                     (let () (declare (not safe)) (gx#stx-e _%id147667%_))))))
          (let ()
            (declare (not safe))
            (make-hash-table__%
             '#f
             absent-value
             absent-value
             gx#bound-identifier=?
             _%hash-e147665%_
             absent-value
             absent-value
             absent-value
             absent-value)))))
    (define gxc#::collect-bindings::t
      (let ((__tmp149052 (list gxc#::void::t))
            (__tmp149051 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-bindings::t
         '::collect-bindings
         __tmp149052
         '()
         __tmp149051
         '#f)))
    (define gxc#::collect-bindings?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-bindings::t)))
    (define gxc#make-::collect-bindings
      (lambda _%$args147661%_
        (apply make-instance gxc#::collect-bindings::t _%$args147661%_)))
    (define gxc#::collect-bindings-bind-methods!
      (let ((__tmp149053
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
        (__make-promise __tmp149053)))
    (define gxc#apply-collect-bindings
      (lambda (_%stx147653%_)
        (force gxc#::collect-bindings-bind-methods!)
        (let* ((_%self147656%_
                (let ((__obj149027
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-bindings::t))))
                  __obj149027))
               (__tmp149054
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self147656%_ _%stx147653%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp149054
           gxc#current-compile-method
           _%self147656%_))))
    (define gxc#::lift-modules::t
      (let ((__tmp149056 (list gxc#::void::t))
            (__tmp149055 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::lift-modules::t
         '::lift-modules
         __tmp149056
         '(modules)
         __tmp149055
         '#f)))
    (define gxc#::lift-modules?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::lift-modules::t)))
    (define gxc#make-::lift-modules
      (lambda _%$args147650%_
        (apply make-instance gxc#::lift-modules::t _%$args147650%_)))
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
      (let ((__tmp149057
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
        (__make-promise __tmp149057)))
    (define gxc#apply-lift-modules__%
      (lambda (_%@@keywords147624%_ _%modules147621147625%_ _%stx147627%_)
        (let ((_%modules147630%_
               (if (eq? _%modules147621147625%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'modules:))
                   _%modules147621147625%_)))
          (force gxc#::lift-modules-bind-methods!)
          (let* ((_%self147632%_
                  (let ((__obj149029
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::lift-modules::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj149029
                       _%modules147630%_
                       '1
                       '#f
                       '#f))
                    __obj149029))
                 (__tmp149058
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self147632%_ _%stx147627%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp149058
             gxc#current-compile-method
             _%self147632%_)))))
    (define gxc#apply-lift-modules__@
      (lambda (_%@@keywords147639%_ . _%args147640%_)
        (apply gxc#apply-lift-modules__%
               _%@@keywords147639%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords147639%_
                  'modules:
                  absent-value))
               _%args147640%_)))
    (define gxc#apply-lift-modules
      (lambda _%args147622147646%_
        (apply keyword-dispatch
               '#(modules:)
               gxc#apply-lift-modules__@
               _%args147622147646%_)))
    (define gxc#::find-runtime-code::t
      (let ((__tmp149060 (list)) (__tmp149059 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-runtime-code::t
         '::find-runtime-code
         __tmp149060
         '()
         __tmp149059
         '#f)))
    (define gxc#::find-runtime-code?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-runtime-code::t)))
    (define gxc#make-::find-runtime-code
      (lambda _%$args147617%_
        (apply make-instance gxc#::find-runtime-code::t _%$args147617%_)))
    (define gxc#::find-runtime-code-bind-methods!
      (let ((__tmp149061
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
        (__make-promise __tmp149061)))
    (define gxc#apply-find-runtime-code
      (lambda (_%stx147609%_)
        (force gxc#::find-runtime-code-bind-methods!)
        (let* ((_%self147612%_
                (let ((__obj149031
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-runtime-code::t))))
                  __obj149031))
               (__tmp149062
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self147612%_ _%stx147609%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp149062
           gxc#current-compile-method
           _%self147612%_))))
    (define gxc#::find-lambda-expression::t
      (let ((__tmp149064 (list gxc#::false::t))
            (__tmp149063 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-lambda-expression::t
         '::find-lambda-expression
         __tmp149064
         '()
         __tmp149063
         '#f)))
    (define gxc#::find-lambda-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-lambda-expression::t)))
    (define gxc#make-::find-lambda-expression
      (lambda _%$args147606%_
        (apply make-instance gxc#::find-lambda-expression::t _%$args147606%_)))
    (define gxc#::find-lambda-expression-bind-methods!
      (let ((__tmp149065
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
        (__make-promise __tmp149065)))
    (define gxc#apply-find-lambda-expression
      (lambda (_%stx147598%_)
        (force gxc#::find-lambda-expression-bind-methods!)
        (let* ((_%self147601%_
                (let ((__obj149033
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-lambda-expression::t))))
                  __obj149033))
               (__tmp149066
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self147601%_ _%stx147598%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp149066
           gxc#current-compile-method
           _%self147601%_))))
    (define gxc#::count-values::t
      (let ((__tmp149068 (list gxc#::false-expression::t))
            (__tmp149067 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::count-values::t
         '::count-values
         __tmp149068
         '()
         __tmp149067
         '#f)))
    (define gxc#::count-values?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::count-values::t)))
    (define gxc#make-::count-values
      (lambda _%$args147595%_
        (apply make-instance gxc#::count-values::t _%$args147595%_)))
    (define gxc#::count-values-bind-methods!
      (let ((__tmp149069
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
        (__make-promise __tmp149069)))
    (define gxc#apply-count-values
      (lambda (_%stx147587%_)
        (force gxc#::count-values-bind-methods!)
        (let* ((_%self147590%_
                (let ((__obj149035
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::count-values::t))))
                  __obj149035))
               (__tmp149070
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self147590%_ _%stx147587%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp149070
           gxc#current-compile-method
           _%self147590%_))))
    (define gxc#::generate-runtime-empty::t
      (let ((__tmp149071 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-empty::t
         '::generate-runtime-empty
         __tmp149071
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime-empty?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-empty::t)))
    (define gxc#make-::generate-runtime-empty
      (lambda _%$args147584%_
        (apply make-instance gxc#::generate-runtime-empty::t _%$args147584%_)))
    (define gxc#::generate-runtime-empty-bind-methods!
      (let ((__tmp149072
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
        (__make-promise __tmp149072)))
    (define gxc#::generate-loader::t
      (let ((__tmp149074 (list gxc#::generate-runtime-empty::t))
            (__tmp149073 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-loader::t
         '::generate-loader
         __tmp149074
         '()
         __tmp149073
         '#f)))
    (define gxc#::generate-loader?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-loader::t)))
    (define gxc#make-::generate-loader
      (lambda _%$args147580%_
        (apply make-instance gxc#::generate-loader::t _%$args147580%_)))
    (define gxc#::generate-loader-bind-methods!
      (let ((__tmp149075
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
        (__make-promise __tmp149075)))
    (define gxc#apply-generate-loader
      (lambda (_%stx147572%_)
        (force gxc#::generate-loader-bind-methods!)
        (let* ((_%self147575%_
                (let ((__obj149038
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-loader::t))))
                  __obj149038))
               (__tmp149076
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self147575%_ _%stx147572%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp149076
           gxc#current-compile-method
           _%self147575%_))))
    (define gxc#::generate-runtime::t
      (let ((__tmp149077 (list gxc#::generate-runtime-empty::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime::t
         '::generate-runtime
         __tmp149077
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime::t)))
    (define gxc#make-::generate-runtime
      (lambda _%$args147569%_
        (apply make-instance gxc#::generate-runtime::t _%$args147569%_)))
    (define gxc#::generate-runtime-bind-methods!
      (let ((__tmp149078
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
        (__make-promise __tmp149078)))
    (define gxc#apply-generate-runtime
      (lambda (_%stx147561%_)
        (force gxc#::generate-runtime-bind-methods!)
        (let* ((_%self147564%_
                (let ((__obj149040
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime::t))))
                  __obj149040))
               (__tmp149079
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self147564%_ _%stx147561%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp149079
           gxc#current-compile-method
           _%self147564%_))))
    (define gxc#::generate-runtime-phi::t
      (let ((__tmp149081 (list gxc#::generate-runtime::t))
            (__tmp149080 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-phi::t
         '::generate-runtime-phi
         __tmp149081
         '()
         __tmp149080
         '#f)))
    (define gxc#::generate-runtime-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-phi::t)))
    (define gxc#make-::generate-runtime-phi
      (lambda _%$args147558%_
        (apply make-instance gxc#::generate-runtime-phi::t _%$args147558%_)))
    (define gxc#::generate-runtime-phi-bind-methods!
      (let ((__tmp149082
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
        (__make-promise __tmp149082)))
    (define gxc#apply-generate-runtime-phi
      (lambda (_%stx147550%_)
        (force gxc#::generate-runtime-phi-bind-methods!)
        (let* ((_%self147553%_
                (let ((__obj149042
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime-phi::t))))
                  __obj149042))
               (__tmp149083
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self147553%_ _%stx147550%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp149083
           gxc#current-compile-method
           _%self147553%_))))
    (define gxc#::collect-expression-refs::t
      (let ((__tmp149084 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-expression-refs::t
         '::collect-expression-refs
         __tmp149084
         '(table)
         '()
         '#f)))
    (define gxc#::collect-expression-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-expression-refs::t)))
    (define gxc#make-::collect-expression-refs
      (lambda _%$args147547%_
        (apply make-instance
               gxc#::collect-expression-refs::t
               _%$args147547%_)))
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
      (let ((__tmp149085
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
        (__make-promise __tmp149085)))
    (define gxc#apply-collect-expression-refs__%
      (lambda (_%@@keywords147521%_ _%table147518147522%_ _%stx147524%_)
        (let ((_%table147527%_
               (if (eq? _%table147518147522%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table147518147522%_)))
          (force gxc#::collect-expression-refs-bind-methods!)
          (let* ((_%self147529%_
                  (let ((__obj149044
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#::collect-expression-refs::t
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj149044
                       _%table147527%_
                       '1
                       '#f
                       '#f))
                    __obj149044))
                 (__tmp149086
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self147529%_ _%stx147524%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp149086
             gxc#current-compile-method
             _%self147529%_)))))
    (define gxc#apply-collect-expression-refs__@
      (lambda (_%@@keywords147536%_ . _%args147537%_)
        (apply gxc#apply-collect-expression-refs__%
               _%@@keywords147536%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords147536%_
                  'table:
                  absent-value))
               _%args147537%_)))
    (define gxc#apply-collect-expression-refs
      (lambda _%args147519147543%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-expression-refs__@
               _%args147519147543%_)))
    (define gxc#::generate-meta::t
      (let ((__tmp149088 (list gxc#::void-expression::t))
            (__tmp149087 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta::t
         '::generate-meta
         __tmp149088
         '(state)
         __tmp149087
         '#f)))
    (define gxc#::generate-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta::t)))
    (define gxc#make-::generate-meta
      (lambda _%$args147514%_
        (apply make-instance gxc#::generate-meta::t _%$args147514%_)))
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
      (let ((__tmp149089
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
        (__make-promise __tmp149089)))
    (define gxc#apply-generate-meta__%
      (lambda (_%@@keywords147488%_ _%state147485147489%_ _%stx147491%_)
        (let ((_%state147494%_
               (if (eq? _%state147485147489%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state147485147489%_)))
          (force gxc#::generate-meta-bind-methods!)
          (let* ((_%self147496%_
                  (let ((__obj149046
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj149046
                       _%state147494%_
                       '1
                       '#f
                       '#f))
                    __obj149046))
                 (__tmp149090
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self147496%_ _%stx147491%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp149090
             gxc#current-compile-method
             _%self147496%_)))))
    (define gxc#apply-generate-meta__@
      (lambda (_%@@keywords147503%_ . _%args147504%_)
        (apply gxc#apply-generate-meta__%
               _%@@keywords147503%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords147503%_
                  'state:
                  absent-value))
               _%args147504%_)))
    (define gxc#apply-generate-meta
      (lambda _%args147486147510%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta__@
               _%args147486147510%_)))
    (define gxc#::generate-meta-phi::t
      (let ((__tmp149092 (list)) (__tmp149091 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta-phi::t
         '::generate-meta-phi
         __tmp149092
         '(state)
         __tmp149091
         '#f)))
    (define gxc#::generate-meta-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta-phi::t)))
    (define gxc#make-::generate-meta-phi
      (lambda _%$args147481%_
        (apply make-instance gxc#::generate-meta-phi::t _%$args147481%_)))
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
      (let ((__tmp149093
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
        (__make-promise __tmp149093)))
    (define gxc#apply-generate-meta-phi__%
      (lambda (_%@@keywords147455%_ _%state147452147456%_ _%stx147458%_)
        (let ((_%state147461%_
               (if (eq? _%state147452147456%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state147452147456%_)))
          (force gxc#::generate-meta-phi-bind-methods!)
          (let* ((_%self147463%_
                  (let ((__obj149048
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta-phi::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj149048
                       _%state147461%_
                       '1
                       '#f
                       '#f))
                    __obj149048))
                 (__tmp149094
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self147463%_ _%stx147458%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp149094
             gxc#current-compile-method
             _%self147463%_)))))
    (define gxc#apply-generate-meta-phi__@
      (lambda (_%@@keywords147470%_ . _%args147471%_)
        (apply gxc#apply-generate-meta-phi__%
               _%@@keywords147470%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords147470%_
                  'state:
                  absent-value))
               _%args147471%_)))
    (define gxc#apply-generate-meta-phi
      (lambda _%args147453147477%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta-phi__@
               _%args147453147477%_)))
    (define gxc#collect-bindings-define-values%
      (lambda (_%self147381%_ _%stx147382%_)
        (let* ((_%g147384147401%_
                (lambda (_%g147385147398%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g147385147398%_))))
               (_%g147383147448%_
                (lambda (_%g147385147404%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g147385147404%_))
                      (let ((_%e147388147406%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g147385147404%_))))
                        (let ((_%hd147389147409%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e147388147406%_)))
                              (_%tl147390147411%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e147388147406%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl147390147411%_))
                              (let ((_%e147391147414%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl147390147411%_))))
                                (let ((_%hd147392147417%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e147391147414%_)))
                                      (_%tl147393147419%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e147391147414%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl147393147419%_))
                                      (let ((_%e147394147422%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl147393147419%_))))
                                        (let ((_%hd147395147425%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e147394147422%_)))
                                              (_%tl147396147427%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e147394147422%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl147396147427%_))
                                              ((lambda (_%L147430%_
                                                        _%L147431%_)
                                                 (let ((__tmp149095
                                                        (lambda (_%bind147446%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#identifier? _%bind147446%_))
                      (gxc#add-module-binding! _%bind147446%_ '#f)
                      '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#stx-for-each1
                                                    __tmp149095
                                                    _%L147431%_)))
                                               _%hd147395147425%_
                                               _%hd147392147417%_)
                                              (_%g147384147401%_
                                               _%g147385147404%_))))
                                      (_%g147384147401%_ _%g147385147404%_))))
                              (_%g147384147401%_ _%g147385147404%_))))
                      (_%g147384147401%_ _%g147385147404%_)))))
          (_%g147383147448%_ _%stx147382%_))))
    (define gxc#collect-bindings-define-syntax%
      (lambda (_%self147313%_ _%stx147314%_)
        (let* ((_%g147316147333%_
                (lambda (_%g147317147330%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g147317147330%_))))
               (_%g147315147378%_
                (lambda (_%g147317147336%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g147317147336%_))
                      (let ((_%e147320147338%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g147317147336%_))))
                        (let ((_%hd147321147341%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e147320147338%_)))
                              (_%tl147322147343%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e147320147338%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl147322147343%_))
                              (let ((_%e147323147346%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl147322147343%_))))
                                (let ((_%hd147324147349%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e147323147346%_)))
                                      (_%tl147325147351%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e147323147346%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl147325147351%_))
                                      (let ((_%e147326147354%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl147325147351%_))))
                                        (let ((_%hd147327147357%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e147326147354%_)))
                                              (_%tl147328147359%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e147326147354%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl147328147359%_))
                                              ((lambda (_%L147362%_
                                                        _%L147363%_)
                                                 (gxc#add-module-binding!
                                                  _%L147363%_
                                                  '#t))
                                               _%hd147327147357%_
                                               _%hd147324147349%_)
                                              (_%g147316147333%_
                                               _%g147317147336%_))))
                                      (_%g147316147333%_ _%g147317147336%_))))
                              (_%g147316147333%_ _%g147317147336%_))))
                      (_%g147316147333%_ _%g147317147336%_)))))
          (_%g147315147378%_ _%stx147314%_))))
    (define gxc#lift-modules-module%
      (lambda (_%self147255%_ _%stx147256%_)
        (let* ((_%g147258147272%_
                (lambda (_%g147259147269%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g147259147269%_))))
               (_%g147257147310%_
                (lambda (_%g147259147275%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g147259147275%_))
                      (let ((_%e147262147277%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g147259147275%_))))
                        (let ((_%hd147263147280%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e147262147277%_)))
                              (_%tl147264147282%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e147262147277%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl147264147282%_))
                              (let ((_%e147265147285%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl147264147282%_))))
                                (let ((_%hd147266147288%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e147265147285%_)))
                                      (_%tl147267147290%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e147265147285%_))))
                                  ((lambda (_%L147293%_ _%L147294%_)
                                     (let ((_%ctx147307%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-local-e__0
                                               _%L147294%_))))
                                       (set-box!
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self147255%_
                                           'modules))
                                        (cons _%ctx147307%_
                                              (unbox (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self147255%_
                                                        'modules)))))
                                       (let ((__tmp149096
                                              (lambda ()
                                                (let ((__tmp149097
                                                       (##structure-ref
                                                        _%ctx147307%_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self147255%_
                                                   __tmp149097)))))
                                         (declare (not safe))
                                         (__call-with-parameters
                                          __tmp149096
                                          gx#current-expander-context
                                          _%ctx147307%_))))
                                   _%tl147267147290%_
                                   _%hd147266147288%_)))
                              (_%g147258147272%_ _%g147259147275%_))))
                      (_%g147258147272%_ _%g147259147275%_)))))
          (_%g147257147310%_ _%stx147256%_))))
    (define gxc#current-compile-decls-unsafe?
      (lambda ()
        (let ((_%decls147208147210%_
               (let () (declare (not safe)) (gxc#current-compile-decls))))
          (if _%decls147208147210%_
              (let ((_%decls147213%_ _%decls147208147210%_))
                (let _%lp147215%_ ((_%rest147217%_ _%decls147213%_))
                  (let* ((_%rest147218147226%_ _%rest147217%_)
                         (_%else147220147234%_ (lambda () '#f))
                         (_%K147222147243%_
                          (lambda (_%decls147237%_ _%decl147238%_)
                            (if (equal? _%decl147238%_ '(not safe))
                                '#t
                                (if (equal? _%decl147238%_ '(safe))
                                    '#f
                                    (_%lp147215%_ _%decls147237%_))))))
                    (if (pair? _%rest147218147226%_)
                        (let ((_%hd147223147246%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest147218147226%_)))
                              (_%tl147224147248%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest147218147226%_))))
                          (let* ((_%decl147251%_ _%hd147223147246%_)
                                 (_%decls147253%_ _%tl147224147248%_))
                            (_%K147222147243%_
                             _%decls147253%_
                             _%decl147251%_)))
                        (_%else147220147234%_)))))
              '#f))))
    (define gxc#add-module-binding!
      (lambda (_%id147202%_ _%syntax?147203%_)
        (let ((_%eid147205%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id147202%_))
                '1
                gx#binding::t
                '#f))
              (_%ht147206%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-symbol-table))
                '2
                gxc#symbol-table::t
                '#f)))
          (if (let () (declare (not safe)) (interned-symbol? _%eid147205%_))
              '#!void
              (let ((__tmp149098
                     (let ((__tmp149099
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__0
                               _%eid147205%_))))
                       (declare (not safe))
                       (gx#make-binding-id__1 __tmp149099 _%syntax?147203%_))))
                (declare (not safe))
                (hash-put! _%ht147206%_ _%eid147205%_ __tmp149098))))))
    (define gxc#generate-runtime-identifier
      (lambda (_%id147200%_)
        (gxc#generate-runtime-identifier-key
         (let () (declare (not safe)) (gx#core-identifier-key _%id147200%_)))))
    (define gxc#generate-runtime-identifier-key
      (lambda (_%key147155%_)
        (if (let () (declare (not safe)) (interned-symbol? _%key147155%_))
            _%key147155%_
            (if (uninterned-symbol? _%key147155%_)
                (let ()
                  (declare (not safe))
                  (gxc#generate-runtime-gensym-reference__0 _%key147155%_))
                (let* ((_%key147159147166%_ _%key147155%_)
                       (_%E147161147170%_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (error '"No clause matching"
                                   _%key147159147166%_
                                   '([eid . mark])))
                          '#!void))
                       (_%K147162147188%_
                        (lambda (_%mark147173%_ _%eid147174%_)
                          (let ((_%$e147176%_
                                 (##structure-ref
                                  _%mark147173%_
                                  '1
                                  gx#expander-mark::t
                                  '#f)))
                            (if _%$e147176%_
                                ((lambda (_%ht147179%_)
                                   (let ((_%$e147181%_
                                          (let ()
                                            (declare (not safe))
                                            (hash-get
                                             _%ht147179%_
                                             _%eid147174%_))))
                                     (if _%$e147181%_
                                         ((lambda (_%id147184%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (interned-symbol?
                                                   _%id147184%_))
                                                _%id147184%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _%id147184%_))))
                                          _%$e147181%_)
                                         (gxc#generate-runtime-identifier-key
                                          _%eid147174%_))))
                                 _%$e147176%_)
                                (gxc#generate-runtime-identifier-key
                                 _%eid147174%_))))))
                  (if (pair? _%key147159147166%_)
                      (let ((_%hd147163147191%_
                             (let ()
                               (declare (not safe))
                               (##car _%key147159147166%_)))
                            (_%tl147164147193%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%key147159147166%_))))
                        (let* ((_%eid147196%_ _%hd147163147191%_)
                               (_%mark147198%_ _%tl147164147193%_))
                          (_%K147162147188%_ _%mark147198%_ _%eid147196%_)))
                      (_%E147161147170%_)))))))
    (define gxc#generate-runtime-empty
      (lambda (_%self147152%_ _%stx147153%_) '(begin)))
    (define gxc#generate-runtime-begin%
      (lambda (_%self146999%_ _%stx147000%_)
        (letrec ((_%simplify147002%_
                  (lambda (_%body147050%_)
                    (let _%lp147052%_ ((_%rest147054%_ _%body147050%_)
                                       (_%r147055%_ '()))
                      (let* ((_%rest147056147064%_ _%rest147054%_)
                             (_%else147058147072%_
                              (lambda () (reverse _%r147055%_)))
                             (_%K147060147140%_
                              (lambda (_%rest147075%_ _%hd147076%_)
                                (let* ((_%hd147077147093%_ _%hd147076%_)
                                       (_%else147081147101%_
                                        (lambda ()
                                          (_%lp147052%_
                                           _%rest147075%_
                                           (cons _%hd147076%_ _%r147055%_)))))
                                  (let ((_%K147089147130%_
                                         (lambda (_%exprs147128%_)
                                           (_%lp147052%_
                                            (let ()
                                              (declare (not safe))
                                              (__foldr1
                                               cons
                                               _%rest147075%_
                                               _%exprs147128%_))
                                            _%r147055%_)))
                                        (_%K147084147114%_
                                         (lambda ()
                                           (if (null? _%rest147075%_)
                                               (_%lp147052%_
                                                _%rest147075%_
                                                (cons _%hd147076%_
                                                      _%r147055%_))
                                               (_%lp147052%_
                                                _%rest147075%_
                                                _%r147055%_))))
                                        (_%K147083147106%_
                                         (lambda ()
                                           (if (null? _%rest147075%_)
                                               (_%lp147052%_
                                                _%rest147075%_
                                                (cons _%hd147076%_
                                                      _%r147055%_))
                                               (_%lp147052%_
                                                _%rest147075%_
                                                _%r147055%_)))))
                                    (let ((_%try-match147080147109%_
                                           (lambda ()
                                             (if (symbol? _%hd147077147093%_)
                                                 (_%K147083147106%_)
                                                 (_%else147081147101%_)))))
                                      (if (pair? _%hd147077147093%_)
                                          (let ((_%tl147091147135%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd147077147093%_)))
                                                (_%hd147090147133%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd147077147093%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd147090147133%_
                                                         'begin))
                                                (let ((_%exprs147138%_
                                                       _%tl147091147135%_))
                                                  (_%K147089147130%_
                                                   _%exprs147138%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd147090147133%_
                                                             'quote))
                                                    (if (pair? _%tl147091147135%_)
                                                        (let ((_%tl147088147122%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%tl147091147135%_))))
                  (if (null? _%tl147088147122%_)
                      (_%K147084147114%_)
                      (_%try-match147080147109%_)))
                (_%try-match147080147109%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%try-match147080147109%_))))
                                          (_%try-match147080147109%_))))))))
                        (if (pair? _%rest147056147064%_)
                            (let ((_%hd147061147143%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest147056147064%_)))
                                  (_%tl147062147145%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest147056147064%_))))
                              (let* ((_%hd147148%_ _%hd147061147143%_)
                                     (_%rest147150%_ _%tl147062147145%_))
                                (_%K147060147140%_
                                 _%rest147150%_
                                 _%hd147148%_)))
                            (_%else147058147072%_)))))))
          (let* ((_%g147004147014%_
                  (lambda (_%g147005147011%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g147005147011%_))))
                 (_%g147003147047%_
                  (lambda (_%g147005147017%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g147005147017%_))
                        (let ((_%e147007147019%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g147005147017%_))))
                          (let ((_%hd147008147022%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e147007147019%_)))
                                (_%tl147009147024%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e147007147019%_))))
                            ((lambda (_%L147027%_)
                               (let* ((_%body147042%_
                                       (map (lambda (_%g147037147039%_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%self146999%_
                                                 _%g147037147039%_)))
                                            _%L147027%_))
                                      (_%body147044%_
                                       (_%simplify147002%_ _%body147042%_)))
                                 (if (let ((__tmp149100
                                            (length _%body147044%_)))
                                       (declare (not safe))
                                       (##fx= __tmp149100 '1))
                                     (car _%body147044%_)
                                     (cons 'begin _%body147044%_))))
                             _%tl147009147024%_)))
                        (_%g147004147014%_ _%g147005147017%_)))))
            (_%g147003147047%_ _%stx147000%_)))))
    (define gxc#generate-runtime-begin-foreign%
      (lambda (_%self146960%_ _%stx146961%_)
        (let* ((_%g146963146973%_
                (lambda (_%g146964146970%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g146964146970%_))))
               (_%g146962146996%_
                (lambda (_%g146964146976%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g146964146976%_))
                      (let ((_%e146966146978%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g146964146976%_))))
                        (let ((_%hd146967146981%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e146966146978%_)))
                              (_%tl146968146983%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e146966146978%_))))
                          ((lambda (_%L146986%_)
                             (cons 'begin
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax->datum _%L146986%_))))
                           _%tl146968146983%_)))
                      (_%g146963146973%_ _%g146964146976%_)))))
          (_%g146962146996%_ _%stx146961%_))))
    (define gxc#generate-runtime-begin-annotation%
      (lambda (_%self146724%_ _%stx146725%_)
        (let* ((_%__stx147690147691%_ _%stx146725%_)
               (_%g146729146781%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx147690147691%_)))))
          (let ((_%__kont147692147693%_
                 (lambda (_%L146942%_ _%L146943%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self146724%_ _%L146942%_))))
                (_%__kont147694147695%_
                 (lambda (_%L146890%_ _%L146891%_ _%L146892%_)
                   (if (let ((__tmp149101
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%L146892%_))))
                         (declare (not safe))
                         (##memq __tmp149101 '(@inline)))
                       '(begin)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self146724%_ _%L146890%_)))))
                (_%__kont147698147699%_
                 (lambda (_%L146810%_ _%L146811%_)
                   (let ((_%decls146826%_ (map gx#syntax->datum _%L146811%_)))
                     (let ((__tmp149104
                            (lambda ()
                              (cons 'begin
                                    (cons (cons 'declare _%decls146826%_)
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self146724%_
                                                   _%L146810%_))
                                                '())))))
                           (__tmp149102
                            (let ((__tmp149103
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-decls))))
                              (declare (not safe))
                              (__foldr1 cons __tmp149103 _%decls146826%_))))
                       (declare (not safe))
                       (__call-with-parameters
                        __tmp149104
                        gxc#current-compile-decls
                        __tmp149102))))))
            (let* ((_%__match147745147746%_
                    (lambda (_%e146745146834%_
                             _%hd146746146837%_
                             _%tl146747146839%_
                             _%e146748146842%_
                             _%hd146749146845%_
                             _%tl146750146847%_
                             _%e146751146850%_
                             _%hd146752146853%_
                             _%tl146753146855%_
                             _%__splice147696147697%_
                             _%target146754146858%_
                             _%tl146756146860%_)
                      (letrec ((_%loop146757146863%_
                                (lambda (_%hd146755146866%_
                                         _%param146761146868%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd146755146866%_))
                                      (let ((_%e146758146871%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd146755146866%_))))
                                        (let ((_%lp-tl146760146876%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e146758146871%_)))
                                              (_%lp-hd146759146874%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e146758146871%_))))
                                          (_%loop146757146863%_
                                           _%lp-tl146760146876%_
                                           (cons _%lp-hd146759146874%_
                                                 _%param146761146868%_))))
                                      (let ((_%param146762146879%_
                                             (reverse _%param146761146868%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl146750146847%_))
                                            (let ((_%e146763146882%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl146750146847%_))))
                                              (let ((_%tl146765146887%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e146763146882%_)))
                                                    (_%hd146764146885%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e146763146882%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl146765146887%_))
                                                    (let ((_%L146890%_
                                                           _%hd146764146885%_)
                                                          (_%L146891%_
                                                           _%param146762146879%_)
                                                          (_%L146892%_
                                                           _%hd146752146853%_))
                                                      (if (and (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier? _%L146892%_))
                       (not (let ((__tmp149105
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L146892%_))))
                              (declare (not safe))
                              (##memq __tmp149105 gxc#gambit-annotations))))
                  (_%__kont147694147695%_ _%L146890%_ _%L146891%_ _%L146892%_)
                  (_%__kont147698147699%_
                   _%hd146764146885%_
                   _%hd146749146845%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g146729146781%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g146729146781%_))))))))
                        (_%loop146757146863%_ _%target146754146858%_ '()))))
                   (_%__match147719147720%_
                    (lambda (_%e146733146918%_
                             _%hd146734146921%_
                             _%tl146735146923%_
                             _%e146736146926%_
                             _%hd146737146929%_
                             _%tl146738146931%_
                             _%e146739146934%_
                             _%hd146740146937%_
                             _%tl146741146939%_)
                      (let ((_%L146942%_ _%hd146740146937%_)
                            (_%L146943%_ _%hd146737146929%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%L146943%_))
                            (_%__kont147692147693%_ _%L146942%_ _%L146943%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd146737146929%_))
                                (let ((_%e146751146850%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd146737146929%_))))
                                  (let ((_%tl146753146855%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e146751146850%_)))
                                        (_%hd146752146853%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e146751146850%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl146753146855%_))
                                        (let ((_%__splice147696147697%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl146753146855%_
                                                  '0))))
                                          (let ((_%tl146756146860%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice147696147697%_
                                                    '1)))
                                                (_%target146754146858%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice147696147697%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl146756146860%_))
                                                (_%__match147745147746%_
                                                 _%e146733146918%_
                                                 _%hd146734146921%_
                                                 _%tl146735146923%_
                                                 _%e146736146926%_
                                                 _%hd146737146929%_
                                                 _%tl146738146931%_
                                                 _%e146751146850%_
                                                 _%hd146752146853%_
                                                 _%tl146753146855%_
                                                 _%__splice147696147697%_
                                                 _%target146754146858%_
                                                 _%tl146756146860%_)
                                                (_%__kont147698147699%_
                                                 _%hd146740146937%_
                                                 _%hd146737146929%_))))
                                        (_%__kont147698147699%_
                                         _%hd146740146937%_
                                         _%hd146737146929%_))))
                                (_%__kont147698147699%_
                                 _%hd146740146937%_
                                 _%hd146737146929%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx147690147691%_))
                  (let ((_%e146733146918%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx147690147691%_))))
                    (let ((_%tl146735146923%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e146733146918%_)))
                          (_%hd146734146921%_
                           (let ()
                             (declare (not safe))
                             (##car _%e146733146918%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl146735146923%_))
                          (let ((_%e146736146926%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl146735146923%_))))
                            (let ((_%tl146738146931%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e146736146926%_)))
                                  (_%hd146737146929%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e146736146926%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl146738146931%_))
                                  (let ((_%e146739146934%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl146738146931%_))))
                                    (let ((_%tl146741146939%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e146739146934%_)))
                                          (_%hd146740146937%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e146739146934%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl146741146939%_))
                                          (_%__match147719147720%_
                                           _%e146733146918%_
                                           _%hd146734146921%_
                                           _%tl146735146923%_
                                           _%e146736146926%_
                                           _%hd146737146929%_
                                           _%tl146738146931%_
                                           _%e146739146934%_
                                           _%hd146740146937%_
                                           _%tl146741146939%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd146737146929%_))
                                              (let ((_%e146751146850%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd146737146929%_))))
                                                (let ((_%tl146753146855%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e146751146850%_)))
                                                      (_%hd146752146853%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e146751146850%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl146753146855%_))
                                                      (let ((_%__splice147696147697%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl146753146855%_ '0))))
                (let ((_%tl146756146860%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice147696147697%_ '1)))
                      (_%target146754146858%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice147696147697%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl146756146860%_))
                      (_%__match147745147746%_
                       _%e146733146918%_
                       _%hd146734146921%_
                       _%tl146735146923%_
                       _%e146736146926%_
                       _%hd146737146929%_
                       _%tl146738146931%_
                       _%e146751146850%_
                       _%hd146752146853%_
                       _%tl146753146855%_
                       _%__splice147696147697%_
                       _%target146754146858%_
                       _%tl146756146860%_)
                      (let () (declare (not safe)) (_%g146729146781%_)))))
              (let () (declare (not safe)) (_%g146729146781%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g146729146781%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd146737146929%_))
                                      (let ((_%e146751146850%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd146737146929%_))))
                                        (let ((_%tl146753146855%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e146751146850%_)))
                                              (_%hd146752146853%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e146751146850%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl146753146855%_))
                                              (let ((_%__splice147696147697%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl146753146855%_
                                                        '0))))
                                                (let ((_%tl146756146860%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice147696147697%_
                                                          '1)))
                                                      (_%target146754146858%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice147696147697%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl146756146860%_))
                                                      (_%__match147745147746%_
                                                       _%e146733146918%_
                                                       _%hd146734146921%_
                                                       _%tl146735146923%_
                                                       _%e146736146926%_
                                                       _%hd146737146929%_
                                                       _%tl146738146931%_
                                                       _%e146751146850%_
                                                       _%hd146752146853%_
                                                       _%tl146753146855%_
                                                       _%__splice147696147697%_
                                                       _%target146754146858%_
                                                       _%tl146756146860%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g146729146781%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g146729146781%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g146729146781%_))))))
                          (let () (declare (not safe)) (_%g146729146781%_)))))
                  (let () (declare (not safe)) (_%g146729146781%_))))))))
    (define gxc#generate-runtime-declare%
      (lambda (_%self146683%_ _%stx146684%_)
        (let* ((_%g146686146696%_
                (lambda (_%g146687146693%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g146687146693%_))))
               (_%g146685146721%_
                (lambda (_%g146687146699%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g146687146699%_))
                      (let ((_%e146689146701%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g146687146699%_))))
                        (let ((_%hd146690146704%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e146689146701%_)))
                              (_%tl146691146706%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e146689146701%_))))
                          ((lambda (_%L146709%_)
                             (let ((_%decls146719%_
                                    (map gx#syntax->datum _%L146709%_)))
                               (let ((__tmp149106
                                      (let ((__tmp149107
                                             (let ()
                                               (declare (not safe))
                                               (gxc#current-compile-decls))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp149107
                                         _%decls146719%_))))
                                 (declare (not safe))
                                 (gxc#current-compile-decls __tmp149106))
                               (cons 'declare _%decls146719%_)))
                           _%tl146691146706%_)))
                      (_%g146686146696%_ _%g146687146699%_)))))
          (_%g146685146721%_ _%stx146684%_))))
    (define gxc#generate-runtime-define-values%
      (lambda (_%self146429%_ _%stx146430%_)
        (let* ((_%g146432146449%_
                (lambda (_%g146433146446%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g146433146446%_))))
               (_%g146431146680%_
                (lambda (_%g146433146452%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g146433146452%_))
                      (let ((_%e146436146454%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g146433146452%_))))
                        (let ((_%hd146437146457%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e146436146454%_)))
                              (_%tl146438146459%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e146436146454%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl146438146459%_))
                              (let ((_%e146439146462%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl146438146459%_))))
                                (let ((_%hd146440146465%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e146439146462%_)))
                                      (_%tl146441146467%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e146439146462%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl146441146467%_))
                                      (let ((_%e146442146470%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl146441146467%_))))
                                        (let ((_%hd146443146473%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e146442146470%_)))
                                              (_%tl146444146475%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e146442146470%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl146444146475%_))
                                              ((lambda (_%L146478%_
                                                        _%L146479%_)
                                                 (let* ((_%__stx147798147799%_
                                                         _%L146479%_)
                                                        (_%g146496146510%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx147798147799%_)))))
                                                   (let ((_%__kont147800147801%_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _%self146429%_
                                                               _%L146478%_))))
                                                         (_%__kont147802147803%_
                                                          (lambda (_%L146642%_)
                                                            (let ((_%eid146651%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%L146642%_))))
                      (let ((_%lambda-expr146652146654%_
                             (gxc#apply-find-lambda-expression _%L146478%_)))
                        (if _%lambda-expr146652146654%_
                            (let* ((_%lambda-expr146657%_
                                    _%lambda-expr146652146654%_)
                                   (__tmp149108
                                    (let ()
                                      (declare (not safe))
                                      (gxc#current-compile-runtime-names))))
                              (declare (not safe))
                              (hash-put!
                               __tmp149108
                               _%lambda-expr146657%_
                               _%eid146651%_))
                            '#f))
                      (cons 'define
                            (cons _%eid146651%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__1
                                           _%self146429%_
                                           _%L146478%_))
                                        '()))))))
                 (_%__kont147804147805%_
                  (lambda ()
                    (let* ((_%tmp146517%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%body146626%_
                            (let _%lp146519%_ ((_%rest146521%_ _%L146479%_)
                                               (_%k146522%_ '0)
                                               (_%r146523%_ '()))
                              (let* ((_%__stx147768147769%_ _%rest146521%_)
                                     (_%g146528146545%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx147768147769%_)))))
                                (let ((_%__kont147770147771%_
                                       (lambda (_%L146613%_)
                                         (_%lp146519%_
                                          _%L146613%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k146522%_ '1))
                                          _%r146523%_)))
                                      (_%__kont147772147773%_
                                       (lambda (_%L146586%_ _%L146587%_)
                                         (_%lp146519%_
                                          _%L146586%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k146522%_ '1))
                                          (cons (cons 'define
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#generate-runtime-binding-id
                                                               _%L146587%_))
                                                            (cons (gxc#generate-runtime-values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tmp146517%_
                           _%k146522%_
                           _%L146586%_)
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%r146523%_))))
                                      (_%__kont147774147775%_
                                       (lambda (_%L146557%_)
                                         (let ((__tmp149109
                                                (cons (cons 'define
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#generate-runtime-binding-id _%L146557%_))
                          (cons (gxc#generate-runtime-values->list
                                 _%tmp146517%_
                                 _%k146522%_)
                                '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (__foldl1
                                            cons
                                            __tmp149109
                                            _%r146523%_))))
                                      (_%__kont147776147777%_
                                       (lambda () (reverse _%r146523%_))))
                                  (let ((_%g146526146573%_
                                         (lambda ()
                                           (let ((_%L146557%_
                                                  _%__stx147768147769%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%L146557%_))
                                                 (_%__kont147774147775%_
                                                  _%L146557%_)
                                                 (_%__kont147776147777%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx147768147769%_))
                                        (let ((_%e146531146602%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx147768147769%_))))
                                          (let ((_%tl146533146607%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e146531146602%_)))
                                                (_%hd146532146605%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e146531146602%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd146532146605%_))
                                                (let ((_%e146534146610%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd146532146605%_))))
                                                  (if (equal? _%e146534146610%_
                                                              '#f)
                                                      (_%__kont147770147771%_
                                                       _%tl146533146607%_)
                                                      (_%__kont147772147773%_
                                                       _%tl146533146607%_
                                                       _%hd146532146605%_)))
                                                (_%__kont147772147773%_
                                                 _%tl146533146607%_
                                                 _%hd146532146605%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g146526146573%_)))))))))
                      (cons 'begin
                            (cons (cons 'define
                                        (cons _%tmp146517%_
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self146429%_
                                                       _%L146478%_))
                                                    '())))
                                  (cons (gxc#generate-runtime-check-values
                                         _%tmp146517%_
                                         _%L146479%_
                                         _%L146478%_)
                                        _%body146626%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx147798147799%_))
                                                         (let ((_%e146498146664%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx147798147799%_))))
                   (let ((_%tl146500146669%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e146498146664%_)))
                         (_%hd146499146667%_
                          (let ()
                            (declare (not safe))
                            (##car _%e146498146664%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-datum? _%hd146499146667%_))
                         (let ((_%e146501146672%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd146499146667%_))))
                           (if (equal? _%e146501146672%_ '#f)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl146500146669%_))
                                   (_%__kont147800147801%_)
                                   (_%__kont147804147805%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl146500146669%_))
                                   (_%__kont147802147803%_ _%hd146499146667%_)
                                   (_%__kont147804147805%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl146500146669%_))
                             (_%__kont147802147803%_ _%hd146499146667%_)
                             (_%__kont147804147805%_)))))
                 (_%__kont147804147805%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd146443146473%_
                                               _%hd146440146465%_)
                                              (_%g146432146449%_
                                               _%g146433146452%_))))
                                      (_%g146432146449%_ _%g146433146452%_))))
                              (_%g146432146449%_ _%g146433146452%_))))
                      (_%g146432146449%_ _%g146433146452%_)))))
          (_%g146431146680%_ _%stx146430%_))))
    (define gxc#generate-runtime-check-values
      (lambda (_%vals146404%_ _%hd146405%_ _%expr146406%_)
        (let ((_%$e146408%_ (gxc#apply-count-values _%expr146406%_)))
          (if _%$e146408%_
              ((lambda (_%count146411%_)
                 (let ((_%len146413%_
                        (let ()
                          (declare (not safe))
                          (gx#stx-length _%hd146405%_)))
                       (_%cmp146414%_
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-list? _%hd146405%_))
                            fx=
                            fx>=)))
                   (if (or (let ()
                             (declare (not safe))
                             (##fx= _%len146413%_ '0))
                           (_%cmp146414%_ _%count146411%_ _%len146413%_))
                       '#!void
                       (let ()
                         (declare (not safe))
                         (gxc#raise-compile-error
                          '"Value count mismatch"
                          _%expr146406%_
                          _%hd146405%_)))))
               _%$e146408%_)
              (let* ((_%len146420%_
                      (let ()
                        (declare (not safe))
                        (gx#stx-length _%hd146405%_)))
                     (_%cmp146422%_
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-list? _%hd146405%_))
                          '##fx=
                          '##fx>=))
                     (_%errmsg146424%_
                      (let ((__tmp149111
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-list? _%hd146405%_))
                                 '"Context expects "
                                 '"Context expects at least "))
                            (__tmp149110 (number->string _%len146420%_)))
                        (declare (not safe))
                        (##string-append __tmp149111 __tmp149110 '" values")))
                     (_%count146426%_
                      (let ()
                        (declare (not safe))
                        (gxc#generate-runtime-temporary__0))))
                (if (if (let ()
                          (declare (not safe))
                          (gx#stx-list? _%hd146405%_))
                        '#f
                        (let () (declare (not safe)) (##fx= _%len146420%_ '0)))
                    '#!void
                    (cons 'let
                          (cons (cons (cons _%count146426%_
                                            (cons (gxc#generate-runtime-values-count
                                                   _%vals146404%_)
                                                  '()))
                                      '())
                                (cons (cons 'if
                                            (cons (cons 'not
                                                        (cons (if (gxc#current-compile-decls-unsafe?)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%cmp146422%_
                                (cons _%count146426%_
                                      (cons _%len146420%_ '())))
                          (cons 'let
                                (cons '()
                                      (cons '(declare (not safe))
                                            (cons (cons _%cmp146422%_
                                                        (cons _%count146426%_
                                                              (cons _%len146420%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons 'error
                                                              (cons _%errmsg146424%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%count146426%_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))))))))
    (define gxc#generate-runtime-values-count
      (lambda (_%var146399%_)
        (letrec ((_%generate-inline146401%_
                  (lambda ()
                    (cons 'if
                          (cons (cons '##values? (cons _%var146399%_ '()))
                                (cons (cons '##vector-length
                                            (cons _%var146399%_ '()))
                                      (cons '1 '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline146401%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline146401%_) '()))))))))
    (define gxc#generate-runtime-values-ref
      (lambda (_%var146392%_ _%i146393%_ _%rest146394%_)
        (letrec ((_%generate-inline146396%_
                  (lambda ()
                    (if (and (let ()
                               (declare (not safe))
                               (##fx= _%i146393%_ '0))
                             (not (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%rest146394%_))))
                        (cons 'if
                              (cons (cons '##values? (cons _%var146392%_ '()))
                                    (cons (cons '##vector-ref
                                                (cons _%var146392%_
                                                      (cons '0 '())))
                                          (cons _%var146392%_ '()))))
                        (cons '##vector-ref
                              (cons _%var146392%_ (cons _%i146393%_ '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline146396%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline146396%_) '()))))))))
    (define gxc#generate-runtime-values->list
      (lambda (_%var146386%_ _%i146387%_)
        (if (let () (declare (not safe)) (##fx= _%i146387%_ '0))
            (if (gxc#current-compile-decls-unsafe?)
                (cons 'if
                      (cons (cons '##values? (cons _%var146386%_ '()))
                            (cons (cons '##vector->list
                                        (cons _%var146386%_ '()))
                                  (cons (cons 'list (cons _%var146386%_ '()))
                                        '()))))
                (cons 'let
                      (cons '()
                            (cons '(declare (not safe))
                                  (cons (cons 'if
                                              (cons (cons '##values?
                                                          (cons _%var146386%_
                                                                '()))
                                                    (cons (cons '##vector->list
                                                                (cons _%var146386%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons 'list (cons _%var146386%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
            (if (let () (declare (not safe)) (##fx= _%i146387%_ '1))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons 'if
                          (cons (cons '##values? (cons _%var146386%_ '()))
                                (cons (cons '##cdr
                                            (cons (cons '##vector->list
                                                        (cons _%var146386%_
                                                              '()))
                                                  '()))
                                      (cons ''() '()))))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons 'if
                                                  (cons (cons '##values?
                                                              (cons _%var146386%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '##cdr
                            (cons (cons '##vector->list
                                        (cons _%var146386%_ '()))
                                  '()))
                      (cons ''() '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons '##list-tail
                          (cons (cons '##vector->list (cons _%var146386%_ '()))
                                (cons _%i146387%_ '())))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons '##list-tail
                                                  (cons (cons '##vector->list
                                                              (cons _%var146386%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _%i146387%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))))))
    (define gxc#generate-runtime-lambda%
      (lambda (_%self146318%_ _%stx146319%_)
        (let* ((_%g146321146338%_
                (lambda (_%g146322146335%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g146322146335%_))))
               (_%g146320146383%_
                (lambda (_%g146322146341%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g146322146341%_))
                      (let ((_%e146325146343%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g146322146341%_))))
                        (let ((_%hd146326146346%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e146325146343%_)))
                              (_%tl146327146348%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e146325146343%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl146327146348%_))
                              (let ((_%e146328146351%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl146327146348%_))))
                                (let ((_%hd146329146354%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e146328146351%_)))
                                      (_%tl146330146356%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e146328146351%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl146330146356%_))
                                      (let ((_%e146331146359%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl146330146356%_))))
                                        (let ((_%hd146332146362%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e146331146359%_)))
                                              (_%tl146333146364%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e146331146359%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl146333146364%_))
                                              ((lambda (_%L146367%_
                                                        _%L146368%_)
                                                 (gxc#generate-runtime-lambda-form
                                                  _%self146318%_
                                                  _%L146368%_
                                                  _%L146367%_))
                                               _%hd146332146362%_
                                               _%hd146329146354%_)
                                              (_%g146321146338%_
                                               _%g146322146341%_))))
                                      (_%g146321146338%_ _%g146322146341%_))))
                              (_%g146321146338%_ _%g146322146341%_))))
                      (_%g146321146338%_ _%g146322146341%_)))))
          (_%g146320146383%_ _%stx146319%_))))
    (define gxc#generate-runtime-lambda-form
      (lambda (_%self146277%_ _%hd146278%_ _%body146279%_)
        (let* ((_%hd146281%_ (gxc#generate-runtime-lambda-head _%hd146278%_))
               (_%body146283%_
                (let ()
                  (declare (not safe))
                  (gxc#compile-e__1 _%self146277%_ _%body146279%_)))
               (_%body146315%_
                (let* ((_%body146284146292%_ _%body146283%_)
                       (_%else146286146300%_
                        (lambda () (cons _%body146283%_ '())))
                       (_%K146288146305%_
                        (lambda (_%exprs146303%_) _%exprs146303%_)))
                  (if (pair? _%body146284146292%_)
                      (let ((_%hd146289146308%_
                             (let ()
                               (declare (not safe))
                               (##car _%body146284146292%_)))
                            (_%tl146290146310%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%body146284146292%_))))
                        (if (let ()
                              (declare (not safe))
                              (##eq? _%hd146289146308%_ 'begin))
                            (let ((_%exprs146313%_ _%tl146290146310%_))
                              (_%K146288146305%_ _%exprs146313%_))
                            (_%else146286146300%_)))
                      (_%else146286146300%_)))))
          (cons 'lambda (cons _%hd146281%_ _%body146315%_)))))
    (define gxc#generate-runtime-lambda-head
      (lambda (_%hd146275%_)
        (let ()
          (declare (not safe))
          (gx#stx-map1 gxc#generate-runtime-binding-id* _%hd146275%_))))
    (define gxc#generate-runtime-case-lambda%
      (lambda (_%self144814%_ _%stx144815%_)
        (letrec ((_%dispatch-case?144817%_
                  (lambda (_%hd145505%_ _%body145506%_)
                    (let* ((_%form145508%_
                            (cons _%hd145505%_ (cons _%body145506%_ '())))
                           (_%__stx147830147831%_ _%form145508%_)
                           (_%g145513145670%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx147830147831%_)))))
                      (let ((_%__kont147832147833%_
                             (lambda (_%L146195%_ _%L146196%_ _%L146197%_)
                               '#t))
                            (_%__kont147838147839%_
                             (lambda (_%L145983%_
                                      _%L145984%_
                                      _%L145985%_
                                      _%L145986%_
                                      _%L145987%_
                                      _%L145988%_)
                               '#t))
                            (_%__kont147844147845%_
                             (lambda (_%L145778%_
                                      _%L145779%_
                                      _%L145780%_
                                      _%L145781%_)
                               '#t))
                            (_%__kont147846147847%_ (lambda () '#f)))
                        (let* ((_%__match147971147972%_
                                (lambda (_%e145630145682%_
                                         _%hd145631145685%_
                                         _%tl145632145687%_
                                         _%e145633145690%_
                                         _%hd145634145693%_
                                         _%tl145635145695%_
                                         _%e145636145698%_
                                         _%hd145637145701%_
                                         _%tl145638145703%_
                                         _%e145639145706%_
                                         _%hd145640145709%_
                                         _%tl145641145711%_
                                         _%e145642145714%_
                                         _%hd145643145717%_
                                         _%tl145644145719%_
                                         _%e145645145722%_
                                         _%hd145646145725%_
                                         _%tl145647145727%_
                                         _%e145648145730%_
                                         _%hd145649145733%_
                                         _%tl145650145735%_
                                         _%e145651145738%_
                                         _%hd145652145741%_
                                         _%tl145653145743%_
                                         _%e145654145746%_
                                         _%hd145655145749%_
                                         _%tl145656145751%_
                                         _%e145657145754%_
                                         _%hd145658145757%_
                                         _%tl145659145759%_
                                         _%e145660145762%_
                                         _%hd145661145765%_
                                         _%tl145662145767%_
                                         _%e145663145770%_
                                         _%hd145664145773%_
                                         _%tl145665145775%_)
                                  (let ((_%L145778%_ _%hd145664145773%_)
                                        (_%L145779%_ _%hd145655145749%_)
                                        (_%L145780%_ _%hd145646145725%_)
                                        (_%L145781%_ _%hd145631145685%_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (gx#identifier? _%L145781%_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#runtime-identifier=?
                                                _%L145780%_
                                                'apply))
                                             (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L145781%_
                                                _%L145778%_))
                                             (not (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%L145779%_
                                                     _%L145781%_))))
                                        (_%__kont147844147845%_
                                         _%L145778%_
                                         _%L145779%_
                                         _%L145780%_
                                         _%L145781%_)
                                        (_%__kont147846147847%_)))))
                               (_%__match147943147944%_
                                (lambda (_%e145630145682%_
                                         _%hd145631145685%_
                                         _%tl145632145687%_
                                         _%e145633145690%_
                                         _%hd145634145693%_
                                         _%tl145635145695%_
                                         _%e145636145698%_
                                         _%hd145637145701%_
                                         _%tl145638145703%_
                                         _%e145639145706%_
                                         _%hd145640145709%_
                                         _%tl145641145711%_
                                         _%e145642145714%_
                                         _%hd145643145717%_
                                         _%tl145644145719%_
                                         _%e145645145722%_
                                         _%hd145646145725%_
                                         _%tl145647145727%_
                                         _%e145648145730%_
                                         _%hd145649145733%_
                                         _%tl145650145735%_
                                         _%e145651145738%_
                                         _%hd145652145741%_
                                         _%tl145653145743%_
                                         _%e145654145746%_
                                         _%hd145655145749%_
                                         _%tl145656145751%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl145650145735%_))
                                      (let ((_%e145657145754%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl145650145735%_))))
                                        (let ((_%tl145659145759%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e145657145754%_)))
                                              (_%hd145658145757%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e145657145754%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd145658145757%_))
                                              (let ((_%e145660145762%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd145658145757%_))))
                                                (let ((_%tl145662145767%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e145660145762%_)))
                                                      (_%hd145661145765%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e145660145762%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd145661145765%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _%hd145661145765%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl145662145767%_))
                      (let ((_%e145663145770%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl145662145767%_))))
                        (let ((_%tl145665145775%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145663145770%_)))
                              (_%hd145664145773%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145663145770%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl145665145775%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl145659145759%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl145635145695%_))
                                      (_%__match147971147972%_
                                       _%e145630145682%_
                                       _%hd145631145685%_
                                       _%tl145632145687%_
                                       _%e145633145690%_
                                       _%hd145634145693%_
                                       _%tl145635145695%_
                                       _%e145636145698%_
                                       _%hd145637145701%_
                                       _%tl145638145703%_
                                       _%e145639145706%_
                                       _%hd145640145709%_
                                       _%tl145641145711%_
                                       _%e145642145714%_
                                       _%hd145643145717%_
                                       _%tl145644145719%_
                                       _%e145645145722%_
                                       _%hd145646145725%_
                                       _%tl145647145727%_
                                       _%e145648145730%_
                                       _%hd145649145733%_
                                       _%tl145650145735%_
                                       _%e145651145738%_
                                       _%hd145652145741%_
                                       _%tl145653145743%_
                                       _%e145654145746%_
                                       _%hd145655145749%_
                                       _%tl145656145751%_
                                       _%e145657145754%_
                                       _%hd145658145757%_
                                       _%tl145659145759%_
                                       _%e145660145762%_
                                       _%hd145661145765%_
                                       _%tl145662145767%_
                                       _%e145663145770%_
                                       _%hd145664145773%_
                                       _%tl145665145775%_)
                                      (_%__kont147846147847%_))
                                  (_%__kont147846147847%_))
                              (_%__kont147846147847%_))))
                      (_%__kont147846147847%_))
                  (_%__kont147846147847%_))
              (_%__kont147846147847%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont147846147847%_))))
                                      (_%__kont147846147847%_))))
                               (_%__match147873147874%_
                                (lambda (_%e145566145823%_
                                         _%hd145567145826%_
                                         _%tl145568145828%_
                                         _%__splice147840147841%_
                                         _%target145569145831%_
                                         _%tl145571145833%_)
                                  (letrec ((_%loop145572145836%_
                                            (lambda (_%hd145570145839%_
                                                     _%arg145576145841%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd145570145839%_))
                                                  (let ((_%e145573145844%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd145570145839%_))))
                                                    (let ((_%lp-tl145575145849%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e145573145844%_)))
                                                          (_%lp-hd145574145847%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e145573145844%_))))
                                                      (_%loop145572145836%_
                                                       _%lp-tl145575145849%_
                                                       (cons _%lp-hd145574145847%_
                                                             _%arg145576145841%_))))
                                                  (let ((_%arg145577145852%_
                                                         (reverse _%arg145576145841%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl145568145828%_))
                                                        (let ((_%e145578145855%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl145568145828%_))))
                  (let ((_%tl145580145860%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e145578145855%_)))
                        (_%hd145579145858%_
                         (let ()
                           (declare (not safe))
                           (##car _%e145578145855%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd145579145858%_))
                        (let ((_%e145581145863%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd145579145858%_))))
                          (let ((_%tl145583145868%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e145581145863%_)))
                                (_%hd145582145866%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e145581145863%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd145582145866%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd145582145866%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl145583145868%_))
                                        (let ((_%e145584145871%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl145583145868%_))))
                                          (let ((_%tl145586145876%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e145584145871%_)))
                                                (_%hd145585145874%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e145584145871%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd145585145874%_))
                                                (let ((_%e145587145879%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd145585145874%_))))
                                                  (let ((_%tl145589145884%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e145587145879%_)))
                                                        (_%hd145588145882%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e145587145879%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd145588145882%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd145588145882%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl145589145884%_))
                        (let ((_%e145590145887%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl145589145884%_))))
                          (let ((_%tl145592145892%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e145590145887%_)))
                                (_%hd145591145890%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e145590145887%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl145592145892%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl145586145876%_))
                                    (let ((_%e145593145895%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl145586145876%_))))
                                      (let ((_%tl145595145900%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e145593145895%_)))
                                            (_%hd145594145898%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e145593145895%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd145594145898%_))
                                            (let ((_%e145596145903%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd145594145898%_))))
                                              (let ((_%tl145598145908%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e145596145903%_)))
                                                    (_%hd145597145906%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e145596145903%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd145597145906%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd145597145906%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl145598145908%_))
                                                            (let ((_%e145599145911%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl145598145908%_))))
                      (let ((_%tl145601145916%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e145599145911%_)))
                            (_%hd145600145914%_
                             (let ()
                               (declare (not safe))
                               (##car _%e145599145911%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl145601145916%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl145595145900%_))
                                (if (let ((__tmp149112
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-length
                                              _%tl145595145900%_))))
                                      (declare (not safe))
                                      (##fx>= __tmp149112 '1))
                                    (let ((_%__splice147842147843%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl145595145900%_
                                              '1))))
                                      (let ((_%tl145604145921%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice147842147843%_
                                                '1)))
                                            (_%target145602145919%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice147842147843%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl145604145921%_))
                                            (let ((_%e145611145924%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl145604145921%_))))
                                              (let ((_%tl145613145929%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e145611145924%_)))
                                                    (_%hd145612145927%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e145611145924%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd145612145927%_))
                                                    (let ((_%e145614145932%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd145612145927%_))))
                                                      (let ((_%tl145616145937%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e145614145932%_)))
                    (_%hd145615145935%_
                     (let () (declare (not safe)) (##car _%e145614145932%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd145615145935%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _%hd145615145935%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl145616145937%_))
                            (let ((_%e145617145940%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl145616145937%_))))
                              (let ((_%tl145619145945%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e145617145940%_)))
                                    (_%hd145618145943%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e145617145940%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl145619145945%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl145613145929%_))
                                        (letrec ((_%loop145605145948%_
                                                  (lambda (_%hd145603145951%_
                                                           _%xarg145609145953%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd145603145951%_))
                                                        (let ((_%e145606145956%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd145603145951%_))))
                  (let ((_%lp-tl145608145961%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e145606145956%_)))
                        (_%lp-hd145607145959%_
                         (let ()
                           (declare (not safe))
                           (##car _%e145606145956%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd145607145959%_))
                        (let ((_%e145620145964%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd145607145959%_))))
                          (let ((_%tl145622145969%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e145620145964%_)))
                                (_%hd145621145967%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e145620145964%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd145621145967%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _%hd145621145967%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl145622145969%_))
                                        (let ((_%e145623145972%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl145622145969%_))))
                                          (let ((_%tl145625145977%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e145623145972%_)))
                                                (_%hd145624145975%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e145623145972%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl145625145977%_))
                                                (_%loop145605145948%_
                                                 _%lp-tl145608145961%_
                                                 (cons _%hd145624145975%_
                                                       _%xarg145609145953%_))
                                                (_%__match147943147944%_
                                                 _%e145566145823%_
                                                 _%hd145567145826%_
                                                 _%tl145568145828%_
                                                 _%e145578145855%_
                                                 _%hd145579145858%_
                                                 _%tl145580145860%_
                                                 _%e145581145863%_
                                                 _%hd145582145866%_
                                                 _%tl145583145868%_
                                                 _%e145584145871%_
                                                 _%hd145585145874%_
                                                 _%tl145586145876%_
                                                 _%e145587145879%_
                                                 _%hd145588145882%_
                                                 _%tl145589145884%_
                                                 _%e145590145887%_
                                                 _%hd145591145890%_
                                                 _%tl145592145892%_
                                                 _%e145593145895%_
                                                 _%hd145594145898%_
                                                 _%tl145595145900%_
                                                 _%e145596145903%_
                                                 _%hd145597145906%_
                                                 _%tl145598145908%_
                                                 _%e145599145911%_
                                                 _%hd145600145914%_
                                                 _%tl145601145916%_))))
                                        (_%__match147943147944%_
                                         _%e145566145823%_
                                         _%hd145567145826%_
                                         _%tl145568145828%_
                                         _%e145578145855%_
                                         _%hd145579145858%_
                                         _%tl145580145860%_
                                         _%e145581145863%_
                                         _%hd145582145866%_
                                         _%tl145583145868%_
                                         _%e145584145871%_
                                         _%hd145585145874%_
                                         _%tl145586145876%_
                                         _%e145587145879%_
                                         _%hd145588145882%_
                                         _%tl145589145884%_
                                         _%e145590145887%_
                                         _%hd145591145890%_
                                         _%tl145592145892%_
                                         _%e145593145895%_
                                         _%hd145594145898%_
                                         _%tl145595145900%_
                                         _%e145596145903%_
                                         _%hd145597145906%_
                                         _%tl145598145908%_
                                         _%e145599145911%_
                                         _%hd145600145914%_
                                         _%tl145601145916%_))
                                    (_%__match147943147944%_
                                     _%e145566145823%_
                                     _%hd145567145826%_
                                     _%tl145568145828%_
                                     _%e145578145855%_
                                     _%hd145579145858%_
                                     _%tl145580145860%_
                                     _%e145581145863%_
                                     _%hd145582145866%_
                                     _%tl145583145868%_
                                     _%e145584145871%_
                                     _%hd145585145874%_
                                     _%tl145586145876%_
                                     _%e145587145879%_
                                     _%hd145588145882%_
                                     _%tl145589145884%_
                                     _%e145590145887%_
                                     _%hd145591145890%_
                                     _%tl145592145892%_
                                     _%e145593145895%_
                                     _%hd145594145898%_
                                     _%tl145595145900%_
                                     _%e145596145903%_
                                     _%hd145597145906%_
                                     _%tl145598145908%_
                                     _%e145599145911%_
                                     _%hd145600145914%_
                                     _%tl145601145916%_))
                                (_%__match147943147944%_
                                 _%e145566145823%_
                                 _%hd145567145826%_
                                 _%tl145568145828%_
                                 _%e145578145855%_
                                 _%hd145579145858%_
                                 _%tl145580145860%_
                                 _%e145581145863%_
                                 _%hd145582145866%_
                                 _%tl145583145868%_
                                 _%e145584145871%_
                                 _%hd145585145874%_
                                 _%tl145586145876%_
                                 _%e145587145879%_
                                 _%hd145588145882%_
                                 _%tl145589145884%_
                                 _%e145590145887%_
                                 _%hd145591145890%_
                                 _%tl145592145892%_
                                 _%e145593145895%_
                                 _%hd145594145898%_
                                 _%tl145595145900%_
                                 _%e145596145903%_
                                 _%hd145597145906%_
                                 _%tl145598145908%_
                                 _%e145599145911%_
                                 _%hd145600145914%_
                                 _%tl145601145916%_))))
                        (_%__match147943147944%_
                         _%e145566145823%_
                         _%hd145567145826%_
                         _%tl145568145828%_
                         _%e145578145855%_
                         _%hd145579145858%_
                         _%tl145580145860%_
                         _%e145581145863%_
                         _%hd145582145866%_
                         _%tl145583145868%_
                         _%e145584145871%_
                         _%hd145585145874%_
                         _%tl145586145876%_
                         _%e145587145879%_
                         _%hd145588145882%_
                         _%tl145589145884%_
                         _%e145590145887%_
                         _%hd145591145890%_
                         _%tl145592145892%_
                         _%e145593145895%_
                         _%hd145594145898%_
                         _%tl145595145900%_
                         _%e145596145903%_
                         _%hd145597145906%_
                         _%tl145598145908%_
                         _%e145599145911%_
                         _%hd145600145914%_
                         _%tl145601145916%_))))
                (let ((_%xarg145610145980%_ (reverse _%xarg145609145953%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl145580145860%_))
                      (let ((_%L145983%_ _%hd145618145943%_)
                            (_%L145984%_ _%xarg145610145980%_)
                            (_%L145985%_ _%hd145600145914%_)
                            (_%L145986%_ _%hd145591145890%_)
                            (_%L145987%_ _%tl145571145833%_)
                            (_%L145988%_ _%arg145577145852%_))
                        (if (and (let ((__tmp149113
                                        (let ((__tmp149114
                                               (lambda (_%g146031146034%_
                                                        _%g146032146036%_)
                                                 (cons _%g146031146034%_
                                                       _%g146032146036%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp149114
                                           '()
                                           _%L145988%_))))
                                   (declare (not safe))
                                   (gx#identifier-list? __tmp149113))
                                 (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L145987%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _%L145986%_
                                    'apply))
                                 (let ((__tmp149117
                                        (length (let ((__tmp149118
                                                       (lambda (_%g146038146041%_
                                                                _%g146039146043%_)
                                                         (cons _%g146038146041%_
                                                               _%g146039146043%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp149118
                                                   '()
                                                   _%L145988%_))))
                                       (__tmp149115
                                        (length (let ((__tmp149116
                                                       (lambda (_%g146045146048%_
                                                                _%g146046146050%_)
                                                         (cons _%g146045146048%_
                                                               _%g146046146050%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp149116
                                                   '()
                                                   _%L145984%_)))))
                                   (declare (not safe))
                                   (##fx= __tmp149117 __tmp149115))
                                 (let ((__tmp149121
                                        (let ((__tmp149122
                                               (lambda (_%g146052146055%_
                                                        _%g146053146057%_)
                                                 (cons _%g146052146055%_
                                                       _%g146053146057%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp149122
                                           '()
                                           _%L145988%_)))
                                       (__tmp149119
                                        (let ((__tmp149120
                                               (lambda (_%g146059146062%_
                                                        _%g146060146064%_)
                                                 (cons _%g146059146062%_
                                                       _%g146060146064%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp149120
                                           '()
                                           _%L145984%_))))
                                   (declare (not safe))
                                   (__andmap2
                                    gx#free-identifier=?
                                    __tmp149121
                                    __tmp149119))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L145987%_
                                    _%L145983%_))
                                 (not (let ((__tmp149126
                                             (lambda (_%g146066146068%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#free-identifier=?
                                                  _%g146066146068%_
                                                  _%L145985%_))))
                                            (__tmp149123
                                             (let ((__tmp149125
                                                    (lambda (_%g146070146073%_
                                                             _%g146071146075%_)
                                                      (cons _%g146070146073%_
                                                            _%g146071146075%_)))
                                                   (__tmp149124
                                                    (cons _%L145987%_ '())))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp149125
                                                __tmp149124
                                                _%L145988%_))))
                                        (declare (not safe))
                                        (__find __tmp149126 __tmp149123))))
                            (_%__kont147838147839%_
                             _%L145983%_
                             _%L145984%_
                             _%L145985%_
                             _%L145986%_
                             _%L145987%_
                             _%L145988%_)
                            (_%__match147943147944%_
                             _%e145566145823%_
                             _%hd145567145826%_
                             _%tl145568145828%_
                             _%e145578145855%_
                             _%hd145579145858%_
                             _%tl145580145860%_
                             _%e145581145863%_
                             _%hd145582145866%_
                             _%tl145583145868%_
                             _%e145584145871%_
                             _%hd145585145874%_
                             _%tl145586145876%_
                             _%e145587145879%_
                             _%hd145588145882%_
                             _%tl145589145884%_
                             _%e145590145887%_
                             _%hd145591145890%_
                             _%tl145592145892%_
                             _%e145593145895%_
                             _%hd145594145898%_
                             _%tl145595145900%_
                             _%e145596145903%_
                             _%hd145597145906%_
                             _%tl145598145908%_
                             _%e145599145911%_
                             _%hd145600145914%_
                             _%tl145601145916%_)))
                      (_%__match147943147944%_
                       _%e145566145823%_
                       _%hd145567145826%_
                       _%tl145568145828%_
                       _%e145578145855%_
                       _%hd145579145858%_
                       _%tl145580145860%_
                       _%e145581145863%_
                       _%hd145582145866%_
                       _%tl145583145868%_
                       _%e145584145871%_
                       _%hd145585145874%_
                       _%tl145586145876%_
                       _%e145587145879%_
                       _%hd145588145882%_
                       _%tl145589145884%_
                       _%e145590145887%_
                       _%hd145591145890%_
                       _%tl145592145892%_
                       _%e145593145895%_
                       _%hd145594145898%_
                       _%tl145595145900%_
                       _%e145596145903%_
                       _%hd145597145906%_
                       _%tl145598145908%_
                       _%e145599145911%_
                       _%hd145600145914%_
                       _%tl145601145916%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop145605145948%_
                                           _%target145602145919%_
                                           '()))
                                        (_%__match147943147944%_
                                         _%e145566145823%_
                                         _%hd145567145826%_
                                         _%tl145568145828%_
                                         _%e145578145855%_
                                         _%hd145579145858%_
                                         _%tl145580145860%_
                                         _%e145581145863%_
                                         _%hd145582145866%_
                                         _%tl145583145868%_
                                         _%e145584145871%_
                                         _%hd145585145874%_
                                         _%tl145586145876%_
                                         _%e145587145879%_
                                         _%hd145588145882%_
                                         _%tl145589145884%_
                                         _%e145590145887%_
                                         _%hd145591145890%_
                                         _%tl145592145892%_
                                         _%e145593145895%_
                                         _%hd145594145898%_
                                         _%tl145595145900%_
                                         _%e145596145903%_
                                         _%hd145597145906%_
                                         _%tl145598145908%_
                                         _%e145599145911%_
                                         _%hd145600145914%_
                                         _%tl145601145916%_))
                                    (_%__match147943147944%_
                                     _%e145566145823%_
                                     _%hd145567145826%_
                                     _%tl145568145828%_
                                     _%e145578145855%_
                                     _%hd145579145858%_
                                     _%tl145580145860%_
                                     _%e145581145863%_
                                     _%hd145582145866%_
                                     _%tl145583145868%_
                                     _%e145584145871%_
                                     _%hd145585145874%_
                                     _%tl145586145876%_
                                     _%e145587145879%_
                                     _%hd145588145882%_
                                     _%tl145589145884%_
                                     _%e145590145887%_
                                     _%hd145591145890%_
                                     _%tl145592145892%_
                                     _%e145593145895%_
                                     _%hd145594145898%_
                                     _%tl145595145900%_
                                     _%e145596145903%_
                                     _%hd145597145906%_
                                     _%tl145598145908%_
                                     _%e145599145911%_
                                     _%hd145600145914%_
                                     _%tl145601145916%_))))
                            (_%__match147943147944%_
                             _%e145566145823%_
                             _%hd145567145826%_
                             _%tl145568145828%_
                             _%e145578145855%_
                             _%hd145579145858%_
                             _%tl145580145860%_
                             _%e145581145863%_
                             _%hd145582145866%_
                             _%tl145583145868%_
                             _%e145584145871%_
                             _%hd145585145874%_
                             _%tl145586145876%_
                             _%e145587145879%_
                             _%hd145588145882%_
                             _%tl145589145884%_
                             _%e145590145887%_
                             _%hd145591145890%_
                             _%tl145592145892%_
                             _%e145593145895%_
                             _%hd145594145898%_
                             _%tl145595145900%_
                             _%e145596145903%_
                             _%hd145597145906%_
                             _%tl145598145908%_
                             _%e145599145911%_
                             _%hd145600145914%_
                             _%tl145601145916%_))
                        (_%__match147943147944%_
                         _%e145566145823%_
                         _%hd145567145826%_
                         _%tl145568145828%_
                         _%e145578145855%_
                         _%hd145579145858%_
                         _%tl145580145860%_
                         _%e145581145863%_
                         _%hd145582145866%_
                         _%tl145583145868%_
                         _%e145584145871%_
                         _%hd145585145874%_
                         _%tl145586145876%_
                         _%e145587145879%_
                         _%hd145588145882%_
                         _%tl145589145884%_
                         _%e145590145887%_
                         _%hd145591145890%_
                         _%tl145592145892%_
                         _%e145593145895%_
                         _%hd145594145898%_
                         _%tl145595145900%_
                         _%e145596145903%_
                         _%hd145597145906%_
                         _%tl145598145908%_
                         _%e145599145911%_
                         _%hd145600145914%_
                         _%tl145601145916%_))
                    (_%__match147943147944%_
                     _%e145566145823%_
                     _%hd145567145826%_
                     _%tl145568145828%_
                     _%e145578145855%_
                     _%hd145579145858%_
                     _%tl145580145860%_
                     _%e145581145863%_
                     _%hd145582145866%_
                     _%tl145583145868%_
                     _%e145584145871%_
                     _%hd145585145874%_
                     _%tl145586145876%_
                     _%e145587145879%_
                     _%hd145588145882%_
                     _%tl145589145884%_
                     _%e145590145887%_
                     _%hd145591145890%_
                     _%tl145592145892%_
                     _%e145593145895%_
                     _%hd145594145898%_
                     _%tl145595145900%_
                     _%e145596145903%_
                     _%hd145597145906%_
                     _%tl145598145908%_
                     _%e145599145911%_
                     _%hd145600145914%_
                     _%tl145601145916%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match147943147944%_
                                                     _%e145566145823%_
                                                     _%hd145567145826%_
                                                     _%tl145568145828%_
                                                     _%e145578145855%_
                                                     _%hd145579145858%_
                                                     _%tl145580145860%_
                                                     _%e145581145863%_
                                                     _%hd145582145866%_
                                                     _%tl145583145868%_
                                                     _%e145584145871%_
                                                     _%hd145585145874%_
                                                     _%tl145586145876%_
                                                     _%e145587145879%_
                                                     _%hd145588145882%_
                                                     _%tl145589145884%_
                                                     _%e145590145887%_
                                                     _%hd145591145890%_
                                                     _%tl145592145892%_
                                                     _%e145593145895%_
                                                     _%hd145594145898%_
                                                     _%tl145595145900%_
                                                     _%e145596145903%_
                                                     _%hd145597145906%_
                                                     _%tl145598145908%_
                                                     _%e145599145911%_
                                                     _%hd145600145914%_
                                                     _%tl145601145916%_))))
                                            (_%__match147943147944%_
                                             _%e145566145823%_
                                             _%hd145567145826%_
                                             _%tl145568145828%_
                                             _%e145578145855%_
                                             _%hd145579145858%_
                                             _%tl145580145860%_
                                             _%e145581145863%_
                                             _%hd145582145866%_
                                             _%tl145583145868%_
                                             _%e145584145871%_
                                             _%hd145585145874%_
                                             _%tl145586145876%_
                                             _%e145587145879%_
                                             _%hd145588145882%_
                                             _%tl145589145884%_
                                             _%e145590145887%_
                                             _%hd145591145890%_
                                             _%tl145592145892%_
                                             _%e145593145895%_
                                             _%hd145594145898%_
                                             _%tl145595145900%_
                                             _%e145596145903%_
                                             _%hd145597145906%_
                                             _%tl145598145908%_
                                             _%e145599145911%_
                                             _%hd145600145914%_
                                             _%tl145601145916%_))))
                                    (_%__match147943147944%_
                                     _%e145566145823%_
                                     _%hd145567145826%_
                                     _%tl145568145828%_
                                     _%e145578145855%_
                                     _%hd145579145858%_
                                     _%tl145580145860%_
                                     _%e145581145863%_
                                     _%hd145582145866%_
                                     _%tl145583145868%_
                                     _%e145584145871%_
                                     _%hd145585145874%_
                                     _%tl145586145876%_
                                     _%e145587145879%_
                                     _%hd145588145882%_
                                     _%tl145589145884%_
                                     _%e145590145887%_
                                     _%hd145591145890%_
                                     _%tl145592145892%_
                                     _%e145593145895%_
                                     _%hd145594145898%_
                                     _%tl145595145900%_
                                     _%e145596145903%_
                                     _%hd145597145906%_
                                     _%tl145598145908%_
                                     _%e145599145911%_
                                     _%hd145600145914%_
                                     _%tl145601145916%_))
                                (_%__match147943147944%_
                                 _%e145566145823%_
                                 _%hd145567145826%_
                                 _%tl145568145828%_
                                 _%e145578145855%_
                                 _%hd145579145858%_
                                 _%tl145580145860%_
                                 _%e145581145863%_
                                 _%hd145582145866%_
                                 _%tl145583145868%_
                                 _%e145584145871%_
                                 _%hd145585145874%_
                                 _%tl145586145876%_
                                 _%e145587145879%_
                                 _%hd145588145882%_
                                 _%tl145589145884%_
                                 _%e145590145887%_
                                 _%hd145591145890%_
                                 _%tl145592145892%_
                                 _%e145593145895%_
                                 _%hd145594145898%_
                                 _%tl145595145900%_
                                 _%e145596145903%_
                                 _%hd145597145906%_
                                 _%tl145598145908%_
                                 _%e145599145911%_
                                 _%hd145600145914%_
                                 _%tl145601145916%_))
                            (_%__kont147846147847%_))))
                    (_%__kont147846147847%_))
                (_%__kont147846147847%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont147846147847%_))))
                                            (_%__kont147846147847%_))))
                                    (_%__kont147846147847%_))
                                (_%__kont147846147847%_))))
                        (_%__kont147846147847%_))
                    (_%__kont147846147847%_))
                (_%__kont147846147847%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont147846147847%_))))
                                        (_%__kont147846147847%_))
                                    (_%__kont147846147847%_))
                                (_%__kont147846147847%_))))
                        (_%__kont147846147847%_))))
                (_%__kont147846147847%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop145572145836%_
                                     _%target145569145831%_
                                     '()))))
                               (_%__match147861147862%_
                                (lambda (_%e145518146083%_
                                         _%hd145519146086%_
                                         _%tl145520146088%_
                                         _%__splice147834147835%_
                                         _%target145521146091%_
                                         _%tl145523146093%_)
                                  (letrec ((_%loop145524146096%_
                                            (lambda (_%hd145522146099%_
                                                     _%arg145528146101%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd145522146099%_))
                                                  (let ((_%e145525146104%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd145522146099%_))))
                                                    (let ((_%lp-tl145527146109%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e145525146104%_)))
                                                          (_%lp-hd145526146107%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e145525146104%_))))
                                                      (_%loop145524146096%_
                                                       _%lp-tl145527146109%_
                                                       (cons _%lp-hd145526146107%_
                                                             _%arg145528146101%_))))
                                                  (let ((_%arg145529146112%_
                                                         (reverse _%arg145528146101%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl145520146088%_))
                                                        (let ((_%e145530146115%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl145520146088%_))))
                  (let ((_%tl145532146120%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e145530146115%_)))
                        (_%hd145531146118%_
                         (let ()
                           (declare (not safe))
                           (##car _%e145530146115%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd145531146118%_))
                        (let ((_%e145533146123%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd145531146118%_))))
                          (let ((_%tl145535146128%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e145533146123%_)))
                                (_%hd145534146126%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e145533146123%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd145534146126%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd145534146126%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl145535146128%_))
                                        (let ((_%e145536146131%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl145535146128%_))))
                                          (let ((_%tl145538146136%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e145536146131%_)))
                                                (_%hd145537146134%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e145536146131%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd145537146134%_))
                                                (let ((_%e145539146139%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd145537146134%_))))
                                                  (let ((_%tl145541146144%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e145539146139%_)))
                                                        (_%hd145540146142%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e145539146139%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd145540146142%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd145540146142%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl145541146144%_))
                        (let ((_%e145542146147%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl145541146144%_))))
                          (let ((_%tl145544146152%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e145542146147%_)))
                                (_%hd145543146150%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e145542146147%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl145544146152%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl145538146136%_))
                                    (let ((_%__splice147836147837%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl145538146136%_
                                              '0))))
                                      (let ((_%tl145547146157%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice147836147837%_
                                                '1)))
                                            (_%target145545146155%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice147836147837%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl145547146157%_))
                                            (letrec ((_%loop145548146160%_
                                                      (lambda (_%hd145546146163%_
                                                               _%xarg145552146165%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd145546146163%_))
                                                            (let ((_%e145549146168%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd145546146163%_))))
                      (let ((_%lp-tl145551146173%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e145549146168%_)))
                            (_%lp-hd145550146171%_
                             (let ()
                               (declare (not safe))
                               (##car _%e145549146168%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd145550146171%_))
                            (let ((_%e145554146176%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd145550146171%_))))
                              (let ((_%tl145556146181%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e145554146176%_)))
                                    (_%hd145555146179%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e145554146176%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd145555146179%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd145555146179%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl145556146181%_))
                                            (let ((_%e145557146184%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl145556146181%_))))
                                              (let ((_%tl145559146189%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e145557146184%_)))
                                                    (_%hd145558146187%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e145557146184%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl145559146189%_))
                                                    (_%loop145548146160%_
                                                     _%lp-tl145551146173%_
                                                     (cons _%hd145558146187%_
                                                           _%xarg145552146165%_))
                                                    (_%__match147873147874%_
                                                     _%e145518146083%_
                                                     _%hd145519146086%_
                                                     _%tl145520146088%_
                                                     _%__splice147834147835%_
                                                     _%target145521146091%_
                                                     _%tl145523146093%_))))
                                            (_%__match147873147874%_
                                             _%e145518146083%_
                                             _%hd145519146086%_
                                             _%tl145520146088%_
                                             _%__splice147834147835%_
                                             _%target145521146091%_
                                             _%tl145523146093%_))
                                        (_%__match147873147874%_
                                         _%e145518146083%_
                                         _%hd145519146086%_
                                         _%tl145520146088%_
                                         _%__splice147834147835%_
                                         _%target145521146091%_
                                         _%tl145523146093%_))
                                    (_%__match147873147874%_
                                     _%e145518146083%_
                                     _%hd145519146086%_
                                     _%tl145520146088%_
                                     _%__splice147834147835%_
                                     _%target145521146091%_
                                     _%tl145523146093%_))))
                            (_%__match147873147874%_
                             _%e145518146083%_
                             _%hd145519146086%_
                             _%tl145520146088%_
                             _%__splice147834147835%_
                             _%target145521146091%_
                             _%tl145523146093%_))))
                    (let ((_%xarg145553146192%_
                           (reverse _%xarg145552146165%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl145532146120%_))
                          (let ((_%L146195%_ _%xarg145553146192%_)
                                (_%L146196%_ _%hd145543146150%_)
                                (_%L146197%_ _%arg145529146112%_))
                            (if (and (let ((__tmp149127
                                            (let ((__tmp149128
                                                   (lambda (_%g146225146228%_
                                                            _%g146226146230%_)
                                                     (cons _%g146225146228%_
                                                           _%g146226146230%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp149128
                                               '()
                                               _%L146197%_))))
                                       (declare (not safe))
                                       (gx#identifier-list? __tmp149127))
                                     (let ((__tmp149131
                                            (length (let ((__tmp149132
                                                           (lambda (_%g146232146235%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g146233146237%_)
                     (cons _%g146232146235%_ _%g146233146237%_))))
              (declare (not safe))
              (__foldr1 __tmp149132 '() _%L146197%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (__tmp149129
                                            (length (let ((__tmp149130
                                                           (lambda (_%g146239146242%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g146240146244%_)
                     (cons _%g146239146242%_ _%g146240146244%_))))
              (declare (not safe))
              (__foldr1 __tmp149130 '() _%L146195%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp149131 __tmp149129))
                                     (let ((__tmp149135
                                            (let ((__tmp149136
                                                   (lambda (_%g146246146249%_
                                                            _%g146247146251%_)
                                                     (cons _%g146246146249%_
                                                           _%g146247146251%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp149136
                                               '()
                                               _%L146197%_)))
                                           (__tmp149133
                                            (let ((__tmp149134
                                                   (lambda (_%g146253146256%_
                                                            _%g146254146258%_)
                                                     (cons _%g146253146256%_
                                                           _%g146254146258%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp149134
                                               '()
                                               _%L146195%_))))
                                       (declare (not safe))
                                       (__andmap2
                                        gx#free-identifier=?
                                        __tmp149135
                                        __tmp149133))
                                     (not (let ((__tmp149139
                                                 (lambda (_%g146260146262%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g146260146262%_
                                                      _%L146196%_))))
                                                (__tmp149137
                                                 (let ((__tmp149138
                                                        (lambda (_%g146264146267%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g146265146269%_)
                  (cons _%g146264146267%_ _%g146265146269%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp149138
                                                    '()
                                                    _%L146197%_))))
                                            (declare (not safe))
                                            (__find __tmp149139 __tmp149137))))
                                (_%__kont147832147833%_
                                 _%L146195%_
                                 _%L146196%_
                                 _%L146197%_)
                                (_%__match147873147874%_
                                 _%e145518146083%_
                                 _%hd145519146086%_
                                 _%tl145520146088%_
                                 _%__splice147834147835%_
                                 _%target145521146091%_
                                 _%tl145523146093%_)))
                          (_%__match147873147874%_
                           _%e145518146083%_
                           _%hd145519146086%_
                           _%tl145520146088%_
                           _%__splice147834147835%_
                           _%target145521146091%_
                           _%tl145523146093%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop145548146160%_
                                               _%target145545146155%_
                                               '()))
                                            (_%__match147873147874%_
                                             _%e145518146083%_
                                             _%hd145519146086%_
                                             _%tl145520146088%_
                                             _%__splice147834147835%_
                                             _%target145521146091%_
                                             _%tl145523146093%_))))
                                    (_%__match147873147874%_
                                     _%e145518146083%_
                                     _%hd145519146086%_
                                     _%tl145520146088%_
                                     _%__splice147834147835%_
                                     _%target145521146091%_
                                     _%tl145523146093%_))
                                (_%__match147873147874%_
                                 _%e145518146083%_
                                 _%hd145519146086%_
                                 _%tl145520146088%_
                                 _%__splice147834147835%_
                                 _%target145521146091%_
                                 _%tl145523146093%_))))
                        (_%__match147873147874%_
                         _%e145518146083%_
                         _%hd145519146086%_
                         _%tl145520146088%_
                         _%__splice147834147835%_
                         _%target145521146091%_
                         _%tl145523146093%_))
                    (_%__match147873147874%_
                     _%e145518146083%_
                     _%hd145519146086%_
                     _%tl145520146088%_
                     _%__splice147834147835%_
                     _%target145521146091%_
                     _%tl145523146093%_))
                (_%__match147873147874%_
                 _%e145518146083%_
                 _%hd145519146086%_
                 _%tl145520146088%_
                 _%__splice147834147835%_
                 _%target145521146091%_
                 _%tl145523146093%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match147873147874%_
                                                 _%e145518146083%_
                                                 _%hd145519146086%_
                                                 _%tl145520146088%_
                                                 _%__splice147834147835%_
                                                 _%target145521146091%_
                                                 _%tl145523146093%_))))
                                        (_%__match147873147874%_
                                         _%e145518146083%_
                                         _%hd145519146086%_
                                         _%tl145520146088%_
                                         _%__splice147834147835%_
                                         _%target145521146091%_
                                         _%tl145523146093%_))
                                    (_%__match147873147874%_
                                     _%e145518146083%_
                                     _%hd145519146086%_
                                     _%tl145520146088%_
                                     _%__splice147834147835%_
                                     _%target145521146091%_
                                     _%tl145523146093%_))
                                (_%__match147873147874%_
                                 _%e145518146083%_
                                 _%hd145519146086%_
                                 _%tl145520146088%_
                                 _%__splice147834147835%_
                                 _%target145521146091%_
                                 _%tl145523146093%_))))
                        (_%__match147873147874%_
                         _%e145518146083%_
                         _%hd145519146086%_
                         _%tl145520146088%_
                         _%__splice147834147835%_
                         _%target145521146091%_
                         _%tl145523146093%_))))
                (_%__match147873147874%_
                 _%e145518146083%_
                 _%hd145519146086%_
                 _%tl145520146088%_
                 _%__splice147834147835%_
                 _%target145521146091%_
                 _%tl145523146093%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop145524146096%_
                                     _%target145521146091%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx147830147831%_))
                              (let ((_%e145518146083%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx147830147831%_))))
                                (let ((_%tl145520146088%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145518146083%_)))
                                      (_%hd145519146086%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145518146083%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd145519146086%_))
                                      (let ((_%__splice147834147835%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd145519146086%_
                                                '0))))
                                        (let ((_%tl145523146093%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice147834147835%_
                                                  '1)))
                                              (_%target145521146091%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice147834147835%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl145523146093%_))
                                              (_%__match147861147862%_
                                               _%e145518146083%_
                                               _%hd145519146086%_
                                               _%tl145520146088%_
                                               _%__splice147834147835%_
                                               _%target145521146091%_
                                               _%tl145523146093%_)
                                              (_%__match147873147874%_
                                               _%e145518146083%_
                                               _%hd145519146086%_
                                               _%tl145520146088%_
                                               _%__splice147834147835%_
                                               _%target145521146091%_
                                               _%tl145523146093%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl145520146088%_))
                                          (let ((_%e145633145690%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl145520146088%_))))
                                            (let ((_%tl145635145695%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e145633145690%_)))
                                                  (_%hd145634145693%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e145633145690%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd145634145693%_))
                                                  (let ((_%e145636145698%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd145634145693%_))))
                                                    (let ((_%tl145638145703%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e145636145698%_)))
                                                          (_%hd145637145701%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e145636145698%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd145637145701%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd145637145701%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl145638145703%_))
                          (let ((_%e145639145706%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl145638145703%_))))
                            (let ((_%tl145641145711%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e145639145706%_)))
                                  (_%hd145640145709%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e145639145706%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd145640145709%_))
                                  (let ((_%e145642145714%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd145640145709%_))))
                                    (let ((_%tl145644145719%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e145642145714%_)))
                                          (_%hd145643145717%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e145642145714%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd145643145717%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd145643145717%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl145644145719%_))
                                                  (let ((_%e145645145722%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl145644145719%_))))
                                                    (let ((_%tl145647145727%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e145645145722%_)))
                                                          (_%hd145646145725%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e145645145722%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl145647145727%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl145641145711%_))
                      (let ((_%e145648145730%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl145641145711%_))))
                        (let ((_%tl145650145735%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145648145730%_)))
                              (_%hd145649145733%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145648145730%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd145649145733%_))
                              (let ((_%e145651145738%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd145649145733%_))))
                                (let ((_%tl145653145743%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145651145738%_)))
                                      (_%hd145652145741%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145651145738%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd145652145741%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd145652145741%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl145653145743%_))
                                              (let ((_%e145654145746%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl145653145743%_))))
                                                (let ((_%tl145656145751%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e145654145746%_)))
                                                      (_%hd145655145749%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e145654145746%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl145656145751%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl145650145735%_))
                                                          (let ((_%e145657145754%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl145650145735%_))))
                    (let ((_%tl145659145759%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e145657145754%_)))
                          (_%hd145658145757%_
                           (let ()
                             (declare (not safe))
                             (##car _%e145657145754%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd145658145757%_))
                          (let ((_%e145660145762%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd145658145757%_))))
                            (let ((_%tl145662145767%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e145660145762%_)))
                                  (_%hd145661145765%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e145660145762%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd145661145765%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _%hd145661145765%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl145662145767%_))
                                          (let ((_%e145663145770%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl145662145767%_))))
                                            (let ((_%tl145665145775%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e145663145770%_)))
                                                  (_%hd145664145773%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e145663145770%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl145665145775%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl145659145759%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl145635145695%_))
                                                          (_%__match147971147972%_
                                                           _%e145518146083%_
                                                           _%hd145519146086%_
                                                           _%tl145520146088%_
                                                           _%e145633145690%_
                                                           _%hd145634145693%_
                                                           _%tl145635145695%_
                                                           _%e145636145698%_
                                                           _%hd145637145701%_
                                                           _%tl145638145703%_
                                                           _%e145639145706%_
                                                           _%hd145640145709%_
                                                           _%tl145641145711%_
                                                           _%e145642145714%_
                                                           _%hd145643145717%_
                                                           _%tl145644145719%_
                                                           _%e145645145722%_
                                                           _%hd145646145725%_
                                                           _%tl145647145727%_
                                                           _%e145648145730%_
                                                           _%hd145649145733%_
                                                           _%tl145650145735%_
                                                           _%e145651145738%_
                                                           _%hd145652145741%_
                                                           _%tl145653145743%_
                                                           _%e145654145746%_
                                                           _%hd145655145749%_
                                                           _%tl145656145751%_
                                                           _%e145657145754%_
                                                           _%hd145658145757%_
                                                           _%tl145659145759%_
                                                           _%e145660145762%_
                                                           _%hd145661145765%_
                                                           _%tl145662145767%_
                                                           _%e145663145770%_
                                                           _%hd145664145773%_
                                                           _%tl145665145775%_)
                                                          (_%__kont147846147847%_))
                                                      (_%__kont147846147847%_))
                                                  (_%__kont147846147847%_))))
                                          (_%__kont147846147847%_))
                                      (_%__kont147846147847%_))
                                  (_%__kont147846147847%_))))
                          (_%__kont147846147847%_))))
                  (_%__kont147846147847%_))
              (_%__kont147846147847%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont147846147847%_))
                                          (_%__kont147846147847%_))
                                      (_%__kont147846147847%_))))
                              (_%__kont147846147847%_))))
                      (_%__kont147846147847%_))
                  (_%__kont147846147847%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont147846147847%_))
                                              (_%__kont147846147847%_))
                                          (_%__kont147846147847%_))))
                                  (_%__kont147846147847%_))))
                          (_%__kont147846147847%_))
                      (_%__kont147846147847%_))
                  (_%__kont147846147847%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont147846147847%_))))
                                          (_%__kont147846147847%_)))))
                              (_%__kont147846147847%_)))))))
                 (_%dispatch-case-e144818%_
                  (lambda (_%hd144969%_ _%body144970%_)
                    (let* ((_%form144972%_
                            (cons _%hd144969%_ (cons _%body144970%_ '())))
                           (_%__stx147974147975%_ _%form144972%_)
                           (_%g144976145100%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx147974147975%_)))))
                      (let ((_%__kont147976147977%_
                             (lambda (_%L145471%_ _%L145472%_ _%L145473%_)
                               (let ((__tmp149140
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L145472%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self144814%_
                                  __tmp149140))))
                            (_%__kont147982147983%_
                             (lambda (_%L145319%_
                                      _%L145320%_
                                      _%L145321%_
                                      _%L145322%_)
                               (let ((__tmp149141
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L145319%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self144814%_
                                  __tmp149141))))
                            (_%__kont147986147987%_
                             (lambda (_%L145185%_ _%L145186%_ _%L145187%_)
                               (let ((__tmp149142
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L145185%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self144814%_
                                  __tmp149142)))))
                        (let* ((_%__match148083148084%_
                                (lambda (_%e145066145105%_
                                         _%hd145067145108%_
                                         _%tl145068145110%_
                                         _%e145069145113%_
                                         _%hd145070145116%_
                                         _%tl145071145118%_
                                         _%e145072145121%_
                                         _%hd145073145124%_
                                         _%tl145074145126%_
                                         _%e145075145129%_
                                         _%hd145076145132%_
                                         _%tl145077145134%_
                                         _%e145078145137%_
                                         _%hd145079145140%_
                                         _%tl145080145142%_
                                         _%e145081145145%_
                                         _%hd145082145148%_
                                         _%tl145083145150%_
                                         _%e145084145153%_
                                         _%hd145085145156%_
                                         _%tl145086145158%_
                                         _%e145087145161%_
                                         _%hd145088145164%_
                                         _%tl145089145166%_
                                         _%e145090145169%_
                                         _%hd145091145172%_
                                         _%tl145092145174%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl145086145158%_))
                                      (let ((_%e145093145177%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl145086145158%_))))
                                        (let ((_%tl145095145182%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e145093145177%_)))
                                              (_%hd145094145180%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e145093145177%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl145095145182%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl145071145118%_))
                                                  (_%__kont147986147987%_
                                                   _%hd145091145172%_
                                                   _%hd145082145148%_
                                                   _%hd145067145108%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g144976145100%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g144976145100%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g144976145100%_)))))
                               (_%__match148013148014%_
                                (lambda (_%e145027145223%_
                                         _%hd145028145226%_
                                         _%tl145029145228%_
                                         _%__splice147984147985%_
                                         _%target145030145231%_
                                         _%tl145032145233%_)
                                  (letrec ((_%loop145033145236%_
                                            (lambda (_%hd145031145239%_
                                                     _%arg145037145241%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd145031145239%_))
                                                  (let ((_%e145034145244%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd145031145239%_))))
                                                    (let ((_%lp-tl145036145249%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e145034145244%_)))
                                                          (_%lp-hd145035145247%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e145034145244%_))))
                                                      (_%loop145033145236%_
                                                       _%lp-tl145036145249%_
                                                       (cons _%lp-hd145035145247%_
                                                             _%arg145037145241%_))))
                                                  (let ((_%arg145038145252%_
                                                         (reverse _%arg145037145241%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl145029145228%_))
                                                        (let ((_%e145039145255%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl145029145228%_))))
                  (let ((_%tl145041145260%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e145039145255%_)))
                        (_%hd145040145258%_
                         (let ()
                           (declare (not safe))
                           (##car _%e145039145255%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd145040145258%_))
                        (let ((_%e145042145263%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd145040145258%_))))
                          (let ((_%tl145044145268%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e145042145263%_)))
                                (_%hd145043145266%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e145042145263%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd145043145266%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd145043145266%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl145044145268%_))
                                        (let ((_%e145045145271%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl145044145268%_))))
                                          (let ((_%tl145047145276%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e145045145271%_)))
                                                (_%hd145046145274%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e145045145271%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd145046145274%_))
                                                (let ((_%e145048145279%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd145046145274%_))))
                                                  (let ((_%tl145050145284%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e145048145279%_)))
                                                        (_%hd145049145282%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e145048145279%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd145049145282%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd145049145282%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl145050145284%_))
                        (let ((_%e145051145287%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl145050145284%_))))
                          (let ((_%tl145053145292%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e145051145287%_)))
                                (_%hd145052145290%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e145051145287%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl145053145292%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl145047145276%_))
                                    (let ((_%e145054145295%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl145047145276%_))))
                                      (let ((_%tl145056145300%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e145054145295%_)))
                                            (_%hd145055145298%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e145054145295%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd145055145298%_))
                                            (let ((_%e145057145303%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd145055145298%_))))
                                              (let ((_%tl145059145308%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e145057145303%_)))
                                                    (_%hd145058145306%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e145057145303%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd145058145306%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd145058145306%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl145059145308%_))
                                                            (let ((_%e145060145311%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl145059145308%_))))
                      (let ((_%tl145062145316%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e145060145311%_)))
                            (_%hd145061145314%_
                             (let ()
                               (declare (not safe))
                               (##car _%e145060145311%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl145062145316%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl145041145260%_))
                                (_%__kont147982147983%_
                                 _%hd145061145314%_
                                 _%hd145052145290%_
                                 _%tl145032145233%_
                                 _%arg145038145252%_)
                                (_%__match148083148084%_
                                 _%e145027145223%_
                                 _%hd145028145226%_
                                 _%tl145029145228%_
                                 _%e145039145255%_
                                 _%hd145040145258%_
                                 _%tl145041145260%_
                                 _%e145042145263%_
                                 _%hd145043145266%_
                                 _%tl145044145268%_
                                 _%e145045145271%_
                                 _%hd145046145274%_
                                 _%tl145047145276%_
                                 _%e145048145279%_
                                 _%hd145049145282%_
                                 _%tl145050145284%_
                                 _%e145051145287%_
                                 _%hd145052145290%_
                                 _%tl145053145292%_
                                 _%e145054145295%_
                                 _%hd145055145298%_
                                 _%tl145056145300%_
                                 _%e145057145303%_
                                 _%hd145058145306%_
                                 _%tl145059145308%_
                                 _%e145060145311%_
                                 _%hd145061145314%_
                                 _%tl145062145316%_))
                            (let ()
                              (declare (not safe))
                              (_%g144976145100%_)))))
                    (let () (declare (not safe)) (_%g144976145100%_)))
                (let () (declare (not safe)) (_%g144976145100%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g144976145100%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g144976145100%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g144976145100%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g144976145100%_)))))
                        (let () (declare (not safe)) (_%g144976145100%_)))
                    (let () (declare (not safe)) (_%g144976145100%_)))
                (let () (declare (not safe)) (_%g144976145100%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g144976145100%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g144976145100%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g144976145100%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g144976145100%_)))))
                        (let () (declare (not safe)) (_%g144976145100%_)))))
                (let () (declare (not safe)) (_%g144976145100%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop145033145236%_
                                     _%target145030145231%_
                                     '()))))
                               (_%__match148001148002%_
                                (lambda (_%e144981145359%_
                                         _%hd144982145362%_
                                         _%tl144983145364%_
                                         _%__splice147978147979%_
                                         _%target144984145367%_
                                         _%tl144986145369%_)
                                  (letrec ((_%loop144987145372%_
                                            (lambda (_%hd144985145375%_
                                                     _%arg144991145377%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd144985145375%_))
                                                  (let ((_%e144988145380%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd144985145375%_))))
                                                    (let ((_%lp-tl144990145385%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e144988145380%_)))
                                                          (_%lp-hd144989145383%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e144988145380%_))))
                                                      (_%loop144987145372%_
                                                       _%lp-tl144990145385%_
                                                       (cons _%lp-hd144989145383%_
                                                             _%arg144991145377%_))))
                                                  (let ((_%arg144992145388%_
                                                         (reverse _%arg144991145377%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl144983145364%_))
                                                        (let ((_%e144993145391%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl144983145364%_))))
                  (let ((_%tl144995145396%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e144993145391%_)))
                        (_%hd144994145394%_
                         (let ()
                           (declare (not safe))
                           (##car _%e144993145391%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd144994145394%_))
                        (let ((_%e144996145399%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd144994145394%_))))
                          (let ((_%tl144998145404%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e144996145399%_)))
                                (_%hd144997145402%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e144996145399%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd144997145402%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd144997145402%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl144998145404%_))
                                        (let ((_%e144999145407%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl144998145404%_))))
                                          (let ((_%tl145001145412%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e144999145407%_)))
                                                (_%hd145000145410%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e144999145407%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd145000145410%_))
                                                (let ((_%e145002145415%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd145000145410%_))))
                                                  (let ((_%tl145004145420%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e145002145415%_)))
                                                        (_%hd145003145418%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e145002145415%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd145003145418%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd145003145418%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl145004145420%_))
                        (let ((_%e145005145423%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl145004145420%_))))
                          (let ((_%tl145007145428%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e145005145423%_)))
                                (_%hd145006145426%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e145005145423%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl145007145428%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl145001145412%_))
                                    (let ((_%__splice147980147981%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl145001145412%_
                                              '0))))
                                      (let ((_%tl145010145433%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice147980147981%_
                                                '1)))
                                            (_%target145008145431%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice147980147981%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl145010145433%_))
                                            (letrec ((_%loop145011145436%_
                                                      (lambda (_%hd145009145439%_
                                                               _%xarg145015145441%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd145009145439%_))
                                                            (let ((_%e145012145444%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd145009145439%_))))
                      (let ((_%lp-tl145014145449%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e145012145444%_)))
                            (_%lp-hd145013145447%_
                             (let ()
                               (declare (not safe))
                               (##car _%e145012145444%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd145013145447%_))
                            (let ((_%e145017145452%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd145013145447%_))))
                              (let ((_%tl145019145457%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e145017145452%_)))
                                    (_%hd145018145455%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e145017145452%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd145018145455%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd145018145455%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl145019145457%_))
                                            (let ((_%e145020145460%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl145019145457%_))))
                                              (let ((_%tl145022145465%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e145020145460%_)))
                                                    (_%hd145021145463%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e145020145460%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl145022145465%_))
                                                    (_%loop145011145436%_
                                                     _%lp-tl145014145449%_
                                                     (cons _%hd145021145463%_
                                                           _%xarg145015145441%_))
                                                    (_%__match148013148014%_
                                                     _%e144981145359%_
                                                     _%hd144982145362%_
                                                     _%tl144983145364%_
                                                     _%__splice147978147979%_
                                                     _%target144984145367%_
                                                     _%tl144986145369%_))))
                                            (_%__match148013148014%_
                                             _%e144981145359%_
                                             _%hd144982145362%_
                                             _%tl144983145364%_
                                             _%__splice147978147979%_
                                             _%target144984145367%_
                                             _%tl144986145369%_))
                                        (_%__match148013148014%_
                                         _%e144981145359%_
                                         _%hd144982145362%_
                                         _%tl144983145364%_
                                         _%__splice147978147979%_
                                         _%target144984145367%_
                                         _%tl144986145369%_))
                                    (_%__match148013148014%_
                                     _%e144981145359%_
                                     _%hd144982145362%_
                                     _%tl144983145364%_
                                     _%__splice147978147979%_
                                     _%target144984145367%_
                                     _%tl144986145369%_))))
                            (_%__match148013148014%_
                             _%e144981145359%_
                             _%hd144982145362%_
                             _%tl144983145364%_
                             _%__splice147978147979%_
                             _%target144984145367%_
                             _%tl144986145369%_))))
                    (let ((_%xarg145016145468%_
                           (reverse _%xarg145015145441%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl144995145396%_))
                          (_%__kont147976147977%_
                           _%xarg145016145468%_
                           _%hd145006145426%_
                           _%arg144992145388%_)
                          (_%__match148013148014%_
                           _%e144981145359%_
                           _%hd144982145362%_
                           _%tl144983145364%_
                           _%__splice147978147979%_
                           _%target144984145367%_
                           _%tl144986145369%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop145011145436%_
                                               _%target145008145431%_
                                               '()))
                                            (_%__match148013148014%_
                                             _%e144981145359%_
                                             _%hd144982145362%_
                                             _%tl144983145364%_
                                             _%__splice147978147979%_
                                             _%target144984145367%_
                                             _%tl144986145369%_))))
                                    (_%__match148013148014%_
                                     _%e144981145359%_
                                     _%hd144982145362%_
                                     _%tl144983145364%_
                                     _%__splice147978147979%_
                                     _%target144984145367%_
                                     _%tl144986145369%_))
                                (_%__match148013148014%_
                                 _%e144981145359%_
                                 _%hd144982145362%_
                                 _%tl144983145364%_
                                 _%__splice147978147979%_
                                 _%target144984145367%_
                                 _%tl144986145369%_))))
                        (_%__match148013148014%_
                         _%e144981145359%_
                         _%hd144982145362%_
                         _%tl144983145364%_
                         _%__splice147978147979%_
                         _%target144984145367%_
                         _%tl144986145369%_))
                    (_%__match148013148014%_
                     _%e144981145359%_
                     _%hd144982145362%_
                     _%tl144983145364%_
                     _%__splice147978147979%_
                     _%target144984145367%_
                     _%tl144986145369%_))
                (_%__match148013148014%_
                 _%e144981145359%_
                 _%hd144982145362%_
                 _%tl144983145364%_
                 _%__splice147978147979%_
                 _%target144984145367%_
                 _%tl144986145369%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match148013148014%_
                                                 _%e144981145359%_
                                                 _%hd144982145362%_
                                                 _%tl144983145364%_
                                                 _%__splice147978147979%_
                                                 _%target144984145367%_
                                                 _%tl144986145369%_))))
                                        (_%__match148013148014%_
                                         _%e144981145359%_
                                         _%hd144982145362%_
                                         _%tl144983145364%_
                                         _%__splice147978147979%_
                                         _%target144984145367%_
                                         _%tl144986145369%_))
                                    (_%__match148013148014%_
                                     _%e144981145359%_
                                     _%hd144982145362%_
                                     _%tl144983145364%_
                                     _%__splice147978147979%_
                                     _%target144984145367%_
                                     _%tl144986145369%_))
                                (_%__match148013148014%_
                                 _%e144981145359%_
                                 _%hd144982145362%_
                                 _%tl144983145364%_
                                 _%__splice147978147979%_
                                 _%target144984145367%_
                                 _%tl144986145369%_))))
                        (_%__match148013148014%_
                         _%e144981145359%_
                         _%hd144982145362%_
                         _%tl144983145364%_
                         _%__splice147978147979%_
                         _%target144984145367%_
                         _%tl144986145369%_))))
                (_%__match148013148014%_
                 _%e144981145359%_
                 _%hd144982145362%_
                 _%tl144983145364%_
                 _%__splice147978147979%_
                 _%target144984145367%_
                 _%tl144986145369%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop144987145372%_
                                     _%target144984145367%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx147974147975%_))
                              (let ((_%e144981145359%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx147974147975%_))))
                                (let ((_%tl144983145364%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e144981145359%_)))
                                      (_%hd144982145362%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e144981145359%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd144982145362%_))
                                      (let ((_%__splice147978147979%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd144982145362%_
                                                '0))))
                                        (let ((_%tl144986145369%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice147978147979%_
                                                  '1)))
                                              (_%target144984145367%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice147978147979%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl144986145369%_))
                                              (_%__match148001148002%_
                                               _%e144981145359%_
                                               _%hd144982145362%_
                                               _%tl144983145364%_
                                               _%__splice147978147979%_
                                               _%target144984145367%_
                                               _%tl144986145369%_)
                                              (_%__match148013148014%_
                                               _%e144981145359%_
                                               _%hd144982145362%_
                                               _%tl144983145364%_
                                               _%__splice147978147979%_
                                               _%target144984145367%_
                                               _%tl144986145369%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl144983145364%_))
                                          (let ((_%e145069145113%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl144983145364%_))))
                                            (let ((_%tl145071145118%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e145069145113%_)))
                                                  (_%hd145070145116%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e145069145113%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd145070145116%_))
                                                  (let ((_%e145072145121%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd145070145116%_))))
                                                    (let ((_%tl145074145126%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e145072145121%_)))
                                                          (_%hd145073145124%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e145072145121%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd145073145124%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd145073145124%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl145074145126%_))
                          (let ((_%e145075145129%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl145074145126%_))))
                            (let ((_%tl145077145134%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e145075145129%_)))
                                  (_%hd145076145132%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e145075145129%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd145076145132%_))
                                  (let ((_%e145078145137%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd145076145132%_))))
                                    (let ((_%tl145080145142%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e145078145137%_)))
                                          (_%hd145079145140%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e145078145137%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd145079145140%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd145079145140%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl145080145142%_))
                                                  (let ((_%e145081145145%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl145080145142%_))))
                                                    (let ((_%tl145083145150%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e145081145145%_)))
                                                          (_%hd145082145148%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e145081145145%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl145083145150%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl145077145134%_))
                      (let ((_%e145084145153%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl145077145134%_))))
                        (let ((_%tl145086145158%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145084145153%_)))
                              (_%hd145085145156%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145084145153%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd145085145156%_))
                              (let ((_%e145087145161%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd145085145156%_))))
                                (let ((_%tl145089145166%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145087145161%_)))
                                      (_%hd145088145164%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145087145161%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd145088145164%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd145088145164%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl145089145166%_))
                                              (let ((_%e145090145169%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl145089145166%_))))
                                                (let ((_%tl145092145174%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e145090145169%_)))
                                                      (_%hd145091145172%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e145090145169%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl145092145174%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl145086145158%_))
                                                          (let ((_%e145093145177%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl145086145158%_))))
                    (let ((_%tl145095145182%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e145093145177%_)))
                          (_%hd145094145180%_
                           (let ()
                             (declare (not safe))
                             (##car _%e145093145177%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl145095145182%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl145071145118%_))
                              (_%__kont147986147987%_
                               _%hd145091145172%_
                               _%hd145082145148%_
                               _%hd144982145362%_)
                              (let ()
                                (declare (not safe))
                                (_%g144976145100%_)))
                          (let () (declare (not safe)) (_%g144976145100%_)))))
                  (let () (declare (not safe)) (_%g144976145100%_)))
              (let () (declare (not safe)) (_%g144976145100%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g144976145100%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g144976145100%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g144976145100%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g144976145100%_)))))
                      (let () (declare (not safe)) (_%g144976145100%_)))
                  (let () (declare (not safe)) (_%g144976145100%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g144976145100%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g144976145100%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g144976145100%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g144976145100%_)))))
                          (let () (declare (not safe)) (_%g144976145100%_)))
                      (let () (declare (not safe)) (_%g144976145100%_)))
                  (let () (declare (not safe)) (_%g144976145100%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g144976145100%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g144976145100%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g144976145100%_))))))))
                 (_%generate1144819%_
                  (lambda (_%args144954%_
                           _%arglen144955%_
                           _%hd144956%_
                           _%body144957%_)
                    (let* ((_%len144959%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-length _%hd144956%_)))
                           (_%condition144964%_
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _%hd144956%_))
                                (if (gxc#current-compile-decls-unsafe?)
                                    (cons '##fx=
                                          (cons _%arglen144955%_
                                                (cons _%len144959%_ '())))
                                    (cons 'let
                                          (cons '()
                                                (cons '(declare (not safe))
                                                      (cons (cons '##fx=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%arglen144955%_ (cons _%len144959%_ '())))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (if (> _%len144959%_ '0)
                                    (if (gxc#current-compile-decls-unsafe?)
                                        (cons '##fx>=
                                              (cons _%arglen144955%_
                                                    (cons _%len144959%_ '())))
                                        (cons 'let
                                              (cons '()
                                                    (cons '(declare (not safe))
                                                          (cons (cons '##fx>=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%arglen144955%_ (cons _%len144959%_ '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '#t)))
                           (_%dispatch144966%_
                            (if (_%dispatch-case?144817%_
                                 _%hd144956%_
                                 _%body144957%_)
                                (_%dispatch-case-e144818%_
                                 _%hd144956%_
                                 _%body144957%_)
                                (gxc#generate-runtime-lambda-form
                                 _%self144814%_
                                 _%hd144956%_
                                 _%body144957%_))))
                      (cons _%condition144964%_
                            (cons (cons 'apply
                                        (cons _%dispatch144966%_
                                              (cons _%args144954%_ '())))
                                  '()))))))
          (let* ((_%g144821144849%_
                  (lambda (_%g144822144846%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g144822144846%_))))
                 (_%g144820144951%_
                  (lambda (_%g144822144852%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g144822144852%_))
                        (let ((_%e144825144854%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g144822144852%_))))
                          (let ((_%hd144826144857%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e144825144854%_)))
                                (_%tl144827144859%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e144825144854%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl144827144859%_))
                                (let ((_g149143_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl144827144859%_
                                          '0))))
                                  (begin
                                    (let ((_g149144_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g149143_)
                                                 (##vector-length _g149143_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g149144_ 2)))
                                          (error "Context expects 2 values"
                                                 _g149144_)))
                                    (let ((_%target144828144862%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g149143_ 0)))
                                          (_%tl144830144864%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g149143_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl144830144864%_))
                                          (letrec ((_%loop144831144867%_
                                                    (lambda (_%hd144829144870%_
                                                             _%body144835144872%_
                                                             _%hd144836144874%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd144829144870%_))
                                                          (let ((_%e144832144877%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd144829144870%_))))
                    (let ((_%lp-hd144833144880%_
                           (let ()
                             (declare (not safe))
                             (##car _%e144832144877%_)))
                          (_%lp-tl144834144882%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e144832144877%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd144833144880%_))
                          (let ((_%e144839144885%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd144833144880%_))))
                            (let ((_%hd144840144888%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e144839144885%_)))
                                  (_%tl144841144890%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e144839144885%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl144841144890%_))
                                  (let ((_%e144842144893%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl144841144890%_))))
                                    (let ((_%hd144843144896%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e144842144893%_)))
                                          (_%tl144844144898%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e144842144893%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl144844144898%_))
                                          (_%loop144831144867%_
                                           _%lp-tl144834144882%_
                                           (cons _%hd144843144896%_
                                                 _%body144835144872%_)
                                           (cons _%hd144840144888%_
                                                 _%hd144836144874%_))
                                          (_%g144821144849%_
                                           _%g144822144852%_))))
                                  (_%g144821144849%_ _%g144822144852%_))))
                          (_%g144821144849%_ _%g144822144852%_))))
                  (let ((_%body144837144901%_ (reverse _%body144835144872%_))
                        (_%hd144838144903%_ (reverse _%hd144836144874%_)))
                    ((lambda (_%L144906%_ _%L144907%_)
                       (let ((_%args144926%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%arglen144927%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%name144928%_
                              (let ((_%$e144923%_
                                     (let ((__tmp149145
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-runtime-names))))
                                       (declare (not safe))
                                       (hash-get __tmp149145 _%stx144815%_))))
                                (if _%$e144923%_
                                    _%$e144923%_
                                    ''case-lambda-dispatch))))
                         (cons 'lambda
                               (cons _%args144926%_
                                     (cons (cons 'let
                                                 (cons (cons (cons _%arglen144927%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (gxc#current-compile-decls-unsafe?)
                                     (cons '##length (cons _%args144926%_ '()))
                                     (cons 'let
                                           (cons '()
                                                 (cons '(declare (not safe))
                                                       (cons (cons '##length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%args144926%_ '()))
                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 '()))
                     '())
               (cons (cons 'cond
                           (let ((__tmp149149
                                  (cons (cons 'else
                                              (cons (cons '##raise-wrong-number-of-arguments-exception
                                                          (cons _%name144928%_
                                                                (cons _%args144926%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '()))
                                 (__tmp149146
                                  (map (lambda (_%g144929144932%_
                                                _%g144930144934%_)
                                         (_%generate1144819%_
                                          _%args144926%_
                                          _%arglen144927%_
                                          _%g144929144932%_
                                          _%g144930144934%_))
                                       (let ((__tmp149147
                                              (lambda (_%g144936144939%_
                                                       _%g144937144941%_)
                                                (cons _%g144936144939%_
                                                      _%g144937144941%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp149147
                                          '()
                                          _%L144907%_))
                                       (let ((__tmp149148
                                              (lambda (_%g144943144946%_
                                                       _%g144944144948%_)
                                                (cons _%g144943144946%_
                                                      _%g144944144948%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp149148
                                          '()
                                          _%L144906%_)))))
                             (declare (not safe))
                             (__foldr1 cons __tmp149149 __tmp149146)))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))
                     _%body144837144901%_
                     _%hd144838144903%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop144831144867%_
                                             _%target144828144862%_
                                             '()
                                             '()))
                                          (_%g144821144849%_
                                           _%g144822144852%_)))))
                                (_%g144821144849%_ _%g144822144852%_))))
                        (_%g144821144849%_ _%g144822144852%_)))))
            (_%g144820144951%_ _%stx144815%_)))))
    (define gxc#generate-runtime-let-values%__%
      (lambda (_%self144051%_ _%stx144052%_ _%compiled-body?144053%_)
        (letrec ((_%generate-simple144055%_
                  (lambda (_%hd144799%_ _%body144800%_)
                    (_%coalesce-boolean144056%_
                     (_%simplify-let144057%_
                      (gxc#generate-runtime-simple-let
                       _%self144051%_
                       'let
                       _%hd144799%_
                       _%body144800%_
                       _%compiled-body?144053%_)))))
                 (_%coalesce-boolean144056%_
                  (lambda (_%code144660%_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-boolean-context))
                        (let* ((_%code144661144687%_ _%code144660%_)
                               (_%else144663144695%_
                                (lambda () _%code144660%_))
                               (_%K144665144732%_
                                (lambda (_%expr2144698%_
                                         _%expr1144699%_
                                         _%id144700%_)
                                  (let* ((_%expr2144701144709%_
                                          _%expr2144698%_)
                                         (_%else144703144717%_
                                          (lambda ()
                                            (cons 'or
                                                  (cons _%expr1144699%_
                                                        (cons _%expr2144698%_
                                                              '())))))
                                         (_%K144705144722%_
                                          (lambda (_%exprs144720%_)
                                            (cons 'or
                                                  (cons _%expr1144699%_
                                                        _%exprs144720%_)))))
                                    (if (pair? _%expr2144701144709%_)
                                        (let ((_%hd144706144725%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%expr2144701144709%_)))
                                              (_%tl144707144727%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%expr2144701144709%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd144706144725%_ 'or))
                                              (let ((_%exprs144730%_
                                                     _%tl144707144727%_))
                                                (_%K144705144722%_
                                                 _%exprs144730%_))
                                              (_%else144703144717%_)))
                                        (_%else144703144717%_))))))
                          (if (pair? _%code144661144687%_)
                              (let ((_%hd144666144735%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%code144661144687%_)))
                                    (_%tl144667144737%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%code144661144687%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%hd144666144735%_ 'let))
                                    (if (pair? _%tl144667144737%_)
                                        (let ((_%hd144668144740%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%tl144667144737%_)))
                                              (_%tl144669144742%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%tl144667144737%_))))
                                          (if (pair? _%hd144668144740%_)
                                              (let ((_%hd144680144745%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%hd144668144740%_)))
                                                    (_%tl144681144747%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%hd144668144740%_))))
                                                (if (pair? _%hd144680144745%_)
                                                    (let ((_%hd144682144750%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%hd144680144745%_)))
                                                          (_%tl144683144752%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%hd144680144745%_))))
                                                      (let ((_%id144755%_
                                                             _%hd144682144750%_))
                                                        (if (pair? _%tl144683144752%_)
                                                            (let ((_%hd144684144757%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##car _%tl144683144752%_)))
                          (_%tl144685144759%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl144683144752%_))))
                      (let ((_%expr1144762%_ _%hd144684144757%_))
                        (if (null? _%tl144685144759%_)
                            (if (null? _%tl144681144747%_)
                                (if (pair? _%tl144669144742%_)
                                    (let ((_%hd144670144764%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl144669144742%_)))
                                          (_%tl144671144766%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl144669144742%_))))
                                      (if (pair? _%hd144670144764%_)
                                          (let ((_%hd144672144769%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd144670144764%_)))
                                                (_%tl144673144771%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd144670144764%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd144672144769%_
                                                         'if))
                                                (if (pair? _%tl144673144771%_)
                                                    (let ((_%hd144674144774%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl144673144771%_)))
                                                          (_%tl144675144776%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl144673144771%_))))
                                                      (if ((lambda (_%g144778144780%_)
                                                             (eq? _%g144778144780%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id144755%_))
                   _%hd144674144774%_)
                  (if (pair? _%tl144675144776%_)
                      (let ((_%hd144676144783%_
                             (let ()
                               (declare (not safe))
                               (##car _%tl144675144776%_)))
                            (_%tl144677144785%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%tl144675144776%_))))
                        (if ((lambda (_%g144787144789%_)
                               (eq? _%g144787144789%_ _%id144755%_))
                             _%hd144676144783%_)
                            (if (pair? _%tl144677144785%_)
                                (let ((_%hd144678144792%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl144677144785%_)))
                                      (_%tl144679144794%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl144677144785%_))))
                                  (let ((_%expr2144797%_ _%hd144678144792%_))
                                    (if (null? _%tl144679144794%_)
                                        (if (null? _%tl144671144766%_)
                                            (_%K144665144732%_
                                             _%expr2144797%_
                                             _%expr1144762%_
                                             _%id144755%_)
                                            (_%else144663144695%_))
                                        (_%else144663144695%_))))
                                (_%else144663144695%_))
                            (_%else144663144695%_)))
                      (_%else144663144695%_))
                  (_%else144663144695%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else144663144695%_))
                                                (_%else144663144695%_)))
                                          (_%else144663144695%_)))
                                    (_%else144663144695%_))
                                (_%else144663144695%_))
                            (_%else144663144695%_))))
                    (_%else144663144695%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else144663144695%_)))
                                              (_%else144663144695%_)))
                                        (_%else144663144695%_))
                                    (_%else144663144695%_)))
                              (_%else144663144695%_)))
                        _%code144660%_)))
                 (_%simplify-let144057%_
                  (lambda (_%code144359%_)
                    (let* ((_%code144360144432%_ _%code144359%_)
                           (_%else144365144440%_ (lambda () _%code144359%_)))
                      (let ((_%K144424144640%_
                             (lambda (_%expr144638%_) _%expr144638%_))
                            (_%K144407144586%_
                             (lambda (_%body144582%_
                                      _%expr144583%_
                                      _%id144584%_)
                               (cons 'let
                                     (cons (cons (cons _%id144584%_
                                                       (cons _%expr144583%_
                                                             '()))
                                                 '())
                                           _%body144582%_))))
                            (_%K144384144510%_
                             (lambda (_%body144504%_
                                      _%expr2144505%_
                                      _%id2144506%_
                                      _%expr1144507%_
                                      _%id1144508%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1144508%_
                                                       (cons _%expr1144507%_
                                                             '()))
                                                 (cons (cons _%id2144506%_
                                                             (cons _%expr2144505%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body144504%_))))
                            (_%K144367144449%_
                             (lambda (_%body144444%_
                                      _%bind144445%_
                                      _%expr1144446%_
                                      _%id1144447%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1144447%_
                                                       (cons _%expr1144446%_
                                                             '()))
                                                 _%bind144445%_)
                                           _%body144444%_)))))
                        (if (pair? _%code144360144432%_)
                            (let ((_%tl144426144645%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%code144360144432%_)))
                                  (_%hd144425144643%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%code144360144432%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd144425144643%_ 'let))
                                  (if (pair? _%tl144426144645%_)
                                      (let ((_%tl144428144650%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%tl144426144645%_)))
                                            (_%hd144427144648%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%tl144426144645%_))))
                                        (if (null? _%hd144427144648%_)
                                            (if (pair? _%tl144428144650%_)
                                                (let ((_%tl144430144655%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%tl144428144650%_)))
                                                      (_%hd144429144653%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%tl144428144650%_))))
                                                  (if (null? _%tl144430144655%_)
                                                      (let ((_%expr144658%_
                                                             _%hd144429144653%_))
                                                        (_%K144424144640%_
                                                         _%expr144658%_))
                                                      (_%else144365144440%_)))
                                                (_%else144365144440%_))
                                            (if (pair? _%hd144427144648%_)
                                                (let ((_%tl144419144601%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd144427144648%_)))
                                                      (_%hd144418144599%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd144427144648%_))))
                                                  (if (pair? _%hd144418144599%_)
                                                      (let ((_%tl144421144606%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%hd144418144599%_)))
                    (_%hd144420144604%_
                     (let () (declare (not safe)) (##car _%hd144418144599%_))))
                (if (pair? _%tl144421144606%_)
                    (let ((_%tl144423144613%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl144421144606%_)))
                          (_%hd144422144611%_
                           (let ()
                             (declare (not safe))
                             (##car _%tl144421144606%_))))
                      (if (null? _%tl144423144613%_)
                          (if (null? _%tl144419144601%_)
                              (if (pair? _%tl144428144650%_)
                                  (let ((_%tl144413144620%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl144428144650%_)))
                                        (_%hd144412144618%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl144428144650%_))))
                                    (if (pair? _%hd144412144618%_)
                                        (let ((_%tl144415144625%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%hd144412144618%_)))
                                              (_%hd144414144623%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%hd144412144618%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd144414144623%_
                                                       'let))
                                              (if (pair? _%tl144415144625%_)
                                                  (let ((_%tl144417144630%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl144415144625%_)))
                                                        (_%hd144416144628%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl144415144625%_))))
                                                    (if (null? _%hd144416144628%_)
                                                        (if (null? _%tl144413144620%_)
                                                            (let ((_%id144609%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%hd144420144604%_)
                          (_%expr144616%_ _%hd144422144611%_)
                          (_%body144633%_ _%tl144417144630%_))
                      (_%K144407144586%_
                       _%body144633%_
                       _%expr144616%_
                       _%id144609%_))
                    (_%else144365144440%_))
                (if (pair? _%hd144416144628%_)
                    (let ((_%tl144396144559%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%hd144416144628%_)))
                          (_%hd144395144557%_
                           (let ()
                             (declare (not safe))
                             (##car _%hd144416144628%_))))
                      (if (pair? _%hd144395144557%_)
                          (let ((_%tl144398144564%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd144395144557%_)))
                                (_%hd144397144562%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd144395144557%_))))
                            (if (pair? _%tl144398144564%_)
                                (let ((_%tl144400144571%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl144398144564%_)))
                                      (_%hd144399144569%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl144398144564%_))))
                                  (if (null? _%tl144400144571%_)
                                      (if (null? _%tl144396144559%_)
                                          (if (null? _%tl144413144620%_)
                                              (let ((_%id1144533%_
                                                     _%hd144420144604%_)
                                                    (_%expr1144540%_
                                                     _%hd144422144611%_)
                                                    (_%id2144567%_
                                                     _%hd144397144562%_)
                                                    (_%expr2144574%_
                                                     _%hd144399144569%_)
                                                    (_%body144576%_
                                                     _%tl144417144630%_))
                                                (_%K144384144510%_
                                                 _%body144576%_
                                                 _%expr2144574%_
                                                 _%id2144567%_
                                                 _%expr1144540%_
                                                 _%id1144533%_))
                                              (_%else144365144440%_))
                                          (_%else144365144440%_))
                                      (_%else144365144440%_)))
                                (_%else144365144440%_)))
                          (_%else144365144440%_)))
                    (_%else144365144440%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else144365144440%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##eq? _%hd144414144623%_
                                                           'let*))
                                                  (if (pair? _%tl144415144625%_)
                                                      (let ((_%tl144377144493%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%tl144415144625%_)))
                    (_%hd144376144491%_
                     (let () (declare (not safe)) (##car _%tl144415144625%_))))
                (if (null? _%tl144413144620%_)
                    (let ((_%id1144472%_ _%hd144420144604%_)
                          (_%expr1144479%_ _%hd144422144611%_)
                          (_%bind144496%_ _%hd144376144491%_)
                          (_%body144498%_ _%tl144377144493%_))
                      (_%K144367144449%_
                       _%body144498%_
                       _%bind144496%_
                       _%expr1144479%_
                       _%id1144472%_))
                    (_%else144365144440%_)))
              (_%else144365144440%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else144365144440%_))))
                                        (_%else144365144440%_)))
                                  (_%else144365144440%_))
                              (_%else144365144440%_))
                          (_%else144365144440%_)))
                    (_%else144365144440%_)))
              (_%else144365144440%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else144365144440%_))))
                                      (_%else144365144440%_))
                                  (_%else144365144440%_)))
                            (_%else144365144440%_))))))
                 (_%generate-values144058%_
                  (lambda (_%hd144172%_ _%body144173%_)
                    (let _%lp144175%_ ((_%rest144177%_ _%hd144172%_)
                                       (_%bind144178%_ '())
                                       (_%check144179%_ '())
                                       (_%post144180%_ '()))
                      (let* ((_%__stx148303148304%_ _%rest144177%_)
                             (_%g144183144194%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx148303148304%_)))))
                        (let ((_%__kont148305148306%_
                               (lambda (_%L144221%_ _%L144222%_)
                                 (let* ((_%__stx148259148260%_ _%L144222%_)
                                        (_%g144237144262%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx148259148260%_)))))
                                   (let ((_%__kont148261148262%_
                                          (lambda (_%L144335%_ _%L144336%_)
                                            (let ((_%eid144350%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%L144336%_)))
                                                  (_%expr144351%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self144051%_
                                                      _%L144335%_))))
                                              (_%lp144175%_
                                               _%L144221%_
                                               (cons (cons _%eid144350%_
                                                           (cons _%expr144351%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind144178%_)
                                               _%check144179%_
                                               _%post144180%_))))
                                         (_%__kont148263148264%_
                                          (lambda (_%L144283%_ _%L144284%_)
                                            (let* ((_%vals144297%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values144299%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals144297%_
                                                     _%L144284%_
                                                     _%L144283%_))
                                                   (_%refs144301%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals144297%_
                                                     _%L144284%_))
                                                   (_%expr144303%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self144051%_
                                                       _%L144283%_))))
                                              (_%lp144175%_
                                               _%L144221%_
                                               (cons (cons _%vals144297%_
                                                           (cons _%expr144303%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind144178%_)
                                               (cons _%check-values144299%_
                                                     _%check144179%_)
                                               (cons _%refs144301%_
                                                     _%post144180%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx148259148260%_))
                                         (let ((_%e144241144311%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx148259148260%_))))
                                           (let ((_%tl144243144316%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e144241144311%_)))
                                                 (_%hd144242144314%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e144241144311%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd144242144314%_))
                                                 (let ((_%e144244144319%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd144242144314%_))))
                                                   (let ((_%tl144246144324%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e144244144319%_)))
                                                         (_%hd144245144322%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e144244144319%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl144246144324%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl144243144316%_))
                     (let ((_%e144247144327%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl144243144316%_))))
                       (let ((_%tl144249144332%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e144247144327%_)))
                             (_%hd144248144330%_
                              (let ()
                                (declare (not safe))
                                (##car _%e144247144327%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl144249144332%_))
                             (_%__kont148261148262%_
                              _%hd144248144330%_
                              _%hd144245144322%_)
                             (let ()
                               (declare (not safe))
                               (_%g144237144262%_)))))
                     (let () (declare (not safe)) (_%g144237144262%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl144243144316%_))
                     (let ((_%e144255144275%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl144243144316%_))))
                       (let ((_%tl144257144280%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e144255144275%_)))
                             (_%hd144256144278%_
                              (let ()
                                (declare (not safe))
                                (##car _%e144255144275%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl144257144280%_))
                             (_%__kont148263148264%_
                              _%hd144256144278%_
                              _%hd144242144314%_)
                             (let ()
                               (declare (not safe))
                               (_%g144237144262%_)))))
                     (let () (declare (not safe)) (_%g144237144262%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl144243144316%_))
                                                     (let ((_%e144255144275%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl144243144316%_))))
                                                       (let ((_%tl144257144280%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e144255144275%_)))
                     (_%hd144256144278%_
                      (let () (declare (not safe)) (##car _%e144255144275%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl144257144280%_))
                     (_%__kont148263148264%_
                      _%hd144256144278%_
                      _%hd144242144314%_)
                     (let () (declare (not safe)) (_%g144237144262%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g144237144262%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g144237144262%_)))))))
                              (_%__kont148307148308%_
                               (lambda ()
                                 (let* ((_%body144201%_
                                         (if _%compiled-body?144053%_
                                             _%body144173%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self144051%_
                                                _%body144173%_))))
                                        (_%body144203%_
                                         (_%generate-values-post144059%_
                                          _%post144180%_
                                          _%body144201%_))
                                        (_%body144205%_
                                         (_%generate-values-check144060%_
                                          _%check144179%_
                                          _%body144203%_)))
                                   (cons 'let
                                         (cons (reverse _%bind144178%_)
                                               (cons _%body144205%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx148303148304%_))
                              (let ((_%e144187144213%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx148303148304%_))))
                                (let ((_%tl144189144218%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e144187144213%_)))
                                      (_%hd144188144216%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e144187144213%_))))
                                  (_%__kont148305148306%_
                                   _%tl144189144218%_
                                   _%hd144188144216%_)))
                              (_%__kont148307148308%_)))))))
                 (_%generate-values-post144059%_
                  (lambda (_%post144131%_ _%body144132%_)
                    (let _%lp144134%_ ((_%rest144136%_ _%post144131%_)
                                       (_%body144137%_ _%body144132%_))
                      (let* ((_%rest144138144146%_ _%rest144136%_)
                             (_%else144140144154%_ (lambda () _%body144137%_))
                             (_%K144142144160%_
                              (lambda (_%rest144157%_ _%bind144158%_)
                                (_%lp144134%_
                                 _%rest144157%_
                                 (cons 'let
                                       (cons _%bind144158%_
                                             (cons _%body144137%_ '())))))))
                        (if (pair? _%rest144138144146%_)
                            (let ((_%hd144143144163%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest144138144146%_)))
                                  (_%tl144144144165%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest144138144146%_))))
                              (let* ((_%bind144168%_ _%hd144143144163%_)
                                     (_%rest144170%_ _%tl144144144165%_))
                                (_%K144142144160%_
                                 _%rest144170%_
                                 _%bind144168%_)))
                            (_%else144140144154%_))))))
                 (_%generate-values-check144060%_
                  (lambda (_%check144128%_ _%body144129%_)
                    (cons 'begin
                          (let ((__tmp149151 (cons _%body144129%_ '()))
                                (__tmp149150 (reverse _%check144128%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp149151 __tmp149150))))))
          (let* ((_%g144062144079%_
                  (lambda (_%g144063144076%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g144063144076%_))))
                 (_%g144061144125%_
                  (lambda (_%g144063144082%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g144063144082%_))
                        (let ((_%e144066144084%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g144063144082%_))))
                          (let ((_%hd144067144087%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e144066144084%_)))
                                (_%tl144068144089%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e144066144084%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl144068144089%_))
                                (let ((_%e144069144092%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl144068144089%_))))
                                  (let ((_%hd144070144095%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e144069144092%_)))
                                        (_%tl144071144097%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e144069144092%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl144071144097%_))
                                        (let ((_%e144072144100%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl144071144097%_))))
                                          (let ((_%hd144073144103%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e144072144100%_)))
                                                (_%tl144074144105%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e144072144100%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl144074144105%_))
                                                ((lambda (_%L144108%_
                                                          _%L144109%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%L144109%_)
                                                       (_%generate-simple144055%_
                                                        _%L144109%_
                                                        _%L144108%_)
                                                       (_%generate-values144058%_
                                                        _%L144109%_
                                                        _%L144108%_)))
                                                 _%hd144073144103%_
                                                 _%hd144070144095%_)
                                                (_%g144062144079%_
                                                 _%g144063144082%_))))
                                        (_%g144062144079%_
                                         _%g144063144082%_))))
                                (_%g144062144079%_ _%g144063144082%_))))
                        (_%g144062144079%_ _%g144063144082%_)))))
            (_%g144061144125%_ _%stx144052%_)))))
    (define gxc#generate-runtime-let-values%__0
      (lambda (_%self144805%_ _%stx144806%_)
        (let ((_%compiled-body?144808%_ '#f))
          (gxc#generate-runtime-let-values%__%
           _%self144805%_
           _%stx144806%_
           _%compiled-body?144808%_))))
    (define gxc#generate-runtime-let-values%
      (lambda _g149153_
        (let ((_g149152_ (let () (declare (not safe)) (##length _g149153_))))
          (cond ((let () (declare (not safe)) (##fx= _g149152_ 2))
                 (apply gxc#generate-runtime-let-values%__0 _g149153_))
                ((let () (declare (not safe)) (##fx= _g149152_ 3))
                 (apply gxc#generate-runtime-let-values%__% _g149153_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-let-values%
                  _g149153_))))))
    (define gxc#generate-runtime-let-values-bind
      (lambda (_%vals143945%_ _%hd143946%_)
        (let _%lp143948%_ ((_%rest143950%_ _%hd143946%_)
                           (_%k143951%_ '0)
                           (_%r143952%_ '()))
          (let* ((_%__stx148317148318%_ _%rest143950%_)
                 (_%g143957143974%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx148317148318%_)))))
            (let ((_%__kont148319148320%_
                   (lambda (_%L144037%_)
                     (_%lp143948%_
                      _%L144037%_
                      (let () (declare (not safe)) (##fx+ _%k143951%_ '1))
                      _%r143952%_)))
                  (_%__kont148321148322%_
                   (lambda (_%L144010%_ _%L144011%_)
                     (_%lp143948%_
                      _%L144010%_
                      (let () (declare (not safe)) (##fx+ _%k143951%_ '1))
                      (cons (cons (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-binding-id
                                     _%L144011%_))
                                  (cons (gxc#generate-runtime-values-ref
                                         _%vals143945%_
                                         _%k143951%_
                                         _%L144010%_)
                                        '()))
                            _%r143952%_))))
                  (_%__kont148323148324%_
                   (lambda (_%L143986%_)
                     (let ((__tmp149154
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-binding-id
                                           _%L143986%_))
                                        (cons (gxc#generate-runtime-values->list
                                               _%vals143945%_
                                               _%k143951%_)
                                              '()))
                                  '())))
                       (declare (not safe))
                       (__foldl1 cons __tmp149154 _%r143952%_))))
                  (_%__kont148325148326%_ (lambda () (reverse _%r143952%_))))
              (let ((_%g143955143997%_
                     (lambda ()
                       (let ((_%L143986%_ _%__stx148317148318%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%L143986%_))
                             (_%__kont148323148324%_ _%L143986%_)
                             (_%__kont148325148326%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx148317148318%_))
                    (let ((_%e143960144026%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx148317148318%_))))
                      (let ((_%tl143962144031%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e143960144026%_)))
                            (_%hd143961144029%_
                             (let ()
                               (declare (not safe))
                               (##car _%e143960144026%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _%hd143961144029%_))
                            (let ((_%e143963144034%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd143961144029%_))))
                              (if (equal? _%e143963144034%_ '#f)
                                  (_%__kont148319148320%_ _%tl143962144031%_)
                                  (_%__kont148321148322%_
                                   _%tl143962144031%_
                                   _%hd143961144029%_)))
                            (_%__kont148321148322%_
                             _%tl143962144031%_
                             _%hd143961144029%_))))
                    (let () (declare (not safe)) (_%g143955143997%_)))))))))
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_%self143624%_ _%stx143625%_ _%compiled-body?143626%_)
        (letrec ((_%generate-simple143628%_
                  (lambda (_%hd143930%_ _%body143931%_)
                    (gxc#generate-runtime-simple-let
                     _%self143624%_
                     'letrec
                     _%hd143930%_
                     _%body143931%_
                     _%compiled-body?143626%_)))
                 (_%generate-values143629%_
                  (lambda (_%hd143709%_ _%body143710%_)
                    (let _%lp143712%_ ((_%rest143714%_ _%hd143709%_)
                                       (_%bind143715%_ '())
                                       (_%check143716%_ '())
                                       (_%post143717%_ '()))
                      (let* ((_%__stx148391148392%_ _%rest143714%_)
                             (_%g143720143731%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx148391148392%_)))))
                        (let ((_%__kont148393148394%_
                               (lambda (_%L143758%_ _%L143759%_)
                                 (let* ((_%__stx148347148348%_ _%L143759%_)
                                        (_%g143774143799%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx148347148348%_)))))
                                   (let ((_%__kont148349148350%_
                                          (lambda (_%L143906%_ _%L143907%_)
                                            (let ((_%eid143921%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%L143907%_)))
                                                  (_%expr143922%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self143624%_
                                                      _%L143906%_))))
                                              (_%lp143712%_
                                               _%L143758%_
                                               (cons (cons _%eid143921%_
                                                           (cons _%expr143922%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind143715%_)
                                               _%check143716%_
                                               _%post143717%_))))
                                         (_%__kont148351148352%_
                                          (lambda (_%L143820%_ _%L143821%_)
                                            (let* ((_%vals143834%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values143836%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals143834%_
                                                     _%L143821%_
                                                     _%L143820%_))
                                                   (_%refs143838%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals143834%_
                                                     _%L143821%_))
                                                   (_%expr143840%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self143624%_
                                                       _%L143820%_))))
                                              (_%lp143712%_
                                               _%L143758%_
                                               (let ((__tmp149156
                                                      (cons (cons _%vals143834%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr143840%_ '()))
                    _%bind143715%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp149155
                                                      (map (lambda (_%e143842143844%_)
                                                             (let* ((_%g143846143855%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%e143842143844%_)
                            (_%E143848143859%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%g143846143855%_
                                        '([eid _])))
                               '#!void))
                            (_%K143849143864%_
                             (lambda (_%eid143862%_)
                               (cons _%eid143862%_ (cons '#!void '())))))
                       (if (pair? _%g143846143855%_)
                           (let ((_%hd143850143867%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%g143846143855%_)))
                                 (_%tl143851143869%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%g143846143855%_))))
                             (let ((_%eid143872%_ _%hd143850143867%_))
                               (if (pair? _%tl143851143869%_)
                                   (let ((_%tl143853143874%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%tl143851143869%_))))
                                     (if (null? _%tl143853143874%_)
                                         (_%K143849143864%_ _%eid143872%_)
                                         (_%E143848143859%_)))
                                   (_%E143848143859%_))))
                           (_%E143848143859%_))))
                   _%refs143838%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (__foldl1
                                                  cons
                                                  __tmp149156
                                                  __tmp149155))
                                               (cons _%check-values143836%_
                                                     _%check143716%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (__foldl1
                                                  cons
                                                  _%refs143838%_
                                                  _%post143717%_)))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx148347148348%_))
                                         (let ((_%e143778143882%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx148347148348%_))))
                                           (let ((_%tl143780143887%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e143778143882%_)))
                                                 (_%hd143779143885%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e143778143882%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd143779143885%_))
                                                 (let ((_%e143781143890%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd143779143885%_))))
                                                   (let ((_%tl143783143895%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e143781143890%_)))
                                                         (_%hd143782143893%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e143781143890%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl143783143895%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl143780143887%_))
                     (let ((_%e143784143898%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl143780143887%_))))
                       (let ((_%tl143786143903%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e143784143898%_)))
                             (_%hd143785143901%_
                              (let ()
                                (declare (not safe))
                                (##car _%e143784143898%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl143786143903%_))
                             (_%__kont148349148350%_
                              _%hd143785143901%_
                              _%hd143782143893%_)
                             (let ()
                               (declare (not safe))
                               (_%g143774143799%_)))))
                     (let () (declare (not safe)) (_%g143774143799%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl143780143887%_))
                     (let ((_%e143792143812%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl143780143887%_))))
                       (let ((_%tl143794143817%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e143792143812%_)))
                             (_%hd143793143815%_
                              (let ()
                                (declare (not safe))
                                (##car _%e143792143812%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl143794143817%_))
                             (_%__kont148351148352%_
                              _%hd143793143815%_
                              _%hd143779143885%_)
                             (let ()
                               (declare (not safe))
                               (_%g143774143799%_)))))
                     (let () (declare (not safe)) (_%g143774143799%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl143780143887%_))
                                                     (let ((_%e143792143812%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl143780143887%_))))
                                                       (let ((_%tl143794143817%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e143792143812%_)))
                     (_%hd143793143815%_
                      (let () (declare (not safe)) (##car _%e143792143812%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl143794143817%_))
                     (_%__kont148351148352%_
                      _%hd143793143815%_
                      _%hd143779143885%_)
                     (let () (declare (not safe)) (_%g143774143799%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g143774143799%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g143774143799%_)))))))
                              (_%__kont148395148396%_
                               (lambda ()
                                 (let* ((_%body143738%_
                                         (if _%compiled-body?143626%_
                                             _%body143710%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self143624%_
                                                _%body143710%_))))
                                        (_%body143740%_
                                         (_%generate-values-post143631%_
                                          _%post143717%_
                                          _%body143738%_))
                                        (_%body143742%_
                                         (_%generate-values-check143630%_
                                          _%check143716%_
                                          _%body143740%_)))
                                   (cons 'letrec
                                         (cons (reverse _%bind143715%_)
                                               (cons _%body143742%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx148391148392%_))
                              (let ((_%e143724143750%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx148391148392%_))))
                                (let ((_%tl143726143755%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e143724143750%_)))
                                      (_%hd143725143753%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e143724143750%_))))
                                  (_%__kont148393148394%_
                                   _%tl143726143755%_
                                   _%hd143725143753%_)))
                              (_%__kont148395148396%_)))))))
                 (_%generate-values-check143630%_
                  (lambda (_%check143706%_ _%body143707%_)
                    (cons 'begin
                          (let ((__tmp149158 (cons _%body143707%_ '()))
                                (__tmp149157 (reverse _%check143706%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp149158 __tmp149157)))))
                 (_%generate-values-post143631%_
                  (lambda (_%post143699%_ _%body143700%_)
                    (cons 'begin
                          (let ((__tmp149162 (cons _%body143700%_ '()))
                                (__tmp149159
                                 (let ((__tmp149161
                                        (lambda (_%g143701143703%_)
                                          (cons 'set! _%g143701143703%_)))
                                       (__tmp149160 (reverse _%post143699%_)))
                                   (declare (not safe))
                                   (##map __tmp149161 __tmp149160))))
                            (declare (not safe))
                            (__foldr1 cons __tmp149162 __tmp149159))))))
          (let* ((_%g143633143650%_
                  (lambda (_%g143634143647%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g143634143647%_))))
                 (_%g143632143696%_
                  (lambda (_%g143634143653%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g143634143653%_))
                        (let ((_%e143637143655%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g143634143653%_))))
                          (let ((_%hd143638143658%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e143637143655%_)))
                                (_%tl143639143660%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e143637143655%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl143639143660%_))
                                (let ((_%e143640143663%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl143639143660%_))))
                                  (let ((_%hd143641143666%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e143640143663%_)))
                                        (_%tl143642143668%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e143640143663%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl143642143668%_))
                                        (let ((_%e143643143671%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl143642143668%_))))
                                          (let ((_%hd143644143674%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e143643143671%_)))
                                                (_%tl143645143676%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e143643143671%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl143645143676%_))
                                                ((lambda (_%L143679%_
                                                          _%L143680%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%L143680%_)
                                                       (_%generate-simple143628%_
                                                        _%L143680%_
                                                        _%L143679%_)
                                                       (_%generate-values143629%_
                                                        _%L143680%_
                                                        _%L143679%_)))
                                                 _%hd143644143674%_
                                                 _%hd143641143666%_)
                                                (_%g143633143650%_
                                                 _%g143634143653%_))))
                                        (_%g143633143650%_
                                         _%g143634143653%_))))
                                (_%g143633143650%_ _%g143634143653%_))))
                        (_%g143633143650%_ _%g143634143653%_)))))
            (_%g143632143696%_ _%stx143625%_)))))
    (define gxc#generate-runtime-letrec-values%__0
      (lambda (_%self143936%_ _%stx143937%_)
        (let ((_%compiled-body?143939%_ '#f))
          (gxc#generate-runtime-letrec-values%__%
           _%self143936%_
           _%stx143937%_
           _%compiled-body?143939%_))))
    (define gxc#generate-runtime-letrec-values%
      (lambda _g149164_
        (let ((_g149163_ (let () (declare (not safe)) (##length _g149164_))))
          (cond ((let () (declare (not safe)) (##fx= _g149163_ 2))
                 (apply gxc#generate-runtime-letrec-values%__0 _g149164_))
                ((let () (declare (not safe)) (##fx= _g149163_ 3))
                 (apply gxc#generate-runtime-letrec-values%__% _g149164_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-letrec-values%
                  _g149164_))))))
    (define gxc#generate-runtime-letrec*-values%
      (lambda (_%self143205%_ _%stx143206%_)
        (letrec ((_%generate-values143208%_
                  (lambda (_%hd143451%_ _%body143452%_)
                    (let _%lp143454%_ ((_%rest143456%_ _%hd143451%_)
                                       (_%bind143457%_ '()))
                      (let* ((_%rest143458143466%_ _%rest143456%_)
                             (_%else143460143477%_
                              (lambda ()
                                (let ((_%bind143474%_ (reverse _%bind143457%_))
                                      (_%body143475%_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self143205%_
                                          _%body143452%_))))
                                  (cons 'letrec*
                                        (cons _%bind143474%_
                                              (cons _%body143475%_ '()))))))
                             (_%K143462143611%_
                              (lambda (_%rest143480%_ _%hd-bind143481%_)
                                (let* ((_%__stx148405148406%_
                                        _%hd-bind143481%_)
                                       (_%g143484143509%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx148405148406%_)))))
                                  (let ((_%__kont148407148408%_
                                         (lambda (_%L143590%_ _%L143591%_)
                                           (let ((_%eid143605%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-binding-id*
                                                     _%L143591%_)))
                                                 (_%expr143606%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self143205%_
                                                     _%L143590%_))))
                                             (_%lp143454%_
                                              _%rest143480%_
                                              (cons (cons _%eid143605%_
                                                          (cons _%expr143606%_
                                                                '()))
                                                    _%bind143457%_)))))
                                        (_%__kont148409148410%_
                                         (lambda (_%L143530%_ _%L143531%_)
                                           (let* ((_%vals143550%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%tmp143552%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%check-values143554%_
                                                   (gxc#generate-runtime-check-values
                                                    _%tmp143552%_
                                                    _%L143531%_
                                                    _%L143530%_))
                                                  (_%refs143556%_
                                                   (gxc#generate-runtime-let-values-bind
                                                    _%vals143550%_
                                                    _%L143531%_))
                                                  (_%expr143558%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self143205%_
                                                      _%L143530%_))))
                                             (_%lp143454%_
                                              _%rest143480%_
                                              (let ((__tmp149165
                                                     (cons (cons _%vals143550%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'let
                                     (cons (cons (cons _%tmp143552%_
                                                       (cons _%expr143558%_
                                                             '()))
                                                 '())
                                           (cons _%check-values143554%_
                                                 (cons _%tmp143552%_ '()))))
                               '()))
                   _%bind143457%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 __tmp149165
                                                 _%refs143556%_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx148405148406%_))
                                        (let ((_%e143488143566%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx148405148406%_))))
                                          (let ((_%tl143490143571%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e143488143566%_)))
                                                (_%hd143489143569%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e143488143566%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd143489143569%_))
                                                (let ((_%e143491143574%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd143489143569%_))))
                                                  (let ((_%tl143493143579%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e143491143574%_)))
                                                        (_%hd143492143577%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e143491143574%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl143493143579%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl143490143571%_))
                                                            (let ((_%e143494143582%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl143490143571%_))))
                      (let ((_%tl143496143587%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e143494143582%_)))
                            (_%hd143495143585%_
                             (let ()
                               (declare (not safe))
                               (##car _%e143494143582%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl143496143587%_))
                            (_%__kont148407148408%_
                             _%hd143495143585%_
                             _%hd143492143577%_)
                            (let ()
                              (declare (not safe))
                              (_%g143484143509%_)))))
                    (let () (declare (not safe)) (_%g143484143509%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl143490143571%_))
                    (let ((_%e143502143522%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl143490143571%_))))
                      (let ((_%tl143504143527%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e143502143522%_)))
                            (_%hd143503143525%_
                             (let ()
                               (declare (not safe))
                               (##car _%e143502143522%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl143504143527%_))
                            (_%__kont148409148410%_
                             _%hd143503143525%_
                             _%hd143489143569%_)
                            (let ()
                              (declare (not safe))
                              (_%g143484143509%_)))))
                    (let () (declare (not safe)) (_%g143484143509%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl143490143571%_))
                                                    (let ((_%e143502143522%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl143490143571%_))))
                                                      (let ((_%tl143504143527%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e143502143522%_)))
                    (_%hd143503143525%_
                     (let () (declare (not safe)) (##car _%e143502143522%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl143504143527%_))
                    (_%__kont148409148410%_
                     _%hd143503143525%_
                     _%hd143489143569%_)
                    (let () (declare (not safe)) (_%g143484143509%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g143484143509%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g143484143509%_))))))))
                        (if (pair? _%rest143458143466%_)
                            (let ((_%hd143463143614%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest143458143466%_)))
                                  (_%tl143464143616%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest143458143466%_))))
                              (let* ((_%hd-bind143619%_ _%hd143463143614%_)
                                     (_%rest143621%_ _%tl143464143616%_))
                                (_%K143462143611%_
                                 _%rest143621%_
                                 _%hd-bind143619%_)))
                            (_%else143460143477%_))))))
                 (_%generate-letrec?143209%_
                  (lambda (_%hd143341%_)
                    (let _%lp143343%_ ((_%rest143345%_ _%hd143341%_))
                      (let* ((_%rest143346143354%_ _%rest143345%_)
                             (_%else143348143362%_ (lambda () '#t))
                             (_%K143350143439%_
                              (lambda (_%rest143365%_ _%hd-bind143366%_)
                                (let* ((_%g143368143385%_
                                        (lambda (_%g143369143382%_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g143369143382%_))))
                                       (_%g143367143436%_
                                        (lambda (_%g143369143388%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%g143369143388%_))
                                              (let ((_%e143372143390%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%g143369143388%_))))
                                                (let ((_%hd143373143393%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e143372143390%_)))
                                                      (_%tl143374143395%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e143372143390%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd143373143393%_))
                                                      (let ((_%e143375143398%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd143373143393%_))))
                (let ((_%hd143376143401%_
                       (let () (declare (not safe)) (##car _%e143375143398%_)))
                      (_%tl143377143403%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e143375143398%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl143377143403%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl143374143395%_))
                          (let ((_%e143378143406%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl143374143395%_))))
                            (let ((_%hd143379143409%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e143378143406%_)))
                                  (_%tl143380143411%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e143378143406%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl143380143411%_))
                                  ((lambda (_%L143414%_ _%L143415%_)
                                     (if (_%is-lambda-expr?143210%_
                                          _%L143414%_)
                                         (_%lp143343%_ _%rest143365%_)
                                         '#f))
                                   _%hd143379143409%_
                                   _%hd143376143401%_)
                                  (_%g143368143385%_ _%g143369143388%_))))
                          (_%g143368143385%_ _%g143369143388%_))
                      (_%g143368143385%_ _%g143369143388%_))))
              (_%g143368143385%_ _%g143369143388%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g143368143385%_
                                               _%g143369143388%_)))))
                                  (_%g143367143436%_ _%hd-bind143366%_)))))
                        (if (pair? _%rest143346143354%_)
                            (let ((_%hd143351143442%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest143346143354%_)))
                                  (_%tl143352143444%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest143346143354%_))))
                              (let* ((_%hd-bind143447%_ _%hd143351143442%_)
                                     (_%rest143449%_ _%tl143352143444%_))
                                (_%K143350143439%_
                                 _%rest143449%_
                                 _%hd-bind143447%_)))
                            (_%else143348143362%_))))))
                 (_%is-lambda-expr?143210%_
                  (lambda (_%expr143278%_)
                    (let* ((_%__stx148449148450%_ _%expr143278%_)
                           (_%g143281143295%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx148449148450%_)))))
                      (let ((_%__kont148451148452%_
                             (lambda (_%L143323%_ _%L143324%_) '#t))
                            (_%__kont148453148454%_ (lambda () '#f)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%__stx148449148450%_))
                            (let ((_%e143285143307%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%__stx148449148450%_))))
                              (let ((_%tl143287143312%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e143285143307%_)))
                                    (_%hd143286143310%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e143285143307%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd143286143310%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd143286143310%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl143287143312%_))
                                            (let ((_%e143288143315%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl143287143312%_))))
                                              (let ((_%tl143290143320%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e143288143315%_)))
                                                    (_%hd143289143318%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e143288143315%_))))
                                                (_%__kont148451148452%_
                                                 _%tl143290143320%_
                                                 _%hd143289143318%_)))
                                            (_%__kont148453148454%_))
                                        (_%__kont148453148454%_))
                                    (_%__kont148453148454%_))))
                            (_%__kont148453148454%_)))))))
          (let* ((_%g143212143229%_
                  (lambda (_%g143213143226%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g143213143226%_))))
                 (_%g143211143275%_
                  (lambda (_%g143213143232%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g143213143232%_))
                        (let ((_%e143216143234%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g143213143232%_))))
                          (let ((_%hd143217143237%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e143216143234%_)))
                                (_%tl143218143239%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e143216143234%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl143218143239%_))
                                (let ((_%e143219143242%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl143218143239%_))))
                                  (let ((_%hd143220143245%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e143219143242%_)))
                                        (_%tl143221143247%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e143219143242%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl143221143247%_))
                                        (let ((_%e143222143250%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl143221143247%_))))
                                          (let ((_%hd143223143253%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e143222143250%_)))
                                                (_%tl143224143255%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e143222143250%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl143224143255%_))
                                                ((lambda (_%L143258%_
                                                          _%L143259%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%L143259%_)
                                                       (if (_%generate-letrec?143209%_
                                                            _%L143259%_)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self143205%_
                                                            'letrec
                                                            _%L143259%_
                                                            _%L143258%_
                                                            '#f)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self143205%_
                                                            'letrec*
                                                            _%L143259%_
                                                            _%L143258%_
                                                            '#f))
                                                       (_%generate-values143208%_
                                                        _%L143259%_
                                                        _%L143258%_)))
                                                 _%hd143223143253%_
                                                 _%hd143220143245%_)
                                                (_%g143212143229%_
                                                 _%g143213143232%_))))
                                        (_%g143212143229%_
                                         _%g143213143232%_))))
                                (_%g143212143229%_ _%g143213143232%_))))
                        (_%g143212143229%_ _%g143213143232%_)))))
            (_%g143211143275%_ _%stx143206%_)))))
    (define gxc#generate-runtime-simple-let?
      (lambda (_%hd143142%_)
        (let _%lp143144%_ ((_%rest143146%_ _%hd143142%_))
          (let* ((_%rest143147143163%_ _%rest143146%_)
                 (_%else143150143171%_ (lambda () '#f)))
            (let ((_%K143153143184%_
                   (lambda (_%rest143182%_) (_%lp143144%_ _%rest143182%_)))
                  (_%K143152143176%_ (lambda () '#t)))
              (let ((_%try-match143149143179%_
                     (lambda ()
                       (if (null? _%rest143147143163%_)
                           (_%K143152143176%_)
                           (_%else143150143171%_)))))
                (if (pair? _%rest143147143163%_)
                    (let ((_%tl143155143189%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest143147143163%_)))
                          (_%hd143154143187%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest143147143163%_))))
                      (if (pair? _%hd143154143187%_)
                          (let ((_%tl143157143194%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd143154143187%_)))
                                (_%hd143156143192%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd143154143187%_))))
                            (if (pair? _%hd143156143192%_)
                                (let ((_%tl143161143197%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd143156143192%_))))
                                  (if (null? _%tl143161143197%_)
                                      (if (pair? _%tl143157143194%_)
                                          (let ((_%tl143159143200%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl143157143194%_))))
                                            (if (null? _%tl143159143200%_)
                                                (let ((_%rest143203%_
                                                       _%tl143155143189%_))
                                                  (_%lp143144%_
                                                   _%rest143203%_))
                                                (_%else143150143171%_)))
                                          (_%else143150143171%_))
                                      (_%else143150143171%_)))
                                (_%else143150143171%_)))
                          (_%else143150143171%_)))
                    (_%try-match143149143179%_))))))))
    (define gxc#generate-runtime-simple-let
      (lambda (_%self143053%_
               _%form143054%_
               _%hd143055%_
               _%body143056%_
               _%compiled-body?143057%_)
        (letrec ((_%generate1143059%_
                  (lambda (_%bind143098%_)
                    (let* ((_%bind143099143110%_ _%bind143098%_)
                           (_%E143101143114%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%bind143099143110%_
                                       '([[id] expr])))
                              '#!void))
                           (_%K143102143120%_
                            (lambda (_%expr143117%_ _%id143118%_)
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-binding-id*
                                       _%id143118%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self143053%_
                                             _%expr143117%_))
                                          '())))))
                      (if (pair? _%bind143099143110%_)
                          (let ((_%hd143103143123%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%bind143099143110%_)))
                                (_%tl143104143125%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%bind143099143110%_))))
                            (if (pair? _%hd143103143123%_)
                                (let ((_%hd143107143128%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd143103143123%_)))
                                      (_%tl143108143130%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd143103143123%_))))
                                  (let ((_%id143133%_ _%hd143107143128%_))
                                    (if (null? _%tl143108143130%_)
                                        (if (pair? _%tl143104143125%_)
                                            (let ((_%hd143105143135%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl143104143125%_)))
                                                  (_%tl143106143137%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl143104143125%_))))
                                              (let ((_%expr143140%_
                                                     _%hd143105143135%_))
                                                (if (null? _%tl143106143137%_)
                                                    (_%K143102143120%_
                                                     _%expr143140%_
                                                     _%id143133%_)
                                                    (_%E143101143114%_))))
                                            (_%E143101143114%_))
                                        (_%E143101143114%_))))
                                (_%E143101143114%_)))
                          (_%E143101143114%_))))))
          (let* ((_%bind143061%_ (map _%generate1143059%_ _%hd143055%_))
                 (_%body143063%_
                  (if _%compiled-body?143057%_
                      _%body143056%_
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self143053%_ _%body143056%_))))
                 (_%body143095%_
                  (let* ((_%body143064143072%_ _%body143063%_)
                         (_%else143066143080%_
                          (lambda () (cons _%body143063%_ '())))
                         (_%K143068143085%_
                          (lambda (_%exprs143083%_) _%exprs143083%_)))
                    (if (pair? _%body143064143072%_)
                        (let ((_%hd143069143088%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%body143064143072%_)))
                              (_%tl143070143090%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%body143064143072%_))))
                          (if (let ()
                                (declare (not safe))
                                (##eq? _%hd143069143088%_ 'begin))
                              (let ((_%exprs143093%_ _%tl143070143090%_))
                                (_%K143068143085%_ _%exprs143093%_))
                              (_%else143066143080%_)))
                        (_%else143066143080%_)))))
            (cons _%form143054%_ (cons _%bind143061%_ _%body143095%_))))))
    (define gxc#generate-runtime-quote%
      (lambda (_%self142953%_ _%stx142954%_)
        (letrec ((_%generate1142956%_
                  (lambda (_%datum143008%_)
                    (if (or (null? _%datum143008%_)
                            (let ()
                              (declare (not safe))
                              (interned-symbol? _%datum143008%_))
                            (let ()
                              (declare (not safe))
                              (gx#self-quoting? _%datum143008%_))
                            (eof-object? _%datum143008%_))
                        _%datum143008%_
                        (if (uninterned-symbol? _%datum143008%_)
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__%
                               _%datum143008%_
                               '#t))
                            (if (pair? _%datum143008%_)
                                (cons (_%generate1142956%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%datum143008%_)))
                                      (_%generate1142956%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%datum143008%_))))
                                (if (box? _%datum143008%_)
                                    (box (_%generate1142956%_
                                          (unbox _%datum143008%_)))
                                    (if (vector? _%datum143008%_)
                                        (vector-map
                                         _%generate1142956%_
                                         _%datum143008%_)
                                        (if (or (s8vector? _%datum143008%_)
                                                (u8vector? _%datum143008%_)
                                                (s16vector? _%datum143008%_)
                                                (u16vector? _%datum143008%_)
                                                (s32vector? _%datum143008%_)
                                                (u32vector? _%datum143008%_)
                                                (s64vector? _%datum143008%_)
                                                (u64vector? _%datum143008%_)
                                                (f32vector? _%datum143008%_)
                                                (f64vector? _%datum143008%_))
                                            _%datum143008%_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot compile non-primitive quote"
                                               _%stx142954%_)))))))))))
          (let* ((_%g142958142971%_
                  (lambda (_%g142959142968%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g142959142968%_))))
                 (_%g142957143005%_
                  (lambda (_%g142959142974%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g142959142974%_))
                        (let ((_%e142961142976%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g142959142974%_))))
                          (let ((_%hd142962142979%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e142961142976%_)))
                                (_%tl142963142981%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e142961142976%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl142963142981%_))
                                (let ((_%e142964142984%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl142963142981%_))))
                                  (let ((_%hd142965142987%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e142964142984%_)))
                                        (_%tl142966142989%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e142964142984%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl142966142989%_))
                                        ((lambda (_%L142992%_)
                                           (cons 'quote
                                                 (cons (_%generate1142956%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%L142992%_)))
                                                       '())))
                                         _%hd142965142987%_)
                                        (_%g142958142971%_
                                         _%g142959142974%_))))
                                (_%g142958142971%_ _%g142959142974%_))))
                        (_%g142958142971%_ _%g142959142974%_)))))
            (_%g142957143005%_ _%stx142954%_)))))
    (define gxc#generate-runtime-call%
      (lambda (_%self142394%_ _%stx142395%_)
        (letrec ((_%compile-call142397%_
                  (lambda (_%rator142686%_ _%rands142687%_)
                    (let ((_%rator142693%_
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self142394%_
                              _%rator142686%_)))
                          (_%rands142694%_
                           (map (lambda (_%g142688142690%_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%self142394%_
                                     _%g142688142690%_)))
                                _%rands142687%_)))
                      (let* ((_%__stx148496148497%_ _%rator142693%_)
                             (_%g142697142749%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx148496148497%_)))))
                        (let ((_%__kont148498148499%_
                               (lambda (_%L142873%_
                                        _%L142874%_
                                        _%L142875%_
                                        _%L142876%_)
                                 (if (let ((__tmp149168
                                            (let ()
                                              (declare (not safe))
                                              (##length _%rands142694%_)))
                                           (__tmp149166
                                            (length (let ((__tmp149167
                                                           (lambda (_%g142912142915%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g142913142917%_)
                     (cons _%g142912142915%_ _%g142913142917%_))))
              (declare (not safe))
              (__foldr1 __tmp149167 '() _%L142875%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp149168 __tmp149166))
                                     (let* ((_%id142920%_ _%L142876%_)
                                            (_%args142929%_
                                             (let ((__tmp149169
                                                    (lambda (_%g142921142924%_
                                                             _%g142922142926%_)
                                                      (cons _%g142921142924%_
                                                            _%g142922142926%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp149169
                                                '()
                                                _%L142875%_)))
                                            (_%body142938%_
                                             (let ((__tmp149170
                                                    (lambda (_%g142930142933%_
                                                             _%g142931142935%_)
                                                      (cons _%g142930142933%_
                                                            _%g142931142935%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp149170
                                                '()
                                                _%L142874%_)))
                                            (_%init142940%_
                                             (map list
                                                  _%args142929%_
                                                  _%rands142694%_)))
                                       (cons 'let
                                             (cons _%id142920%_
                                                   (cons _%init142940%_
                                                         _%body142938%_))))
                                     (let ((__tmp149171
                                            (let ((__tmp149172
                                                   (lambda (_%g142942142945%_
                                                            _%g142943142947%_)
                                                     (cons _%g142942142945%_
                                                           _%g142943142947%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp149172
                                               '()
                                               _%L142875%_))))
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Illegal loop application; arity mismatch"
                                        _%stx142395%_
                                        __tmp149171
                                        _%rands142694%_)))))
                              (_%__kont148504148505%_
                               (lambda ()
                                 (cons _%rator142693%_ _%rands142694%_))))
                          (let ((_%__match148563148564%_
                                 (lambda (_%e142703142761%_
                                          _%hd142704142764%_
                                          _%tl142705142766%_
                                          _%e142706142769%_
                                          _%hd142707142772%_
                                          _%tl142708142774%_
                                          _%e142709142777%_
                                          _%hd142710142780%_
                                          _%tl142711142782%_
                                          _%e142712142785%_
                                          _%hd142713142788%_
                                          _%tl142714142790%_
                                          _%e142715142793%_
                                          _%hd142716142796%_
                                          _%tl142717142798%_
                                          _%e142718142801%_
                                          _%hd142719142804%_
                                          _%tl142720142806%_
                                          _%e142721142809%_
                                          _%hd142722142812%_
                                          _%tl142723142814%_
                                          _%__splice148500148501%_
                                          _%target142724142817%_
                                          _%tl142726142819%_)
                                   (letrec ((_%loop142727142822%_
                                             (lambda (_%hd142725142825%_
                                                      _%arg142731142827%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%hd142725142825%_))
                                                   (let ((_%e142728142830%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%hd142725142825%_))))
                                                     (let ((_%lp-tl142730142835%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e142728142830%_)))
                                                           (_%lp-hd142729142833%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e142728142830%_))))
                                                       (_%loop142727142822%_
                                                        _%lp-tl142730142835%_
                                                        (cons _%lp-hd142729142833%_
                                                              _%arg142731142827%_))))
                                                   (let ((_%arg142732142838%_
                                                          (reverse _%arg142731142827%_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _%tl142723142814%_))
                                                         (let ((_%__splice148502148503%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice _%tl142723142814%_ '0))))
                   (let ((_%tl142735142843%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice148502148503%_ '1)))
                         (_%target142733142841%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice148502148503%_ '0))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl142735142843%_))
                         (letrec ((_%loop142736142846%_
                                   (lambda (_%hd142734142849%_
                                            _%body142740142851%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd142734142849%_))
                                         (let ((_%e142737142854%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd142734142849%_))))
                                           (let ((_%lp-tl142739142859%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e142737142854%_)))
                                                 (_%lp-hd142738142857%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e142737142854%_))))
                                             (_%loop142736142846%_
                                              _%lp-tl142739142859%_
                                              (cons _%lp-hd142738142857%_
                                                    _%body142740142851%_))))
                                         (let ((_%body142741142862%_
                                                (reverse _%body142740142851%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%tl142717142798%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl142711142782%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl142708142774%_))
                                                       (let ((_%e142742142865%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl142708142774%_))))
                 (let ((_%tl142744142870%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e142742142865%_)))
                       (_%hd142743142868%_
                        (let ()
                          (declare (not safe))
                          (##car _%e142742142865%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl142744142870%_))
                       (let ((_%L142873%_ _%hd142743142868%_)
                             (_%L142874%_ _%body142741142862%_)
                             (_%L142875%_ _%arg142732142838%_)
                             (_%L142876%_ _%hd142713142788%_))
                         (if (eq? _%L142876%_ _%L142873%_)
                             (_%__kont148498148499%_
                              _%L142873%_
                              _%L142874%_
                              _%L142875%_
                              _%L142876%_)
                             (_%__kont148504148505%_)))
                       (_%__kont148504148505%_))))
               (_%__kont148504148505%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont148504148505%_))
                                               (_%__kont148504148505%_)))))))
                           (_%loop142736142846%_ _%target142733142841%_ '()))
                         (_%__kont148504148505%_))))
                 (_%__kont148504148505%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%loop142727142822%_
                                      _%target142724142817%_
                                      '())))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx148496148497%_))
                                (let ((_%e142703142761%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx148496148497%_))))
                                  (let ((_%tl142705142766%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e142703142761%_)))
                                        (_%hd142704142764%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e142703142761%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd142704142764%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               'letrec
                                               _%hd142704142764%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl142705142766%_))
                                                (let ((_%e142706142769%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl142705142766%_))))
                                                  (let ((_%tl142708142774%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e142706142769%_)))
                                                        (_%hd142707142772%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e142706142769%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd142707142772%_))
                                                        (let ((_%e142709142777%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd142707142772%_))))
                  (let ((_%tl142711142782%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e142709142777%_)))
                        (_%hd142710142780%_
                         (let ()
                           (declare (not safe))
                           (##car _%e142709142777%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd142710142780%_))
                        (let ((_%e142712142785%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd142710142780%_))))
                          (let ((_%tl142714142790%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e142712142785%_)))
                                (_%hd142713142788%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e142712142785%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl142714142790%_))
                                (let ((_%e142715142793%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl142714142790%_))))
                                  (let ((_%tl142717142798%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e142715142793%_)))
                                        (_%hd142716142796%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e142715142793%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd142716142796%_))
                                        (let ((_%e142718142801%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd142716142796%_))))
                                          (let ((_%tl142720142806%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e142718142801%_)))
                                                (_%hd142719142804%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e142718142801%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd142719142804%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       'lambda
                                                       _%hd142719142804%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl142720142806%_))
                                                        (let ((_%e142721142809%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl142720142806%_))))
                  (let ((_%tl142723142814%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e142721142809%_)))
                        (_%hd142722142812%_
                         (let ()
                           (declare (not safe))
                           (##car _%e142721142809%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%hd142722142812%_))
                        (let ((_%__splice148500148501%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%hd142722142812%_
                                  '0))))
                          (let ((_%tl142726142819%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice148500148501%_ '1)))
                                (_%target142724142817%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _%__splice148500148501%_
                                    '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl142726142819%_))
                                (_%__match148563148564%_
                                 _%e142703142761%_
                                 _%hd142704142764%_
                                 _%tl142705142766%_
                                 _%e142706142769%_
                                 _%hd142707142772%_
                                 _%tl142708142774%_
                                 _%e142709142777%_
                                 _%hd142710142780%_
                                 _%tl142711142782%_
                                 _%e142712142785%_
                                 _%hd142713142788%_
                                 _%tl142714142790%_
                                 _%e142715142793%_
                                 _%hd142716142796%_
                                 _%tl142717142798%_
                                 _%e142718142801%_
                                 _%hd142719142804%_
                                 _%tl142720142806%_
                                 _%e142721142809%_
                                 _%hd142722142812%_
                                 _%tl142723142814%_
                                 _%__splice148500148501%_
                                 _%target142724142817%_
                                 _%tl142726142819%_)
                                (_%__kont148504148505%_))))
                        (_%__kont148504148505%_))))
                (_%__kont148504148505%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont148504148505%_))
                                                (_%__kont148504148505%_))))
                                        (_%__kont148504148505%_))))
                                (_%__kont148504148505%_))))
                        (_%__kont148504148505%_))))
                (_%__kont148504148505%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont148504148505%_))
                                            (_%__kont148504148505%_))
                                        (_%__kont148504148505%_))))
                                (_%__kont148504148505%_)))))))))
          (let* ((_%g142399142422%_
                  (lambda (_%g142400142419%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g142400142419%_))))
                 (_%g142398142683%_
                  (lambda (_%g142400142425%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g142400142425%_))
                        (let ((_%e142403142427%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g142400142425%_))))
                          (let ((_%hd142404142430%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e142403142427%_)))
                                (_%tl142405142432%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e142403142427%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl142405142432%_))
                                (let ((_%e142406142435%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl142405142432%_))))
                                  (let ((_%hd142407142438%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e142406142435%_)))
                                        (_%tl142408142440%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e142406142435%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl142408142440%_))
                                        (let ((_g149173_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl142408142440%_
                                                  '0))))
                                          (begin
                                            (let ((_g149174_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g149173_)
                                                         (##vector-length
                                                          _g149173_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g149174_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g149174_)))
                                            (let ((_%target142409142443%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g149173_
                                                      0)))
                                                  (_%tl142411142445%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g149173_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl142411142445%_))
                                                  (letrec ((_%loop142412142448%_
                                                            (lambda (_%hd142410142451%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%rand142416142453%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd142410142451%_))
                          (let ((_%e142413142456%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd142410142451%_))))
                            (let ((_%lp-hd142414142459%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e142413142456%_)))
                                  (_%lp-tl142415142461%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e142413142456%_))))
                              (_%loop142412142448%_
                               _%lp-tl142415142461%_
                               (cons _%lp-hd142414142459%_
                                     _%rand142416142453%_))))
                          (let ((_%rand142417142464%_
                                 (reverse _%rand142416142453%_)))
                            ((lambda (_%L142467%_ _%L142468%_)
                               (if (gxc#current-compile-decls-unsafe?)
                                   (_%compile-call142397%_
                                    _%L142468%_
                                    (let ((__tmp149175
                                           (lambda (_%g142485142488%_
                                                    _%g142486142490%_)
                                             (cons _%g142485142488%_
                                                   _%g142486142490%_))))
                                      (declare (not safe))
                                      (__foldr1 __tmp149175 '() _%L142467%_)))
                                   (let* ((_%__stx148612148613%_ _%L142468%_)
                                          (_%g142494142506%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%__stx148612148613%_)))))
                                     (let ((_%__kont148614148615%_
                                            (lambda ()
                                              (let ((_%f142543%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self142394%_
                                                        _%L142468%_))))
                                                (if (and (let ((__tmp149176
                                                                (symbol->string
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%f142543%_)))
                   (declare (not safe))
                   (##string-prefix? '"##" __tmp149176))
                 (not (let ()
                        (declare (not safe))
                        (##memq _%f142543%_ gxc#checked-primitives))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let _%lp142545%_ ((_%rest142548%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (reverse (let ((__tmp149178
                                                (lambda (_%g142665142668%_
                                                         _%g142666142670%_)
                                                  (cons _%g142665142668%_
                                                        _%g142666142670%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            __tmp149178
                                            '()
                                            _%L142467%_))))
                               (_%bind142550%_ '())
                               (_%args142551%_ '()))
              (let* ((_%rest142552142560%_ _%rest142548%_)
                     (_%else142554142568%_
                      (lambda ()
                        (cons 'let
                              (cons _%bind142550%_
                                    (cons '(declare (not safe))
                                          (cons (cons _%f142543%_
                                                      _%args142551%_)
                                                '()))))))
                     (_%K142556142654%_
                      (lambda (_%rest142571%_ _%e142572%_)
                        (let* ((_%__stx148566148567%_ _%e142572%_)
                               (_%g142577142595%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%__stx148566148567%_)))))
                          (let ((_%__kont148568148569%_
                                 (lambda ()
                                   (_%lp142545%_
                                    _%rest142571%_
                                    _%bind142550%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e142572%_))
                                          _%args142551%_))))
                                (_%__kont148570148571%_
                                 (lambda ()
                                   (_%lp142545%_
                                    _%rest142571%_
                                    _%bind142550%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e142572%_))
                                          _%args142551%_))))
                                (_%__kont148572148573%_
                                 (lambda ()
                                   (let ((_%tmp142602%_
                                          (let ((__tmp149177
                                                 (let ()
                                                   (declare (not safe))
                                                   (##gensym '__tmp))))
                                            (declare (not safe))
                                            (make-symbol__0 __tmp149177))))
                                     (_%lp142545%_
                                      _%rest142571%_
                                      (cons (cons _%tmp142602%_
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__0
                                                           _%e142572%_))
                                                        '()))
                                            _%bind142550%_)
                                      (cons _%tmp142602%_ _%args142551%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx148566148567%_))
                                (let ((_%e142579142633%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx148566148567%_))))
                                  (let ((_%tl142581142638%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e142579142633%_)))
                                        (_%hd142580142636%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e142579142633%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd142580142636%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd142580142636%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl142581142638%_))
                                                (let ((_%e142582142641%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl142581142638%_))))
                                                  (let ((_%tl142584142646%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e142582142641%_)))
                                                        (_%hd142583142644%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e142582142641%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl142584142646%_))
                                                        (_%__kont148568148569%_)
                                                        (_%__kont148572148573%_))))
                                                (_%__kont148572148573%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#quote
                                                   _%hd142580142636%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl142581142638%_))
                                                    (let ((_%e142588142618%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl142581142638%_))))
                                                      (let ((_%tl142590142623%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e142588142618%_)))
                    (_%hd142589142621%_
                     (let () (declare (not safe)) (##car _%e142588142618%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl142590142623%_))
                    (_%__kont148570148571%_)
                    (_%__kont148572148573%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont148572148573%_))
                                                (_%__kont148572148573%_)))
                                        (_%__kont148572148573%_))))
                                (_%__kont148572148573%_)))))))
                (if (pair? _%rest142552142560%_)
                    (let ((_%hd142557142657%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest142552142560%_)))
                          (_%tl142558142659%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest142552142560%_))))
                      (let* ((_%e142662%_ _%hd142557142657%_)
                             (_%rest142664%_ _%tl142558142659%_))
                        (_%K142556142654%_ _%rest142664%_ _%e142662%_)))
                    (_%else142554142568%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%compile-call142397%_
                                                     _%L142468%_
                                                     (let ((__tmp149179
                                                            (lambda (_%g142672142675%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g142673142677%_)
                      (cons _%g142672142675%_ _%g142673142677%_))))
               (declare (not safe))
               (__foldr1 __tmp149179 '() _%L142467%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%__kont148616148617%_
                                            (lambda ()
                                              (_%compile-call142397%_
                                               _%L142468%_
                                               (let ((__tmp149180
                                                      (lambda (_%g142512142515%_
                                                               _%g142513142517%_)
                                                        (cons _%g142512142515%_
                                                              _%g142513142517%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp149180
                                                  '()
                                                  _%L142467%_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%__stx148612148613%_))
                                           (let ((_%e142496142525%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%__stx148612148613%_))))
                                             (let ((_%tl142498142530%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e142496142525%_)))
                                                   (_%hd142497142528%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e142496142525%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd142497142528%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#ref
                                                          _%hd142497142528%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl142498142530%_))
                                                           (let ((_%e142499142533%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl142498142530%_))))
                     (let ((_%tl142501142538%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e142499142533%_)))
                           (_%hd142500142536%_
                            (let ()
                              (declare (not safe))
                              (##car _%e142499142533%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl142501142538%_))
                           (_%__kont148614148615%_)
                           (_%__kont148616148617%_))))
                   (_%__kont148616148617%_))
               (_%__kont148616148617%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont148616148617%_))))
                                           (_%__kont148616148617%_))))))
                             _%rand142417142464%_
                             _%hd142407142438%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop142412142448%_
                                                     _%target142409142443%_
                                                     '()))
                                                  (_%g142399142422%_
                                                   _%g142400142425%_)))))
                                        (_%g142399142422%_
                                         _%g142400142425%_))))
                                (_%g142399142422%_ _%g142400142425%_))))
                        (_%g142399142422%_ _%g142400142425%_)))))
            (_%g142398142683%_ _%stx142395%_)))))
    (define gxc#generate-runtime-call-unchecked%
      (lambda (_%self142137%_ _%stx142138%_)
        (let* ((_%__stx148684148685%_ _%stx142138%_)
               (_%g142141142170%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx148684148685%_)))))
          (let ((_%__kont148686148687%_
                 (lambda (_%L142238%_ _%L142239%_)
                   (if (gxc#current-compile-decls-unsafe?)
                       (gxc#generate-runtime-call%
                        _%self142137%_
                        _%stx142138%_)
                       (let ((_%f142261%_
                              (let ((__tmp149181
                                     (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f '%#ref))
                                           (cons _%L142239%_ '()))))
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self142137%_
                                 __tmp149181))))
                         (let _%lp142263%_ ((_%rest142266%_
                                             (reverse (let ((__tmp149183
                                                             (lambda (_%g142383142386%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g142384142388%_)
                       (cons _%g142383142386%_ _%g142384142388%_))))
                (declare (not safe))
                (__foldr1 __tmp149183 '() _%L142238%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%bind142268%_ '())
                                            (_%args142269%_ '()))
                           (let* ((_%rest142270142278%_ _%rest142266%_)
                                  (_%else142272142286%_
                                   (lambda ()
                                     (cons 'let
                                           (cons _%bind142268%_
                                                 (cons '(declare (not safe))
                                                       (cons (cons _%f142261%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%args142269%_)
                     '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%K142274142372%_
                                   (lambda (_%rest142289%_ _%e142290%_)
                                     (let* ((_%__stx148638148639%_ _%e142290%_)
                                            (_%g142295142313%_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%__stx148638148639%_)))))
                                       (let ((_%__kont148640148641%_
                                              (lambda ()
                                                (_%lp142263%_
                                                 _%rest142289%_
                                                 _%bind142268%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e142290%_))
                                                       _%args142269%_))))
                                             (_%__kont148642148643%_
                                              (lambda ()
                                                (_%lp142263%_
                                                 _%rest142289%_
                                                 _%bind142268%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e142290%_))
                                                       _%args142269%_))))
                                             (_%__kont148644148645%_
                                              (lambda ()
                                                (let ((_%tmp142320%_
                                                       (let ((__tmp149182
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##gensym '__tmp))))
                 (declare (not safe))
                 (make-symbol__0 __tmp149182))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%lp142263%_
                                                   _%rest142289%_
                                                   (cons (cons _%tmp142320%_
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__0 _%e142290%_))
                             '()))
                 _%bind142268%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _%tmp142320%_
                                                         _%args142269%_))))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%__stx148638148639%_))
                                             (let ((_%e142297142351%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%__stx148638148639%_))))
                                               (let ((_%tl142299142356%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e142297142351%_)))
                                                     (_%hd142298142354%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e142297142351%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd142298142354%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#ref
                                                            _%hd142298142354%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl142299142356%_))
                     (let ((_%e142300142359%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl142299142356%_))))
                       (let ((_%tl142302142364%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e142300142359%_)))
                             (_%hd142301142362%_
                              (let ()
                                (declare (not safe))
                                (##car _%e142300142359%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl142302142364%_))
                             (_%__kont148640148641%_)
                             (_%__kont148644148645%_))))
                     (_%__kont148644148645%_))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-eq? '%#quote _%hd142298142354%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl142299142356%_))
                         (let ((_%e142306142336%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl142299142356%_))))
                           (let ((_%tl142308142341%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e142306142336%_)))
                                 (_%hd142307142339%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e142306142336%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl142308142341%_))
                                 (_%__kont148642148643%_)
                                 (_%__kont148644148645%_))))
                         (_%__kont148644148645%_))
                     (_%__kont148644148645%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont148644148645%_))))
                                             (_%__kont148644148645%_)))))))
                             (if (pair? _%rest142270142278%_)
                                 (let ((_%hd142275142375%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%rest142270142278%_)))
                                       (_%tl142276142377%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest142270142278%_))))
                                   (let* ((_%e142380%_ _%hd142275142375%_)
                                          (_%rest142382%_ _%tl142276142377%_))
                                     (_%K142274142372%_
                                      _%rest142382%_
                                      _%e142380%_)))
                                 (_%else142272142286%_))))))))
                (_%__kont148690148691%_
                 (lambda ()
                   (gxc#generate-runtime-call% _%self142137%_ _%stx142138%_))))
            (let ((_%__match148729148730%_
                   (lambda (_%e142145142182%_
                            _%hd142146142185%_
                            _%tl142147142187%_
                            _%e142148142190%_
                            _%hd142149142193%_
                            _%tl142150142195%_
                            _%e142151142198%_
                            _%hd142152142201%_
                            _%tl142153142203%_
                            _%e142154142206%_
                            _%hd142155142209%_
                            _%tl142156142211%_
                            _%__splice148688148689%_
                            _%target142157142214%_
                            _%tl142159142216%_)
                     (letrec ((_%loop142160142219%_
                               (lambda (_%hd142158142222%_
                                        _%rand142164142224%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd142158142222%_))
                                     (let ((_%e142161142227%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd142158142222%_))))
                                       (let ((_%lp-tl142163142232%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e142161142227%_)))
                                             (_%lp-hd142162142230%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e142161142227%_))))
                                         (_%loop142160142219%_
                                          _%lp-tl142163142232%_
                                          (cons _%lp-hd142162142230%_
                                                _%rand142164142224%_))))
                                     (let ((_%rand142165142235%_
                                            (reverse _%rand142164142224%_)))
                                       (_%__kont148686148687%_
                                        _%rand142165142235%_
                                        _%hd142155142209%_))))))
                       (_%loop142160142219%_ _%target142157142214%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx148684148685%_))
                  (let ((_%e142145142182%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx148684148685%_))))
                    (let ((_%tl142147142187%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e142145142182%_)))
                          (_%hd142146142185%_
                           (let ()
                             (declare (not safe))
                             (##car _%e142145142182%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl142147142187%_))
                          (let ((_%e142148142190%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl142147142187%_))))
                            (let ((_%tl142150142195%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e142148142190%_)))
                                  (_%hd142149142193%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e142148142190%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd142149142193%_))
                                  (let ((_%e142151142198%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd142149142193%_))))
                                    (let ((_%tl142153142203%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e142151142198%_)))
                                          (_%hd142152142201%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e142151142198%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd142152142201%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd142152142201%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl142153142203%_))
                                                  (let ((_%e142154142206%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl142153142203%_))))
                                                    (let ((_%tl142156142211%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e142154142206%_)))
                                                          (_%hd142155142209%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e142154142206%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl142156142211%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl142150142195%_))
                      (let ((_%__splice148688148689%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl142150142195%_
                                '0))))
                        (let ((_%tl142159142216%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice148688148689%_ '1)))
                              (_%target142157142214%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice148688148689%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl142159142216%_))
                              (_%__match148729148730%_
                               _%e142145142182%_
                               _%hd142146142185%_
                               _%tl142147142187%_
                               _%e142148142190%_
                               _%hd142149142193%_
                               _%tl142150142195%_
                               _%e142151142198%_
                               _%hd142152142201%_
                               _%tl142153142203%_
                               _%e142154142206%_
                               _%hd142155142209%_
                               _%tl142156142211%_
                               _%__splice148688148689%_
                               _%target142157142214%_
                               _%tl142159142216%_)
                              (_%__kont148690148691%_))))
                      (_%__kont148690148691%_))
                  (_%__kont148690148691%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont148690148691%_))
                                              (_%__kont148690148691%_))
                                          (_%__kont148690148691%_))))
                                  (_%__kont148690148691%_))))
                          (_%__kont148690148691%_))))
                  (_%__kont148690148691%_)))))))
    (define gxc#generate-runtime-if%
      (lambda (_%self141949%_ _%stx141950%_)
        (letrec ((_%simplify141952%_
                  (lambda (_%code142037%_)
                    (let* ((_%code142038142056%_ _%code142037%_)
                           (_%else142040142064%_ (lambda () _%code142037%_))
                           (_%K142042142100%_
                            (lambda (_%expr142067%_ _%test142068%_)
                              (let* ((_%expr142069142077%_ _%expr142067%_)
                                     (_%else142071142085%_
                                      (lambda ()
                                        (cons 'and
                                              (cons _%test142068%_
                                                    (cons _%expr142067%_
                                                          '())))))
                                     (_%K142073142090%_
                                      (lambda (_%exprs142088%_)
                                        (cons 'and
                                              (cons _%test142068%_
                                                    _%exprs142088%_)))))
                                (if (pair? _%expr142069142077%_)
                                    (let ((_%hd142074142093%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%expr142069142077%_)))
                                          (_%tl142075142095%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%expr142069142077%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _%hd142074142093%_ 'and))
                                          (let ((_%exprs142098%_
                                                 _%tl142075142095%_))
                                            (_%K142073142090%_
                                             _%exprs142098%_))
                                          (_%else142071142085%_)))
                                    (_%else142071142085%_))))))
                      (if (pair? _%code142038142056%_)
                          (let ((_%hd142043142103%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%code142038142056%_)))
                                (_%tl142044142105%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%code142038142056%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##eq? _%hd142043142103%_ 'if))
                                (if (pair? _%tl142044142105%_)
                                    (let ((_%hd142045142108%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl142044142105%_)))
                                          (_%tl142046142110%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl142044142105%_))))
                                      (let ((_%test142113%_
                                             _%hd142045142108%_))
                                        (if (pair? _%tl142046142110%_)
                                            (let ((_%hd142047142115%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl142046142110%_)))
                                                  (_%tl142048142117%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl142046142110%_))))
                                              (let ((_%expr142120%_
                                                     _%hd142047142115%_))
                                                (if (pair? _%tl142048142117%_)
                                                    (let ((_%hd142049142122%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl142048142117%_)))
                                                          (_%tl142050142124%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl142048142117%_))))
                                                      (if (pair? _%hd142049142122%_)
                                                          (let ((_%hd142051142127%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%hd142049142122%_)))
                        (_%tl142052142129%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%hd142049142122%_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _%hd142051142127%_ 'quote))
                        (if (pair? _%tl142052142129%_)
                            (let ((_%hd142053142132%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%tl142052142129%_)))
                                  (_%tl142054142134%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%tl142052142129%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd142053142132%_ '#f))
                                  (if (null? _%tl142054142134%_)
                                      (if (null? _%tl142050142124%_)
                                          (_%K142042142100%_
                                           _%expr142120%_
                                           _%test142113%_)
                                          (_%else142040142064%_))
                                      (_%else142040142064%_))
                                  (_%else142040142064%_)))
                            (_%else142040142064%_))
                        (_%else142040142064%_)))
                  (_%else142040142064%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else142040142064%_))))
                                            (_%else142040142064%_))))
                                    (_%else142040142064%_))
                                (_%else142040142064%_)))
                          (_%else142040142064%_))))))
          (let* ((_%g141954141975%_
                  (lambda (_%g141955141972%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g141955141972%_))))
                 (_%g141953142034%_
                  (lambda (_%g141955141978%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g141955141978%_))
                        (let ((_%e141959141980%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g141955141978%_))))
                          (let ((_%hd141960141983%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141959141980%_)))
                                (_%tl141961141985%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141959141980%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl141961141985%_))
                                (let ((_%e141962141988%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl141961141985%_))))
                                  (let ((_%hd141963141991%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e141962141988%_)))
                                        (_%tl141964141993%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e141962141988%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl141964141993%_))
                                        (let ((_%e141965141996%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl141964141993%_))))
                                          (let ((_%hd141966141999%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e141965141996%_)))
                                                (_%tl141967142001%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e141965141996%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl141967142001%_))
                                                (let ((_%e141968142004%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl141967142001%_))))
                                                  (let ((_%hd141969142007%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e141968142004%_)))
                                                        (_%tl141970142009%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e141968142004%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl141970142009%_))
                                                        ((lambda (_%L142012%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L142013%_
                          _%L142014%_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#current-compile-boolean-context))
                       (_%simplify141952%_
                        (cons 'if
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _%self141949%_
                                       _%L142014%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self141949%_
                                             _%L142013%_))
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self141949%_
                                                   _%L142012%_))
                                                '())))))
                       (cons 'if
                             (cons (let ((__tmp149184
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self141949%_
                                               _%L142014%_)))))
                                     (declare (not safe))
                                     (__call-with-parameters
                                      __tmp149184
                                      gxc#current-compile-boolean-context
                                      '#t))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self141949%_
                                            _%L142013%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self141949%_
                                                  _%L142012%_))
                                               '()))))))
                 _%hd141969142007%_
                 _%hd141966141999%_
                 _%hd141963141991%_)
                (_%g141954141975%_ _%g141955141978%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g141954141975%_
                                                 _%g141955141978%_))))
                                        (_%g141954141975%_
                                         _%g141955141978%_))))
                                (_%g141954141975%_ _%g141955141978%_))))
                        (_%g141954141975%_ _%g141955141978%_)))))
            (_%g141953142034%_ _%stx141950%_)))))
    (define gxc#generate-runtime-ref%
      (lambda (_%self141897%_ _%stx141898%_)
        (let* ((_%g141900141913%_
                (lambda (_%g141901141910%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g141901141910%_))))
               (_%g141899141946%_
                (lambda (_%g141901141916%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g141901141916%_))
                      (let ((_%e141903141918%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g141901141916%_))))
                        (let ((_%hd141904141921%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141903141918%_)))
                              (_%tl141905141923%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141903141918%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl141905141923%_))
                              (let ((_%e141906141926%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl141905141923%_))))
                                (let ((_%hd141907141929%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141906141926%_)))
                                      (_%tl141908141931%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141906141926%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl141908141931%_))
                                      ((lambda (_%L141934%_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#generate-runtime-binding-id
                                            _%L141934%_)))
                                       _%hd141907141929%_)
                                      (_%g141900141913%_ _%g141901141916%_))))
                              (_%g141900141913%_ _%g141901141916%_))))
                      (_%g141900141913%_ _%g141901141916%_)))))
          (_%g141899141946%_ _%stx141898%_))))
    (define gxc#generate-runtime-setq%
      (lambda (_%self141829%_ _%stx141830%_)
        (let* ((_%g141832141849%_
                (lambda (_%g141833141846%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g141833141846%_))))
               (_%g141831141894%_
                (lambda (_%g141833141852%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g141833141852%_))
                      (let ((_%e141836141854%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g141833141852%_))))
                        (let ((_%hd141837141857%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141836141854%_)))
                              (_%tl141838141859%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141836141854%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl141838141859%_))
                              (let ((_%e141839141862%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl141838141859%_))))
                                (let ((_%hd141840141865%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141839141862%_)))
                                      (_%tl141841141867%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141839141862%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl141841141867%_))
                                      (let ((_%e141842141870%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl141841141867%_))))
                                        (let ((_%hd141843141873%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e141842141870%_)))
                                              (_%tl141844141875%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e141842141870%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl141844141875%_))
                                              ((lambda (_%L141878%_
                                                        _%L141879%_)
                                                 (cons 'set!
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#generate-runtime-binding-id _%L141879%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _%self141829%_ _%L141878%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd141843141873%_
                                               _%hd141840141865%_)
                                              (_%g141832141849%_
                                               _%g141833141852%_))))
                                      (_%g141832141849%_ _%g141833141852%_))))
                              (_%g141832141849%_ _%g141833141852%_))))
                      (_%g141832141849%_ _%g141833141852%_)))))
          (_%g141831141894%_ _%stx141830%_))))
    (define gxc#generate-runtime-struct-instancep%
      (lambda (_%self141640%_ _%stx141641%_)
        (let* ((_%g141643141660%_
                (lambda (_%g141644141657%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g141644141657%_))))
               (_%g141642141826%_
                (lambda (_%g141644141663%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g141644141663%_))
                      (let ((_%e141647141665%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g141644141663%_))))
                        (let ((_%hd141648141668%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141647141665%_)))
                              (_%tl141649141670%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141647141665%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl141649141670%_))
                              (let ((_%e141650141673%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl141649141670%_))))
                                (let ((_%hd141651141676%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141650141673%_)))
                                      (_%tl141652141678%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141650141673%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl141652141678%_))
                                      (let ((_%e141653141681%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl141652141678%_))))
                                        (let ((_%hd141654141684%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e141653141681%_)))
                                              (_%tl141655141686%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e141653141681%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl141655141686%_))
                                              ((lambda (_%L141689%_
                                                        _%L141690%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self141640%_ _%L141689%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _%self141640%_ _%L141690%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp141705%_ ((_%rest141708%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L141690%_ (cons _%L141689%_ '())))
                                (_%bind141710%_ '())
                                (_%args141711%_ '()))
               (let* ((_%rest141712141720%_ _%rest141708%_)
                      (_%else141714141728%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind141710%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-instance-of?
                                                       _%args141711%_)
                                                 '()))))))
                      (_%K141716141814%_
                       (lambda (_%rest141731%_ _%e141732%_)
                         (let* ((_%__stx148732148733%_ _%e141732%_)
                                (_%g141737141755%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx148732148733%_)))))
                           (let ((_%__kont148734148735%_
                                  (lambda ()
                                    (_%lp141705%_
                                     _%rest141731%_
                                     _%bind141710%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e141732%_))
                                           _%args141711%_))))
                                 (_%__kont148736148737%_
                                  (lambda ()
                                    (_%lp141705%_
                                     _%rest141731%_
                                     _%bind141710%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e141732%_))
                                           _%args141711%_))))
                                 (_%__kont148738148739%_
                                  (lambda ()
                                    (let ((_%tmp141762%_
                                           (let ((__tmp149185
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp149185))))
                                      (_%lp141705%_
                                       _%rest141731%_
                                       (cons (cons _%tmp141762%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e141732%_))
                                                         '()))
                                             _%bind141710%_)
                                       (cons _%tmp141762%_ _%args141711%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx148732148733%_))
                                 (let ((_%e141739141793%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx148732148733%_))))
                                   (let ((_%tl141741141798%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e141739141793%_)))
                                         (_%hd141740141796%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e141739141793%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd141740141796%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd141740141796%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl141741141798%_))
                                                 (let ((_%e141742141801%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl141741141798%_))))
                                                   (let ((_%tl141744141806%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e141742141801%_)))
                                                         (_%hd141743141804%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e141742141801%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl141744141806%_))
                                                         (_%__kont148734148735%_)
                                                         (_%__kont148738148739%_))))
                                                 (_%__kont148738148739%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd141740141796%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl141741141798%_))
                                                     (let ((_%e141748141778%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl141741141798%_))))
                                                       (let ((_%tl141750141783%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e141748141778%_)))
                     (_%hd141749141781%_
                      (let () (declare (not safe)) (##car _%e141748141778%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl141750141783%_))
                     (_%__kont148736148737%_)
                     (_%__kont148738148739%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont148738148739%_))
                                                 (_%__kont148738148739%_)))
                                         (_%__kont148738148739%_))))
                                 (_%__kont148738148739%_)))))))
                 (if (pair? _%rest141712141720%_)
                     (let ((_%hd141717141817%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest141712141720%_)))
                           (_%tl141718141819%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest141712141720%_))))
                       (let* ((_%e141822%_ _%hd141717141817%_)
                              (_%rest141824%_ _%tl141718141819%_))
                         (_%K141716141814%_ _%rest141824%_ _%e141822%_)))
                     (_%else141714141728%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd141654141684%_
                                               _%hd141651141676%_)
                                              (_%g141643141660%_
                                               _%g141644141663%_))))
                                      (_%g141643141660%_ _%g141644141663%_))))
                              (_%g141643141660%_ _%g141644141663%_))))
                      (_%g141643141660%_ _%g141644141663%_)))))
          (_%g141642141826%_ _%stx141641%_))))
    (define gxc#generate-runtime-struct-direct-instancep%
      (lambda (_%self141451%_ _%stx141452%_)
        (let* ((_%g141454141471%_
                (lambda (_%g141455141468%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g141455141468%_))))
               (_%g141453141637%_
                (lambda (_%g141455141474%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g141455141474%_))
                      (let ((_%e141458141476%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g141455141474%_))))
                        (let ((_%hd141459141479%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141458141476%_)))
                              (_%tl141460141481%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141458141476%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl141460141481%_))
                              (let ((_%e141461141484%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl141460141481%_))))
                                (let ((_%hd141462141487%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141461141484%_)))
                                      (_%tl141463141489%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141461141484%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl141463141489%_))
                                      (let ((_%e141464141492%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl141463141489%_))))
                                        (let ((_%hd141465141495%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e141464141492%_)))
                                              (_%tl141466141497%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e141464141492%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl141466141497%_))
                                              ((lambda (_%L141500%_
                                                        _%L141501%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-direct-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self141451%_ _%L141500%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _%self141451%_ _%L141501%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp141516%_ ((_%rest141519%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L141501%_ (cons _%L141500%_ '())))
                                (_%bind141521%_ '())
                                (_%args141522%_ '()))
               (let* ((_%rest141523141531%_ _%rest141519%_)
                      (_%else141525141539%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind141521%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-direct-instance-of?
                                                       _%args141522%_)
                                                 '()))))))
                      (_%K141527141625%_
                       (lambda (_%rest141542%_ _%e141543%_)
                         (let* ((_%__stx148778148779%_ _%e141543%_)
                                (_%g141548141566%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx148778148779%_)))))
                           (let ((_%__kont148780148781%_
                                  (lambda ()
                                    (_%lp141516%_
                                     _%rest141542%_
                                     _%bind141521%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e141543%_))
                                           _%args141522%_))))
                                 (_%__kont148782148783%_
                                  (lambda ()
                                    (_%lp141516%_
                                     _%rest141542%_
                                     _%bind141521%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e141543%_))
                                           _%args141522%_))))
                                 (_%__kont148784148785%_
                                  (lambda ()
                                    (let ((_%tmp141573%_
                                           (let ((__tmp149186
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp149186))))
                                      (_%lp141516%_
                                       _%rest141542%_
                                       (cons (cons _%tmp141573%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e141543%_))
                                                         '()))
                                             _%bind141521%_)
                                       (cons _%tmp141573%_ _%args141522%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx148778148779%_))
                                 (let ((_%e141550141604%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx148778148779%_))))
                                   (let ((_%tl141552141609%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e141550141604%_)))
                                         (_%hd141551141607%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e141550141604%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd141551141607%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd141551141607%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl141552141609%_))
                                                 (let ((_%e141553141612%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl141552141609%_))))
                                                   (let ((_%tl141555141617%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e141553141612%_)))
                                                         (_%hd141554141615%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e141553141612%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl141555141617%_))
                                                         (_%__kont148780148781%_)
                                                         (_%__kont148784148785%_))))
                                                 (_%__kont148784148785%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd141551141607%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl141552141609%_))
                                                     (let ((_%e141559141589%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl141552141609%_))))
                                                       (let ((_%tl141561141594%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e141559141589%_)))
                     (_%hd141560141592%_
                      (let () (declare (not safe)) (##car _%e141559141589%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl141561141594%_))
                     (_%__kont148782148783%_)
                     (_%__kont148784148785%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont148784148785%_))
                                                 (_%__kont148784148785%_)))
                                         (_%__kont148784148785%_))))
                                 (_%__kont148784148785%_)))))))
                 (if (pair? _%rest141523141531%_)
                     (let ((_%hd141528141628%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest141523141531%_)))
                           (_%tl141529141630%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest141523141531%_))))
                       (let* ((_%e141633%_ _%hd141528141628%_)
                              (_%rest141635%_ _%tl141529141630%_))
                         (_%K141527141625%_ _%rest141635%_ _%e141633%_)))
                     (_%else141525141539%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd141465141495%_
                                               _%hd141462141487%_)
                                              (_%g141454141471%_
                                               _%g141455141474%_))))
                                      (_%g141454141471%_ _%g141455141474%_))))
                              (_%g141454141471%_ _%g141455141474%_))))
                      (_%g141454141471%_ _%g141455141474%_)))))
          (_%g141453141637%_ _%stx141452%_))))
    (define gxc#generate-runtime-struct-ref%
      (lambda (_%self141367%_ _%stx141368%_)
        (let* ((_%g141370141391%_
                (lambda (_%g141371141388%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g141371141388%_))))
               (_%g141369141448%_
                (lambda (_%g141371141394%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g141371141394%_))
                      (let ((_%e141375141396%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g141371141394%_))))
                        (let ((_%hd141376141399%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141375141396%_)))
                              (_%tl141377141401%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141375141396%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl141377141401%_))
                              (let ((_%e141378141404%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl141377141401%_))))
                                (let ((_%hd141379141407%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141378141404%_)))
                                      (_%tl141380141409%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141378141404%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl141380141409%_))
                                      (let ((_%e141381141412%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl141380141409%_))))
                                        (let ((_%hd141382141415%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e141381141412%_)))
                                              (_%tl141383141417%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e141381141412%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl141383141417%_))
                                              (let ((_%e141384141420%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl141383141417%_))))
                                                (let ((_%hd141385141423%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e141384141420%_)))
                                                      (_%tl141386141425%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e141384141420%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl141386141425%_))
                                                      ((lambda (_%L141428%_
                                                                _%L141429%_
                                                                _%L141430%_)
                                                         (cons '##structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1 _%self141367%_ _%L141428%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self141367%_
                                      _%L141429%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self141367%_
                                            _%L141430%_))
                                         (cons ''#f '()))))))
               _%hd141385141423%_
               _%hd141382141415%_
               _%hd141379141407%_)
              (_%g141370141391%_ _%g141371141394%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g141370141391%_
                                               _%g141371141394%_))))
                                      (_%g141370141391%_ _%g141371141394%_))))
                              (_%g141370141391%_ _%g141371141394%_))))
                      (_%g141370141391%_ _%g141371141394%_)))))
          (_%g141369141448%_ _%stx141368%_))))
    (define gxc#generate-runtime-struct-setq%
      (lambda (_%self141267%_ _%stx141268%_)
        (let* ((_%g141270141295%_
                (lambda (_%g141271141292%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g141271141292%_))))
               (_%g141269141364%_
                (lambda (_%g141271141298%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g141271141298%_))
                      (let ((_%e141276141300%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g141271141298%_))))
                        (let ((_%hd141277141303%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141276141300%_)))
                              (_%tl141278141305%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141276141300%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl141278141305%_))
                              (let ((_%e141279141308%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl141278141305%_))))
                                (let ((_%hd141280141311%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141279141308%_)))
                                      (_%tl141281141313%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141279141308%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl141281141313%_))
                                      (let ((_%e141282141316%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl141281141313%_))))
                                        (let ((_%hd141283141319%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e141282141316%_)))
                                              (_%tl141284141321%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e141282141316%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl141284141321%_))
                                              (let ((_%e141285141324%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl141284141321%_))))
                                                (let ((_%hd141286141327%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e141285141324%_)))
                                                      (_%tl141287141329%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e141285141324%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl141287141329%_))
                                                      (let ((_%e141288141332%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl141287141329%_))))
                (let ((_%hd141289141335%_
                       (let () (declare (not safe)) (##car _%e141288141332%_)))
                      (_%tl141290141337%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e141288141332%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl141290141337%_))
                      ((lambda (_%L141340%_
                                _%L141341%_
                                _%L141342%_
                                _%L141343%_)
                         (cons '##structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self141267%_
                                        _%L141341%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self141267%_
                                              _%L141340%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self141267%_
                                                    _%L141342%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self141267%_
                                                          _%L141343%_))
                                                       (cons ''#f '())))))))
                       _%hd141289141335%_
                       _%hd141286141327%_
                       _%hd141283141319%_
                       _%hd141280141311%_)
                      (_%g141270141295%_ _%g141271141298%_))))
              (_%g141270141295%_ _%g141271141298%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g141270141295%_
                                               _%g141271141298%_))))
                                      (_%g141270141295%_ _%g141271141298%_))))
                              (_%g141270141295%_ _%g141271141298%_))))
                      (_%g141270141295%_ _%g141271141298%_)))))
          (_%g141269141364%_ _%stx141268%_))))
    (define gxc#generate-runtime-struct-direct-ref%
      (lambda (_%self141183%_ _%stx141184%_)
        (let* ((_%g141186141207%_
                (lambda (_%g141187141204%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g141187141204%_))))
               (_%g141185141264%_
                (lambda (_%g141187141210%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g141187141210%_))
                      (let ((_%e141191141212%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g141187141210%_))))
                        (let ((_%hd141192141215%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141191141212%_)))
                              (_%tl141193141217%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141191141212%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl141193141217%_))
                              (let ((_%e141194141220%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl141193141217%_))))
                                (let ((_%hd141195141223%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141194141220%_)))
                                      (_%tl141196141225%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141194141220%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl141196141225%_))
                                      (let ((_%e141197141228%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl141196141225%_))))
                                        (let ((_%hd141198141231%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e141197141228%_)))
                                              (_%tl141199141233%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e141197141228%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl141199141233%_))
                                              (let ((_%e141200141236%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl141199141233%_))))
                                                (let ((_%hd141201141239%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e141200141236%_)))
                                                      (_%tl141202141241%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e141200141236%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl141202141241%_))
                                                      ((lambda (_%L141244%_
                                                                _%L141245%_
                                                                _%L141246%_)
                                                         (cons '##direct-structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1 _%self141183%_ _%L141244%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self141183%_
                                      _%L141245%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self141183%_
                                            _%L141246%_))
                                         (cons ''#f '()))))))
               _%hd141201141239%_
               _%hd141198141231%_
               _%hd141195141223%_)
              (_%g141186141207%_ _%g141187141210%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g141186141207%_
                                               _%g141187141210%_))))
                                      (_%g141186141207%_ _%g141187141210%_))))
                              (_%g141186141207%_ _%g141187141210%_))))
                      (_%g141186141207%_ _%g141187141210%_)))))
          (_%g141185141264%_ _%stx141184%_))))
    (define gxc#generate-runtime-struct-direct-setq%
      (lambda (_%self141083%_ _%stx141084%_)
        (let* ((_%g141086141111%_
                (lambda (_%g141087141108%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g141087141108%_))))
               (_%g141085141180%_
                (lambda (_%g141087141114%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g141087141114%_))
                      (let ((_%e141092141116%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g141087141114%_))))
                        (let ((_%hd141093141119%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141092141116%_)))
                              (_%tl141094141121%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141092141116%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl141094141121%_))
                              (let ((_%e141095141124%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl141094141121%_))))
                                (let ((_%hd141096141127%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141095141124%_)))
                                      (_%tl141097141129%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141095141124%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl141097141129%_))
                                      (let ((_%e141098141132%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl141097141129%_))))
                                        (let ((_%hd141099141135%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e141098141132%_)))
                                              (_%tl141100141137%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e141098141132%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl141100141137%_))
                                              (let ((_%e141101141140%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl141100141137%_))))
                                                (let ((_%hd141102141143%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e141101141140%_)))
                                                      (_%tl141103141145%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e141101141140%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl141103141145%_))
                                                      (let ((_%e141104141148%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl141103141145%_))))
                (let ((_%hd141105141151%_
                       (let () (declare (not safe)) (##car _%e141104141148%_)))
                      (_%tl141106141153%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e141104141148%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl141106141153%_))
                      ((lambda (_%L141156%_
                                _%L141157%_
                                _%L141158%_
                                _%L141159%_)
                         (cons '##direct-structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self141083%_
                                        _%L141157%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self141083%_
                                              _%L141156%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self141083%_
                                                    _%L141158%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self141083%_
                                                          _%L141159%_))
                                                       (cons ''#f '())))))))
                       _%hd141105141151%_
                       _%hd141102141143%_
                       _%hd141099141135%_
                       _%hd141096141127%_)
                      (_%g141086141111%_ _%g141087141114%_))))
              (_%g141086141111%_ _%g141087141114%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g141086141111%_
                                               _%g141087141114%_))))
                                      (_%g141086141111%_ _%g141087141114%_))))
                              (_%g141086141111%_ _%g141087141114%_))))
                      (_%g141086141111%_ _%g141087141114%_)))))
          (_%g141085141180%_ _%stx141084%_))))
    (define gxc#generate-runtime-struct-unchecked-ref%
      (lambda (_%self140878%_ _%stx140879%_)
        (let* ((_%g140881140902%_
                (lambda (_%g140882140899%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g140882140899%_))))
               (_%g140880141080%_
                (lambda (_%g140882140905%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g140882140905%_))
                      (let ((_%e140886140907%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g140882140905%_))))
                        (let ((_%hd140887140910%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e140886140907%_)))
                              (_%tl140888140912%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e140886140907%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl140888140912%_))
                              (let ((_%e140889140915%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl140888140912%_))))
                                (let ((_%hd140890140918%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e140889140915%_)))
                                      (_%tl140891140920%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e140889140915%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl140891140920%_))
                                      (let ((_%e140892140923%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl140891140920%_))))
                                        (let ((_%hd140893140926%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e140892140923%_)))
                                              (_%tl140894140928%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e140892140923%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl140894140928%_))
                                              (let ((_%e140895140931%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl140894140928%_))))
                                                (let ((_%hd140896140934%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e140895140931%_)))
                                                      (_%tl140897140936%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e140895140931%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl140897140936%_))
                                                      ((lambda (_%L140939%_
                                                                _%L140940%_
                                                                _%L140941%_)
                                                         (if (gxc#current-compile-decls-unsafe?)
                                                             (cons '##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__1
                                    _%self140878%_
                                    _%L140939%_))
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self140878%_
                                          _%L140940%_))
                                       (cons ''#f (cons ''#f '())))))
                     (let _%lp140959%_ ((_%rest140962%_
                                         (cons _%L140940%_
                                               (cons _%L140939%_ '())))
                                        (_%bind140964%_ '())
                                        (_%args140965%_ '()))
                       (let* ((_%rest140966140974%_ _%rest140962%_)
                              (_%else140968140982%_
                               (lambda ()
                                 (cons 'let
                                       (cons _%bind140964%_
                                             (cons '(declare (not safe))
                                                   (cons (cons '##unchecked-structure-ref
                                                               (let ((__tmp149187
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons ''#f (cons ''#f '()))))
                         (declare (not safe))
                         (__foldr1 cons __tmp149187 _%args140965%_)))
                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%K140970141068%_
                               (lambda (_%rest140985%_ _%e140986%_)
                                 (let* ((_%__stx148824148825%_ _%e140986%_)
                                        (_%g140991141009%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx148824148825%_)))))
                                   (let ((_%__kont148826148827%_
                                          (lambda ()
                                            (_%lp140959%_
                                             _%rest140985%_
                                             _%bind140964%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e140986%_))
                                                   _%args140965%_))))
                                         (_%__kont148828148829%_
                                          (lambda ()
                                            (_%lp140959%_
                                             _%rest140985%_
                                             _%bind140964%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e140986%_))
                                                   _%args140965%_))))
                                         (_%__kont148830148831%_
                                          (lambda ()
                                            (let ((_%tmp141016%_
                                                   (let ((__tmp149188
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym
                                                             '__tmp))))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp149188))))
                                              (_%lp140959%_
                                               _%rest140985%_
                                               (cons (cons _%tmp141016%_
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__0 _%e140986%_))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind140964%_)
                                               (cons _%tmp141016%_
                                                     _%args140965%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx148824148825%_))
                                         (let ((_%e140993141047%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx148824148825%_))))
                                           (let ((_%tl140995141052%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e140993141047%_)))
                                                 (_%hd140994141050%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e140993141047%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd140994141050%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#ref
                                                        _%hd140994141050%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl140995141052%_))
                                                         (let ((_%e140996141055%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl140995141052%_))))
                   (let ((_%tl140998141060%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e140996141055%_)))
                         (_%hd140997141058%_
                          (let ()
                            (declare (not safe))
                            (##car _%e140996141055%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl140998141060%_))
                         (_%__kont148826148827%_)
                         (_%__kont148830148831%_))))
                 (_%__kont148830148831%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#quote
                                                            _%hd140994141050%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl140995141052%_))
                     (let ((_%e141002141032%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl140995141052%_))))
                       (let ((_%tl141004141037%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e141002141032%_)))
                             (_%hd141003141035%_
                              (let ()
                                (declare (not safe))
                                (##car _%e141002141032%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl141004141037%_))
                             (_%__kont148828148829%_)
                             (_%__kont148830148831%_))))
                     (_%__kont148830148831%_))
                 (_%__kont148830148831%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont148830148831%_))))
                                         (_%__kont148830148831%_)))))))
                         (if (pair? _%rest140966140974%_)
                             (let ((_%hd140971141071%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest140966140974%_)))
                                   (_%tl140972141073%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest140966140974%_))))
                               (let* ((_%e141076%_ _%hd140971141071%_)
                                      (_%rest141078%_ _%tl140972141073%_))
                                 (_%K140970141068%_
                                  _%rest141078%_
                                  _%e141076%_)))
                             (_%else140968140982%_))))))
               _%hd140896140934%_
               _%hd140893140926%_
               _%hd140890140918%_)
              (_%g140881140902%_ _%g140882140905%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g140881140902%_
                                               _%g140882140905%_))))
                                      (_%g140881140902%_ _%g140882140905%_))))
                              (_%g140881140902%_ _%g140882140905%_))))
                      (_%g140881140902%_ _%g140882140905%_)))))
          (_%g140880141080%_ _%stx140879%_))))
    (define gxc#generate-runtime-struct-unchecked-setq%
      (lambda (_%self140657%_ _%stx140658%_)
        (let* ((_%g140660140685%_
                (lambda (_%g140661140682%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g140661140682%_))))
               (_%g140659140875%_
                (lambda (_%g140661140688%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g140661140688%_))
                      (let ((_%e140666140690%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g140661140688%_))))
                        (let ((_%hd140667140693%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e140666140690%_)))
                              (_%tl140668140695%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e140666140690%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl140668140695%_))
                              (let ((_%e140669140698%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl140668140695%_))))
                                (let ((_%hd140670140701%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e140669140698%_)))
                                      (_%tl140671140703%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e140669140698%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl140671140703%_))
                                      (let ((_%e140672140706%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl140671140703%_))))
                                        (let ((_%hd140673140709%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e140672140706%_)))
                                              (_%tl140674140711%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e140672140706%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl140674140711%_))
                                              (let ((_%e140675140714%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl140674140711%_))))
                                                (let ((_%hd140676140717%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e140675140714%_)))
                                                      (_%tl140677140719%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e140675140714%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl140677140719%_))
                                                      (let ((_%e140678140722%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl140677140719%_))))
                (let ((_%hd140679140725%_
                       (let () (declare (not safe)) (##car _%e140678140722%_)))
                      (_%tl140680140727%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e140678140722%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl140680140727%_))
                      ((lambda (_%L140730%_
                                _%L140731%_
                                _%L140732%_
                                _%L140733%_)
                         (if (gxc#current-compile-decls-unsafe?)
                             (cons '##unchecked-structure-set!
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self140657%_
                                            _%L140731%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self140657%_
                                                  _%L140730%_))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self140657%_
                                                        _%L140732%_))
                                                     (cons ''#f
                                                           (cons ''#f '()))))))
                             (let _%lp140754%_ ((_%rest140757%_
                                                 (cons _%L140732%_
                                                       (cons _%L140730%_
                                                             (cons _%L140731%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%bind140759%_ '())
                                                (_%args140760%_ '()))
                               (let* ((_%rest140761140769%_ _%rest140757%_)
                                      (_%else140763140777%_
                                       (lambda ()
                                         (cons 'let
                                               (cons _%bind140759%_
                                                     (cons '(declare
                                                              (not safe))
                                                           (cons (cons '##unchecked-structure-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp149189 (cons ''#f (cons ''#f '()))))
                                 (declare (not safe))
                                 (__foldr1 cons __tmp149189 _%args140760%_)))
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%K140765140863%_
                                       (lambda (_%rest140780%_ _%e140781%_)
                                         (let* ((_%__stx148870148871%_
                                                 _%e140781%_)
                                                (_%g140786140804%_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%__stx148870148871%_)))))
                                           (let ((_%__kont148872148873%_
                                                  (lambda ()
                                                    (_%lp140754%_
                                                     _%rest140780%_
                                                     _%bind140759%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e140781%_))
                                                           _%args140760%_))))
                                                 (_%__kont148874148875%_
                                                  (lambda ()
                                                    (_%lp140754%_
                                                     _%rest140780%_
                                                     _%bind140759%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e140781%_))
                                                           _%args140760%_))))
                                                 (_%__kont148876148877%_
                                                  (lambda ()
                                                    (let ((_%tmp140811%_
                                                           (let ((__tmp149190
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__tmp))))
                     (declare (not safe))
                     (make-symbol__0 __tmp149190))))
              (_%lp140754%_
               _%rest140780%_
               (cons (cons _%tmp140811%_
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__0 _%e140781%_))
                                 '()))
                     _%bind140759%_)
               (cons _%tmp140811%_ _%args140760%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%__stx148870148871%_))
                                                 (let ((_%e140788140842%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%__stx148870148871%_))))
                                                   (let ((_%tl140790140847%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e140788140842%_)))
                                                         (_%hd140789140845%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e140788140842%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _%hd140789140845%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-eq? '%#ref _%hd140789140845%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl140790140847%_))
                         (let ((_%e140791140850%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl140790140847%_))))
                           (let ((_%tl140793140855%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e140791140850%_)))
                                 (_%hd140792140853%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e140791140850%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl140793140855%_))
                                 (_%__kont148872148873%_)
                                 (_%__kont148876148877%_))))
                         (_%__kont148876148877%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-eq? '%#quote _%hd140789140845%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%tl140790140847%_))
                             (let ((_%e140797140827%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%tl140790140847%_))))
                               (let ((_%tl140799140832%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e140797140827%_)))
                                     (_%hd140798140830%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e140797140827%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%tl140799140832%_))
                                     (_%__kont148874148875%_)
                                     (_%__kont148876148877%_))))
                             (_%__kont148876148877%_))
                         (_%__kont148876148877%_)))
                 (_%__kont148876148877%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont148876148877%_)))))))
                                 (if (pair? _%rest140761140769%_)
                                     (let ((_%hd140766140866%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%rest140761140769%_)))
                                           (_%tl140767140868%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%rest140761140769%_))))
                                       (let* ((_%e140871%_ _%hd140766140866%_)
                                              (_%rest140873%_
                                               _%tl140767140868%_))
                                         (_%K140765140863%_
                                          _%rest140873%_
                                          _%e140871%_)))
                                     (_%else140763140777%_))))))
                       _%hd140679140725%_
                       _%hd140676140717%_
                       _%hd140673140709%_
                       _%hd140670140701%_)
                      (_%g140660140685%_ _%g140661140688%_))))
              (_%g140660140685%_ _%g140661140688%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g140660140685%_
                                               _%g140661140688%_))))
                                      (_%g140660140685%_ _%g140661140688%_))))
                              (_%g140660140685%_ _%g140661140688%_))))
                      (_%g140660140685%_ _%g140661140688%_)))))
          (_%g140659140875%_ _%stx140658%_))))
    (define gxc#generate-runtime-loader-import%
      (lambda (_%self140496%_ _%stx140497%_)
        (letrec ((_%import-set-template140499%_
                  (lambda (_%in140602%_ _%phi140603%_)
                    (let ((_%iphi140605%_
                           (fx+ _%phi140603%_
                                (##direct-structure-ref
                                 _%in140602%_
                                 '2
                                 gx#import-set::t
                                 '#f)))
                          (_%imports140606%_
                           (##structure-ref
                            (##direct-structure-ref
                             _%in140602%_
                             '1
                             gx#import-set::t
                             '#f)
                            '8
                            gx#module-context::t
                            '#f)))
                      (let _%lp140608%_ ((_%rest140610%_ _%imports140606%_)
                                         (_%r140611%_ '()))
                        (let* ((_%rest140612140620%_ _%rest140610%_)
                               (_%else140614140628%_ (lambda () _%r140611%_))
                               (_%K140616140645%_
                                (lambda (_%rest140631%_ _%in140632%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%in140632%_
                                         'gx#module-context::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxzero? _%iphi140605%_))
                                          (_%lp140608%_
                                           _%rest140631%_
                                           (cons _%in140632%_ _%r140611%_))
                                          (_%lp140608%_
                                           _%rest140631%_
                                           _%r140611%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%in140632%_
                                             'gx#module-import::t))
                                          (let ((_%iphi140636%_
                                                 (fx+ _%phi140603%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%in140632%_
                                                         '3
                                                         '#f
                                                         '#f)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##fxzero? _%iphi140636%_))
                                                (_%lp140608%_
                                                 _%rest140631%_
                                                 (cons (##direct-structure-ref
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%in140632%_
                                                           '1
                                                           '#f
                                                           '#f))
                                                        '1
                                                        gx#module-export::t
                                                        '#f)
                                                       _%r140611%_))
                                                (_%lp140608%_
                                                 _%rest140631%_
                                                 _%r140611%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 _%in140632%_
                                                 'gx#import-set::t))
                                              (let ((_%xphi140639%_
                                                     (fx+ _%iphi140605%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%in140632%_
                                                             '2
                                                             '#f
                                                             '#f)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##fxzero?
                                                       _%xphi140639%_))
                                                    (_%lp140608%_
                                                     _%rest140631%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in140632%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           _%r140611%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##fxpositive?
                                                           _%xphi140639%_))
                                                        (_%lp140608%_
                                                         _%rest140631%_
                                                         (let ((__tmp149191
                                                                (_%import-set-template140499%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in140632%_
                         _%iphi140605%_)))
                   (declare (not safe))
                   (__foldl1 cons _%r140611%_ __tmp149191)))
                (_%lp140608%_ _%rest140631%_ _%r140611%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%lp140608%_
                                               _%rest140631%_
                                               _%r140611%_)))))))
                          (if (pair? _%rest140612140620%_)
                              (let ((_%hd140617140648%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest140612140620%_)))
                                    (_%tl140618140650%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest140612140620%_))))
                                (let* ((_%in140653%_ _%hd140617140648%_)
                                       (_%rest140655%_ _%tl140618140650%_))
                                  (_%K140616140645%_
                                   _%rest140655%_
                                   _%in140653%_)))
                              (_%else140614140628%_))))))))
          (let* ((_%g140501140511%_
                  (lambda (_%g140502140508%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g140502140508%_))))
                 (_%g140500140599%_
                  (lambda (_%g140502140514%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g140502140514%_))
                        (let ((_%e140504140516%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g140502140514%_))))
                          (let ((_%hd140505140519%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140504140516%_)))
                                (_%tl140506140521%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140504140516%_))))
                            ((lambda (_%L140524%_)
                               (let ((_%ht140535%_
                                      (let ()
                                        (declare (not safe))
                                        (make-hash-table-eq))))
                                 (let _%lp140537%_ ((_%rest140539%_
                                                     _%L140524%_)
                                                    (_%loads140540%_ '()))
                                   (letrec ((_%K140542%_
                                             (lambda (_%ctx140592%_
                                                      _%rest140593%_)
                                               (let ((_%id140595%_
                                                      (##structure-ref
                                                       _%ctx140592%_
                                                       '1
                                                       gx#expander-context::t
                                                       '#f)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (__hash-get
                                                        _%ht140535%_
                                                        _%id140595%_))
                                                     (_%lp140537%_
                                                      _%rest140593%_
                                                      _%loads140540%_)
                                                     (let ((_%rt140597%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#module-id->path-string
                                                               _%id140595%_))))
                                                       (let ()
                                                         (declare (not safe))
                                                         (__hash-put!
                                                          _%ht140535%_
                                                          _%id140595%_
                                                          _%rt140597%_))
                                                       (_%lp140537%_
                                                        _%rest140593%_
                                                        (cons _%rt140597%_
                                                              _%loads140540%_))))))))
                                     (let* ((_%rest140543140551%_
                                             _%rest140539%_)
                                            (_%else140545140563%_
                                             (lambda ()
                                               (cons 'begin
                                                     (let ((__tmp149193
                                                            (lambda (_%g140558140560%_)
                                                              (list 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g140558140560%_)))
                   (__tmp149192 (reverse _%loads140540%_)))
               (declare (not safe))
               (##map __tmp149193 __tmp149192)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%K140547140580%_
                                             (lambda (_%rest140566%_
                                                      _%in140567%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-instance-of?
                                                      _%in140567%_
                                                      'gx#module-context::t))
                                                   (_%K140542%_
                                                    _%in140567%_
                                                    _%rest140566%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          _%in140567%_
                                                          'gx#module-import::t))
                                                       (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%in140567%_
                               '3
                               '#f
                               '#f)))
                   (_%K140542%_
                    (##direct-structure-ref
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%in140567%_ '1 '#f '#f))
                     '1
                     gx#module-export::t
                     '#f)
                    _%rest140566%_)
                   (_%lp140537%_ _%rest140566%_ _%loads140540%_))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%in140567%_
                      'gx#import-set::t))
                   (let ((_%phi140572%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%in140567%_
                             '2
                             '#f
                             '#f))))
                     (if (fxzero? _%phi140572%_)
                         (_%K140542%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%in140567%_
                             '1
                             '#f
                             '#f))
                          _%rest140566%_)
                         (if (fxpositive? _%phi140572%_)
                             (let ((_%deps140576%_
                                    (_%import-set-template140499%_
                                     _%in140567%_
                                     '0)))
                               (_%lp140537%_
                                (let ()
                                  (declare (not safe))
                                  (__foldl1
                                   cons
                                   _%rest140566%_
                                   _%deps140576%_))
                                _%loads140540%_))
                             (_%lp140537%_ _%rest140566%_ _%loads140540%_))))
                   (let ()
                     (declare (not safe))
                     (gxc#raise-compile-error
                      '"Unexpected import"
                      _%stx140497%_
                      _%in140567%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (pair? _%rest140543140551%_)
                                           (let ((_%hd140548140583%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%rest140543140551%_)))
                                                 (_%tl140549140585%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%rest140543140551%_))))
                                             (let* ((_%in140588%_
                                                     _%hd140548140583%_)
                                                    (_%rest140590%_
                                                     _%tl140549140585%_))
                                               (_%K140547140580%_
                                                _%rest140590%_
                                                _%in140588%_)))
                                           (_%else140545140563%_)))))))
                             _%tl140506140521%_)))
                        (_%g140501140511%_ _%g140502140514%_)))))
            (_%g140500140599%_ _%stx140497%_)))))
    (define gxc#generate-runtime-quote-syntax%
      (lambda (_%self140309%_ _%stx140310%_)
        (letrec ((_%add-lift!140312%_
                  (lambda (_%expr140494%_)
                    (set-box!
                     (let () (declare (not safe)) (gxc#current-compile-lift))
                     (cons _%expr140494%_
                           (unbox (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-lift)))))))
                 (_%generate-syntax-quote140313%_
                  (lambda (_%id140491%_ _%marks140492%_)
                    (cons '##structure
                          (cons 'gx#syntax-quote::t
                                (cons (cons 'quote (cons _%id140491%_ '()))
                                      (cons '#f
                                            (cons '(gx#current-expander-context)
                                                  (cons _%marks140492%_
                                                        '()))))))))
                 (_%generate-simple140314%_
                  (lambda (_%stxq140486%_)
                    (let ((_%gid140488%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__% '#t)))
                          (_%qid140489%_
                           (gxc#generate-runtime-identifier _%stxq140486%_)))
                      (_%add-lift!140312%_
                       (cons 'define
                             (cons _%gid140488%_
                                   (cons (_%generate-syntax-quote140313%_
                                          _%qid140489%_
                                          ''())
                                         '()))))
                      (let ((__tmp149194
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp149194 _%stxq140486%_ _%gid140488%_))
                      _%gid140488%_)))
                 (_%generate-serialized140315%_
                  (lambda (_%stxq140476%_ _%marks140477%_)
                    (let* ((_%mark-refs140479%_
                            (map _%generate-mark140316%_ _%marks140477%_))
                           (_%gid140481%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%qid140483%_
                            (gxc#generate-runtime-identifier _%stxq140476%_)))
                      (_%add-lift!140312%_
                       (cons 'define
                             (cons _%gid140481%_
                                   (cons (_%generate-syntax-quote140313%_
                                          _%qid140483%_
                                          (cons 'list _%mark-refs140479%_))
                                         '()))))
                      (let ((__tmp149195
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp149195 _%stxq140476%_ _%gid140481%_))
                      _%gid140481%_)))
                 (_%generate-mark140316%_
                  (lambda (_%mark140461%_)
                    (let ((_%$e140463%_
                           (let ((__tmp149196
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-marks))))
                             (declare (not safe))
                             (hash-get __tmp149196 _%mark140461%_))))
                      (if _%$e140463%_
                          _%$e140463%_
                          (let* ((_%gid140467%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-temporary__% '#t)))
                                 (_%repr140469%_
                                  (_%serialize-mark140317%_ _%mark140461%_))
                                 (_%ctx140471%_
                                  (let ((__tmp149197
                                         (##structure-ref
                                          _%mark140461%_
                                          '2
                                          gx#expander-mark::t
                                          '#f)))
                                    (declare (not safe))
                                    (gx#core-context-top__1 __tmp149197)))
                                 (_%ctx-ref140473%_
                                  (if (eq? _%ctx140471%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-context)))
                                      '(gx#current-expander-context)
                                      (cons 'gx#import-module
                                            (cons (cons 'quote
                                                        (cons (_%context-ref140318%_
                                                               _%ctx140471%_)
                                                              '()))
                                                  '())))))
                            (let ((__tmp149198
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-marks))))
                              (declare (not safe))
                              (hash-put!
                               __tmp149198
                               _%mark140461%_
                               _%gid140467%_))
                            (_%add-lift!140312%_
                             (cons 'define
                                   (cons _%gid140467%_
                                         (cons (cons 'gx#core-deserialize-mark
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%repr140469%_ '()))
                   (cons _%ctx-ref140473%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            _%gid140467%_)))))
                 (_%serialize-mark140317%_
                  (lambda (_%mark140408%_)
                    (letrec ((_%quote-e140410%_
                              (lambda (_%sym140459%_)
                                (if (let ()
                                      (declare (not safe))
                                      (interned-symbol? _%sym140459%_))
                                    _%sym140459%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-gensym-reference__0
                                       _%sym140459%_))))))
                      (let* ((_%mark140411140420%_ _%mark140408%_)
                             (_%E140413140424%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%mark140411140420%_
                                         '((expander-mark
                                            subst
                                            ctx
                                            phi
                                            trace))))
                                '#!void))
                             (_%K140414140436%_
                              (lambda (_%trace140427%_
                                       _%phi140428%_
                                       _%ctx140429%_
                                       _%subst140430%_)
                                (let ((_%subs140432%_
                                       (if _%subst140430%_
                                           (let ()
                                             (declare (not safe))
                                             (hash->list _%subst140430%_))
                                           '())))
                                  (cons _%phi140428%_
                                        (map (lambda (_%pair140434%_)
                                               (cons (_%quote-e140410%_
                                                      (car _%pair140434%_))
                                                     (_%quote-e140410%_
                                                      (cdr _%pair140434%_))))
                                             _%subs140432%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%mark140411140420%_
                               'gx#expander-mark::t))
                            (let* ((_%e140415140439%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark140411140420%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%subst140442%_ _%e140415140439%_)
                                   (_%e140416140444%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark140411140420%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%ctx140447%_ _%e140416140444%_)
                                   (_%e140417140449%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark140411140420%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%phi140452%_ _%e140417140449%_)
                                   (_%e140418140454%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark140411140420%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%trace140457%_ _%e140418140454%_))
                              (_%K140414140436%_
                               _%trace140457%_
                               _%phi140452%_
                               _%ctx140447%_
                               _%subst140442%_))
                            (_%E140413140424%_))))))
                 (_%context-ref140318%_
                  (lambda (_%ctx140395%_)
                    (if (let ((__tmp149199
                               (##structure-ref
                                _%ctx140395%_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (declare (not safe))
                          (##structure-instance-of?
                           __tmp149199
                           'gx#module-context::t))
                        (let ((_%ctx-ref140397%_
                               (_%context-ref-nested140320%_ _%ctx140395%_))
                              (_%ctx-origin140398%_
                               (_%context-ref-origin140319%_ _%ctx140395%_))
                              (_%origin140399%_
                               (_%context-ref-origin140319%_
                                (let ()
                                  (declare (not safe))
                                  (gx#current-expander-context)))))
                          (if (eq? _%origin140399%_ _%ctx-origin140398%_)
                              (let ((_%ref140401%_
                                     (_%context-ref-nested140320%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context)))))
                                (let _%lp140403%_ ((_%ref140405%_
                                                    (cdr _%ref140401%_))
                                                   (_%ctx-ref140406%_
                                                    (cdr _%ctx-ref140397%_)))
                                  (if (and (pair? _%ref140405%_)
                                           (eq? (let ()
                                                  (declare (not safe))
                                                  (##car _%ref140405%_))
                                                (car _%ctx-ref140406%_)))
                                      (_%lp140403%_
                                       (cdr _%ref140405%_)
                                       (cdr _%ctx-ref140406%_))
                                      (cons '#f _%ctx-ref140406%_))))
                              _%ctx-ref140397%_))
                        (let ((__tmp149200
                               (##structure-ref
                                _%ctx140395%_
                                '1
                                gx#expander-context::t
                                '#f)))
                          (declare (not safe))
                          (make-symbol__1 '":" __tmp149200)))))
                 (_%context-ref-origin140319%_
                  (lambda (_%ctx140387%_)
                    (let _%lp140389%_ ((_%ctx140391%_ _%ctx140387%_))
                      (let ((_%super140393%_
                             (##structure-ref
                              _%ctx140391%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super140393%_
                               'gx#module-context::t))
                            (_%lp140389%_ _%super140393%_)
                            _%ctx140391%_)))))
                 (_%context-ref-nested140320%_
                  (lambda (_%ctx140378%_)
                    (let _%lp140380%_ ((_%ctx140382%_ _%ctx140378%_)
                                       (_%r140383%_ '()))
                      (let ((_%super140385%_
                             (##structure-ref
                              _%ctx140382%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super140385%_
                               'gx#module-context::t))
                            (_%lp140380%_
                             _%super140385%_
                             (cons (car (##structure-ref
                                         _%ctx140382%_
                                         '7
                                         gx#module-context::t
                                         '#f))
                                   _%r140383%_))
                            (cons (let ((__tmp149201
                                         (##structure-ref
                                          _%ctx140382%_
                                          '1
                                          gx#expander-context::t
                                          '#f)))
                                    (declare (not safe))
                                    (make-symbol__1 '":" __tmp149201))
                                  _%r140383%_)))))))
          (let* ((_%g140322140335%_
                  (lambda (_%g140323140332%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g140323140332%_))))
                 (_%g140321140375%_
                  (lambda (_%g140323140338%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g140323140338%_))
                        (let ((_%e140325140340%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g140323140338%_))))
                          (let ((_%hd140326140343%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140325140340%_)))
                                (_%tl140327140345%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140325140340%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl140327140345%_))
                                (let ((_%e140328140348%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl140327140345%_))))
                                  (let ((_%hd140329140351%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e140328140348%_)))
                                        (_%tl140330140353%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e140328140348%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl140330140353%_))
                                        ((lambda (_%L140356%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#identifier? _%L140356%_))
                                               (let ((_%$e140369%_
                                                      (let ((__tmp149202
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#current-compile-identifiers))))
                (declare (not safe))
                (hash-get __tmp149202 _%L140356%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e140369%_
                                                     _%$e140369%_
                                                     (let ((_%marks140373%_
                                                            (##direct-structure-ref
                                                             _%L140356%_
                                                             '4
                                                             gx#syntax-quote::t
                                                             '#f)))
                                                       (if (null? _%marks140373%_)
                                                           (_%generate-simple140314%_
                                                            _%L140356%_)
                                                           (_%generate-serialized140315%_
                                                            _%L140356%_
                                                            _%marks140373%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"Cannot quote non-identifier syntax"
                                                  _%L140356%_))))
                                         _%hd140329140351%_)
                                        (_%g140322140335%_
                                         _%g140323140338%_))))
                                (_%g140322140335%_ _%g140323140338%_))))
                        (_%g140322140335%_ _%g140323140338%_)))))
            (_%g140321140375%_ _%stx140310%_)))))
    (define gxc#generate-runtime-phi-define-runtime%
      (lambda (_%self140241%_ _%stx140242%_)
        (let* ((_%g140244140261%_
                (lambda (_%g140245140258%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g140245140258%_))))
               (_%g140243140306%_
                (lambda (_%g140245140264%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g140245140264%_))
                      (let ((_%e140248140266%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g140245140264%_))))
                        (let ((_%hd140249140269%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e140248140266%_)))
                              (_%tl140250140271%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e140248140266%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl140250140271%_))
                              (let ((_%e140251140274%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl140250140271%_))))
                                (let ((_%hd140252140277%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e140251140274%_)))
                                      (_%tl140253140279%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e140251140274%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl140253140279%_))
                                      (let ((_%e140254140282%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl140253140279%_))))
                                        (let ((_%hd140255140285%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e140254140282%_)))
                                              (_%tl140256140287%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e140254140282%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl140256140287%_))
                                              ((lambda (_%L140290%_
                                                        _%L140291%_)
                                                 (cons 'define
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%L140291%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _%self140241%_ _%L140290%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd140255140285%_
                                               _%hd140252140277%_)
                                              (_%g140244140261%_
                                               _%g140245140264%_))))
                                      (_%g140244140261%_ _%g140245140264%_))))
                              (_%g140244140261%_ _%g140245140264%_))))
                      (_%g140244140261%_ _%g140245140264%_)))))
          (_%g140243140306%_ _%stx140242%_))))
    (define gxc#generate-meta-begin%
      (lambda (_%self140190%_ _%stx140191%_)
        (let* ((_%g140193140203%_
                (lambda (_%g140194140200%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g140194140200%_))))
               (_%g140192140238%_
                (lambda (_%g140194140206%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g140194140206%_))
                      (let ((_%e140196140208%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g140194140206%_))))
                        (let ((_%hd140197140211%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e140196140208%_)))
                              (_%tl140198140213%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e140196140208%_))))
                          ((lambda (_%L140216%_)
                             (let* ((_%c-body140230%_
                                     (map (lambda (_%g140225140227%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self140190%_
                                               _%g140225140227%_)))
                                          _%L140216%_))
                                    (_%c-body140235%_
                                     (let ((__tmp149203
                                            (lambda (_%$obj140232%_)
                                              (not (eq? _%$obj140232%_
                                                        '#!void)))))
                                       (declare (not safe))
                                       (##filter
                                        __tmp149203
                                        _%c-body140230%_))))
                               (cons '%#begin _%c-body140235%_)))
                           _%tl140198140213%_)))
                      (_%g140193140203%_ _%g140194140206%_)))))
          (_%g140192140238%_ _%stx140191%_))))
    (define gxc#generate-meta-begin-syntax%
      (lambda (_%self140095%_ _%stx140096%_)
        (let* ((_%g140098140108%_
                (lambda (_%g140099140105%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g140099140105%_))))
               (_%g140097140187%_
                (lambda (_%g140099140111%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g140099140111%_))
                      (let ((_%e140101140113%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g140099140111%_))))
                        (let ((_%hd140102140116%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e140101140113%_)))
                              (_%tl140103140118%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e140101140113%_))))
                          ((lambda (_%L140121%_)
                             (let* ((_%phi140131%_
                                     (let ((__tmp149204
                                            (let ()
                                              (declare (not safe))
                                              (gx#current-expander-phi))))
                                       (declare (not safe))
                                       (##fx+ __tmp149204 '1)))
                                    (_%block140133%_
                                     (gxc#meta-state-begin-phi!
                                      (let ()
                                        (declare (not safe))
                                        (slot-ref__0 _%self140095%_ 'state))
                                      _%phi140131%_))
                                    (_%compiled140136%_
                                     (let ((__tmp149205
                                            (lambda ()
                                              (gxc#apply-generate-meta-phi__%
                                               '#f
                                               (let ()
                                                 (declare (not safe))
                                                 (slot-ref__0
                                                  _%self140095%_
                                                  'state))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#begin))
                                                     _%L140121%_)))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp149205
                                        gx#current-expander-phi
                                        _%phi140131%_)))
                                    (_%g140139140149%_
                                     (lambda (_%g140140140146%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g140140140146%_))))
                                    (_%g140138140184%_
                                     (lambda (_%g140140140152%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%g140140140152%_))
                                           (let ((_%e140142140154%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%g140140140152%_))))
                                             (let ((_%hd140143140157%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e140142140154%_)))
                                                   (_%tl140144140159%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e140142140154%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd140143140157%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#begin
                                                          _%hd140143140157%_))
                                                       ((lambda (_%L140162%_)
                                                          (let ((_%c-body140179%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (filter (lambda (_%$obj140176%_)
                                   (not (eq? _%$obj140176%_ '#!void)))
                                 _%L140162%_)))
                    (if _%block140133%_
                        (cons '%#begin-syntax
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'load-module '()))
                                                (cons (cons '%#quote
                                                            (cons _%block140133%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%c-body140179%_))
                        (if (null? _%c-body140179%_)
                            '#!void
                            (cons '%#begin-syntax _%c-body140179%_)))))
                _%tl140144140159%_)
               (_%g140139140149%_ _%g140140140152%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g140139140149%_
                                                    _%g140140140152%_))))
                                           (_%g140139140149%_
                                            _%g140140140152%_)))))
                               (_%g140138140184%_ _%compiled140136%_)))
                           _%tl140103140118%_)))
                      (_%g140098140108%_ _%g140099140111%_)))))
          (_%g140097140187%_ _%stx140096%_))))
    (define gxc#generate-meta-module%
      (lambda (_%self140026%_ _%stx140027%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self140026%_ 'state)))
        (let* ((_%g140029140043%_
                (lambda (_%g140030140040%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g140030140040%_))))
               (_%g140028140092%_
                (lambda (_%g140030140046%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g140030140046%_))
                      (let ((_%e140033140048%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g140030140046%_))))
                        (let ((_%hd140034140051%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e140033140048%_)))
                              (_%tl140035140053%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e140033140048%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl140035140053%_))
                              (let ((_%e140036140056%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl140035140053%_))))
                                (let ((_%hd140037140059%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e140036140056%_)))
                                      (_%tl140038140061%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e140036140056%_))))
                                  ((lambda (_%L140064%_ _%L140065%_)
                                     (let ((_%key140078%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#core-identifier-key
                                               _%L140065%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (interned-symbol? _%key140078%_))
                                           '#!void
                                           (let ()
                                             (declare (not safe))
                                             (gxc#raise-compile-error
                                              '"Cannot compile module with uninterned id"
                                              _%stx140027%_
                                              _%L140065%_
                                              _%key140078%_)))
                                       (let* ((_%ctx140080%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-local-e__0
                                                  _%L140065%_)))
                                              (_%code140083%_
                                               (let ((__tmp149206
                                                      (lambda ()
                                                        (let ((__tmp149207
                                                               (##structure-ref
                                                                _%ctx140080%_
                                                                '11
                                                                gx#module-context::t
                                                                '#f)))
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self140026%_
                                                           __tmp149207)))))
                                                 (declare (not safe))
                                                 (__call-with-parameters
                                                  __tmp149206
                                                  gx#current-expander-context
                                                  _%ctx140080%_)))
                                              (_%rt140085%_
                                               (let ((__tmp149208
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#current-compile-runtime-sections))))
                                                 (declare (not safe))
                                                 (hash-get
                                                  __tmp149208
                                                  _%ctx140080%_)))
                                              (_%loader140087%_
                                               (if _%rt140085%_
                                                   (cons (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons 'load-module '()))
                             (cons (cons '%#quote (cons _%rt140085%_ '()))
                                   '())))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                              (_%modid140089%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _%L140065%_))))
                                         (gxc#meta-state-end-phi!
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self140026%_
                                             'state)))
                                         (cons '%#module
                                               (cons _%modid140089%_
                                                     (cons _%code140083%_
                                                           _%loader140087%_))))))
                                   _%tl140038140061%_
                                   _%hd140037140059%_)))
                              (_%g140029140043%_ _%g140030140046%_))))
                      (_%g140029140043%_ _%g140030140046%_)))))
          (_%g140028140092%_ _%stx140027%_))))
    (define gxc#generate-meta-import-path
      (lambda (_%ctx140013%_ _%context-chain140014%_)
        (let _%lp140016%_ ((_%ctx140018%_ _%ctx140013%_) (_%path140019%_ '()))
          (let ((_%super140021%_
                 (##structure-ref _%ctx140018%_ '3 gx#phi-context::t '#f)))
            (if (memq _%super140021%_ _%context-chain140014%_)
                (cons '#f
                      (cons (car (##structure-ref
                                  _%ctx140018%_
                                  '7
                                  gx#module-context::t
                                  '#f))
                            _%path140019%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%super140021%_
                       'gx#module-context::t))
                    (_%lp140016%_
                     _%super140021%_
                     (cons (car (##structure-ref
                                 _%ctx140018%_
                                 '7
                                 gx#module-context::t
                                 '#f))
                           _%path140019%_))
                    (cons (let ((__tmp149209
                                 (##structure-ref
                                  _%ctx140018%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (make-symbol__1 '":" __tmp149209))
                          _%path140019%_)))))))
    (define gxc#current-context-chain
      (lambda ()
        (let _%lp140006%_ ((_%ctx140008%_
                            (let ()
                              (declare (not safe))
                              (gx#current-expander-context)))
                           (_%r140009%_ '()))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%ctx140008%_ 'gx#module-context::t))
              (_%lp140006%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%ctx140008%_ '3 '#f '#f))
               (cons _%ctx140008%_ _%r140009%_))
              _%r140009%_))))
    (define gxc#generate-meta-import%
      (lambda (_%self139769%_ _%stx139770%_)
        (letrec* ((_%context-chain139772%_ (gxc#current-context-chain))
                  (_%make-import-spec139773%_
                   (lambda (_%in139942%_)
                     (let* ((_%in139943139955%_ _%in139942%_)
                            (_%E139945139959%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%in139943139955%_
                                        '((module-import
                                           (module-export
                                            src-ctx
                                            src-key
                                            src-phi
                                            src-name)
                                           name
                                           phi))))
                               '#!void))
                            (_%K139946139969%_
                             (lambda (_%phi139962%_
                                      _%name139963%_
                                      _%src-name139964%_
                                      _%src-phi139965%_
                                      _%src-key139966%_
                                      _%src-ctx139967%_)
                               (cons _%phi139962%_
                                     (cons (gxc#generate-runtime-identifier-key
                                            _%name139963%_)
                                           (cons _%src-phi139965%_
                                                 (cons (gxc#generate-runtime-identifier-key
                                                        _%src-name139964%_)
                                                       '())))))))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              _%in139943139955%_
                              'gx#module-import::t))
                           (let ((_%e139947139972%_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%in139943139955%_
                                     '1
                                     '#f
                                     '#f))))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    _%e139947139972%_
                                    'gx#module-export::t))
                                 (let* ((_%e139950139975%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e139947139972%_
                                            '1
                                            '#f
                                            '#f)))
                                        (_%src-ctx139978%_ _%e139950139975%_)
                                        (_%e139951139980%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e139947139972%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%src-key139983%_ _%e139951139980%_)
                                        (_%e139952139985%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e139947139972%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%src-phi139988%_ _%e139952139985%_)
                                        (_%e139953139990%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e139947139972%_
                                            '4
                                            '#f
                                            '#f)))
                                        (_%src-name139993%_ _%e139953139990%_)
                                        (_%e139948139995%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in139943139955%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%name139998%_ _%e139948139995%_)
                                        (_%e139949140000%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in139943139955%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%phi140003%_ _%e139949140000%_))
                                   (_%K139946139969%_
                                    _%phi140003%_
                                    _%name139998%_
                                    _%src-name139993%_
                                    _%src-phi139988%_
                                    _%src-key139983%_
                                    _%src-ctx139978%_))
                                 (_%E139945139959%_)))
                           (_%E139945139959%_)))))
                  (_%make-import-path139774%_
                   (lambda (_%ctx139940%_)
                     (gxc#generate-meta-import-path
                      _%ctx139940%_
                      _%context-chain139772%_)))
                  (_%make-import-spec-in139775%_
                   (lambda (_%ctx139937%_ _%in139938%_)
                     (cons 'spec:
                           (cons (_%make-import-path139774%_ _%ctx139937%_)
                                 (reverse _%in139938%_))))))
          (gxc#meta-state-end-phi!
           (let () (declare (not safe)) (slot-ref__0 _%self139769%_ 'state)))
          (let* ((_%g139777139787%_
                  (lambda (_%g139778139784%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g139778139784%_))))
                 (_%g139776139934%_
                  (lambda (_%g139778139790%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g139778139790%_))
                        (let ((_%e139780139792%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g139778139790%_))))
                          (let ((_%hd139781139795%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e139780139792%_)))
                                (_%tl139782139797%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e139780139792%_))))
                            ((lambda (_%L139800%_)
                               (let _%lp139811%_ ((_%rest139813%_ _%L139800%_)
                                                  (_%current-src139814%_ '#f)
                                                  (_%current-in139815%_ '())
                                                  (_%r139816%_ '()))
                                 (let* ((_%rest139817139825%_ _%rest139813%_)
                                        (_%else139819139835%_
                                         (lambda ()
                                           (let ((_%r139833%_
                                                  (if _%current-src139814%_
                                                      (cons (_%make-import-spec-in139775%_
                                                             _%current-src139814%_
                                                             _%current-in139815%_)
                                                            _%r139816%_)
                                                      _%r139816%_)))
                                             (cons '%#import
                                                   (reverse _%r139833%_)))))
                                        (_%K139821139922%_
                                         (lambda (_%rest139838%_ _%in139839%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in139839%_
                                                  'gx#module-import::t))
                                               (let* ((_%in139841139848%_
                                                       _%in139839%_)
                                                      (_%E139843139852%_
                                                       (lambda ()
                                                         (let ()
                                                           (declare (not safe))
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%in139841139848%_
                          '((module-import (module-export src-ctx)))))
                 '#!void))
              (_%K139844139860%_
               (lambda (_%src-ctx139855%_)
                 (if (eq? _%current-src139814%_ _%src-ctx139855%_)
                     (_%lp139811%_
                      _%rest139838%_
                      _%current-src139814%_
                      (cons (_%make-import-spec139773%_ _%in139839%_)
                            _%current-in139815%_)
                      _%r139816%_)
                     (if _%current-src139814%_
                         (_%lp139811%_
                          _%rest139838%_
                          _%src-ctx139855%_
                          (cons (_%make-import-spec139773%_ _%in139839%_) '())
                          (cons (_%make-import-spec-in139775%_
                                 _%current-src139814%_
                                 _%current-in139815%_)
                                _%r139816%_))
                         (_%lp139811%_
                          _%rest139838%_
                          _%src-ctx139855%_
                          (cons (_%make-import-spec139773%_ _%in139839%_) '())
                          _%r139816%_)))))
              (_%e139845139863%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%in139841139848%_ '1 '#f '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%e139845139863%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e139846139866%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%e139845139863%_
                        '1
                        '#f
                        '#f)))
                    (_%src-ctx139869%_ _%e139846139866%_))
               (_%K139844139860%_ _%src-ctx139869%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E139843139852%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%in139839%_
                                                      'gx#import-set::t))
                                                   (let* ((_%phi139872%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in139839%_
                                                              '2
                                                              '#f
                                                              '#f)))
                                                          (_%src139874%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in139839%_
                                                              '1
                                                              '#f
                                                              '#f)))
                                                          (_%src-in139914%_
                                                           (let* ((_%g139875139884%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (_%make-import-path139774%_ _%src139874%_))
                          (_%E139878139888%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (error '"No clause matching"
                                      _%g139875139884%_
                                      '([path])
                                      '(path)))
                             '#!void)))
                     (let ((_%K139880139904%_
                            (lambda (_%path139902%_) _%path139902%_))
                           (_%K139879139894%_
                            (lambda (_%path139892%_)
                              (cons 'in: _%path139892%_))))
                       (if (pair? _%g139875139884%_)
                           (let ((_%tl139882139909%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%g139875139884%_)))
                                 (_%hd139881139907%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%g139875139884%_))))
                             (if (null? _%tl139882139909%_)
                                 (let ((_%path139912%_ _%hd139881139907%_))
                                   (_%K139880139904%_ _%path139912%_))
                                 (let ((_%path139897%_ _%g139875139884%_))
                                   (_%K139879139894%_ _%path139897%_))))
                           (let ((_%path139897%_ _%g139875139884%_))
                             (_%K139879139894%_ _%path139897%_))))))
                  (_%r139916%_
                   (if _%current-src139814%_
                       (cons (_%make-import-spec-in139775%_
                              _%current-src139814%_
                              _%current-in139815%_)
                             _%r139816%_)
                       _%r139816%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%lp139811%_
                                                      _%rest139838%_
                                                      '#f
                                                      '()
                                                      (cons (if (fxzero? _%phi139872%_)
                                                                _%src-in139914%_
                                                                (cons 'phi:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%phi139872%_
                                    (cons _%src-in139914%_ '()))))
                    _%r139916%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-instance-of?
                                                          _%in139839%_
                                                          'gx#module-context::t))
                                                       (let ((_%r139920%_
                                                              (if _%current-src139814%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (_%make-import-spec-in139775%_
                                 _%current-src139814%_
                                 _%current-in139815%_)
                                _%r139816%_)
                          _%r139816%_)))
                 (_%lp139811%_
                  _%rest139838%_
                  '#f
                  '()
                  (cons (cons 'runtime:
                              (_%make-import-path139774%_ _%in139839%_))
                        _%r139920%_)))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (pair? _%rest139817139825%_)
                                       (let ((_%hd139822139925%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest139817139825%_)))
                                             (_%tl139823139927%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest139817139825%_))))
                                         (let* ((_%in139930%_
                                                 _%hd139822139925%_)
                                                (_%rest139932%_
                                                 _%tl139823139927%_))
                                           (_%K139821139922%_
                                            _%rest139932%_
                                            _%in139930%_)))
                                       (_%else139819139835%_)))))
                             _%tl139782139797%_)))
                        (_%g139777139787%_ _%g139778139790%_)))))
            (_%g139776139934%_ _%stx139770%_)))))
    (define gxc#generate-meta-export%
      (lambda (_%self139579%_ _%stx139580%_)
        (letrec* ((_%context-chain139582%_ (gxc#current-context-chain))
                  (_%make-import-path139583%_
                   (lambda (_%ctx139767%_)
                     (gxc#generate-meta-import-path
                      _%ctx139767%_
                      _%context-chain139582%_))))
          (let* ((_%g139585139595%_
                  (lambda (_%g139586139592%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g139586139592%_))))
                 (_%g139584139764%_
                  (lambda (_%g139586139598%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g139586139598%_))
                        (let ((_%e139588139600%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g139586139598%_))))
                          (let ((_%hd139589139603%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e139588139600%_)))
                                (_%tl139590139605%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e139588139600%_))))
                            ((lambda (_%L139608%_)
                               (let _%lp139619%_ ((_%rest139621%_ _%L139608%_)
                                                  (_%r139622%_ '()))
                                 (let* ((_%rest139623139631%_ _%rest139621%_)
                                        (_%else139625139639%_
                                         (lambda ()
                                           (cons '%#export
                                                 (reverse _%r139622%_))))
                                        (_%K139627139752%_
                                         (lambda (_%rest139642%_ _%out139643%_)
                                           (let* ((_%out139644139657%_
                                                   _%out139643%_)
                                                  (_%E139647139661%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%out139644139657%_
                                                              '((module-export
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _
                         key
                         phi
                         name))
                      '((export-set src phi))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#!void)))
                                             (let ((_%K139651139731%_
                                                    (lambda (_%name139727%_
                                                             _%phi139728%_
                                                             _%key139729%_)
                                                      (_%lp139619%_
                                                       _%rest139642%_
                                                       (cons (cons 'spec:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%phi139728%_
                                 (cons (gxc#generate-runtime-identifier-key
                                        _%key139729%_)
                                       (cons (gxc#generate-runtime-identifier-key
                                              _%name139727%_)
                                             '()))))
                     _%r139622%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K139648139711%_
                                                    (lambda (_%phi139665%_
                                                             _%src139666%_)
                                                      (let* ((_%out139706%_
                                                              (if _%src139666%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'import:
                                (cons (let* ((_%g139667139676%_
                                              (_%make-import-path139583%_
                                               _%src139666%_))
                                             (_%E139670139680%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (error '"No clause matching"
                                                         _%g139667139676%_
                                                         '([path])
                                                         '(path)))
                                                '#!void)))
                                        (let ((_%K139672139696%_
                                               (lambda (_%path139694%_)
                                                 _%path139694%_))
                                              (_%K139671139686%_
                                               (lambda (_%path139684%_)
                                                 (cons 'in: _%path139684%_))))
                                          (if (pair? _%g139667139676%_)
                                              (let ((_%tl139674139701%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%g139667139676%_)))
                                                    (_%hd139673139699%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%g139667139676%_))))
                                                (if (null? _%tl139674139701%_)
                                                    (let ((_%path139704%_
                                                           _%hd139673139699%_))
                                                      (_%K139672139696%_
                                                       _%path139704%_))
                                                    (let ((_%path139689%_
                                                           _%g139667139676%_))
                                                      (_%K139671139686%_
                                                       _%path139689%_))))
                                              (let ((_%path139689%_
                                                     _%g139667139676%_))
                                                (_%K139671139686%_
                                                 _%path139689%_)))))
                                      '()))
                          '#t))
                     (_%out139708%_
                      (if (fxzero? _%phi139665%_)
                          _%out139706%_
                          (cons 'phi:
                                (cons _%phi139665%_
                                      (cons _%out139706%_ '()))))))
                (_%lp139619%_
                 _%rest139642%_
                 (cons _%out139708%_ _%r139622%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_%try-match139646139724%_
                                                      (lambda ()
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-direct-instance-of?
                                                               _%out139644139657%_
                                                               'gx#export-set::t))
                                                            (let* ((_%e139649139714%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out139644139657%_
                               '1
                               '#f
                               '#f)))
                           (_%e139650139719%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out139644139657%_
                               '2
                               '#f
                               '#f))))
                      (let ((_%src139717%_ _%e139649139714%_)
                            (_%phi139722%_ _%e139650139719%_))
                        (_%K139648139711%_ _%phi139722%_ _%src139717%_)))
                    (_%E139647139661%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%out139644139657%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e139652139734%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%out139644139657%_
                        '1
                        '#f
                        '#f)))
                    (_%e139653139737%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out139644139657%_
                        '2
                        '#f
                        '#f)))
                    (_%e139654139742%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out139644139657%_
                        '3
                        '#f
                        '#f)))
                    (_%e139655139747%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out139644139657%_
                        '4
                        '#f
                        '#f))))
               (let ((_%key139740%_ _%e139653139737%_)
                     (_%phi139745%_ _%e139654139742%_)
                     (_%name139750%_ _%e139655139747%_))
                 (_%K139651139731%_
                  _%name139750%_
                  _%phi139745%_
                  _%key139740%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%try-match139646139724%_))))))))
                                   (if (pair? _%rest139623139631%_)
                                       (let ((_%hd139628139755%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest139623139631%_)))
                                             (_%tl139629139757%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest139623139631%_))))
                                         (let* ((_%out139760%_
                                                 _%hd139628139755%_)
                                                (_%rest139762%_
                                                 _%tl139629139757%_))
                                           (_%K139627139752%_
                                            _%rest139762%_
                                            _%out139760%_)))
                                       (_%else139625139639%_)))))
                             _%tl139590139605%_)))
                        (_%g139585139595%_ _%g139586139598%_)))))
            (_%g139584139764%_ _%stx139580%_)))))
    (define gxc#generate-meta-provide%
      (lambda (_%self139540%_ _%stx139541%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self139540%_ 'state)))
        (let* ((_%g139543139553%_
                (lambda (_%g139544139550%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g139544139550%_))))
               (_%g139542139576%_
                (lambda (_%g139544139556%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g139544139556%_))
                      (let ((_%e139546139558%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g139544139556%_))))
                        (let ((_%hd139547139561%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e139546139558%_)))
                              (_%tl139548139563%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e139546139558%_))))
                          ((lambda (_%L139566%_)
                             (cons '%#provide
                                   (map gxc#generate-runtime-identifier
                                        _%L139566%_)))
                           _%tl139548139563%_)))
                      (_%g139543139553%_ _%g139544139556%_)))))
          (_%g139542139576%_ _%stx139541%_))))
    (define gxc#generate-meta-extern%
      (lambda (_%self139411%_ _%stx139412%_)
        (letrec ((_%generate1139414%_
                  (lambda (_%id139535%_ _%eid139536%_)
                    (let ((_%eid139538%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%eid139536%_))))
                      (if (let ()
                            (declare (not safe))
                            (interned-symbol? _%eid139538%_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"Cannot compile extern reference"
                             _%stx139412%_
                             _%eid139538%_)))
                      (cons (gxc#generate-runtime-identifier _%id139535%_)
                            (cons _%eid139538%_ '()))))))
          (let* ((_%g139416139444%_
                  (lambda (_%g139417139441%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g139417139441%_))))
                 (_%g139415139532%_
                  (lambda (_%g139417139447%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g139417139447%_))
                        (let ((_%e139420139449%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g139417139447%_))))
                          (let ((_%hd139421139452%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e139420139449%_)))
                                (_%tl139422139454%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e139420139449%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl139422139454%_))
                                (let ((_g149210_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl139422139454%_
                                          '0))))
                                  (begin
                                    (let ((_g149211_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g149210_)
                                                 (##vector-length _g149210_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g149211_ 2)))
                                          (error "Context expects 2 values"
                                                 _g149211_)))
                                    (let ((_%target139423139457%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g149210_ 0)))
                                          (_%tl139425139459%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g149210_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl139425139459%_))
                                          (letrec ((_%loop139426139462%_
                                                    (lambda (_%hd139424139465%_
                                                             _%eid139430139467%_
                                                             _%id139431139469%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd139424139465%_))
                                                          (let ((_%e139427139472%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd139424139465%_))))
                    (let ((_%lp-hd139428139475%_
                           (let ()
                             (declare (not safe))
                             (##car _%e139427139472%_)))
                          (_%lp-tl139429139477%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e139427139472%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd139428139475%_))
                          (let ((_%e139434139480%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd139428139475%_))))
                            (let ((_%hd139435139483%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e139434139480%_)))
                                  (_%tl139436139485%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e139434139480%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl139436139485%_))
                                  (let ((_%e139437139488%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl139436139485%_))))
                                    (let ((_%hd139438139491%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e139437139488%_)))
                                          (_%tl139439139493%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e139437139488%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl139439139493%_))
                                          (_%loop139426139462%_
                                           _%lp-tl139429139477%_
                                           (cons _%hd139438139491%_
                                                 _%eid139430139467%_)
                                           (cons _%hd139435139483%_
                                                 _%id139431139469%_))
                                          (_%g139416139444%_
                                           _%g139417139447%_))))
                                  (_%g139416139444%_ _%g139417139447%_))))
                          (_%g139416139444%_ _%g139417139447%_))))
                  (let ((_%eid139432139496%_ (reverse _%eid139430139467%_))
                        (_%id139433139498%_ (reverse _%id139431139469%_)))
                    ((lambda (_%L139501%_ _%L139502%_)
                       (cons '%#extern
                             (map _%generate1139414%_
                                  (let ((__tmp149212
                                         (lambda (_%g139517139520%_
                                                  _%g139518139522%_)
                                           (cons _%g139517139520%_
                                                 _%g139518139522%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp149212 '() _%L139502%_))
                                  (let ((__tmp149213
                                         (lambda (_%g139524139527%_
                                                  _%g139525139529%_)
                                           (cons _%g139524139527%_
                                                 _%g139525139529%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp149213 '() _%L139501%_)))))
                     _%eid139432139496%_
                     _%id139433139498%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop139426139462%_
                                             _%target139423139457%_
                                             '()
                                             '()))
                                          (_%g139416139444%_
                                           _%g139417139447%_)))))
                                (_%g139416139444%_ _%g139417139447%_))))
                        (_%g139416139444%_ _%g139417139447%_)))))
            (_%g139415139532%_ _%stx139412%_)))))
    (define gxc#generate-meta-define-values%
      (lambda (_%self139201%_ _%stx139202%_)
        (letrec ((_%generate1139204%_
                  (lambda (_%id139406%_)
                    (let ((_%eid139408%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%id139406%_)))
                          (_%ident139409%_
                           (gxc#generate-runtime-identifier _%id139406%_)))
                      (cons '%#define-runtime
                            (cons _%ident139409%_ (cons _%eid139408%_ '()))))))
                 (_%generate*139205%_
                  (lambda (_%all139374%_)
                    (let* ((_%all139375139383%_ _%all139374%_)
                           (_%else139377139391%_
                            (lambda () (cons '%#begin _%all139374%_)))
                           (_%K139379139396%_
                            (lambda (_%one139394%_) _%one139394%_)))
                      (if (pair? _%all139375139383%_)
                          (let ((_%hd139380139399%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all139375139383%_)))
                                (_%tl139381139401%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all139375139383%_))))
                            (let ((_%one139404%_ _%hd139380139399%_))
                              (if (null? _%tl139381139401%_)
                                  (_%K139379139396%_ _%one139404%_)
                                  (_%else139377139391%_))))
                          (_%else139377139391%_))))))
          (let* ((_%g139207139224%_
                  (lambda (_%g139208139221%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g139208139221%_))))
                 (_%g139206139371%_
                  (lambda (_%g139208139227%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g139208139227%_))
                        (let ((_%e139211139229%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g139208139227%_))))
                          (let ((_%hd139212139232%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e139211139229%_)))
                                (_%tl139213139234%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e139211139229%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl139213139234%_))
                                (let ((_%e139214139237%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl139213139234%_))))
                                  (let ((_%hd139215139240%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e139214139237%_)))
                                        (_%tl139216139242%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e139214139237%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl139216139242%_))
                                        (let ((_%e139217139245%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl139216139242%_))))
                                          (let ((_%hd139218139248%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e139217139245%_)))
                                                (_%tl139219139250%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e139217139245%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl139219139250%_))
                                                ((lambda (_%L139253%_
                                                          _%L139254%_)
                                                   (let _%lp139270%_ ((_%rest139272%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%L139254%_)
                              (_%r139273%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((_%__stx148949148950%_
                                                             _%rest139272%_)
                                                            (_%g139278139295%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%__stx148949148950%_)))))
               (let ((_%__kont148951148952%_
                      (lambda (_%L139358%_)
                        (_%lp139270%_ _%L139358%_ _%r139273%_)))
                     (_%__kont148953148954%_
                      (lambda (_%L139331%_ _%L139332%_)
                        (_%lp139270%_
                         _%L139331%_
                         (cons (_%generate1139204%_ _%L139332%_)
                               _%r139273%_))))
                     (_%__kont148955148956%_
                      (lambda (_%L139307%_)
                        (_%generate*139205%_
                         (let ((__tmp149214
                                (cons (_%generate1139204%_ _%L139307%_) '())))
                           (declare (not safe))
                           (__foldl1 cons __tmp149214 _%r139273%_)))))
                     (_%__kont148957148958%_
                      (lambda () (_%generate*139205%_ (reverse _%r139273%_)))))
                 (let ((_%g139276139318%_
                        (lambda ()
                          (let ((_%L139307%_ _%__stx148949148950%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L139307%_))
                                (_%__kont148955148956%_ _%L139307%_)
                                (_%__kont148957148958%_))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%__stx148949148950%_))
                       (let ((_%e139281139347%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%__stx148949148950%_))))
                         (let ((_%tl139283139352%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e139281139347%_)))
                               (_%hd139282139350%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e139281139347%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-datum? _%hd139282139350%_))
                               (let ((_%e139284139355%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd139282139350%_))))
                                 (if (equal? _%e139284139355%_ '#f)
                                     (_%__kont148951148952%_
                                      _%tl139283139352%_)
                                     (_%__kont148953148954%_
                                      _%tl139283139352%_
                                      _%hd139282139350%_)))
                               (_%__kont148953148954%_
                                _%tl139283139352%_
                                _%hd139282139350%_))))
                       (let () (declare (not safe)) (_%g139276139318%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd139218139248%_
                                                 _%hd139215139240%_)
                                                (_%g139207139224%_
                                                 _%g139208139227%_))))
                                        (_%g139207139224%_
                                         _%g139208139227%_))))
                                (_%g139207139224%_ _%g139208139227%_))))
                        (_%g139207139224%_ _%g139208139227%_)))))
            (_%g139206139371%_ _%stx139202%_)))))
    (define gxc#generate-meta-define-syntax%
      (lambda (_%self139098%_ _%stx139099%_)
        (let* ((_%g139101139118%_
                (lambda (_%g139102139115%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g139102139115%_))))
               (_%g139100139198%_
                (lambda (_%g139102139121%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g139102139121%_))
                      (let ((_%e139105139123%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g139102139121%_))))
                        (let ((_%hd139106139126%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e139105139123%_)))
                              (_%tl139107139128%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e139105139123%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl139107139128%_))
                              (let ((_%e139108139131%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl139107139128%_))))
                                (let ((_%hd139109139134%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e139108139131%_)))
                                      (_%tl139110139136%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e139108139131%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl139110139136%_))
                                      (let ((_%e139111139139%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl139110139136%_))))
                                        (let ((_%hd139112139142%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e139111139139%_)))
                                              (_%tl139113139144%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e139111139139%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl139113139144%_))
                                              ((lambda (_%L139147%_
                                                        _%L139148%_)
                                                 (let* ((_%eid139163%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#generate-runtime-binding-id
                                                            _%L139148%_)))
                                                        (_%phi139165%_
                                                         (let ((__tmp149215
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#current-expander-phi))))
                   (declare (not safe))
                   (##fx+ __tmp149215 '1)))
                (_%block139167%_
                 (gxc#meta-state-begin-phi!
                  (let ()
                    (declare (not safe))
                    (slot-ref__0 _%self139098%_ 'state))
                  _%phi139165%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%g139170139177%_
                                                           (lambda (_%g139171139174%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g139171139174%_))))
                  (_%g139169139195%_
                   (lambda (_%g139171139180%_)
                     ((lambda (_%L139182%_)
                        (gxc#meta-state-add-phi!
                         (let ()
                           (declare (not safe))
                           (slot-ref__0 _%self139098%_ 'state))
                         _%phi139165%_
                         (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#define-runtime))
                               (cons _%L139182%_ (cons _%L139147%_ '())))))
                      _%g139171139180%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g139169139195%_
                                                      _%eid139163%_))
                                                   (if _%block139167%_
                                                       (cons '%#begin
                                                             (cons (cons '%#begin-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons 'load-module
                                                               '()))
                                                   (cons (cons '%#quote
                                                               (cons _%block139167%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons '%#define-syntax
                                       (cons (gxc#generate-runtime-identifier
                                              _%L139148%_)
                                             (cons _%eid139163%_ '())))
                                 '())))
               (cons '%#define-syntax
                     (cons (gxc#generate-runtime-identifier _%L139148%_)
                           (cons _%eid139163%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd139112139142%_
                                               _%hd139109139134%_)
                                              (_%g139101139118%_
                                               _%g139102139121%_))))
                                      (_%g139101139118%_ _%g139102139121%_))))
                              (_%g139101139118%_ _%g139102139121%_))))
                      (_%g139101139118%_ _%g139102139121%_)))))
          (_%g139100139198%_ _%stx139099%_))))
    (define gxc#generate-meta-define-alias%
      (lambda (_%self139030%_ _%stx139031%_)
        (let* ((_%g139033139050%_
                (lambda (_%g139034139047%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g139034139047%_))))
               (_%g139032139095%_
                (lambda (_%g139034139053%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g139034139053%_))
                      (let ((_%e139037139055%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g139034139053%_))))
                        (let ((_%hd139038139058%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e139037139055%_)))
                              (_%tl139039139060%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e139037139055%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl139039139060%_))
                              (let ((_%e139040139063%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl139039139060%_))))
                                (let ((_%hd139041139066%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e139040139063%_)))
                                      (_%tl139042139068%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e139040139063%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl139042139068%_))
                                      (let ((_%e139043139071%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl139042139068%_))))
                                        (let ((_%hd139044139074%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e139043139071%_)))
                                              (_%tl139045139076%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e139043139071%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl139045139076%_))
                                              ((lambda (_%L139079%_
                                                        _%L139080%_)
                                                 (cons '%#define-alias
                                                       (cons (gxc#generate-runtime-identifier
                                                              _%L139080%_)
                                                             (cons (gxc#generate-runtime-identifier
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%L139079%_)
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd139044139074%_
                                               _%hd139041139066%_)
                                              (_%g139033139050%_
                                               _%g139034139053%_))))
                                      (_%g139033139050%_ _%g139034139053%_))))
                              (_%g139033139050%_ _%g139034139053%_))))
                      (_%g139033139050%_ _%g139034139053%_)))))
          (_%g139032139095%_ _%stx139031%_))))
    (define gxc#generate-meta-phi-define-values%
      (lambda (_%self139027%_ _%stx139028%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self139027%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx139028%_)
        (gxc#generate-meta-define-values% _%self139027%_ _%stx139028%_)))
    (define gxc#generate-meta-phi-expr
      (lambda (_%self139024%_ _%stx139025%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self139024%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx139025%_)
        '#!void))
    (define gxc#meta-state::t
      (let ((__tmp149217 (list)) (__tmp149216 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state::t
         'meta-state
         __tmp149217
         '(src n open blocks)
         __tmp149216
         ':init!)))
    (define gxc#meta-state?
      (let () (declare (not safe)) (__make-class-predicate gxc#meta-state::t)))
    (define gxc#make-meta-state
      (lambda _%$args139021%_
        (apply make-instance gxc#meta-state::t _%$args139021%_)))
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
      (lambda (_%self138366139005%_ _%ctx139007%_)
        (let* ((_%self139009%_ _%self138366139005%_)
               (_%self139011%_ _%self139009%_))
          (if (let ((__tmp149218
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self139011%_))))
                (declare (not safe))
                (##fx< '4 __tmp149218))
              (begin
                (let ((__tmp149219
                       (let ((__tmp149220
                              (##structure-ref
                               _%ctx139007%_
                               '1
                               gx#expander-context::t
                               '#f)))
                         (declare (not safe))
                         (gxc#module-id->path-string __tmp149220))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self139011%_
                   __tmp149219
                   '1
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self139011%_ '1 '2 '#f '#f))
                (let ((__tmp149221
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self139011%_
                   __tmp149221
                   '3
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self139011%_ '() '4 '#f '#f))
                '#!void)
              (let ((__tmp149222
                     (let ()
                       (declare (not safe))
                       (##vector-length _%self139011%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self139011%_
                       '4
                       __tmp149222))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#meta-state::t ':init! gxc#meta-state:::init! '#f))
    (define gxc#meta-state-block::t
      (let ((__tmp149224 (list)) (__tmp149223 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state-block::t
         'meta-state-block
         __tmp149224
         '(ctx phi n code)
         __tmp149223
         '#f)))
    (define gxc#meta-state-block?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#meta-state-block::t)))
    (define gxc#make-meta-state-block
      (lambda _%$args138880%_
        (apply make-instance gxc#meta-state-block::t _%$args138880%_)))
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
      (lambda (_%state138839%_ _%phi138840%_)
        (let* ((_%state138841138849%_ _%state138839%_)
               (_%E138843138853%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%state138841138849%_
                           '((meta-state src n open))))
                  '#!void))
               (_%K138844138862%_
                (lambda (_%open138856%_ _%n138857%_ _%src138858%_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _%open138856%_ _%phi138840%_))
                      '#f
                      (let ((_%block-ref138860%_
                             (let ((__tmp149225 (number->string _%n138857%_)))
                               (declare (not safe))
                               (##string-append
                                _%src138858%_
                                '"~"
                                __tmp149225))))
                        (##structure-set!
                         _%state138839%_
                         (let () (declare (not safe)) (##fx+ _%n138857%_ '1))
                         '2
                         gxc#meta-state::t
                         '#f)
                        (let ((__tmp149226
                               (let ((__tmp149227
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context))))
                                 (declare (not safe))
                                 (##structure
                                  gxc#meta-state-block::t
                                  __tmp149227
                                  _%phi138840%_
                                  _%n138857%_
                                  '()))))
                          (declare (not safe))
                          (hash-put! _%open138856%_ _%phi138840%_ __tmp149226))
                        _%block-ref138860%_)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _%state138841138849%_
                 'gxc#meta-state::t))
              (let* ((_%e138845138865%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state138841138849%_
                         '1
                         '#f
                         '#f)))
                     (_%src138868%_ _%e138845138865%_)
                     (_%e138846138870%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state138841138849%_
                         '2
                         '#f
                         '#f)))
                     (_%n138873%_ _%e138846138870%_)
                     (_%e138847138875%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state138841138849%_
                         '3
                         '#f
                         '#f)))
                     (_%open138878%_ _%e138847138875%_))
                (_%K138844138862%_ _%open138878%_ _%n138873%_ _%src138868%_))
              (_%E138843138853%_)))))
    (define gxc#meta-state-add-phi!
      (lambda (_%state138833%_ _%phi138834%_ _%stx138835%_)
        (let ((_%block138837%_
               (let ((__tmp149228
                      (##structure-ref
                       _%state138833%_
                       '3
                       gxc#meta-state::t
                       '#f)))
                 (declare (not safe))
                 (hash-get __tmp149228 _%phi138834%_))))
          (##structure-set!
           _%block138837%_
           (cons _%stx138835%_
                 (##structure-ref
                  _%block138837%_
                  '4
                  gxc#meta-state-block::t
                  '#f))
           '4
           gxc#meta-state-block::t
           '#f))))
    (define gxc#meta-state-end-phi!
      (lambda (_%state138827%_)
        (##structure-set!
         _%state138827%_
         (let ((__tmp149231
                (lambda (_%_138829%_ _%block138830%_ _%r138831%_)
                  (cons _%block138830%_ _%r138831%_)))
               (__tmp149230
                (##structure-ref _%state138827%_ '4 gxc#meta-state::t '#f))
               (__tmp149229
                (##structure-ref _%state138827%_ '3 gxc#meta-state::t '#f)))
           (declare (not safe))
           (hash-fold __tmp149231 __tmp149230 __tmp149229))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _%state138827%_
         (let () (declare (not safe)) (make-hash-table-eq))
         '3
         gxc#meta-state::t
         '#f)))
    (define gxc#meta-state-end!
      (lambda (_%state138779%_)
        (gxc#meta-state-end-phi! _%state138779%_)
        (let ((__tmp149233
               (lambda (_%block138781%_ _%r138782%_)
                 (let* ((_%block138783138792%_ _%block138781%_)
                        (_%E138785138796%_
                         (lambda ()
                           (let ()
                             (declare (not safe))
                             (error '"No clause matching"
                                    _%block138783138792%_
                                    '((meta-state-block ctx phi n code))))
                           '#!void))
                        (_%K138786138804%_
                         (lambda (_%code138799%_
                                  _%n138800%_
                                  _%phi138801%_
                                  _%ctx138802%_)
                           (if (null? _%code138799%_)
                               _%r138782%_
                               (cons (cons _%ctx138802%_
                                           (cons _%phi138801%_
                                                 (cons _%n138800%_
                                                       (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (reverse _%code138799%_))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%r138782%_)))))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%block138783138792%_
                          'gxc#meta-state-block::t))
                       (let* ((_%e138787138807%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block138783138792%_
                                  '1
                                  '#f
                                  '#f)))
                              (_%ctx138810%_ _%e138787138807%_)
                              (_%e138788138812%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block138783138792%_
                                  '2
                                  '#f
                                  '#f)))
                              (_%phi138815%_ _%e138788138812%_)
                              (_%e138789138817%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block138783138792%_
                                  '3
                                  '#f
                                  '#f)))
                              (_%n138820%_ _%e138789138817%_)
                              (_%e138790138822%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block138783138792%_
                                  '4
                                  '#f
                                  '#f)))
                              (_%code138825%_ _%e138790138822%_))
                         (_%K138786138804%_
                          _%code138825%_
                          _%n138820%_
                          _%phi138815%_
                          _%ctx138810%_))
                       (_%E138785138796%_)))))
              (__tmp149232
               (##structure-ref _%state138779%_ '4 gxc#meta-state::t '#f)))
          (declare (not safe))
          (__foldl1 __tmp149233 '() __tmp149232))))
    (define gxc#collect-expression-refs
      (lambda (_%stx138775%_)
        (let ((_%ht138777%_
               (let () (declare (not safe)) (make-hash-table-eq))))
          (gxc#apply-collect-expression-refs__% '#f _%ht138777%_ _%stx138775%_)
          _%ht138777%_)))
    (define gxc#collect-refs-ref%
      (lambda (_%self138718%_ _%stx138719%_)
        (let* ((_%g138721138734%_
                (lambda (_%g138722138731%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138722138731%_))))
               (_%g138720138772%_
                (lambda (_%g138722138737%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138722138737%_))
                      (let ((_%e138724138739%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138722138737%_))))
                        (let ((_%hd138725138742%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138724138739%_)))
                              (_%tl138726138744%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138724138739%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138726138744%_))
                              (let ((_%e138727138747%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138726138744%_))))
                                (let ((_%hd138728138750%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138727138747%_)))
                                      (_%tl138729138752%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138727138747%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl138729138752%_))
                                      ((lambda (_%L138755%_)
                                         (let* ((_%bind138767%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#resolve-identifier__0
                                                    _%L138755%_)))
                                                (_%eid138769%_
                                                 (if _%bind138767%_
                                                     (##structure-ref
                                                      _%bind138767%_
                                                      '1
                                                      gx#binding::t
                                                      '#f)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%L138755%_))))
                                                (__tmp149234
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self138718%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-put!
                                            __tmp149234
                                            _%eid138769%_
                                            _%eid138769%_)))
                                       _%hd138728138750%_)
                                      (_%g138721138734%_ _%g138722138737%_))))
                              (_%g138721138734%_ _%g138722138737%_))))
                      (_%g138721138734%_ _%g138722138737%_)))))
          (_%g138720138772%_ _%stx138719%_))))
    (define gxc#collect-refs-setq%
      (lambda (_%self138645%_ _%stx138646%_)
        (let* ((_%g138648138665%_
                (lambda (_%g138649138662%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138649138662%_))))
               (_%g138647138715%_
                (lambda (_%g138649138668%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138649138668%_))
                      (let ((_%e138652138670%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138649138668%_))))
                        (let ((_%hd138653138673%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138652138670%_)))
                              (_%tl138654138675%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138652138670%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138654138675%_))
                              (let ((_%e138655138678%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138654138675%_))))
                                (let ((_%hd138656138681%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138655138678%_)))
                                      (_%tl138657138683%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138655138678%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl138657138683%_))
                                      (let ((_%e138658138686%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl138657138683%_))))
                                        (let ((_%hd138659138689%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e138658138686%_)))
                                              (_%tl138660138691%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e138658138686%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl138660138691%_))
                                              ((lambda (_%L138694%_
                                                        _%L138695%_)
                                                 (let* ((_%bind138710%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#resolve-identifier__0
                                                            _%L138695%_)))
                                                        (_%eid138712%_
                                                         (if _%bind138710%_
                                                             (##structure-ref
                                                              _%bind138710%_
                                                              '1
                                                              gx#binding::t
                                                              '#f)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%L138695%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp149235
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self138645%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp149235
                                                      _%eid138712%_
                                                      _%eid138712%_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self138645%_
                                                      _%L138694%_))))
                                               _%hd138659138689%_
                                               _%hd138656138681%_)
                                              (_%g138648138665%_
                                               _%g138649138668%_))))
                                      (_%g138648138665%_ _%g138649138668%_))))
                              (_%g138648138665%_ _%g138649138668%_))))
                      (_%g138648138665%_ _%g138649138668%_)))))
          (_%g138647138715%_ _%stx138646%_))))
    (define gxc#find-runtime-begin%
      (lambda (_%self138602%_ _%stx138603%_)
        (let* ((_%g138605138615%_
                (lambda (_%g138606138612%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138606138612%_))))
               (_%g138604138642%_
                (lambda (_%g138606138618%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138606138618%_))
                      (let ((_%e138608138620%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138606138618%_))))
                        (let ((_%hd138609138623%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138608138620%_)))
                              (_%tl138610138625%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138608138620%_))))
                          ((lambda (_%L138628%_)
                             (let ((__tmp149236
                                    (lambda (_%g138637138639%_)
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self138602%_
                                         _%g138637138639%_)))))
                               (declare (not safe))
                               (__ormap1 __tmp149236 _%L138628%_)))
                           _%tl138610138625%_)))
                      (_%g138605138615%_ _%g138606138618%_)))))
          (_%g138604138642%_ _%stx138603%_))))
    (define gxc#count-values-single%
      (lambda (_%self138599%_ _%stx138600%_) '1))
    (define gxc#count-values-call%
      (lambda (_%self138465%_ _%stx138466%_)
        (let* ((_%__stx148979148980%_ _%stx138466%_)
               (_%g138469138498%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx148979148980%_)))))
          (let ((_%__kont148981148982%_
                 (lambda (_%L138566%_ _%L138567%_)
                   (length (let ((__tmp149237
                                  (lambda (_%g138588138591%_ _%g138589138593%_)
                                    (cons _%g138588138591%_
                                          _%g138589138593%_))))
                             (declare (not safe))
                             (__foldr1 __tmp149237 '() _%L138566%_)))))
                (_%__kont148985148986%_ (lambda () '#f)))
            (let ((_%__match149024149025%_
                   (lambda (_%e138473138510%_
                            _%hd138474138513%_
                            _%tl138475138515%_
                            _%e138476138518%_
                            _%hd138477138521%_
                            _%tl138478138523%_
                            _%e138479138526%_
                            _%hd138480138529%_
                            _%tl138481138531%_
                            _%e138482138534%_
                            _%hd138483138537%_
                            _%tl138484138539%_
                            _%__splice148983148984%_
                            _%target138485138542%_
                            _%tl138487138544%_)
                     (letrec ((_%loop138488138547%_
                               (lambda (_%hd138486138550%_
                                        _%rand138492138552%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd138486138550%_))
                                     (let ((_%e138489138555%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd138486138550%_))))
                                       (let ((_%lp-tl138491138560%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e138489138555%_)))
                                             (_%lp-hd138490138558%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e138489138555%_))))
                                         (_%loop138488138547%_
                                          _%lp-tl138491138560%_
                                          (cons _%lp-hd138490138558%_
                                                _%rand138492138552%_))))
                                     (let ((_%rand138493138563%_
                                            (reverse _%rand138492138552%_)))
                                       (let ((_%L138566%_ _%rand138493138563%_)
                                             (_%L138567%_ _%hd138483138537%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L138567%_
                                                'values))
                                             (_%__kont148981148982%_
                                              _%L138566%_
                                              _%L138567%_)
                                             (_%__kont148985148986%_))))))))
                       (_%loop138488138547%_ _%target138485138542%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx148979148980%_))
                  (let ((_%e138473138510%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx148979148980%_))))
                    (let ((_%tl138475138515%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e138473138510%_)))
                          (_%hd138474138513%_
                           (let ()
                             (declare (not safe))
                             (##car _%e138473138510%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl138475138515%_))
                          (let ((_%e138476138518%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl138475138515%_))))
                            (let ((_%tl138478138523%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e138476138518%_)))
                                  (_%hd138477138521%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e138476138518%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd138477138521%_))
                                  (let ((_%e138479138526%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd138477138521%_))))
                                    (let ((_%tl138481138531%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e138479138526%_)))
                                          (_%hd138480138529%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e138479138526%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd138480138529%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd138480138529%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl138481138531%_))
                                                  (let ((_%e138482138534%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl138481138531%_))))
                                                    (let ((_%tl138484138539%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e138482138534%_)))
                                                          (_%hd138483138537%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e138482138534%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl138484138539%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl138478138523%_))
                      (let ((_%__splice148983148984%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl138478138523%_
                                '0))))
                        (let ((_%tl138487138544%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice148983148984%_ '1)))
                              (_%target138485138542%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice148983148984%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl138487138544%_))
                              (_%__match149024149025%_
                               _%e138473138510%_
                               _%hd138474138513%_
                               _%tl138475138515%_
                               _%e138476138518%_
                               _%hd138477138521%_
                               _%tl138478138523%_
                               _%e138479138526%_
                               _%hd138480138529%_
                               _%tl138481138531%_
                               _%e138482138534%_
                               _%hd138483138537%_
                               _%tl138484138539%_
                               _%__splice148983148984%_
                               _%target138485138542%_
                               _%tl138487138544%_)
                              (_%__kont148985148986%_))))
                      (_%__kont148985148986%_))
                  (_%__kont148985148986%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont148985148986%_))
                                              (_%__kont148985148986%_))
                                          (_%__kont148985148986%_))))
                                  (_%__kont148985148986%_))))
                          (_%__kont148985148986%_))))
                  (_%__kont148985148986%_)))))))
    (define gxc#count-values-if%
      (lambda (_%self138368%_ _%stx138369%_)
        (let* ((_%g138371138392%_
                (lambda (_%g138372138389%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138372138389%_))))
               (_%g138370138462%_
                (lambda (_%g138372138395%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138372138395%_))
                      (let ((_%e138376138397%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138372138395%_))))
                        (let ((_%hd138377138400%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138376138397%_)))
                              (_%tl138378138402%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138376138397%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138378138402%_))
                              (let ((_%e138379138405%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138378138402%_))))
                                (let ((_%hd138380138408%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138379138405%_)))
                                      (_%tl138381138410%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138379138405%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl138381138410%_))
                                      (let ((_%e138382138413%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl138381138410%_))))
                                        (let ((_%hd138383138416%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e138382138413%_)))
                                              (_%tl138384138418%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e138382138413%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl138384138418%_))
                                              (let ((_%e138385138421%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl138384138418%_))))
                                                (let ((_%hd138386138424%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e138385138421%_)))
                                                      (_%tl138387138426%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e138385138421%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl138387138426%_))
                                                      ((lambda (_%L138429%_
                                                                _%L138430%_
                                                                _%L138431%_)
                                                         (let ((_%c1138448138450%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1 _%self138368%_ _%L138430%_))))
                   (if _%c1138448138450%_
                       (let* ((_%c1138453%_ _%c1138448138450%_)
                              (_%c2138454138456%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self138368%_
                                  _%L138429%_))))
                         (if _%c2138454138456%_
                             (let ((_%c2138459%_ _%c2138454138456%_))
                               (if (fx= _%c1138453%_ _%c2138459%_)
                                   _%c1138453%_
                                   '#f))
                             '#f))
                       '#f)))
               _%hd138386138424%_
               _%hd138383138416%_
               _%hd138380138408%_)
              (_%g138371138392%_ _%g138372138395%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g138371138392%_
                                               _%g138372138395%_))))
                                      (_%g138371138392%_ _%g138372138395%_))))
                              (_%g138371138392%_ _%g138372138395%_))))
                      (_%g138371138392%_ _%g138372138395%_)))))
          (_%g138370138462%_ _%stx138369%_))))))
