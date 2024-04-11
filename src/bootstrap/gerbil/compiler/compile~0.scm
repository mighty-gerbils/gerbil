(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/compile::timestamp 1712823028)
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
        (letrec ((_%hash-e145656%_
                  (lambda (_%id145658%_)
                    (symbol-hash
                     (let () (declare (not safe)) (gx#stx-e _%id145658%_))))))
          (let ()
            (declare (not safe))
            (make-hash-table__%
             '#f
             absent-value
             absent-value
             gx#bound-identifier=?
             _%hash-e145656%_
             absent-value
             absent-value
             absent-value
             absent-value)))))
    (define gxc#::collect-bindings::t
      (let ((__tmp147043 (list gxc#::void::t))
            (__tmp147042 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-bindings::t
         '::collect-bindings
         __tmp147043
         '()
         __tmp147042
         '#f)))
    (define gxc#::collect-bindings?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-bindings::t)))
    (define gxc#make-::collect-bindings
      (lambda _%$args145652%_
        (apply make-instance gxc#::collect-bindings::t _%$args145652%_)))
    (define gxc#::collect-bindings-bind-methods!
      (let ((__tmp147044
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
        (__make-promise __tmp147044)))
    (define gxc#apply-collect-bindings
      (lambda (_%stx145644%_)
        (force gxc#::collect-bindings-bind-methods!)
        (let* ((_%self145647%_
                (let ((__obj147018
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-bindings::t))))
                  __obj147018))
               (__tmp147045
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self145647%_ _%stx145644%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp147045
           gxc#current-compile-method
           _%self145647%_))))
    (define gxc#::lift-modules::t
      (let ((__tmp147047 (list gxc#::void::t))
            (__tmp147046 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::lift-modules::t
         '::lift-modules
         __tmp147047
         '(modules)
         __tmp147046
         '#f)))
    (define gxc#::lift-modules?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::lift-modules::t)))
    (define gxc#make-::lift-modules
      (lambda _%$args145641%_
        (apply make-instance gxc#::lift-modules::t _%$args145641%_)))
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
      (let ((__tmp147048
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
        (__make-promise __tmp147048)))
    (define gxc#apply-lift-modules__%
      (lambda (_%@@keywords145615%_ _%modules145612145616%_ _%stx145618%_)
        (let ((_%modules145621%_
               (if (eq? _%modules145612145616%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'modules:))
                   _%modules145612145616%_)))
          (force gxc#::lift-modules-bind-methods!)
          (let* ((_%self145623%_
                  (let ((__obj147020
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::lift-modules::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj147020
                       _%modules145621%_
                       '1
                       '#f
                       '#f))
                    __obj147020))
                 (__tmp147049
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self145623%_ _%stx145618%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp147049
             gxc#current-compile-method
             _%self145623%_)))))
    (define gxc#apply-lift-modules__@
      (lambda (_%@@keywords145630%_ . _%args145631%_)
        (apply gxc#apply-lift-modules__%
               _%@@keywords145630%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords145630%_
                  'modules:
                  absent-value))
               _%args145631%_)))
    (define gxc#apply-lift-modules
      (lambda _%args145613145637%_
        (apply keyword-dispatch
               '#(modules:)
               gxc#apply-lift-modules__@
               _%args145613145637%_)))
    (define gxc#::find-runtime-code::t
      (let ((__tmp147051 (list)) (__tmp147050 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-runtime-code::t
         '::find-runtime-code
         __tmp147051
         '()
         __tmp147050
         '#f)))
    (define gxc#::find-runtime-code?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-runtime-code::t)))
    (define gxc#make-::find-runtime-code
      (lambda _%$args145608%_
        (apply make-instance gxc#::find-runtime-code::t _%$args145608%_)))
    (define gxc#::find-runtime-code-bind-methods!
      (let ((__tmp147052
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
        (__make-promise __tmp147052)))
    (define gxc#apply-find-runtime-code
      (lambda (_%stx145600%_)
        (force gxc#::find-runtime-code-bind-methods!)
        (let* ((_%self145603%_
                (let ((__obj147022
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-runtime-code::t))))
                  __obj147022))
               (__tmp147053
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self145603%_ _%stx145600%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp147053
           gxc#current-compile-method
           _%self145603%_))))
    (define gxc#::find-lambda-expression::t
      (let ((__tmp147055 (list gxc#::false::t))
            (__tmp147054 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-lambda-expression::t
         '::find-lambda-expression
         __tmp147055
         '()
         __tmp147054
         '#f)))
    (define gxc#::find-lambda-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-lambda-expression::t)))
    (define gxc#make-::find-lambda-expression
      (lambda _%$args145597%_
        (apply make-instance gxc#::find-lambda-expression::t _%$args145597%_)))
    (define gxc#::find-lambda-expression-bind-methods!
      (let ((__tmp147056
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
        (__make-promise __tmp147056)))
    (define gxc#apply-find-lambda-expression
      (lambda (_%stx145589%_)
        (force gxc#::find-lambda-expression-bind-methods!)
        (let* ((_%self145592%_
                (let ((__obj147024
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-lambda-expression::t))))
                  __obj147024))
               (__tmp147057
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self145592%_ _%stx145589%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp147057
           gxc#current-compile-method
           _%self145592%_))))
    (define gxc#::count-values::t
      (let ((__tmp147059 (list gxc#::false-expression::t))
            (__tmp147058 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::count-values::t
         '::count-values
         __tmp147059
         '()
         __tmp147058
         '#f)))
    (define gxc#::count-values?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::count-values::t)))
    (define gxc#make-::count-values
      (lambda _%$args145586%_
        (apply make-instance gxc#::count-values::t _%$args145586%_)))
    (define gxc#::count-values-bind-methods!
      (let ((__tmp147060
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
        (__make-promise __tmp147060)))
    (define gxc#apply-count-values
      (lambda (_%stx145578%_)
        (force gxc#::count-values-bind-methods!)
        (let* ((_%self145581%_
                (let ((__obj147026
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::count-values::t))))
                  __obj147026))
               (__tmp147061
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self145581%_ _%stx145578%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp147061
           gxc#current-compile-method
           _%self145581%_))))
    (define gxc#::generate-runtime-empty::t
      (let ((__tmp147062 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-empty::t
         '::generate-runtime-empty
         __tmp147062
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime-empty?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-empty::t)))
    (define gxc#make-::generate-runtime-empty
      (lambda _%$args145575%_
        (apply make-instance gxc#::generate-runtime-empty::t _%$args145575%_)))
    (define gxc#::generate-runtime-empty-bind-methods!
      (let ((__tmp147063
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
        (__make-promise __tmp147063)))
    (define gxc#::generate-loader::t
      (let ((__tmp147065 (list gxc#::generate-runtime-empty::t))
            (__tmp147064 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-loader::t
         '::generate-loader
         __tmp147065
         '()
         __tmp147064
         '#f)))
    (define gxc#::generate-loader?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-loader::t)))
    (define gxc#make-::generate-loader
      (lambda _%$args145571%_
        (apply make-instance gxc#::generate-loader::t _%$args145571%_)))
    (define gxc#::generate-loader-bind-methods!
      (let ((__tmp147066
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
        (__make-promise __tmp147066)))
    (define gxc#apply-generate-loader
      (lambda (_%stx145563%_)
        (force gxc#::generate-loader-bind-methods!)
        (let* ((_%self145566%_
                (let ((__obj147029
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-loader::t))))
                  __obj147029))
               (__tmp147067
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self145566%_ _%stx145563%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp147067
           gxc#current-compile-method
           _%self145566%_))))
    (define gxc#::generate-runtime::t
      (let ((__tmp147068 (list gxc#::generate-runtime-empty::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime::t
         '::generate-runtime
         __tmp147068
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime::t)))
    (define gxc#make-::generate-runtime
      (lambda _%$args145560%_
        (apply make-instance gxc#::generate-runtime::t _%$args145560%_)))
    (define gxc#::generate-runtime-bind-methods!
      (let ((__tmp147069
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
        (__make-promise __tmp147069)))
    (define gxc#apply-generate-runtime
      (lambda (_%stx145552%_)
        (force gxc#::generate-runtime-bind-methods!)
        (let* ((_%self145555%_
                (let ((__obj147031
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime::t))))
                  __obj147031))
               (__tmp147070
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self145555%_ _%stx145552%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp147070
           gxc#current-compile-method
           _%self145555%_))))
    (define gxc#::generate-runtime-phi::t
      (let ((__tmp147072 (list gxc#::generate-runtime::t))
            (__tmp147071 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-phi::t
         '::generate-runtime-phi
         __tmp147072
         '()
         __tmp147071
         '#f)))
    (define gxc#::generate-runtime-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-phi::t)))
    (define gxc#make-::generate-runtime-phi
      (lambda _%$args145549%_
        (apply make-instance gxc#::generate-runtime-phi::t _%$args145549%_)))
    (define gxc#::generate-runtime-phi-bind-methods!
      (let ((__tmp147073
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
        (__make-promise __tmp147073)))
    (define gxc#apply-generate-runtime-phi
      (lambda (_%stx145541%_)
        (force gxc#::generate-runtime-phi-bind-methods!)
        (let* ((_%self145544%_
                (let ((__obj147033
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime-phi::t))))
                  __obj147033))
               (__tmp147074
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self145544%_ _%stx145541%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp147074
           gxc#current-compile-method
           _%self145544%_))))
    (define gxc#::collect-expression-refs::t
      (let ((__tmp147075 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-expression-refs::t
         '::collect-expression-refs
         __tmp147075
         '(table)
         '()
         '#f)))
    (define gxc#::collect-expression-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-expression-refs::t)))
    (define gxc#make-::collect-expression-refs
      (lambda _%$args145538%_
        (apply make-instance
               gxc#::collect-expression-refs::t
               _%$args145538%_)))
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
      (let ((__tmp147076
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
        (__make-promise __tmp147076)))
    (define gxc#apply-collect-expression-refs__%
      (lambda (_%@@keywords145512%_ _%table145509145513%_ _%stx145515%_)
        (let ((_%table145518%_
               (if (eq? _%table145509145513%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table145509145513%_)))
          (force gxc#::collect-expression-refs-bind-methods!)
          (let* ((_%self145520%_
                  (let ((__obj147035
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#::collect-expression-refs::t
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj147035
                       _%table145518%_
                       '1
                       '#f
                       '#f))
                    __obj147035))
                 (__tmp147077
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self145520%_ _%stx145515%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp147077
             gxc#current-compile-method
             _%self145520%_)))))
    (define gxc#apply-collect-expression-refs__@
      (lambda (_%@@keywords145527%_ . _%args145528%_)
        (apply gxc#apply-collect-expression-refs__%
               _%@@keywords145527%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords145527%_
                  'table:
                  absent-value))
               _%args145528%_)))
    (define gxc#apply-collect-expression-refs
      (lambda _%args145510145534%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-expression-refs__@
               _%args145510145534%_)))
    (define gxc#::generate-meta::t
      (let ((__tmp147079 (list gxc#::void-expression::t))
            (__tmp147078 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta::t
         '::generate-meta
         __tmp147079
         '(state)
         __tmp147078
         '#f)))
    (define gxc#::generate-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta::t)))
    (define gxc#make-::generate-meta
      (lambda _%$args145505%_
        (apply make-instance gxc#::generate-meta::t _%$args145505%_)))
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
      (let ((__tmp147080
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
        (__make-promise __tmp147080)))
    (define gxc#apply-generate-meta__%
      (lambda (_%@@keywords145479%_ _%state145476145480%_ _%stx145482%_)
        (let ((_%state145485%_
               (if (eq? _%state145476145480%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state145476145480%_)))
          (force gxc#::generate-meta-bind-methods!)
          (let* ((_%self145487%_
                  (let ((__obj147037
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj147037
                       _%state145485%_
                       '1
                       '#f
                       '#f))
                    __obj147037))
                 (__tmp147081
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self145487%_ _%stx145482%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp147081
             gxc#current-compile-method
             _%self145487%_)))))
    (define gxc#apply-generate-meta__@
      (lambda (_%@@keywords145494%_ . _%args145495%_)
        (apply gxc#apply-generate-meta__%
               _%@@keywords145494%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords145494%_
                  'state:
                  absent-value))
               _%args145495%_)))
    (define gxc#apply-generate-meta
      (lambda _%args145477145501%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta__@
               _%args145477145501%_)))
    (define gxc#::generate-meta-phi::t
      (let ((__tmp147083 (list)) (__tmp147082 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta-phi::t
         '::generate-meta-phi
         __tmp147083
         '(state)
         __tmp147082
         '#f)))
    (define gxc#::generate-meta-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta-phi::t)))
    (define gxc#make-::generate-meta-phi
      (lambda _%$args145472%_
        (apply make-instance gxc#::generate-meta-phi::t _%$args145472%_)))
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
      (let ((__tmp147084
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
        (__make-promise __tmp147084)))
    (define gxc#apply-generate-meta-phi__%
      (lambda (_%@@keywords145446%_ _%state145443145447%_ _%stx145449%_)
        (let ((_%state145452%_
               (if (eq? _%state145443145447%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state145443145447%_)))
          (force gxc#::generate-meta-phi-bind-methods!)
          (let* ((_%self145454%_
                  (let ((__obj147039
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta-phi::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj147039
                       _%state145452%_
                       '1
                       '#f
                       '#f))
                    __obj147039))
                 (__tmp147085
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self145454%_ _%stx145449%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp147085
             gxc#current-compile-method
             _%self145454%_)))))
    (define gxc#apply-generate-meta-phi__@
      (lambda (_%@@keywords145461%_ . _%args145462%_)
        (apply gxc#apply-generate-meta-phi__%
               _%@@keywords145461%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords145461%_
                  'state:
                  absent-value))
               _%args145462%_)))
    (define gxc#apply-generate-meta-phi
      (lambda _%args145444145468%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta-phi__@
               _%args145444145468%_)))
    (define gxc#collect-bindings-define-values%
      (lambda (_%self145372%_ _%stx145373%_)
        (let* ((_%g145375145392%_
                (lambda (_%g145376145389%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g145376145389%_))))
               (_%g145374145439%_
                (lambda (_%g145376145395%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g145376145395%_))
                      (let ((_%e145379145397%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g145376145395%_))))
                        (let ((_%hd145380145400%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145379145397%_)))
                              (_%tl145381145402%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145379145397%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl145381145402%_))
                              (let ((_%e145382145405%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl145381145402%_))))
                                (let ((_%hd145383145408%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145382145405%_)))
                                      (_%tl145384145410%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145382145405%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl145384145410%_))
                                      (let ((_%e145385145413%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl145384145410%_))))
                                        (let ((_%hd145386145416%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e145385145413%_)))
                                              (_%tl145387145418%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e145385145413%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl145387145418%_))
                                              ((lambda (_%L145421%_
                                                        _%L145422%_)
                                                 (let ((__tmp147086
                                                        (lambda (_%bind145437%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#identifier? _%bind145437%_))
                      (gxc#add-module-binding! _%bind145437%_ '#f)
                      '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#stx-for-each1
                                                    __tmp147086
                                                    _%L145422%_)))
                                               _%hd145386145416%_
                                               _%hd145383145408%_)
                                              (_%g145375145392%_
                                               _%g145376145395%_))))
                                      (_%g145375145392%_ _%g145376145395%_))))
                              (_%g145375145392%_ _%g145376145395%_))))
                      (_%g145375145392%_ _%g145376145395%_)))))
          (_%g145374145439%_ _%stx145373%_))))
    (define gxc#collect-bindings-define-syntax%
      (lambda (_%self145304%_ _%stx145305%_)
        (let* ((_%g145307145324%_
                (lambda (_%g145308145321%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g145308145321%_))))
               (_%g145306145369%_
                (lambda (_%g145308145327%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g145308145327%_))
                      (let ((_%e145311145329%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g145308145327%_))))
                        (let ((_%hd145312145332%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145311145329%_)))
                              (_%tl145313145334%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145311145329%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl145313145334%_))
                              (let ((_%e145314145337%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl145313145334%_))))
                                (let ((_%hd145315145340%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145314145337%_)))
                                      (_%tl145316145342%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145314145337%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl145316145342%_))
                                      (let ((_%e145317145345%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl145316145342%_))))
                                        (let ((_%hd145318145348%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e145317145345%_)))
                                              (_%tl145319145350%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e145317145345%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl145319145350%_))
                                              ((lambda (_%L145353%_
                                                        _%L145354%_)
                                                 (gxc#add-module-binding!
                                                  _%L145354%_
                                                  '#t))
                                               _%hd145318145348%_
                                               _%hd145315145340%_)
                                              (_%g145307145324%_
                                               _%g145308145327%_))))
                                      (_%g145307145324%_ _%g145308145327%_))))
                              (_%g145307145324%_ _%g145308145327%_))))
                      (_%g145307145324%_ _%g145308145327%_)))))
          (_%g145306145369%_ _%stx145305%_))))
    (define gxc#lift-modules-module%
      (lambda (_%self145246%_ _%stx145247%_)
        (let* ((_%g145249145263%_
                (lambda (_%g145250145260%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g145250145260%_))))
               (_%g145248145301%_
                (lambda (_%g145250145266%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g145250145266%_))
                      (let ((_%e145253145268%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g145250145266%_))))
                        (let ((_%hd145254145271%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145253145268%_)))
                              (_%tl145255145273%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145253145268%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl145255145273%_))
                              (let ((_%e145256145276%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl145255145273%_))))
                                (let ((_%hd145257145279%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145256145276%_)))
                                      (_%tl145258145281%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145256145276%_))))
                                  ((lambda (_%L145284%_ _%L145285%_)
                                     (let ((_%ctx145298%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-local-e__0
                                               _%L145285%_))))
                                       (set-box!
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self145246%_
                                           'modules))
                                        (cons _%ctx145298%_
                                              (unbox (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self145246%_
                                                        'modules)))))
                                       (let ((__tmp147087
                                              (lambda ()
                                                (let ((__tmp147088
                                                       (##structure-ref
                                                        _%ctx145298%_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self145246%_
                                                   __tmp147088)))))
                                         (declare (not safe))
                                         (__call-with-parameters
                                          __tmp147087
                                          gx#current-expander-context
                                          _%ctx145298%_))))
                                   _%tl145258145281%_
                                   _%hd145257145279%_)))
                              (_%g145249145263%_ _%g145250145266%_))))
                      (_%g145249145263%_ _%g145250145266%_)))))
          (_%g145248145301%_ _%stx145247%_))))
    (define gxc#current-compile-decls-unsafe?
      (lambda ()
        (let ((_%decls145199145201%_
               (let () (declare (not safe)) (gxc#current-compile-decls))))
          (if _%decls145199145201%_
              (let ((_%decls145204%_ _%decls145199145201%_))
                (let _%lp145206%_ ((_%rest145208%_ _%decls145204%_))
                  (let* ((_%rest145209145217%_ _%rest145208%_)
                         (_%else145211145225%_ (lambda () '#f))
                         (_%K145213145234%_
                          (lambda (_%decls145228%_ _%decl145229%_)
                            (if (equal? _%decl145229%_ '(not safe))
                                '#t
                                (if (equal? _%decl145229%_ '(safe))
                                    '#f
                                    (_%lp145206%_ _%decls145228%_))))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest145209145217%_))
                        (let ((_%hd145214145237%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest145209145217%_)))
                              (_%tl145215145239%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest145209145217%_))))
                          (let* ((_%decl145242%_ _%hd145214145237%_)
                                 (_%decls145244%_ _%tl145215145239%_))
                            (_%K145213145234%_
                             _%decls145244%_
                             _%decl145242%_)))
                        (_%else145211145225%_)))))
              '#f))))
    (define gxc#add-module-binding!
      (lambda (_%id145193%_ _%syntax?145194%_)
        (let ((_%eid145196%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id145193%_))
                '1
                gx#binding::t
                '#f))
              (_%ht145197%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-symbol-table))
                '2
                gxc#symbol-table::t
                '#f)))
          (if (let () (declare (not safe)) (interned-symbol? _%eid145196%_))
              '#!void
              (let ((__tmp147089
                     (let ((__tmp147090
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__0
                               _%eid145196%_))))
                       (declare (not safe))
                       (gx#make-binding-id__1 __tmp147090 _%syntax?145194%_))))
                (declare (not safe))
                (hash-put! _%ht145197%_ _%eid145196%_ __tmp147089))))))
    (define gxc#generate-runtime-identifier
      (lambda (_%id145191%_)
        (gxc#generate-runtime-identifier-key
         (let () (declare (not safe)) (gx#core-identifier-key _%id145191%_)))))
    (define gxc#generate-runtime-identifier-key
      (lambda (_%key145146%_)
        (if (let () (declare (not safe)) (interned-symbol? _%key145146%_))
            _%key145146%_
            (if (uninterned-symbol? _%key145146%_)
                (let ()
                  (declare (not safe))
                  (gxc#generate-runtime-gensym-reference__0 _%key145146%_))
                (let* ((_%key145150145157%_ _%key145146%_)
                       (_%E145152145161%_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (error '"No clause matching"
                                   _%key145150145157%_
                                   '([eid . mark])))
                          '#!void))
                       (_%K145153145179%_
                        (lambda (_%mark145164%_ _%eid145165%_)
                          (let ((_%$e145167%_
                                 (##structure-ref
                                  _%mark145164%_
                                  '1
                                  gx#expander-mark::t
                                  '#f)))
                            (if _%$e145167%_
                                ((lambda (_%ht145170%_)
                                   (let ((_%$e145172%_
                                          (let ()
                                            (declare (not safe))
                                            (hash-get
                                             _%ht145170%_
                                             _%eid145165%_))))
                                     (if _%$e145172%_
                                         ((lambda (_%id145175%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (interned-symbol?
                                                   _%id145175%_))
                                                _%id145175%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _%id145175%_))))
                                          _%$e145172%_)
                                         (gxc#generate-runtime-identifier-key
                                          _%eid145165%_))))
                                 _%$e145167%_)
                                (gxc#generate-runtime-identifier-key
                                 _%eid145165%_))))))
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%key145150145157%_))
                      (let ((_%hd145154145182%_
                             (let ()
                               (declare (not safe))
                               (##car _%key145150145157%_)))
                            (_%tl145155145184%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%key145150145157%_))))
                        (let* ((_%eid145187%_ _%hd145154145182%_)
                               (_%mark145189%_ _%tl145155145184%_))
                          (_%K145153145179%_ _%mark145189%_ _%eid145187%_)))
                      (_%E145152145161%_)))))))
    (define gxc#generate-runtime-empty
      (lambda (_%self145143%_ _%stx145144%_) '(begin)))
    (define gxc#generate-runtime-begin%
      (lambda (_%self144990%_ _%stx144991%_)
        (letrec ((_%simplify144993%_
                  (lambda (_%body145041%_)
                    (let _%lp145043%_ ((_%rest145045%_ _%body145041%_)
                                       (_%r145046%_ '()))
                      (let* ((_%rest145047145055%_ _%rest145045%_)
                             (_%else145049145063%_
                              (lambda () (reverse _%r145046%_)))
                             (_%K145051145131%_
                              (lambda (_%rest145066%_ _%hd145067%_)
                                (let* ((_%hd145068145084%_ _%hd145067%_)
                                       (_%else145072145092%_
                                        (lambda ()
                                          (_%lp145043%_
                                           _%rest145066%_
                                           (cons _%hd145067%_ _%r145046%_)))))
                                  (let ((_%K145080145121%_
                                         (lambda (_%exprs145119%_)
                                           (_%lp145043%_
                                            (let ()
                                              (declare (not safe))
                                              (__foldr1
                                               cons
                                               _%rest145066%_
                                               _%exprs145119%_))
                                            _%r145046%_)))
                                        (_%K145075145105%_
                                         (lambda ()
                                           (if (null? _%rest145066%_)
                                               (_%lp145043%_
                                                _%rest145066%_
                                                (cons _%hd145067%_
                                                      _%r145046%_))
                                               (_%lp145043%_
                                                _%rest145066%_
                                                _%r145046%_))))
                                        (_%K145074145097%_
                                         (lambda ()
                                           (if (null? _%rest145066%_)
                                               (_%lp145043%_
                                                _%rest145066%_
                                                (cons _%hd145067%_
                                                      _%r145046%_))
                                               (_%lp145043%_
                                                _%rest145066%_
                                                _%r145046%_)))))
                                    (let ((_%try-match145071145100%_
                                           (lambda ()
                                             (if (symbol? _%hd145068145084%_)
                                                 (_%K145074145097%_)
                                                 (_%else145072145092%_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%hd145068145084%_))
                                          (let ((_%tl145082145126%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd145068145084%_)))
                                                (_%hd145081145124%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd145068145084%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd145081145124%_
                                                         'begin))
                                                (let ((_%exprs145129%_
                                                       _%tl145082145126%_))
                                                  (_%K145080145121%_
                                                   _%exprs145129%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd145081145124%_
                                                             'quote))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##pair? _%tl145082145126%_))
                                                        (let ((_%tl145079145113%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%tl145082145126%_))))
                  (if (let ()
                        (declare (not safe))
                        (##null? _%tl145079145113%_))
                      (_%K145075145105%_)
                      (_%try-match145071145100%_)))
                (_%try-match145071145100%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%try-match145071145100%_))))
                                          (_%try-match145071145100%_))))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest145047145055%_))
                            (let ((_%hd145052145134%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest145047145055%_)))
                                  (_%tl145053145136%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest145047145055%_))))
                              (let* ((_%hd145139%_ _%hd145052145134%_)
                                     (_%rest145141%_ _%tl145053145136%_))
                                (_%K145051145131%_
                                 _%rest145141%_
                                 _%hd145139%_)))
                            (_%else145049145063%_)))))))
          (let* ((_%g144995145005%_
                  (lambda (_%g144996145002%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g144996145002%_))))
                 (_%g144994145038%_
                  (lambda (_%g144996145008%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g144996145008%_))
                        (let ((_%e144998145010%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g144996145008%_))))
                          (let ((_%hd144999145013%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e144998145010%_)))
                                (_%tl145000145015%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e144998145010%_))))
                            ((lambda (_%L145018%_)
                               (let* ((_%body145033%_
                                       (map (lambda (_%g145028145030%_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%self144990%_
                                                 _%g145028145030%_)))
                                            _%L145018%_))
                                      (_%body145035%_
                                       (_%simplify144993%_ _%body145033%_)))
                                 (if (let ((__tmp147091
                                            (length _%body145035%_)))
                                       (declare (not safe))
                                       (##fx= __tmp147091 '1))
                                     (car _%body145035%_)
                                     (cons 'begin _%body145035%_))))
                             _%tl145000145015%_)))
                        (_%g144995145005%_ _%g144996145008%_)))))
            (_%g144994145038%_ _%stx144991%_)))))
    (define gxc#generate-runtime-begin-foreign%
      (lambda (_%self144951%_ _%stx144952%_)
        (let* ((_%g144954144964%_
                (lambda (_%g144955144961%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g144955144961%_))))
               (_%g144953144987%_
                (lambda (_%g144955144967%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g144955144967%_))
                      (let ((_%e144957144969%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g144955144967%_))))
                        (let ((_%hd144958144972%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e144957144969%_)))
                              (_%tl144959144974%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e144957144969%_))))
                          ((lambda (_%L144977%_)
                             (cons 'begin
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax->datum _%L144977%_))))
                           _%tl144959144974%_)))
                      (_%g144954144964%_ _%g144955144967%_)))))
          (_%g144953144987%_ _%stx144952%_))))
    (define gxc#generate-runtime-begin-annotation%
      (lambda (_%self144715%_ _%stx144716%_)
        (let* ((_%__stx145681145682%_ _%stx144716%_)
               (_%g144720144772%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx145681145682%_)))))
          (let ((_%__kont145683145684%_
                 (lambda (_%L144933%_ _%L144934%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self144715%_ _%L144933%_))))
                (_%__kont145685145686%_
                 (lambda (_%L144881%_ _%L144882%_ _%L144883%_)
                   (if (let ((__tmp147092
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%L144883%_))))
                         (declare (not safe))
                         (##memq __tmp147092 '(@inline)))
                       '(begin)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self144715%_ _%L144881%_)))))
                (_%__kont145689145690%_
                 (lambda (_%L144801%_ _%L144802%_)
                   (let ((_%decls144817%_ (map gx#syntax->datum _%L144802%_)))
                     (let ((__tmp147095
                            (lambda ()
                              (cons 'begin
                                    (cons (cons 'declare _%decls144817%_)
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self144715%_
                                                   _%L144801%_))
                                                '())))))
                           (__tmp147093
                            (let ((__tmp147094
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-decls))))
                              (declare (not safe))
                              (__foldr1 cons __tmp147094 _%decls144817%_))))
                       (declare (not safe))
                       (__call-with-parameters
                        __tmp147095
                        gxc#current-compile-decls
                        __tmp147093))))))
            (let* ((_%__match145736145737%_
                    (lambda (_%e144736144825%_
                             _%hd144737144828%_
                             _%tl144738144830%_
                             _%e144739144833%_
                             _%hd144740144836%_
                             _%tl144741144838%_
                             _%e144742144841%_
                             _%hd144743144844%_
                             _%tl144744144846%_
                             _%__splice145687145688%_
                             _%target144745144849%_
                             _%tl144747144851%_)
                      (letrec ((_%loop144748144854%_
                                (lambda (_%hd144746144857%_
                                         _%param144752144859%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd144746144857%_))
                                      (let ((_%e144749144862%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd144746144857%_))))
                                        (let ((_%lp-tl144751144867%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e144749144862%_)))
                                              (_%lp-hd144750144865%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e144749144862%_))))
                                          (_%loop144748144854%_
                                           _%lp-tl144751144867%_
                                           (cons _%lp-hd144750144865%_
                                                 _%param144752144859%_))))
                                      (let ((_%param144753144870%_
                                             (reverse _%param144752144859%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl144741144838%_))
                                            (let ((_%e144754144873%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl144741144838%_))))
                                              (let ((_%tl144756144878%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e144754144873%_)))
                                                    (_%hd144755144876%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e144754144873%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl144756144878%_))
                                                    (let ((_%L144881%_
                                                           _%hd144755144876%_)
                                                          (_%L144882%_
                                                           _%param144753144870%_)
                                                          (_%L144883%_
                                                           _%hd144743144844%_))
                                                      (if (and (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier? _%L144883%_))
                       (not (let ((__tmp147096
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L144883%_))))
                              (declare (not safe))
                              (##memq __tmp147096 gxc#gambit-annotations))))
                  (_%__kont145685145686%_ _%L144881%_ _%L144882%_ _%L144883%_)
                  (_%__kont145689145690%_
                   _%hd144755144876%_
                   _%hd144740144836%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g144720144772%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g144720144772%_))))))))
                        (_%loop144748144854%_ _%target144745144849%_ '()))))
                   (_%__match145710145711%_
                    (lambda (_%e144724144909%_
                             _%hd144725144912%_
                             _%tl144726144914%_
                             _%e144727144917%_
                             _%hd144728144920%_
                             _%tl144729144922%_
                             _%e144730144925%_
                             _%hd144731144928%_
                             _%tl144732144930%_)
                      (let ((_%L144933%_ _%hd144731144928%_)
                            (_%L144934%_ _%hd144728144920%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%L144934%_))
                            (_%__kont145683145684%_ _%L144933%_ _%L144934%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd144728144920%_))
                                (let ((_%e144742144841%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd144728144920%_))))
                                  (let ((_%tl144744144846%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e144742144841%_)))
                                        (_%hd144743144844%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e144742144841%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl144744144846%_))
                                        (let ((_%__splice145687145688%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl144744144846%_
                                                  '0))))
                                          (let ((_%tl144747144851%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice145687145688%_
                                                    '1)))
                                                (_%target144745144849%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice145687145688%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl144747144851%_))
                                                (_%__match145736145737%_
                                                 _%e144724144909%_
                                                 _%hd144725144912%_
                                                 _%tl144726144914%_
                                                 _%e144727144917%_
                                                 _%hd144728144920%_
                                                 _%tl144729144922%_
                                                 _%e144742144841%_
                                                 _%hd144743144844%_
                                                 _%tl144744144846%_
                                                 _%__splice145687145688%_
                                                 _%target144745144849%_
                                                 _%tl144747144851%_)
                                                (_%__kont145689145690%_
                                                 _%hd144731144928%_
                                                 _%hd144728144920%_))))
                                        (_%__kont145689145690%_
                                         _%hd144731144928%_
                                         _%hd144728144920%_))))
                                (_%__kont145689145690%_
                                 _%hd144731144928%_
                                 _%hd144728144920%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx145681145682%_))
                  (let ((_%e144724144909%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx145681145682%_))))
                    (let ((_%tl144726144914%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e144724144909%_)))
                          (_%hd144725144912%_
                           (let ()
                             (declare (not safe))
                             (##car _%e144724144909%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl144726144914%_))
                          (let ((_%e144727144917%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl144726144914%_))))
                            (let ((_%tl144729144922%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e144727144917%_)))
                                  (_%hd144728144920%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e144727144917%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl144729144922%_))
                                  (let ((_%e144730144925%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl144729144922%_))))
                                    (let ((_%tl144732144930%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e144730144925%_)))
                                          (_%hd144731144928%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e144730144925%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl144732144930%_))
                                          (_%__match145710145711%_
                                           _%e144724144909%_
                                           _%hd144725144912%_
                                           _%tl144726144914%_
                                           _%e144727144917%_
                                           _%hd144728144920%_
                                           _%tl144729144922%_
                                           _%e144730144925%_
                                           _%hd144731144928%_
                                           _%tl144732144930%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd144728144920%_))
                                              (let ((_%e144742144841%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd144728144920%_))))
                                                (let ((_%tl144744144846%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e144742144841%_)))
                                                      (_%hd144743144844%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e144742144841%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl144744144846%_))
                                                      (let ((_%__splice145687145688%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl144744144846%_ '0))))
                (let ((_%tl144747144851%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice145687145688%_ '1)))
                      (_%target144745144849%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice145687145688%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl144747144851%_))
                      (_%__match145736145737%_
                       _%e144724144909%_
                       _%hd144725144912%_
                       _%tl144726144914%_
                       _%e144727144917%_
                       _%hd144728144920%_
                       _%tl144729144922%_
                       _%e144742144841%_
                       _%hd144743144844%_
                       _%tl144744144846%_
                       _%__splice145687145688%_
                       _%target144745144849%_
                       _%tl144747144851%_)
                      (let () (declare (not safe)) (_%g144720144772%_)))))
              (let () (declare (not safe)) (_%g144720144772%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g144720144772%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd144728144920%_))
                                      (let ((_%e144742144841%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd144728144920%_))))
                                        (let ((_%tl144744144846%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e144742144841%_)))
                                              (_%hd144743144844%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e144742144841%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl144744144846%_))
                                              (let ((_%__splice145687145688%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl144744144846%_
                                                        '0))))
                                                (let ((_%tl144747144851%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice145687145688%_
                                                          '1)))
                                                      (_%target144745144849%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice145687145688%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl144747144851%_))
                                                      (_%__match145736145737%_
                                                       _%e144724144909%_
                                                       _%hd144725144912%_
                                                       _%tl144726144914%_
                                                       _%e144727144917%_
                                                       _%hd144728144920%_
                                                       _%tl144729144922%_
                                                       _%e144742144841%_
                                                       _%hd144743144844%_
                                                       _%tl144744144846%_
                                                       _%__splice145687145688%_
                                                       _%target144745144849%_
                                                       _%tl144747144851%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g144720144772%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g144720144772%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g144720144772%_))))))
                          (let () (declare (not safe)) (_%g144720144772%_)))))
                  (let () (declare (not safe)) (_%g144720144772%_))))))))
    (define gxc#generate-runtime-declare%
      (lambda (_%self144674%_ _%stx144675%_)
        (let* ((_%g144677144687%_
                (lambda (_%g144678144684%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g144678144684%_))))
               (_%g144676144712%_
                (lambda (_%g144678144690%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g144678144690%_))
                      (let ((_%e144680144692%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g144678144690%_))))
                        (let ((_%hd144681144695%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e144680144692%_)))
                              (_%tl144682144697%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e144680144692%_))))
                          ((lambda (_%L144700%_)
                             (let ((_%decls144710%_
                                    (map gx#syntax->datum _%L144700%_)))
                               (let ((__tmp147097
                                      (let ((__tmp147098
                                             (let ()
                                               (declare (not safe))
                                               (gxc#current-compile-decls))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp147098
                                         _%decls144710%_))))
                                 (declare (not safe))
                                 (gxc#current-compile-decls __tmp147097))
                               (cons 'declare _%decls144710%_)))
                           _%tl144682144697%_)))
                      (_%g144677144687%_ _%g144678144690%_)))))
          (_%g144676144712%_ _%stx144675%_))))
    (define gxc#generate-runtime-define-values%
      (lambda (_%self144420%_ _%stx144421%_)
        (let* ((_%g144423144440%_
                (lambda (_%g144424144437%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g144424144437%_))))
               (_%g144422144671%_
                (lambda (_%g144424144443%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g144424144443%_))
                      (let ((_%e144427144445%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g144424144443%_))))
                        (let ((_%hd144428144448%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e144427144445%_)))
                              (_%tl144429144450%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e144427144445%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl144429144450%_))
                              (let ((_%e144430144453%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl144429144450%_))))
                                (let ((_%hd144431144456%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e144430144453%_)))
                                      (_%tl144432144458%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e144430144453%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl144432144458%_))
                                      (let ((_%e144433144461%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl144432144458%_))))
                                        (let ((_%hd144434144464%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e144433144461%_)))
                                              (_%tl144435144466%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e144433144461%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl144435144466%_))
                                              ((lambda (_%L144469%_
                                                        _%L144470%_)
                                                 (let* ((_%__stx145789145790%_
                                                         _%L144470%_)
                                                        (_%g144487144501%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx145789145790%_)))))
                                                   (let ((_%__kont145791145792%_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _%self144420%_
                                                               _%L144469%_))))
                                                         (_%__kont145793145794%_
                                                          (lambda (_%L144633%_)
                                                            (let ((_%eid144642%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%L144633%_))))
                      (let ((_%lambda-expr144643144645%_
                             (gxc#apply-find-lambda-expression _%L144469%_)))
                        (if _%lambda-expr144643144645%_
                            (let* ((_%lambda-expr144648%_
                                    _%lambda-expr144643144645%_)
                                   (__tmp147099
                                    (let ()
                                      (declare (not safe))
                                      (gxc#current-compile-runtime-names))))
                              (declare (not safe))
                              (hash-put!
                               __tmp147099
                               _%lambda-expr144648%_
                               _%eid144642%_))
                            '#f))
                      (cons 'define
                            (cons _%eid144642%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__1
                                           _%self144420%_
                                           _%L144469%_))
                                        '()))))))
                 (_%__kont145795145796%_
                  (lambda ()
                    (let* ((_%tmp144508%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%body144617%_
                            (let _%lp144510%_ ((_%rest144512%_ _%L144470%_)
                                               (_%k144513%_ '0)
                                               (_%r144514%_ '()))
                              (let* ((_%__stx145759145760%_ _%rest144512%_)
                                     (_%g144519144536%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx145759145760%_)))))
                                (let ((_%__kont145761145762%_
                                       (lambda (_%L144604%_)
                                         (_%lp144510%_
                                          _%L144604%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k144513%_ '1))
                                          _%r144514%_)))
                                      (_%__kont145763145764%_
                                       (lambda (_%L144577%_ _%L144578%_)
                                         (_%lp144510%_
                                          _%L144577%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k144513%_ '1))
                                          (cons (cons 'define
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#generate-runtime-binding-id
                                                               _%L144578%_))
                                                            (cons (gxc#generate-runtime-values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tmp144508%_
                           _%k144513%_
                           _%L144577%_)
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%r144514%_))))
                                      (_%__kont145765145766%_
                                       (lambda (_%L144548%_)
                                         (let ((__tmp147100
                                                (cons (cons 'define
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#generate-runtime-binding-id _%L144548%_))
                          (cons (gxc#generate-runtime-values->list
                                 _%tmp144508%_
                                 _%k144513%_)
                                '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (__foldl1
                                            cons
                                            __tmp147100
                                            _%r144514%_))))
                                      (_%__kont145767145768%_
                                       (lambda () (reverse _%r144514%_))))
                                  (let ((_%g144517144564%_
                                         (lambda ()
                                           (let ((_%L144548%_
                                                  _%__stx145759145760%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%L144548%_))
                                                 (_%__kont145765145766%_
                                                  _%L144548%_)
                                                 (_%__kont145767145768%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx145759145760%_))
                                        (let ((_%e144522144593%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx145759145760%_))))
                                          (let ((_%tl144524144598%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e144522144593%_)))
                                                (_%hd144523144596%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e144522144593%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd144523144596%_))
                                                (let ((_%e144525144601%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd144523144596%_))))
                                                  (if (equal? _%e144525144601%_
                                                              '#f)
                                                      (_%__kont145761145762%_
                                                       _%tl144524144598%_)
                                                      (_%__kont145763145764%_
                                                       _%tl144524144598%_
                                                       _%hd144523144596%_)))
                                                (_%__kont145763145764%_
                                                 _%tl144524144598%_
                                                 _%hd144523144596%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g144517144564%_)))))))))
                      (cons 'begin
                            (cons (cons 'define
                                        (cons _%tmp144508%_
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self144420%_
                                                       _%L144469%_))
                                                    '())))
                                  (cons (gxc#generate-runtime-check-values
                                         _%tmp144508%_
                                         _%L144470%_
                                         _%L144469%_)
                                        _%body144617%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx145789145790%_))
                                                         (let ((_%e144489144655%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx145789145790%_))))
                   (let ((_%tl144491144660%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e144489144655%_)))
                         (_%hd144490144658%_
                          (let ()
                            (declare (not safe))
                            (##car _%e144489144655%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-datum? _%hd144490144658%_))
                         (let ((_%e144492144663%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd144490144658%_))))
                           (if (equal? _%e144492144663%_ '#f)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl144491144660%_))
                                   (_%__kont145791145792%_)
                                   (_%__kont145795145796%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl144491144660%_))
                                   (_%__kont145793145794%_ _%hd144490144658%_)
                                   (_%__kont145795145796%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl144491144660%_))
                             (_%__kont145793145794%_ _%hd144490144658%_)
                             (_%__kont145795145796%_)))))
                 (_%__kont145795145796%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd144434144464%_
                                               _%hd144431144456%_)
                                              (_%g144423144440%_
                                               _%g144424144443%_))))
                                      (_%g144423144440%_ _%g144424144443%_))))
                              (_%g144423144440%_ _%g144424144443%_))))
                      (_%g144423144440%_ _%g144424144443%_)))))
          (_%g144422144671%_ _%stx144421%_))))
    (define gxc#generate-runtime-check-values
      (lambda (_%vals144395%_ _%hd144396%_ _%expr144397%_)
        (let ((_%$e144399%_ (gxc#apply-count-values _%expr144397%_)))
          (if _%$e144399%_
              ((lambda (_%count144402%_)
                 (let ((_%len144404%_
                        (let ()
                          (declare (not safe))
                          (gx#stx-length _%hd144396%_)))
                       (_%cmp144405%_
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-list? _%hd144396%_))
                            fx=
                            fx>=)))
                   (if (or (let ()
                             (declare (not safe))
                             (##fx= _%len144404%_ '0))
                           (_%cmp144405%_ _%count144402%_ _%len144404%_))
                       '#!void
                       (let ()
                         (declare (not safe))
                         (gxc#raise-compile-error
                          '"Value count mismatch"
                          _%expr144397%_
                          _%hd144396%_)))))
               _%$e144399%_)
              (let* ((_%len144411%_
                      (let ()
                        (declare (not safe))
                        (gx#stx-length _%hd144396%_)))
                     (_%cmp144413%_
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-list? _%hd144396%_))
                          '##fx=
                          '##fx>=))
                     (_%errmsg144415%_
                      (let ((__tmp147102
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-list? _%hd144396%_))
                                 '"Context expects "
                                 '"Context expects at least "))
                            (__tmp147101 (number->string _%len144411%_)))
                        (declare (not safe))
                        (##string-append __tmp147102 __tmp147101 '" values")))
                     (_%count144417%_
                      (let ()
                        (declare (not safe))
                        (gxc#generate-runtime-temporary__0))))
                (if (and (not (let ()
                                (declare (not safe))
                                (gx#stx-list? _%hd144396%_)))
                         (let ()
                           (declare (not safe))
                           (##fx= _%len144411%_ '0)))
                    '#!void
                    (cons 'let
                          (cons (cons (cons _%count144417%_
                                            (cons (gxc#generate-runtime-values-count
                                                   _%vals144395%_)
                                                  '()))
                                      '())
                                (cons (cons 'if
                                            (cons (cons 'not
                                                        (cons (if (gxc#current-compile-decls-unsafe?)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%cmp144413%_
                                (cons _%count144417%_
                                      (cons _%len144411%_ '())))
                          (cons 'let
                                (cons '()
                                      (cons '(declare (not safe))
                                            (cons (cons _%cmp144413%_
                                                        (cons _%count144417%_
                                                              (cons _%len144411%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons 'error
                                                              (cons _%errmsg144415%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%count144417%_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))))))))
    (define gxc#generate-runtime-values-count
      (lambda (_%var144390%_)
        (letrec ((_%generate-inline144392%_
                  (lambda ()
                    (cons 'if
                          (cons (cons '##values? (cons _%var144390%_ '()))
                                (cons (cons '##vector-length
                                            (cons _%var144390%_ '()))
                                      (cons '1 '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline144392%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline144392%_) '()))))))))
    (define gxc#generate-runtime-values-ref
      (lambda (_%var144383%_ _%i144384%_ _%rest144385%_)
        (letrec ((_%generate-inline144387%_
                  (lambda ()
                    (if (and (let ()
                               (declare (not safe))
                               (##fx= _%i144384%_ '0))
                             (not (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%rest144385%_))))
                        (cons 'if
                              (cons (cons '##values? (cons _%var144383%_ '()))
                                    (cons (cons '##vector-ref
                                                (cons _%var144383%_
                                                      (cons '0 '())))
                                          (cons _%var144383%_ '()))))
                        (cons '##vector-ref
                              (cons _%var144383%_ (cons _%i144384%_ '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline144387%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline144387%_) '()))))))))
    (define gxc#generate-runtime-values->list
      (lambda (_%var144377%_ _%i144378%_)
        (if (let () (declare (not safe)) (##fx= _%i144378%_ '0))
            (if (gxc#current-compile-decls-unsafe?)
                (cons 'if
                      (cons (cons '##values? (cons _%var144377%_ '()))
                            (cons (cons '##vector->list
                                        (cons _%var144377%_ '()))
                                  (cons (cons 'list (cons _%var144377%_ '()))
                                        '()))))
                (cons 'let
                      (cons '()
                            (cons '(declare (not safe))
                                  (cons (cons 'if
                                              (cons (cons '##values?
                                                          (cons _%var144377%_
                                                                '()))
                                                    (cons (cons '##vector->list
                                                                (cons _%var144377%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons 'list (cons _%var144377%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
            (if (let () (declare (not safe)) (##fx= _%i144378%_ '1))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons 'if
                          (cons (cons '##values? (cons _%var144377%_ '()))
                                (cons (cons '##cdr
                                            (cons (cons '##vector->list
                                                        (cons _%var144377%_
                                                              '()))
                                                  '()))
                                      (cons ''() '()))))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons 'if
                                                  (cons (cons '##values?
                                                              (cons _%var144377%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '##cdr
                            (cons (cons '##vector->list
                                        (cons _%var144377%_ '()))
                                  '()))
                      (cons ''() '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons '##list-tail
                          (cons (cons '##vector->list (cons _%var144377%_ '()))
                                (cons _%i144378%_ '())))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons '##list-tail
                                                  (cons (cons '##vector->list
                                                              (cons _%var144377%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _%i144378%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))))))
    (define gxc#generate-runtime-lambda%
      (lambda (_%self144309%_ _%stx144310%_)
        (let* ((_%g144312144329%_
                (lambda (_%g144313144326%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g144313144326%_))))
               (_%g144311144374%_
                (lambda (_%g144313144332%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g144313144332%_))
                      (let ((_%e144316144334%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g144313144332%_))))
                        (let ((_%hd144317144337%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e144316144334%_)))
                              (_%tl144318144339%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e144316144334%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl144318144339%_))
                              (let ((_%e144319144342%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl144318144339%_))))
                                (let ((_%hd144320144345%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e144319144342%_)))
                                      (_%tl144321144347%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e144319144342%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl144321144347%_))
                                      (let ((_%e144322144350%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl144321144347%_))))
                                        (let ((_%hd144323144353%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e144322144350%_)))
                                              (_%tl144324144355%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e144322144350%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl144324144355%_))
                                              ((lambda (_%L144358%_
                                                        _%L144359%_)
                                                 (gxc#generate-runtime-lambda-form
                                                  _%self144309%_
                                                  _%L144359%_
                                                  _%L144358%_))
                                               _%hd144323144353%_
                                               _%hd144320144345%_)
                                              (_%g144312144329%_
                                               _%g144313144332%_))))
                                      (_%g144312144329%_ _%g144313144332%_))))
                              (_%g144312144329%_ _%g144313144332%_))))
                      (_%g144312144329%_ _%g144313144332%_)))))
          (_%g144311144374%_ _%stx144310%_))))
    (define gxc#generate-runtime-lambda-form
      (lambda (_%self144268%_ _%hd144269%_ _%body144270%_)
        (let* ((_%hd144272%_ (gxc#generate-runtime-lambda-head _%hd144269%_))
               (_%body144274%_
                (let ()
                  (declare (not safe))
                  (gxc#compile-e__1 _%self144268%_ _%body144270%_)))
               (_%body144306%_
                (let* ((_%body144275144283%_ _%body144274%_)
                       (_%else144277144291%_
                        (lambda () (cons _%body144274%_ '())))
                       (_%K144279144296%_
                        (lambda (_%exprs144294%_) _%exprs144294%_)))
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%body144275144283%_))
                      (let ((_%hd144280144299%_
                             (let ()
                               (declare (not safe))
                               (##car _%body144275144283%_)))
                            (_%tl144281144301%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%body144275144283%_))))
                        (if (let ()
                              (declare (not safe))
                              (##eq? _%hd144280144299%_ 'begin))
                            (let ((_%exprs144304%_ _%tl144281144301%_))
                              (_%K144279144296%_ _%exprs144304%_))
                            (_%else144277144291%_)))
                      (_%else144277144291%_)))))
          (cons 'lambda (cons _%hd144272%_ _%body144306%_)))))
    (define gxc#generate-runtime-lambda-head
      (lambda (_%hd144266%_)
        (let ()
          (declare (not safe))
          (gx#stx-map1 gxc#generate-runtime-binding-id* _%hd144266%_))))
    (define gxc#generate-runtime-case-lambda%
      (lambda (_%self142805%_ _%stx142806%_)
        (letrec ((_%dispatch-case?142808%_
                  (lambda (_%hd143496%_ _%body143497%_)
                    (let* ((_%form143499%_
                            (cons _%hd143496%_ (cons _%body143497%_ '())))
                           (_%__stx145821145822%_ _%form143499%_)
                           (_%g143504143661%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx145821145822%_)))))
                      (let ((_%__kont145823145824%_
                             (lambda (_%L144186%_ _%L144187%_ _%L144188%_)
                               '#t))
                            (_%__kont145829145830%_
                             (lambda (_%L143974%_
                                      _%L143975%_
                                      _%L143976%_
                                      _%L143977%_
                                      _%L143978%_
                                      _%L143979%_)
                               '#t))
                            (_%__kont145835145836%_
                             (lambda (_%L143769%_
                                      _%L143770%_
                                      _%L143771%_
                                      _%L143772%_)
                               '#t))
                            (_%__kont145837145838%_ (lambda () '#f)))
                        (let* ((_%__match145962145963%_
                                (lambda (_%e143621143673%_
                                         _%hd143622143676%_
                                         _%tl143623143678%_
                                         _%e143624143681%_
                                         _%hd143625143684%_
                                         _%tl143626143686%_
                                         _%e143627143689%_
                                         _%hd143628143692%_
                                         _%tl143629143694%_
                                         _%e143630143697%_
                                         _%hd143631143700%_
                                         _%tl143632143702%_
                                         _%e143633143705%_
                                         _%hd143634143708%_
                                         _%tl143635143710%_
                                         _%e143636143713%_
                                         _%hd143637143716%_
                                         _%tl143638143718%_
                                         _%e143639143721%_
                                         _%hd143640143724%_
                                         _%tl143641143726%_
                                         _%e143642143729%_
                                         _%hd143643143732%_
                                         _%tl143644143734%_
                                         _%e143645143737%_
                                         _%hd143646143740%_
                                         _%tl143647143742%_
                                         _%e143648143745%_
                                         _%hd143649143748%_
                                         _%tl143650143750%_
                                         _%e143651143753%_
                                         _%hd143652143756%_
                                         _%tl143653143758%_
                                         _%e143654143761%_
                                         _%hd143655143764%_
                                         _%tl143656143766%_)
                                  (let ((_%L143769%_ _%hd143655143764%_)
                                        (_%L143770%_ _%hd143646143740%_)
                                        (_%L143771%_ _%hd143637143716%_)
                                        (_%L143772%_ _%hd143622143676%_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (gx#identifier? _%L143772%_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#runtime-identifier=?
                                                _%L143771%_
                                                'apply))
                                             (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L143772%_
                                                _%L143769%_))
                                             (not (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%L143770%_
                                                     _%L143772%_))))
                                        (_%__kont145835145836%_
                                         _%L143769%_
                                         _%L143770%_
                                         _%L143771%_
                                         _%L143772%_)
                                        (_%__kont145837145838%_)))))
                               (_%__match145934145935%_
                                (lambda (_%e143621143673%_
                                         _%hd143622143676%_
                                         _%tl143623143678%_
                                         _%e143624143681%_
                                         _%hd143625143684%_
                                         _%tl143626143686%_
                                         _%e143627143689%_
                                         _%hd143628143692%_
                                         _%tl143629143694%_
                                         _%e143630143697%_
                                         _%hd143631143700%_
                                         _%tl143632143702%_
                                         _%e143633143705%_
                                         _%hd143634143708%_
                                         _%tl143635143710%_
                                         _%e143636143713%_
                                         _%hd143637143716%_
                                         _%tl143638143718%_
                                         _%e143639143721%_
                                         _%hd143640143724%_
                                         _%tl143641143726%_
                                         _%e143642143729%_
                                         _%hd143643143732%_
                                         _%tl143644143734%_
                                         _%e143645143737%_
                                         _%hd143646143740%_
                                         _%tl143647143742%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl143641143726%_))
                                      (let ((_%e143648143745%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl143641143726%_))))
                                        (let ((_%tl143650143750%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e143648143745%_)))
                                              (_%hd143649143748%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e143648143745%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd143649143748%_))
                                              (let ((_%e143651143753%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd143649143748%_))))
                                                (let ((_%tl143653143758%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e143651143753%_)))
                                                      (_%hd143652143756%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e143651143753%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd143652143756%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _%hd143652143756%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl143653143758%_))
                      (let ((_%e143654143761%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl143653143758%_))))
                        (let ((_%tl143656143766%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143654143761%_)))
                              (_%hd143655143764%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143654143761%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl143656143766%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl143650143750%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl143626143686%_))
                                      (_%__match145962145963%_
                                       _%e143621143673%_
                                       _%hd143622143676%_
                                       _%tl143623143678%_
                                       _%e143624143681%_
                                       _%hd143625143684%_
                                       _%tl143626143686%_
                                       _%e143627143689%_
                                       _%hd143628143692%_
                                       _%tl143629143694%_
                                       _%e143630143697%_
                                       _%hd143631143700%_
                                       _%tl143632143702%_
                                       _%e143633143705%_
                                       _%hd143634143708%_
                                       _%tl143635143710%_
                                       _%e143636143713%_
                                       _%hd143637143716%_
                                       _%tl143638143718%_
                                       _%e143639143721%_
                                       _%hd143640143724%_
                                       _%tl143641143726%_
                                       _%e143642143729%_
                                       _%hd143643143732%_
                                       _%tl143644143734%_
                                       _%e143645143737%_
                                       _%hd143646143740%_
                                       _%tl143647143742%_
                                       _%e143648143745%_
                                       _%hd143649143748%_
                                       _%tl143650143750%_
                                       _%e143651143753%_
                                       _%hd143652143756%_
                                       _%tl143653143758%_
                                       _%e143654143761%_
                                       _%hd143655143764%_
                                       _%tl143656143766%_)
                                      (_%__kont145837145838%_))
                                  (_%__kont145837145838%_))
                              (_%__kont145837145838%_))))
                      (_%__kont145837145838%_))
                  (_%__kont145837145838%_))
              (_%__kont145837145838%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont145837145838%_))))
                                      (_%__kont145837145838%_))))
                               (_%__match145864145865%_
                                (lambda (_%e143557143814%_
                                         _%hd143558143817%_
                                         _%tl143559143819%_
                                         _%__splice145831145832%_
                                         _%target143560143822%_
                                         _%tl143562143824%_)
                                  (letrec ((_%loop143563143827%_
                                            (lambda (_%hd143561143830%_
                                                     _%arg143567143832%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd143561143830%_))
                                                  (let ((_%e143564143835%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd143561143830%_))))
                                                    (let ((_%lp-tl143566143840%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e143564143835%_)))
                                                          (_%lp-hd143565143838%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e143564143835%_))))
                                                      (_%loop143563143827%_
                                                       _%lp-tl143566143840%_
                                                       (cons _%lp-hd143565143838%_
                                                             _%arg143567143832%_))))
                                                  (let ((_%arg143568143843%_
                                                         (reverse _%arg143567143832%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl143559143819%_))
                                                        (let ((_%e143569143846%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl143559143819%_))))
                  (let ((_%tl143571143851%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e143569143846%_)))
                        (_%hd143570143849%_
                         (let ()
                           (declare (not safe))
                           (##car _%e143569143846%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd143570143849%_))
                        (let ((_%e143572143854%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd143570143849%_))))
                          (let ((_%tl143574143859%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e143572143854%_)))
                                (_%hd143573143857%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e143572143854%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd143573143857%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd143573143857%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl143574143859%_))
                                        (let ((_%e143575143862%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl143574143859%_))))
                                          (let ((_%tl143577143867%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e143575143862%_)))
                                                (_%hd143576143865%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e143575143862%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd143576143865%_))
                                                (let ((_%e143578143870%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd143576143865%_))))
                                                  (let ((_%tl143580143875%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e143578143870%_)))
                                                        (_%hd143579143873%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e143578143870%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd143579143873%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd143579143873%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl143580143875%_))
                        (let ((_%e143581143878%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl143580143875%_))))
                          (let ((_%tl143583143883%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e143581143878%_)))
                                (_%hd143582143881%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e143581143878%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl143583143883%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl143577143867%_))
                                    (let ((_%e143584143886%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl143577143867%_))))
                                      (let ((_%tl143586143891%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e143584143886%_)))
                                            (_%hd143585143889%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e143584143886%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd143585143889%_))
                                            (let ((_%e143587143894%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd143585143889%_))))
                                              (let ((_%tl143589143899%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e143587143894%_)))
                                                    (_%hd143588143897%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e143587143894%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd143588143897%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd143588143897%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl143589143899%_))
                                                            (let ((_%e143590143902%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl143589143899%_))))
                      (let ((_%tl143592143907%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e143590143902%_)))
                            (_%hd143591143905%_
                             (let ()
                               (declare (not safe))
                               (##car _%e143590143902%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl143592143907%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl143586143891%_))
                                (if (let ((__tmp147103
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-length
                                              _%tl143586143891%_))))
                                      (declare (not safe))
                                      (##fx>= __tmp147103 '1))
                                    (let ((_%__splice145833145834%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl143586143891%_
                                              '1))))
                                      (let ((_%tl143595143912%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice145833145834%_
                                                '1)))
                                            (_%target143593143910%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice145833145834%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl143595143912%_))
                                            (let ((_%e143602143915%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl143595143912%_))))
                                              (let ((_%tl143604143920%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e143602143915%_)))
                                                    (_%hd143603143918%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e143602143915%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd143603143918%_))
                                                    (let ((_%e143605143923%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd143603143918%_))))
                                                      (let ((_%tl143607143928%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e143605143923%_)))
                    (_%hd143606143926%_
                     (let () (declare (not safe)) (##car _%e143605143923%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd143606143926%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _%hd143606143926%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl143607143928%_))
                            (let ((_%e143608143931%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl143607143928%_))))
                              (let ((_%tl143610143936%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e143608143931%_)))
                                    (_%hd143609143934%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e143608143931%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl143610143936%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl143604143920%_))
                                        (letrec ((_%loop143596143939%_
                                                  (lambda (_%hd143594143942%_
                                                           _%xarg143600143944%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd143594143942%_))
                                                        (let ((_%e143597143947%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd143594143942%_))))
                  (let ((_%lp-tl143599143952%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e143597143947%_)))
                        (_%lp-hd143598143950%_
                         (let ()
                           (declare (not safe))
                           (##car _%e143597143947%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd143598143950%_))
                        (let ((_%e143611143955%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd143598143950%_))))
                          (let ((_%tl143613143960%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e143611143955%_)))
                                (_%hd143612143958%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e143611143955%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd143612143958%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _%hd143612143958%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl143613143960%_))
                                        (let ((_%e143614143963%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl143613143960%_))))
                                          (let ((_%tl143616143968%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e143614143963%_)))
                                                (_%hd143615143966%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e143614143963%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl143616143968%_))
                                                (_%loop143596143939%_
                                                 _%lp-tl143599143952%_
                                                 (cons _%hd143615143966%_
                                                       _%xarg143600143944%_))
                                                (_%__match145934145935%_
                                                 _%e143557143814%_
                                                 _%hd143558143817%_
                                                 _%tl143559143819%_
                                                 _%e143569143846%_
                                                 _%hd143570143849%_
                                                 _%tl143571143851%_
                                                 _%e143572143854%_
                                                 _%hd143573143857%_
                                                 _%tl143574143859%_
                                                 _%e143575143862%_
                                                 _%hd143576143865%_
                                                 _%tl143577143867%_
                                                 _%e143578143870%_
                                                 _%hd143579143873%_
                                                 _%tl143580143875%_
                                                 _%e143581143878%_
                                                 _%hd143582143881%_
                                                 _%tl143583143883%_
                                                 _%e143584143886%_
                                                 _%hd143585143889%_
                                                 _%tl143586143891%_
                                                 _%e143587143894%_
                                                 _%hd143588143897%_
                                                 _%tl143589143899%_
                                                 _%e143590143902%_
                                                 _%hd143591143905%_
                                                 _%tl143592143907%_))))
                                        (_%__match145934145935%_
                                         _%e143557143814%_
                                         _%hd143558143817%_
                                         _%tl143559143819%_
                                         _%e143569143846%_
                                         _%hd143570143849%_
                                         _%tl143571143851%_
                                         _%e143572143854%_
                                         _%hd143573143857%_
                                         _%tl143574143859%_
                                         _%e143575143862%_
                                         _%hd143576143865%_
                                         _%tl143577143867%_
                                         _%e143578143870%_
                                         _%hd143579143873%_
                                         _%tl143580143875%_
                                         _%e143581143878%_
                                         _%hd143582143881%_
                                         _%tl143583143883%_
                                         _%e143584143886%_
                                         _%hd143585143889%_
                                         _%tl143586143891%_
                                         _%e143587143894%_
                                         _%hd143588143897%_
                                         _%tl143589143899%_
                                         _%e143590143902%_
                                         _%hd143591143905%_
                                         _%tl143592143907%_))
                                    (_%__match145934145935%_
                                     _%e143557143814%_
                                     _%hd143558143817%_
                                     _%tl143559143819%_
                                     _%e143569143846%_
                                     _%hd143570143849%_
                                     _%tl143571143851%_
                                     _%e143572143854%_
                                     _%hd143573143857%_
                                     _%tl143574143859%_
                                     _%e143575143862%_
                                     _%hd143576143865%_
                                     _%tl143577143867%_
                                     _%e143578143870%_
                                     _%hd143579143873%_
                                     _%tl143580143875%_
                                     _%e143581143878%_
                                     _%hd143582143881%_
                                     _%tl143583143883%_
                                     _%e143584143886%_
                                     _%hd143585143889%_
                                     _%tl143586143891%_
                                     _%e143587143894%_
                                     _%hd143588143897%_
                                     _%tl143589143899%_
                                     _%e143590143902%_
                                     _%hd143591143905%_
                                     _%tl143592143907%_))
                                (_%__match145934145935%_
                                 _%e143557143814%_
                                 _%hd143558143817%_
                                 _%tl143559143819%_
                                 _%e143569143846%_
                                 _%hd143570143849%_
                                 _%tl143571143851%_
                                 _%e143572143854%_
                                 _%hd143573143857%_
                                 _%tl143574143859%_
                                 _%e143575143862%_
                                 _%hd143576143865%_
                                 _%tl143577143867%_
                                 _%e143578143870%_
                                 _%hd143579143873%_
                                 _%tl143580143875%_
                                 _%e143581143878%_
                                 _%hd143582143881%_
                                 _%tl143583143883%_
                                 _%e143584143886%_
                                 _%hd143585143889%_
                                 _%tl143586143891%_
                                 _%e143587143894%_
                                 _%hd143588143897%_
                                 _%tl143589143899%_
                                 _%e143590143902%_
                                 _%hd143591143905%_
                                 _%tl143592143907%_))))
                        (_%__match145934145935%_
                         _%e143557143814%_
                         _%hd143558143817%_
                         _%tl143559143819%_
                         _%e143569143846%_
                         _%hd143570143849%_
                         _%tl143571143851%_
                         _%e143572143854%_
                         _%hd143573143857%_
                         _%tl143574143859%_
                         _%e143575143862%_
                         _%hd143576143865%_
                         _%tl143577143867%_
                         _%e143578143870%_
                         _%hd143579143873%_
                         _%tl143580143875%_
                         _%e143581143878%_
                         _%hd143582143881%_
                         _%tl143583143883%_
                         _%e143584143886%_
                         _%hd143585143889%_
                         _%tl143586143891%_
                         _%e143587143894%_
                         _%hd143588143897%_
                         _%tl143589143899%_
                         _%e143590143902%_
                         _%hd143591143905%_
                         _%tl143592143907%_))))
                (let ((_%xarg143601143971%_ (reverse _%xarg143600143944%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl143571143851%_))
                      (let ((_%L143974%_ _%hd143609143934%_)
                            (_%L143975%_ _%xarg143601143971%_)
                            (_%L143976%_ _%hd143591143905%_)
                            (_%L143977%_ _%hd143582143881%_)
                            (_%L143978%_ _%tl143562143824%_)
                            (_%L143979%_ _%arg143568143843%_))
                        (if (and (let ((__tmp147104
                                        (let ((__tmp147105
                                               (lambda (_%g144022144025%_
                                                        _%g144023144027%_)
                                                 (cons _%g144022144025%_
                                                       _%g144023144027%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp147105
                                           '()
                                           _%L143979%_))))
                                   (declare (not safe))
                                   (gx#identifier-list? __tmp147104))
                                 (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L143978%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _%L143977%_
                                    'apply))
                                 (let ((__tmp147108
                                        (length (let ((__tmp147109
                                                       (lambda (_%g144029144032%_
                                                                _%g144030144034%_)
                                                         (cons _%g144029144032%_
                                                               _%g144030144034%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp147109
                                                   '()
                                                   _%L143979%_))))
                                       (__tmp147106
                                        (length (let ((__tmp147107
                                                       (lambda (_%g144036144039%_
                                                                _%g144037144041%_)
                                                         (cons _%g144036144039%_
                                                               _%g144037144041%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp147107
                                                   '()
                                                   _%L143975%_)))))
                                   (declare (not safe))
                                   (##fx= __tmp147108 __tmp147106))
                                 (let ((__tmp147112
                                        (let ((__tmp147113
                                               (lambda (_%g144043144046%_
                                                        _%g144044144048%_)
                                                 (cons _%g144043144046%_
                                                       _%g144044144048%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp147113
                                           '()
                                           _%L143979%_)))
                                       (__tmp147110
                                        (let ((__tmp147111
                                               (lambda (_%g144050144053%_
                                                        _%g144051144055%_)
                                                 (cons _%g144050144053%_
                                                       _%g144051144055%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp147111
                                           '()
                                           _%L143975%_))))
                                   (declare (not safe))
                                   (__andmap2
                                    gx#free-identifier=?
                                    __tmp147112
                                    __tmp147110))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L143978%_
                                    _%L143974%_))
                                 (not (let ((__tmp147117
                                             (lambda (_%g144057144059%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#free-identifier=?
                                                  _%g144057144059%_
                                                  _%L143976%_))))
                                            (__tmp147114
                                             (let ((__tmp147116
                                                    (lambda (_%g144061144064%_
                                                             _%g144062144066%_)
                                                      (cons _%g144061144064%_
                                                            _%g144062144066%_)))
                                                   (__tmp147115
                                                    (cons _%L143978%_ '())))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp147116
                                                __tmp147115
                                                _%L143979%_))))
                                        (declare (not safe))
                                        (__find __tmp147117 __tmp147114))))
                            (_%__kont145829145830%_
                             _%L143974%_
                             _%L143975%_
                             _%L143976%_
                             _%L143977%_
                             _%L143978%_
                             _%L143979%_)
                            (_%__match145934145935%_
                             _%e143557143814%_
                             _%hd143558143817%_
                             _%tl143559143819%_
                             _%e143569143846%_
                             _%hd143570143849%_
                             _%tl143571143851%_
                             _%e143572143854%_
                             _%hd143573143857%_
                             _%tl143574143859%_
                             _%e143575143862%_
                             _%hd143576143865%_
                             _%tl143577143867%_
                             _%e143578143870%_
                             _%hd143579143873%_
                             _%tl143580143875%_
                             _%e143581143878%_
                             _%hd143582143881%_
                             _%tl143583143883%_
                             _%e143584143886%_
                             _%hd143585143889%_
                             _%tl143586143891%_
                             _%e143587143894%_
                             _%hd143588143897%_
                             _%tl143589143899%_
                             _%e143590143902%_
                             _%hd143591143905%_
                             _%tl143592143907%_)))
                      (_%__match145934145935%_
                       _%e143557143814%_
                       _%hd143558143817%_
                       _%tl143559143819%_
                       _%e143569143846%_
                       _%hd143570143849%_
                       _%tl143571143851%_
                       _%e143572143854%_
                       _%hd143573143857%_
                       _%tl143574143859%_
                       _%e143575143862%_
                       _%hd143576143865%_
                       _%tl143577143867%_
                       _%e143578143870%_
                       _%hd143579143873%_
                       _%tl143580143875%_
                       _%e143581143878%_
                       _%hd143582143881%_
                       _%tl143583143883%_
                       _%e143584143886%_
                       _%hd143585143889%_
                       _%tl143586143891%_
                       _%e143587143894%_
                       _%hd143588143897%_
                       _%tl143589143899%_
                       _%e143590143902%_
                       _%hd143591143905%_
                       _%tl143592143907%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop143596143939%_
                                           _%target143593143910%_
                                           '()))
                                        (_%__match145934145935%_
                                         _%e143557143814%_
                                         _%hd143558143817%_
                                         _%tl143559143819%_
                                         _%e143569143846%_
                                         _%hd143570143849%_
                                         _%tl143571143851%_
                                         _%e143572143854%_
                                         _%hd143573143857%_
                                         _%tl143574143859%_
                                         _%e143575143862%_
                                         _%hd143576143865%_
                                         _%tl143577143867%_
                                         _%e143578143870%_
                                         _%hd143579143873%_
                                         _%tl143580143875%_
                                         _%e143581143878%_
                                         _%hd143582143881%_
                                         _%tl143583143883%_
                                         _%e143584143886%_
                                         _%hd143585143889%_
                                         _%tl143586143891%_
                                         _%e143587143894%_
                                         _%hd143588143897%_
                                         _%tl143589143899%_
                                         _%e143590143902%_
                                         _%hd143591143905%_
                                         _%tl143592143907%_))
                                    (_%__match145934145935%_
                                     _%e143557143814%_
                                     _%hd143558143817%_
                                     _%tl143559143819%_
                                     _%e143569143846%_
                                     _%hd143570143849%_
                                     _%tl143571143851%_
                                     _%e143572143854%_
                                     _%hd143573143857%_
                                     _%tl143574143859%_
                                     _%e143575143862%_
                                     _%hd143576143865%_
                                     _%tl143577143867%_
                                     _%e143578143870%_
                                     _%hd143579143873%_
                                     _%tl143580143875%_
                                     _%e143581143878%_
                                     _%hd143582143881%_
                                     _%tl143583143883%_
                                     _%e143584143886%_
                                     _%hd143585143889%_
                                     _%tl143586143891%_
                                     _%e143587143894%_
                                     _%hd143588143897%_
                                     _%tl143589143899%_
                                     _%e143590143902%_
                                     _%hd143591143905%_
                                     _%tl143592143907%_))))
                            (_%__match145934145935%_
                             _%e143557143814%_
                             _%hd143558143817%_
                             _%tl143559143819%_
                             _%e143569143846%_
                             _%hd143570143849%_
                             _%tl143571143851%_
                             _%e143572143854%_
                             _%hd143573143857%_
                             _%tl143574143859%_
                             _%e143575143862%_
                             _%hd143576143865%_
                             _%tl143577143867%_
                             _%e143578143870%_
                             _%hd143579143873%_
                             _%tl143580143875%_
                             _%e143581143878%_
                             _%hd143582143881%_
                             _%tl143583143883%_
                             _%e143584143886%_
                             _%hd143585143889%_
                             _%tl143586143891%_
                             _%e143587143894%_
                             _%hd143588143897%_
                             _%tl143589143899%_
                             _%e143590143902%_
                             _%hd143591143905%_
                             _%tl143592143907%_))
                        (_%__match145934145935%_
                         _%e143557143814%_
                         _%hd143558143817%_
                         _%tl143559143819%_
                         _%e143569143846%_
                         _%hd143570143849%_
                         _%tl143571143851%_
                         _%e143572143854%_
                         _%hd143573143857%_
                         _%tl143574143859%_
                         _%e143575143862%_
                         _%hd143576143865%_
                         _%tl143577143867%_
                         _%e143578143870%_
                         _%hd143579143873%_
                         _%tl143580143875%_
                         _%e143581143878%_
                         _%hd143582143881%_
                         _%tl143583143883%_
                         _%e143584143886%_
                         _%hd143585143889%_
                         _%tl143586143891%_
                         _%e143587143894%_
                         _%hd143588143897%_
                         _%tl143589143899%_
                         _%e143590143902%_
                         _%hd143591143905%_
                         _%tl143592143907%_))
                    (_%__match145934145935%_
                     _%e143557143814%_
                     _%hd143558143817%_
                     _%tl143559143819%_
                     _%e143569143846%_
                     _%hd143570143849%_
                     _%tl143571143851%_
                     _%e143572143854%_
                     _%hd143573143857%_
                     _%tl143574143859%_
                     _%e143575143862%_
                     _%hd143576143865%_
                     _%tl143577143867%_
                     _%e143578143870%_
                     _%hd143579143873%_
                     _%tl143580143875%_
                     _%e143581143878%_
                     _%hd143582143881%_
                     _%tl143583143883%_
                     _%e143584143886%_
                     _%hd143585143889%_
                     _%tl143586143891%_
                     _%e143587143894%_
                     _%hd143588143897%_
                     _%tl143589143899%_
                     _%e143590143902%_
                     _%hd143591143905%_
                     _%tl143592143907%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match145934145935%_
                                                     _%e143557143814%_
                                                     _%hd143558143817%_
                                                     _%tl143559143819%_
                                                     _%e143569143846%_
                                                     _%hd143570143849%_
                                                     _%tl143571143851%_
                                                     _%e143572143854%_
                                                     _%hd143573143857%_
                                                     _%tl143574143859%_
                                                     _%e143575143862%_
                                                     _%hd143576143865%_
                                                     _%tl143577143867%_
                                                     _%e143578143870%_
                                                     _%hd143579143873%_
                                                     _%tl143580143875%_
                                                     _%e143581143878%_
                                                     _%hd143582143881%_
                                                     _%tl143583143883%_
                                                     _%e143584143886%_
                                                     _%hd143585143889%_
                                                     _%tl143586143891%_
                                                     _%e143587143894%_
                                                     _%hd143588143897%_
                                                     _%tl143589143899%_
                                                     _%e143590143902%_
                                                     _%hd143591143905%_
                                                     _%tl143592143907%_))))
                                            (_%__match145934145935%_
                                             _%e143557143814%_
                                             _%hd143558143817%_
                                             _%tl143559143819%_
                                             _%e143569143846%_
                                             _%hd143570143849%_
                                             _%tl143571143851%_
                                             _%e143572143854%_
                                             _%hd143573143857%_
                                             _%tl143574143859%_
                                             _%e143575143862%_
                                             _%hd143576143865%_
                                             _%tl143577143867%_
                                             _%e143578143870%_
                                             _%hd143579143873%_
                                             _%tl143580143875%_
                                             _%e143581143878%_
                                             _%hd143582143881%_
                                             _%tl143583143883%_
                                             _%e143584143886%_
                                             _%hd143585143889%_
                                             _%tl143586143891%_
                                             _%e143587143894%_
                                             _%hd143588143897%_
                                             _%tl143589143899%_
                                             _%e143590143902%_
                                             _%hd143591143905%_
                                             _%tl143592143907%_))))
                                    (_%__match145934145935%_
                                     _%e143557143814%_
                                     _%hd143558143817%_
                                     _%tl143559143819%_
                                     _%e143569143846%_
                                     _%hd143570143849%_
                                     _%tl143571143851%_
                                     _%e143572143854%_
                                     _%hd143573143857%_
                                     _%tl143574143859%_
                                     _%e143575143862%_
                                     _%hd143576143865%_
                                     _%tl143577143867%_
                                     _%e143578143870%_
                                     _%hd143579143873%_
                                     _%tl143580143875%_
                                     _%e143581143878%_
                                     _%hd143582143881%_
                                     _%tl143583143883%_
                                     _%e143584143886%_
                                     _%hd143585143889%_
                                     _%tl143586143891%_
                                     _%e143587143894%_
                                     _%hd143588143897%_
                                     _%tl143589143899%_
                                     _%e143590143902%_
                                     _%hd143591143905%_
                                     _%tl143592143907%_))
                                (_%__match145934145935%_
                                 _%e143557143814%_
                                 _%hd143558143817%_
                                 _%tl143559143819%_
                                 _%e143569143846%_
                                 _%hd143570143849%_
                                 _%tl143571143851%_
                                 _%e143572143854%_
                                 _%hd143573143857%_
                                 _%tl143574143859%_
                                 _%e143575143862%_
                                 _%hd143576143865%_
                                 _%tl143577143867%_
                                 _%e143578143870%_
                                 _%hd143579143873%_
                                 _%tl143580143875%_
                                 _%e143581143878%_
                                 _%hd143582143881%_
                                 _%tl143583143883%_
                                 _%e143584143886%_
                                 _%hd143585143889%_
                                 _%tl143586143891%_
                                 _%e143587143894%_
                                 _%hd143588143897%_
                                 _%tl143589143899%_
                                 _%e143590143902%_
                                 _%hd143591143905%_
                                 _%tl143592143907%_))
                            (_%__kont145837145838%_))))
                    (_%__kont145837145838%_))
                (_%__kont145837145838%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont145837145838%_))))
                                            (_%__kont145837145838%_))))
                                    (_%__kont145837145838%_))
                                (_%__kont145837145838%_))))
                        (_%__kont145837145838%_))
                    (_%__kont145837145838%_))
                (_%__kont145837145838%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont145837145838%_))))
                                        (_%__kont145837145838%_))
                                    (_%__kont145837145838%_))
                                (_%__kont145837145838%_))))
                        (_%__kont145837145838%_))))
                (_%__kont145837145838%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop143563143827%_
                                     _%target143560143822%_
                                     '()))))
                               (_%__match145852145853%_
                                (lambda (_%e143509144074%_
                                         _%hd143510144077%_
                                         _%tl143511144079%_
                                         _%__splice145825145826%_
                                         _%target143512144082%_
                                         _%tl143514144084%_)
                                  (letrec ((_%loop143515144087%_
                                            (lambda (_%hd143513144090%_
                                                     _%arg143519144092%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd143513144090%_))
                                                  (let ((_%e143516144095%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd143513144090%_))))
                                                    (let ((_%lp-tl143518144100%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e143516144095%_)))
                                                          (_%lp-hd143517144098%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e143516144095%_))))
                                                      (_%loop143515144087%_
                                                       _%lp-tl143518144100%_
                                                       (cons _%lp-hd143517144098%_
                                                             _%arg143519144092%_))))
                                                  (let ((_%arg143520144103%_
                                                         (reverse _%arg143519144092%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl143511144079%_))
                                                        (let ((_%e143521144106%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl143511144079%_))))
                  (let ((_%tl143523144111%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e143521144106%_)))
                        (_%hd143522144109%_
                         (let ()
                           (declare (not safe))
                           (##car _%e143521144106%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd143522144109%_))
                        (let ((_%e143524144114%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd143522144109%_))))
                          (let ((_%tl143526144119%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e143524144114%_)))
                                (_%hd143525144117%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e143524144114%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd143525144117%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd143525144117%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl143526144119%_))
                                        (let ((_%e143527144122%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl143526144119%_))))
                                          (let ((_%tl143529144127%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e143527144122%_)))
                                                (_%hd143528144125%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e143527144122%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd143528144125%_))
                                                (let ((_%e143530144130%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd143528144125%_))))
                                                  (let ((_%tl143532144135%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e143530144130%_)))
                                                        (_%hd143531144133%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e143530144130%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd143531144133%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd143531144133%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl143532144135%_))
                        (let ((_%e143533144138%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl143532144135%_))))
                          (let ((_%tl143535144143%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e143533144138%_)))
                                (_%hd143534144141%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e143533144138%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl143535144143%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl143529144127%_))
                                    (let ((_%__splice145827145828%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl143529144127%_
                                              '0))))
                                      (let ((_%tl143538144148%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice145827145828%_
                                                '1)))
                                            (_%target143536144146%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice145827145828%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl143538144148%_))
                                            (letrec ((_%loop143539144151%_
                                                      (lambda (_%hd143537144154%_
                                                               _%xarg143543144156%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd143537144154%_))
                                                            (let ((_%e143540144159%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd143537144154%_))))
                      (let ((_%lp-tl143542144164%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e143540144159%_)))
                            (_%lp-hd143541144162%_
                             (let ()
                               (declare (not safe))
                               (##car _%e143540144159%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd143541144162%_))
                            (let ((_%e143545144167%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd143541144162%_))))
                              (let ((_%tl143547144172%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e143545144167%_)))
                                    (_%hd143546144170%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e143545144167%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd143546144170%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd143546144170%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl143547144172%_))
                                            (let ((_%e143548144175%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl143547144172%_))))
                                              (let ((_%tl143550144180%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e143548144175%_)))
                                                    (_%hd143549144178%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e143548144175%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl143550144180%_))
                                                    (_%loop143539144151%_
                                                     _%lp-tl143542144164%_
                                                     (cons _%hd143549144178%_
                                                           _%xarg143543144156%_))
                                                    (_%__match145864145865%_
                                                     _%e143509144074%_
                                                     _%hd143510144077%_
                                                     _%tl143511144079%_
                                                     _%__splice145825145826%_
                                                     _%target143512144082%_
                                                     _%tl143514144084%_))))
                                            (_%__match145864145865%_
                                             _%e143509144074%_
                                             _%hd143510144077%_
                                             _%tl143511144079%_
                                             _%__splice145825145826%_
                                             _%target143512144082%_
                                             _%tl143514144084%_))
                                        (_%__match145864145865%_
                                         _%e143509144074%_
                                         _%hd143510144077%_
                                         _%tl143511144079%_
                                         _%__splice145825145826%_
                                         _%target143512144082%_
                                         _%tl143514144084%_))
                                    (_%__match145864145865%_
                                     _%e143509144074%_
                                     _%hd143510144077%_
                                     _%tl143511144079%_
                                     _%__splice145825145826%_
                                     _%target143512144082%_
                                     _%tl143514144084%_))))
                            (_%__match145864145865%_
                             _%e143509144074%_
                             _%hd143510144077%_
                             _%tl143511144079%_
                             _%__splice145825145826%_
                             _%target143512144082%_
                             _%tl143514144084%_))))
                    (let ((_%xarg143544144183%_
                           (reverse _%xarg143543144156%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl143523144111%_))
                          (let ((_%L144186%_ _%xarg143544144183%_)
                                (_%L144187%_ _%hd143534144141%_)
                                (_%L144188%_ _%arg143520144103%_))
                            (if (and (let ((__tmp147118
                                            (let ((__tmp147119
                                                   (lambda (_%g144216144219%_
                                                            _%g144217144221%_)
                                                     (cons _%g144216144219%_
                                                           _%g144217144221%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp147119
                                               '()
                                               _%L144188%_))))
                                       (declare (not safe))
                                       (gx#identifier-list? __tmp147118))
                                     (let ((__tmp147122
                                            (length (let ((__tmp147123
                                                           (lambda (_%g144223144226%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g144224144228%_)
                     (cons _%g144223144226%_ _%g144224144228%_))))
              (declare (not safe))
              (__foldr1 __tmp147123 '() _%L144188%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (__tmp147120
                                            (length (let ((__tmp147121
                                                           (lambda (_%g144230144233%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g144231144235%_)
                     (cons _%g144230144233%_ _%g144231144235%_))))
              (declare (not safe))
              (__foldr1 __tmp147121 '() _%L144186%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp147122 __tmp147120))
                                     (let ((__tmp147126
                                            (let ((__tmp147127
                                                   (lambda (_%g144237144240%_
                                                            _%g144238144242%_)
                                                     (cons _%g144237144240%_
                                                           _%g144238144242%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp147127
                                               '()
                                               _%L144188%_)))
                                           (__tmp147124
                                            (let ((__tmp147125
                                                   (lambda (_%g144244144247%_
                                                            _%g144245144249%_)
                                                     (cons _%g144244144247%_
                                                           _%g144245144249%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp147125
                                               '()
                                               _%L144186%_))))
                                       (declare (not safe))
                                       (__andmap2
                                        gx#free-identifier=?
                                        __tmp147126
                                        __tmp147124))
                                     (not (let ((__tmp147130
                                                 (lambda (_%g144251144253%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g144251144253%_
                                                      _%L144187%_))))
                                                (__tmp147128
                                                 (let ((__tmp147129
                                                        (lambda (_%g144255144258%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g144256144260%_)
                  (cons _%g144255144258%_ _%g144256144260%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp147129
                                                    '()
                                                    _%L144188%_))))
                                            (declare (not safe))
                                            (__find __tmp147130 __tmp147128))))
                                (_%__kont145823145824%_
                                 _%L144186%_
                                 _%L144187%_
                                 _%L144188%_)
                                (_%__match145864145865%_
                                 _%e143509144074%_
                                 _%hd143510144077%_
                                 _%tl143511144079%_
                                 _%__splice145825145826%_
                                 _%target143512144082%_
                                 _%tl143514144084%_)))
                          (_%__match145864145865%_
                           _%e143509144074%_
                           _%hd143510144077%_
                           _%tl143511144079%_
                           _%__splice145825145826%_
                           _%target143512144082%_
                           _%tl143514144084%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop143539144151%_
                                               _%target143536144146%_
                                               '()))
                                            (_%__match145864145865%_
                                             _%e143509144074%_
                                             _%hd143510144077%_
                                             _%tl143511144079%_
                                             _%__splice145825145826%_
                                             _%target143512144082%_
                                             _%tl143514144084%_))))
                                    (_%__match145864145865%_
                                     _%e143509144074%_
                                     _%hd143510144077%_
                                     _%tl143511144079%_
                                     _%__splice145825145826%_
                                     _%target143512144082%_
                                     _%tl143514144084%_))
                                (_%__match145864145865%_
                                 _%e143509144074%_
                                 _%hd143510144077%_
                                 _%tl143511144079%_
                                 _%__splice145825145826%_
                                 _%target143512144082%_
                                 _%tl143514144084%_))))
                        (_%__match145864145865%_
                         _%e143509144074%_
                         _%hd143510144077%_
                         _%tl143511144079%_
                         _%__splice145825145826%_
                         _%target143512144082%_
                         _%tl143514144084%_))
                    (_%__match145864145865%_
                     _%e143509144074%_
                     _%hd143510144077%_
                     _%tl143511144079%_
                     _%__splice145825145826%_
                     _%target143512144082%_
                     _%tl143514144084%_))
                (_%__match145864145865%_
                 _%e143509144074%_
                 _%hd143510144077%_
                 _%tl143511144079%_
                 _%__splice145825145826%_
                 _%target143512144082%_
                 _%tl143514144084%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match145864145865%_
                                                 _%e143509144074%_
                                                 _%hd143510144077%_
                                                 _%tl143511144079%_
                                                 _%__splice145825145826%_
                                                 _%target143512144082%_
                                                 _%tl143514144084%_))))
                                        (_%__match145864145865%_
                                         _%e143509144074%_
                                         _%hd143510144077%_
                                         _%tl143511144079%_
                                         _%__splice145825145826%_
                                         _%target143512144082%_
                                         _%tl143514144084%_))
                                    (_%__match145864145865%_
                                     _%e143509144074%_
                                     _%hd143510144077%_
                                     _%tl143511144079%_
                                     _%__splice145825145826%_
                                     _%target143512144082%_
                                     _%tl143514144084%_))
                                (_%__match145864145865%_
                                 _%e143509144074%_
                                 _%hd143510144077%_
                                 _%tl143511144079%_
                                 _%__splice145825145826%_
                                 _%target143512144082%_
                                 _%tl143514144084%_))))
                        (_%__match145864145865%_
                         _%e143509144074%_
                         _%hd143510144077%_
                         _%tl143511144079%_
                         _%__splice145825145826%_
                         _%target143512144082%_
                         _%tl143514144084%_))))
                (_%__match145864145865%_
                 _%e143509144074%_
                 _%hd143510144077%_
                 _%tl143511144079%_
                 _%__splice145825145826%_
                 _%target143512144082%_
                 _%tl143514144084%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop143515144087%_
                                     _%target143512144082%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx145821145822%_))
                              (let ((_%e143509144074%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx145821145822%_))))
                                (let ((_%tl143511144079%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e143509144074%_)))
                                      (_%hd143510144077%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e143509144074%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd143510144077%_))
                                      (let ((_%__splice145825145826%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd143510144077%_
                                                '0))))
                                        (let ((_%tl143514144084%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice145825145826%_
                                                  '1)))
                                              (_%target143512144082%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice145825145826%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl143514144084%_))
                                              (_%__match145852145853%_
                                               _%e143509144074%_
                                               _%hd143510144077%_
                                               _%tl143511144079%_
                                               _%__splice145825145826%_
                                               _%target143512144082%_
                                               _%tl143514144084%_)
                                              (_%__match145864145865%_
                                               _%e143509144074%_
                                               _%hd143510144077%_
                                               _%tl143511144079%_
                                               _%__splice145825145826%_
                                               _%target143512144082%_
                                               _%tl143514144084%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl143511144079%_))
                                          (let ((_%e143624143681%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl143511144079%_))))
                                            (let ((_%tl143626143686%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e143624143681%_)))
                                                  (_%hd143625143684%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e143624143681%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd143625143684%_))
                                                  (let ((_%e143627143689%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd143625143684%_))))
                                                    (let ((_%tl143629143694%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e143627143689%_)))
                                                          (_%hd143628143692%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e143627143689%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd143628143692%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd143628143692%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl143629143694%_))
                          (let ((_%e143630143697%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl143629143694%_))))
                            (let ((_%tl143632143702%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e143630143697%_)))
                                  (_%hd143631143700%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e143630143697%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd143631143700%_))
                                  (let ((_%e143633143705%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd143631143700%_))))
                                    (let ((_%tl143635143710%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e143633143705%_)))
                                          (_%hd143634143708%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e143633143705%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd143634143708%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd143634143708%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl143635143710%_))
                                                  (let ((_%e143636143713%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl143635143710%_))))
                                                    (let ((_%tl143638143718%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e143636143713%_)))
                                                          (_%hd143637143716%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e143636143713%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl143638143718%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl143632143702%_))
                      (let ((_%e143639143721%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl143632143702%_))))
                        (let ((_%tl143641143726%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143639143721%_)))
                              (_%hd143640143724%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143639143721%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd143640143724%_))
                              (let ((_%e143642143729%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd143640143724%_))))
                                (let ((_%tl143644143734%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e143642143729%_)))
                                      (_%hd143643143732%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e143642143729%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd143643143732%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd143643143732%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl143644143734%_))
                                              (let ((_%e143645143737%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl143644143734%_))))
                                                (let ((_%tl143647143742%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e143645143737%_)))
                                                      (_%hd143646143740%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e143645143737%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl143647143742%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl143641143726%_))
                                                          (let ((_%e143648143745%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl143641143726%_))))
                    (let ((_%tl143650143750%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e143648143745%_)))
                          (_%hd143649143748%_
                           (let ()
                             (declare (not safe))
                             (##car _%e143648143745%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd143649143748%_))
                          (let ((_%e143651143753%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd143649143748%_))))
                            (let ((_%tl143653143758%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e143651143753%_)))
                                  (_%hd143652143756%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e143651143753%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd143652143756%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _%hd143652143756%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl143653143758%_))
                                          (let ((_%e143654143761%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl143653143758%_))))
                                            (let ((_%tl143656143766%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e143654143761%_)))
                                                  (_%hd143655143764%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e143654143761%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl143656143766%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl143650143750%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl143626143686%_))
                                                          (_%__match145962145963%_
                                                           _%e143509144074%_
                                                           _%hd143510144077%_
                                                           _%tl143511144079%_
                                                           _%e143624143681%_
                                                           _%hd143625143684%_
                                                           _%tl143626143686%_
                                                           _%e143627143689%_
                                                           _%hd143628143692%_
                                                           _%tl143629143694%_
                                                           _%e143630143697%_
                                                           _%hd143631143700%_
                                                           _%tl143632143702%_
                                                           _%e143633143705%_
                                                           _%hd143634143708%_
                                                           _%tl143635143710%_
                                                           _%e143636143713%_
                                                           _%hd143637143716%_
                                                           _%tl143638143718%_
                                                           _%e143639143721%_
                                                           _%hd143640143724%_
                                                           _%tl143641143726%_
                                                           _%e143642143729%_
                                                           _%hd143643143732%_
                                                           _%tl143644143734%_
                                                           _%e143645143737%_
                                                           _%hd143646143740%_
                                                           _%tl143647143742%_
                                                           _%e143648143745%_
                                                           _%hd143649143748%_
                                                           _%tl143650143750%_
                                                           _%e143651143753%_
                                                           _%hd143652143756%_
                                                           _%tl143653143758%_
                                                           _%e143654143761%_
                                                           _%hd143655143764%_
                                                           _%tl143656143766%_)
                                                          (_%__kont145837145838%_))
                                                      (_%__kont145837145838%_))
                                                  (_%__kont145837145838%_))))
                                          (_%__kont145837145838%_))
                                      (_%__kont145837145838%_))
                                  (_%__kont145837145838%_))))
                          (_%__kont145837145838%_))))
                  (_%__kont145837145838%_))
              (_%__kont145837145838%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont145837145838%_))
                                          (_%__kont145837145838%_))
                                      (_%__kont145837145838%_))))
                              (_%__kont145837145838%_))))
                      (_%__kont145837145838%_))
                  (_%__kont145837145838%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont145837145838%_))
                                              (_%__kont145837145838%_))
                                          (_%__kont145837145838%_))))
                                  (_%__kont145837145838%_))))
                          (_%__kont145837145838%_))
                      (_%__kont145837145838%_))
                  (_%__kont145837145838%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont145837145838%_))))
                                          (_%__kont145837145838%_)))))
                              (_%__kont145837145838%_)))))))
                 (_%dispatch-case-e142809%_
                  (lambda (_%hd142960%_ _%body142961%_)
                    (let* ((_%form142963%_
                            (cons _%hd142960%_ (cons _%body142961%_ '())))
                           (_%__stx145965145966%_ _%form142963%_)
                           (_%g142967143091%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx145965145966%_)))))
                      (let ((_%__kont145967145968%_
                             (lambda (_%L143462%_ _%L143463%_ _%L143464%_)
                               (let ((__tmp147131
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L143463%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self142805%_
                                  __tmp147131))))
                            (_%__kont145973145974%_
                             (lambda (_%L143310%_
                                      _%L143311%_
                                      _%L143312%_
                                      _%L143313%_)
                               (let ((__tmp147132
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L143310%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self142805%_
                                  __tmp147132))))
                            (_%__kont145977145978%_
                             (lambda (_%L143176%_ _%L143177%_ _%L143178%_)
                               (let ((__tmp147133
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L143176%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self142805%_
                                  __tmp147133)))))
                        (let* ((_%__match146074146075%_
                                (lambda (_%e143057143096%_
                                         _%hd143058143099%_
                                         _%tl143059143101%_
                                         _%e143060143104%_
                                         _%hd143061143107%_
                                         _%tl143062143109%_
                                         _%e143063143112%_
                                         _%hd143064143115%_
                                         _%tl143065143117%_
                                         _%e143066143120%_
                                         _%hd143067143123%_
                                         _%tl143068143125%_
                                         _%e143069143128%_
                                         _%hd143070143131%_
                                         _%tl143071143133%_
                                         _%e143072143136%_
                                         _%hd143073143139%_
                                         _%tl143074143141%_
                                         _%e143075143144%_
                                         _%hd143076143147%_
                                         _%tl143077143149%_
                                         _%e143078143152%_
                                         _%hd143079143155%_
                                         _%tl143080143157%_
                                         _%e143081143160%_
                                         _%hd143082143163%_
                                         _%tl143083143165%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl143077143149%_))
                                      (let ((_%e143084143168%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl143077143149%_))))
                                        (let ((_%tl143086143173%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e143084143168%_)))
                                              (_%hd143085143171%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e143084143168%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl143086143173%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl143062143109%_))
                                                  (_%__kont145977145978%_
                                                   _%hd143082143163%_
                                                   _%hd143073143139%_
                                                   _%hd143058143099%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g142967143091%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g142967143091%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g142967143091%_)))))
                               (_%__match146004146005%_
                                (lambda (_%e143018143214%_
                                         _%hd143019143217%_
                                         _%tl143020143219%_
                                         _%__splice145975145976%_
                                         _%target143021143222%_
                                         _%tl143023143224%_)
                                  (letrec ((_%loop143024143227%_
                                            (lambda (_%hd143022143230%_
                                                     _%arg143028143232%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd143022143230%_))
                                                  (let ((_%e143025143235%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd143022143230%_))))
                                                    (let ((_%lp-tl143027143240%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e143025143235%_)))
                                                          (_%lp-hd143026143238%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e143025143235%_))))
                                                      (_%loop143024143227%_
                                                       _%lp-tl143027143240%_
                                                       (cons _%lp-hd143026143238%_
                                                             _%arg143028143232%_))))
                                                  (let ((_%arg143029143243%_
                                                         (reverse _%arg143028143232%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl143020143219%_))
                                                        (let ((_%e143030143246%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl143020143219%_))))
                  (let ((_%tl143032143251%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e143030143246%_)))
                        (_%hd143031143249%_
                         (let ()
                           (declare (not safe))
                           (##car _%e143030143246%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd143031143249%_))
                        (let ((_%e143033143254%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd143031143249%_))))
                          (let ((_%tl143035143259%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e143033143254%_)))
                                (_%hd143034143257%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e143033143254%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd143034143257%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd143034143257%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl143035143259%_))
                                        (let ((_%e143036143262%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl143035143259%_))))
                                          (let ((_%tl143038143267%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e143036143262%_)))
                                                (_%hd143037143265%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e143036143262%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd143037143265%_))
                                                (let ((_%e143039143270%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd143037143265%_))))
                                                  (let ((_%tl143041143275%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e143039143270%_)))
                                                        (_%hd143040143273%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e143039143270%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd143040143273%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd143040143273%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl143041143275%_))
                        (let ((_%e143042143278%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl143041143275%_))))
                          (let ((_%tl143044143283%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e143042143278%_)))
                                (_%hd143043143281%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e143042143278%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl143044143283%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl143038143267%_))
                                    (let ((_%e143045143286%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl143038143267%_))))
                                      (let ((_%tl143047143291%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e143045143286%_)))
                                            (_%hd143046143289%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e143045143286%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd143046143289%_))
                                            (let ((_%e143048143294%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd143046143289%_))))
                                              (let ((_%tl143050143299%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e143048143294%_)))
                                                    (_%hd143049143297%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e143048143294%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd143049143297%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd143049143297%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl143050143299%_))
                                                            (let ((_%e143051143302%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl143050143299%_))))
                      (let ((_%tl143053143307%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e143051143302%_)))
                            (_%hd143052143305%_
                             (let ()
                               (declare (not safe))
                               (##car _%e143051143302%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl143053143307%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl143032143251%_))
                                (_%__kont145973145974%_
                                 _%hd143052143305%_
                                 _%hd143043143281%_
                                 _%tl143023143224%_
                                 _%arg143029143243%_)
                                (_%__match146074146075%_
                                 _%e143018143214%_
                                 _%hd143019143217%_
                                 _%tl143020143219%_
                                 _%e143030143246%_
                                 _%hd143031143249%_
                                 _%tl143032143251%_
                                 _%e143033143254%_
                                 _%hd143034143257%_
                                 _%tl143035143259%_
                                 _%e143036143262%_
                                 _%hd143037143265%_
                                 _%tl143038143267%_
                                 _%e143039143270%_
                                 _%hd143040143273%_
                                 _%tl143041143275%_
                                 _%e143042143278%_
                                 _%hd143043143281%_
                                 _%tl143044143283%_
                                 _%e143045143286%_
                                 _%hd143046143289%_
                                 _%tl143047143291%_
                                 _%e143048143294%_
                                 _%hd143049143297%_
                                 _%tl143050143299%_
                                 _%e143051143302%_
                                 _%hd143052143305%_
                                 _%tl143053143307%_))
                            (let ()
                              (declare (not safe))
                              (_%g142967143091%_)))))
                    (let () (declare (not safe)) (_%g142967143091%_)))
                (let () (declare (not safe)) (_%g142967143091%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g142967143091%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g142967143091%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g142967143091%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g142967143091%_)))))
                        (let () (declare (not safe)) (_%g142967143091%_)))
                    (let () (declare (not safe)) (_%g142967143091%_)))
                (let () (declare (not safe)) (_%g142967143091%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g142967143091%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g142967143091%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g142967143091%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g142967143091%_)))))
                        (let () (declare (not safe)) (_%g142967143091%_)))))
                (let () (declare (not safe)) (_%g142967143091%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop143024143227%_
                                     _%target143021143222%_
                                     '()))))
                               (_%__match145992145993%_
                                (lambda (_%e142972143350%_
                                         _%hd142973143353%_
                                         _%tl142974143355%_
                                         _%__splice145969145970%_
                                         _%target142975143358%_
                                         _%tl142977143360%_)
                                  (letrec ((_%loop142978143363%_
                                            (lambda (_%hd142976143366%_
                                                     _%arg142982143368%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd142976143366%_))
                                                  (let ((_%e142979143371%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd142976143366%_))))
                                                    (let ((_%lp-tl142981143376%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e142979143371%_)))
                                                          (_%lp-hd142980143374%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e142979143371%_))))
                                                      (_%loop142978143363%_
                                                       _%lp-tl142981143376%_
                                                       (cons _%lp-hd142980143374%_
                                                             _%arg142982143368%_))))
                                                  (let ((_%arg142983143379%_
                                                         (reverse _%arg142982143368%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl142974143355%_))
                                                        (let ((_%e142984143382%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl142974143355%_))))
                  (let ((_%tl142986143387%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e142984143382%_)))
                        (_%hd142985143385%_
                         (let ()
                           (declare (not safe))
                           (##car _%e142984143382%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd142985143385%_))
                        (let ((_%e142987143390%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd142985143385%_))))
                          (let ((_%tl142989143395%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e142987143390%_)))
                                (_%hd142988143393%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e142987143390%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd142988143393%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd142988143393%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl142989143395%_))
                                        (let ((_%e142990143398%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl142989143395%_))))
                                          (let ((_%tl142992143403%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e142990143398%_)))
                                                (_%hd142991143401%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e142990143398%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd142991143401%_))
                                                (let ((_%e142993143406%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd142991143401%_))))
                                                  (let ((_%tl142995143411%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e142993143406%_)))
                                                        (_%hd142994143409%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e142993143406%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd142994143409%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd142994143409%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl142995143411%_))
                        (let ((_%e142996143414%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl142995143411%_))))
                          (let ((_%tl142998143419%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e142996143414%_)))
                                (_%hd142997143417%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e142996143414%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl142998143419%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl142992143403%_))
                                    (let ((_%__splice145971145972%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl142992143403%_
                                              '0))))
                                      (let ((_%tl143001143424%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice145971145972%_
                                                '1)))
                                            (_%target142999143422%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice145971145972%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl143001143424%_))
                                            (letrec ((_%loop143002143427%_
                                                      (lambda (_%hd143000143430%_
                                                               _%xarg143006143432%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd143000143430%_))
                                                            (let ((_%e143003143435%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd143000143430%_))))
                      (let ((_%lp-tl143005143440%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e143003143435%_)))
                            (_%lp-hd143004143438%_
                             (let ()
                               (declare (not safe))
                               (##car _%e143003143435%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd143004143438%_))
                            (let ((_%e143008143443%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd143004143438%_))))
                              (let ((_%tl143010143448%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e143008143443%_)))
                                    (_%hd143009143446%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e143008143443%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd143009143446%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd143009143446%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl143010143448%_))
                                            (let ((_%e143011143451%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl143010143448%_))))
                                              (let ((_%tl143013143456%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e143011143451%_)))
                                                    (_%hd143012143454%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e143011143451%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl143013143456%_))
                                                    (_%loop143002143427%_
                                                     _%lp-tl143005143440%_
                                                     (cons _%hd143012143454%_
                                                           _%xarg143006143432%_))
                                                    (_%__match146004146005%_
                                                     _%e142972143350%_
                                                     _%hd142973143353%_
                                                     _%tl142974143355%_
                                                     _%__splice145969145970%_
                                                     _%target142975143358%_
                                                     _%tl142977143360%_))))
                                            (_%__match146004146005%_
                                             _%e142972143350%_
                                             _%hd142973143353%_
                                             _%tl142974143355%_
                                             _%__splice145969145970%_
                                             _%target142975143358%_
                                             _%tl142977143360%_))
                                        (_%__match146004146005%_
                                         _%e142972143350%_
                                         _%hd142973143353%_
                                         _%tl142974143355%_
                                         _%__splice145969145970%_
                                         _%target142975143358%_
                                         _%tl142977143360%_))
                                    (_%__match146004146005%_
                                     _%e142972143350%_
                                     _%hd142973143353%_
                                     _%tl142974143355%_
                                     _%__splice145969145970%_
                                     _%target142975143358%_
                                     _%tl142977143360%_))))
                            (_%__match146004146005%_
                             _%e142972143350%_
                             _%hd142973143353%_
                             _%tl142974143355%_
                             _%__splice145969145970%_
                             _%target142975143358%_
                             _%tl142977143360%_))))
                    (let ((_%xarg143007143459%_
                           (reverse _%xarg143006143432%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl142986143387%_))
                          (_%__kont145967145968%_
                           _%xarg143007143459%_
                           _%hd142997143417%_
                           _%arg142983143379%_)
                          (_%__match146004146005%_
                           _%e142972143350%_
                           _%hd142973143353%_
                           _%tl142974143355%_
                           _%__splice145969145970%_
                           _%target142975143358%_
                           _%tl142977143360%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop143002143427%_
                                               _%target142999143422%_
                                               '()))
                                            (_%__match146004146005%_
                                             _%e142972143350%_
                                             _%hd142973143353%_
                                             _%tl142974143355%_
                                             _%__splice145969145970%_
                                             _%target142975143358%_
                                             _%tl142977143360%_))))
                                    (_%__match146004146005%_
                                     _%e142972143350%_
                                     _%hd142973143353%_
                                     _%tl142974143355%_
                                     _%__splice145969145970%_
                                     _%target142975143358%_
                                     _%tl142977143360%_))
                                (_%__match146004146005%_
                                 _%e142972143350%_
                                 _%hd142973143353%_
                                 _%tl142974143355%_
                                 _%__splice145969145970%_
                                 _%target142975143358%_
                                 _%tl142977143360%_))))
                        (_%__match146004146005%_
                         _%e142972143350%_
                         _%hd142973143353%_
                         _%tl142974143355%_
                         _%__splice145969145970%_
                         _%target142975143358%_
                         _%tl142977143360%_))
                    (_%__match146004146005%_
                     _%e142972143350%_
                     _%hd142973143353%_
                     _%tl142974143355%_
                     _%__splice145969145970%_
                     _%target142975143358%_
                     _%tl142977143360%_))
                (_%__match146004146005%_
                 _%e142972143350%_
                 _%hd142973143353%_
                 _%tl142974143355%_
                 _%__splice145969145970%_
                 _%target142975143358%_
                 _%tl142977143360%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match146004146005%_
                                                 _%e142972143350%_
                                                 _%hd142973143353%_
                                                 _%tl142974143355%_
                                                 _%__splice145969145970%_
                                                 _%target142975143358%_
                                                 _%tl142977143360%_))))
                                        (_%__match146004146005%_
                                         _%e142972143350%_
                                         _%hd142973143353%_
                                         _%tl142974143355%_
                                         _%__splice145969145970%_
                                         _%target142975143358%_
                                         _%tl142977143360%_))
                                    (_%__match146004146005%_
                                     _%e142972143350%_
                                     _%hd142973143353%_
                                     _%tl142974143355%_
                                     _%__splice145969145970%_
                                     _%target142975143358%_
                                     _%tl142977143360%_))
                                (_%__match146004146005%_
                                 _%e142972143350%_
                                 _%hd142973143353%_
                                 _%tl142974143355%_
                                 _%__splice145969145970%_
                                 _%target142975143358%_
                                 _%tl142977143360%_))))
                        (_%__match146004146005%_
                         _%e142972143350%_
                         _%hd142973143353%_
                         _%tl142974143355%_
                         _%__splice145969145970%_
                         _%target142975143358%_
                         _%tl142977143360%_))))
                (_%__match146004146005%_
                 _%e142972143350%_
                 _%hd142973143353%_
                 _%tl142974143355%_
                 _%__splice145969145970%_
                 _%target142975143358%_
                 _%tl142977143360%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop142978143363%_
                                     _%target142975143358%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx145965145966%_))
                              (let ((_%e142972143350%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx145965145966%_))))
                                (let ((_%tl142974143355%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142972143350%_)))
                                      (_%hd142973143353%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142972143350%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd142973143353%_))
                                      (let ((_%__splice145969145970%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd142973143353%_
                                                '0))))
                                        (let ((_%tl142977143360%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice145969145970%_
                                                  '1)))
                                              (_%target142975143358%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice145969145970%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl142977143360%_))
                                              (_%__match145992145993%_
                                               _%e142972143350%_
                                               _%hd142973143353%_
                                               _%tl142974143355%_
                                               _%__splice145969145970%_
                                               _%target142975143358%_
                                               _%tl142977143360%_)
                                              (_%__match146004146005%_
                                               _%e142972143350%_
                                               _%hd142973143353%_
                                               _%tl142974143355%_
                                               _%__splice145969145970%_
                                               _%target142975143358%_
                                               _%tl142977143360%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl142974143355%_))
                                          (let ((_%e143060143104%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl142974143355%_))))
                                            (let ((_%tl143062143109%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e143060143104%_)))
                                                  (_%hd143061143107%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e143060143104%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd143061143107%_))
                                                  (let ((_%e143063143112%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd143061143107%_))))
                                                    (let ((_%tl143065143117%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e143063143112%_)))
                                                          (_%hd143064143115%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e143063143112%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd143064143115%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd143064143115%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl143065143117%_))
                          (let ((_%e143066143120%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl143065143117%_))))
                            (let ((_%tl143068143125%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e143066143120%_)))
                                  (_%hd143067143123%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e143066143120%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd143067143123%_))
                                  (let ((_%e143069143128%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd143067143123%_))))
                                    (let ((_%tl143071143133%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e143069143128%_)))
                                          (_%hd143070143131%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e143069143128%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd143070143131%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd143070143131%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl143071143133%_))
                                                  (let ((_%e143072143136%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl143071143133%_))))
                                                    (let ((_%tl143074143141%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e143072143136%_)))
                                                          (_%hd143073143139%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e143072143136%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl143074143141%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl143068143125%_))
                      (let ((_%e143075143144%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl143068143125%_))))
                        (let ((_%tl143077143149%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143075143144%_)))
                              (_%hd143076143147%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143075143144%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd143076143147%_))
                              (let ((_%e143078143152%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd143076143147%_))))
                                (let ((_%tl143080143157%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e143078143152%_)))
                                      (_%hd143079143155%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e143078143152%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd143079143155%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd143079143155%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl143080143157%_))
                                              (let ((_%e143081143160%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl143080143157%_))))
                                                (let ((_%tl143083143165%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e143081143160%_)))
                                                      (_%hd143082143163%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e143081143160%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl143083143165%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl143077143149%_))
                                                          (let ((_%e143084143168%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl143077143149%_))))
                    (let ((_%tl143086143173%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e143084143168%_)))
                          (_%hd143085143171%_
                           (let ()
                             (declare (not safe))
                             (##car _%e143084143168%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl143086143173%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl143062143109%_))
                              (_%__kont145977145978%_
                               _%hd143082143163%_
                               _%hd143073143139%_
                               _%hd142973143353%_)
                              (let ()
                                (declare (not safe))
                                (_%g142967143091%_)))
                          (let () (declare (not safe)) (_%g142967143091%_)))))
                  (let () (declare (not safe)) (_%g142967143091%_)))
              (let () (declare (not safe)) (_%g142967143091%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g142967143091%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g142967143091%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g142967143091%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g142967143091%_)))))
                      (let () (declare (not safe)) (_%g142967143091%_)))
                  (let () (declare (not safe)) (_%g142967143091%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g142967143091%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g142967143091%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g142967143091%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g142967143091%_)))))
                          (let () (declare (not safe)) (_%g142967143091%_)))
                      (let () (declare (not safe)) (_%g142967143091%_)))
                  (let () (declare (not safe)) (_%g142967143091%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g142967143091%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g142967143091%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g142967143091%_))))))))
                 (_%generate1142810%_
                  (lambda (_%args142945%_
                           _%arglen142946%_
                           _%hd142947%_
                           _%body142948%_)
                    (let* ((_%len142950%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-length _%hd142947%_)))
                           (_%condition142955%_
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _%hd142947%_))
                                (if (gxc#current-compile-decls-unsafe?)
                                    (cons '##fx=
                                          (cons _%arglen142946%_
                                                (cons _%len142950%_ '())))
                                    (cons 'let
                                          (cons '()
                                                (cons '(declare (not safe))
                                                      (cons (cons '##fx=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%arglen142946%_ (cons _%len142950%_ '())))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (if (> _%len142950%_ '0)
                                    (if (gxc#current-compile-decls-unsafe?)
                                        (cons '##fx>=
                                              (cons _%arglen142946%_
                                                    (cons _%len142950%_ '())))
                                        (cons 'let
                                              (cons '()
                                                    (cons '(declare (not safe))
                                                          (cons (cons '##fx>=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%arglen142946%_ (cons _%len142950%_ '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '#t)))
                           (_%dispatch142957%_
                            (if (_%dispatch-case?142808%_
                                 _%hd142947%_
                                 _%body142948%_)
                                (_%dispatch-case-e142809%_
                                 _%hd142947%_
                                 _%body142948%_)
                                (gxc#generate-runtime-lambda-form
                                 _%self142805%_
                                 _%hd142947%_
                                 _%body142948%_))))
                      (cons _%condition142955%_
                            (cons (cons 'apply
                                        (cons _%dispatch142957%_
                                              (cons _%args142945%_ '())))
                                  '()))))))
          (let* ((_%g142812142840%_
                  (lambda (_%g142813142837%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g142813142837%_))))
                 (_%g142811142942%_
                  (lambda (_%g142813142843%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g142813142843%_))
                        (let ((_%e142816142845%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g142813142843%_))))
                          (let ((_%hd142817142848%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e142816142845%_)))
                                (_%tl142818142850%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e142816142845%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl142818142850%_))
                                (let ((_g147134_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl142818142850%_
                                          '0))))
                                  (begin
                                    (let ((_g147135_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g147134_)
                                                 (##vector-length _g147134_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g147135_ 2)))
                                          (error "Context expects 2 values"
                                                 _g147135_)))
                                    (let ((_%target142819142853%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g147134_ 0)))
                                          (_%tl142821142855%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g147134_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl142821142855%_))
                                          (letrec ((_%loop142822142858%_
                                                    (lambda (_%hd142820142861%_
                                                             _%body142826142863%_
                                                             _%hd142827142865%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd142820142861%_))
                                                          (let ((_%e142823142868%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd142820142861%_))))
                    (let ((_%lp-hd142824142871%_
                           (let ()
                             (declare (not safe))
                             (##car _%e142823142868%_)))
                          (_%lp-tl142825142873%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e142823142868%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd142824142871%_))
                          (let ((_%e142830142876%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd142824142871%_))))
                            (let ((_%hd142831142879%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e142830142876%_)))
                                  (_%tl142832142881%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e142830142876%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl142832142881%_))
                                  (let ((_%e142833142884%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl142832142881%_))))
                                    (let ((_%hd142834142887%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e142833142884%_)))
                                          (_%tl142835142889%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e142833142884%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl142835142889%_))
                                          (_%loop142822142858%_
                                           _%lp-tl142825142873%_
                                           (cons _%hd142834142887%_
                                                 _%body142826142863%_)
                                           (cons _%hd142831142879%_
                                                 _%hd142827142865%_))
                                          (_%g142812142840%_
                                           _%g142813142843%_))))
                                  (_%g142812142840%_ _%g142813142843%_))))
                          (_%g142812142840%_ _%g142813142843%_))))
                  (let ((_%body142828142892%_ (reverse _%body142826142863%_))
                        (_%hd142829142894%_ (reverse _%hd142827142865%_)))
                    ((lambda (_%L142897%_ _%L142898%_)
                       (let ((_%args142917%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%arglen142918%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%name142919%_
                              (let ((_%$e142914%_
                                     (let ((__tmp147136
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-runtime-names))))
                                       (declare (not safe))
                                       (hash-get __tmp147136 _%stx142806%_))))
                                (if _%$e142914%_
                                    _%$e142914%_
                                    ''case-lambda-dispatch))))
                         (cons 'lambda
                               (cons _%args142917%_
                                     (cons (cons 'let
                                                 (cons (cons (cons _%arglen142918%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (gxc#current-compile-decls-unsafe?)
                                     (cons '##length (cons _%args142917%_ '()))
                                     (cons 'let
                                           (cons '()
                                                 (cons '(declare (not safe))
                                                       (cons (cons '##length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%args142917%_ '()))
                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 '()))
                     '())
               (cons (cons 'cond
                           (let ((__tmp147140
                                  (cons (cons 'else
                                              (cons (cons '##raise-wrong-number-of-arguments-exception
                                                          (cons _%name142919%_
                                                                (cons _%args142917%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '()))
                                 (__tmp147137
                                  (map (lambda (_%g142920142923%_
                                                _%g142921142925%_)
                                         (_%generate1142810%_
                                          _%args142917%_
                                          _%arglen142918%_
                                          _%g142920142923%_
                                          _%g142921142925%_))
                                       (let ((__tmp147138
                                              (lambda (_%g142927142930%_
                                                       _%g142928142932%_)
                                                (cons _%g142927142930%_
                                                      _%g142928142932%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp147138
                                          '()
                                          _%L142898%_))
                                       (let ((__tmp147139
                                              (lambda (_%g142934142937%_
                                                       _%g142935142939%_)
                                                (cons _%g142934142937%_
                                                      _%g142935142939%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp147139
                                          '()
                                          _%L142897%_)))))
                             (declare (not safe))
                             (__foldr1 cons __tmp147140 __tmp147137)))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))
                     _%body142828142892%_
                     _%hd142829142894%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop142822142858%_
                                             _%target142819142853%_
                                             '()
                                             '()))
                                          (_%g142812142840%_
                                           _%g142813142843%_)))))
                                (_%g142812142840%_ _%g142813142843%_))))
                        (_%g142812142840%_ _%g142813142843%_)))))
            (_%g142811142942%_ _%stx142806%_)))))
    (define gxc#generate-runtime-let-values%__%
      (lambda (_%self142042%_ _%stx142043%_ _%compiled-body?142044%_)
        (letrec ((_%generate-simple142046%_
                  (lambda (_%hd142790%_ _%body142791%_)
                    (_%coalesce-boolean142047%_
                     (_%simplify-let142048%_
                      (gxc#generate-runtime-simple-let
                       _%self142042%_
                       'let
                       _%hd142790%_
                       _%body142791%_
                       _%compiled-body?142044%_)))))
                 (_%coalesce-boolean142047%_
                  (lambda (_%code142651%_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-boolean-context))
                        (let* ((_%code142652142678%_ _%code142651%_)
                               (_%else142654142686%_
                                (lambda () _%code142651%_))
                               (_%K142656142723%_
                                (lambda (_%expr2142689%_
                                         _%expr1142690%_
                                         _%id142691%_)
                                  (let* ((_%expr2142692142700%_
                                          _%expr2142689%_)
                                         (_%else142694142708%_
                                          (lambda ()
                                            (cons 'or
                                                  (cons _%expr1142690%_
                                                        (cons _%expr2142689%_
                                                              '())))))
                                         (_%K142696142713%_
                                          (lambda (_%exprs142711%_)
                                            (cons 'or
                                                  (cons _%expr1142690%_
                                                        _%exprs142711%_)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%expr2142692142700%_))
                                        (let ((_%hd142697142716%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%expr2142692142700%_)))
                                              (_%tl142698142718%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%expr2142692142700%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd142697142716%_ 'or))
                                              (let ((_%exprs142721%_
                                                     _%tl142698142718%_))
                                                (_%K142696142713%_
                                                 _%exprs142721%_))
                                              (_%else142694142708%_)))
                                        (_%else142694142708%_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%code142652142678%_))
                              (let ((_%hd142657142726%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%code142652142678%_)))
                                    (_%tl142658142728%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%code142652142678%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%hd142657142726%_ 'let))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%tl142658142728%_))
                                        (let ((_%hd142659142731%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%tl142658142728%_)))
                                              (_%tl142660142733%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%tl142658142728%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _%hd142659142731%_))
                                              (let ((_%hd142671142736%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%hd142659142731%_)))
                                                    (_%tl142672142738%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%hd142659142731%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _%hd142671142736%_))
                                                    (let ((_%hd142673142741%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%hd142671142736%_)))
                                                          (_%tl142674142743%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%hd142671142736%_))))
                                                      (let ((_%id142746%_
                                                             _%hd142673142741%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##pair? _%tl142674142743%_))
                                                            (let ((_%hd142675142748%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##car _%tl142674142743%_)))
                          (_%tl142676142750%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl142674142743%_))))
                      (let ((_%expr1142753%_ _%hd142675142748%_))
                        (if (let ()
                              (declare (not safe))
                              (##null? _%tl142676142750%_))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _%tl142672142738%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%tl142660142733%_))
                                    (let ((_%hd142661142755%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl142660142733%_)))
                                          (_%tl142662142757%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl142660142733%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%hd142661142755%_))
                                          (let ((_%hd142663142760%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd142661142755%_)))
                                                (_%tl142664142762%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd142661142755%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd142663142760%_
                                                         'if))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _%tl142664142762%_))
                                                    (let ((_%hd142665142765%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl142664142762%_)))
                                                          (_%tl142666142767%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl142664142762%_))))
                                                      (if ((lambda (_%g142769142771%_)
                                                             (eq? _%g142769142771%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id142746%_))
                   _%hd142665142765%_)
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%tl142666142767%_))
                      (let ((_%hd142667142774%_
                             (let ()
                               (declare (not safe))
                               (##car _%tl142666142767%_)))
                            (_%tl142668142776%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%tl142666142767%_))))
                        (if ((lambda (_%g142778142780%_)
                               (eq? _%g142778142780%_ _%id142746%_))
                             _%hd142667142774%_)
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl142668142776%_))
                                (let ((_%hd142669142783%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl142668142776%_)))
                                      (_%tl142670142785%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl142668142776%_))))
                                  (let ((_%expr2142788%_ _%hd142669142783%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _%tl142670142785%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##null? _%tl142662142757%_))
                                            (_%K142656142723%_
                                             _%expr2142788%_
                                             _%expr1142753%_
                                             _%id142746%_)
                                            (_%else142654142686%_))
                                        (_%else142654142686%_))))
                                (_%else142654142686%_))
                            (_%else142654142686%_)))
                      (_%else142654142686%_))
                  (_%else142654142686%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else142654142686%_))
                                                (_%else142654142686%_)))
                                          (_%else142654142686%_)))
                                    (_%else142654142686%_))
                                (_%else142654142686%_))
                            (_%else142654142686%_))))
                    (_%else142654142686%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else142654142686%_)))
                                              (_%else142654142686%_)))
                                        (_%else142654142686%_))
                                    (_%else142654142686%_)))
                              (_%else142654142686%_)))
                        _%code142651%_)))
                 (_%simplify-let142048%_
                  (lambda (_%code142350%_)
                    (let* ((_%code142351142423%_ _%code142350%_)
                           (_%else142356142431%_ (lambda () _%code142350%_)))
                      (let ((_%K142415142631%_
                             (lambda (_%expr142629%_) _%expr142629%_))
                            (_%K142398142577%_
                             (lambda (_%body142573%_
                                      _%expr142574%_
                                      _%id142575%_)
                               (cons 'let
                                     (cons (cons (cons _%id142575%_
                                                       (cons _%expr142574%_
                                                             '()))
                                                 '())
                                           _%body142573%_))))
                            (_%K142375142501%_
                             (lambda (_%body142495%_
                                      _%expr2142496%_
                                      _%id2142497%_
                                      _%expr1142498%_
                                      _%id1142499%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1142499%_
                                                       (cons _%expr1142498%_
                                                             '()))
                                                 (cons (cons _%id2142497%_
                                                             (cons _%expr2142496%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body142495%_))))
                            (_%K142358142440%_
                             (lambda (_%body142435%_
                                      _%bind142436%_
                                      _%expr1142437%_
                                      _%id1142438%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1142438%_
                                                       (cons _%expr1142437%_
                                                             '()))
                                                 _%bind142436%_)
                                           _%body142435%_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%code142351142423%_))
                            (let ((_%tl142417142636%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%code142351142423%_)))
                                  (_%hd142416142634%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%code142351142423%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd142416142634%_ 'let))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%tl142417142636%_))
                                      (let ((_%tl142419142641%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%tl142417142636%_)))
                                            (_%hd142418142639%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%tl142417142636%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (##null? _%hd142418142639%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%tl142419142641%_))
                                                (let ((_%tl142421142646%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%tl142419142641%_)))
                                                      (_%hd142420142644%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%tl142419142641%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##null? _%tl142421142646%_))
                                                      (let ((_%expr142649%_
                                                             _%hd142420142644%_))
                                                        (_%K142415142631%_
                                                         _%expr142649%_))
                                                      (_%else142356142431%_)))
                                                (_%else142356142431%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%hd142418142639%_))
                                                (let ((_%tl142410142592%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd142418142639%_)))
                                                      (_%hd142409142590%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd142418142639%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _%hd142409142590%_))
                                                      (let ((_%tl142412142597%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%hd142409142590%_)))
                    (_%hd142411142595%_
                     (let () (declare (not safe)) (##car _%hd142409142590%_))))
                (if (let () (declare (not safe)) (##pair? _%tl142412142597%_))
                    (let ((_%tl142414142604%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl142412142597%_)))
                          (_%hd142413142602%_
                           (let ()
                             (declare (not safe))
                             (##car _%tl142412142597%_))))
                      (if (let ()
                            (declare (not safe))
                            (##null? _%tl142414142604%_))
                          (if (let ()
                                (declare (not safe))
                                (##null? _%tl142410142592%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%tl142419142641%_))
                                  (let ((_%tl142404142611%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl142419142641%_)))
                                        (_%hd142403142609%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl142419142641%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%hd142403142609%_))
                                        (let ((_%tl142406142616%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%hd142403142609%_)))
                                              (_%hd142405142614%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%hd142403142609%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd142405142614%_
                                                       'let))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%tl142406142616%_))
                                                  (let ((_%tl142408142621%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl142406142616%_)))
                                                        (_%hd142407142619%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl142406142616%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##null? _%hd142407142619%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##null? _%tl142404142611%_))
                                                            (let ((_%id142600%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%hd142411142595%_)
                          (_%expr142607%_ _%hd142413142602%_)
                          (_%body142624%_ _%tl142408142621%_))
                      (_%K142398142577%_
                       _%body142624%_
                       _%expr142607%_
                       _%id142600%_))
                    (_%else142356142431%_))
                (if (let () (declare (not safe)) (##pair? _%hd142407142619%_))
                    (let ((_%tl142387142550%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%hd142407142619%_)))
                          (_%hd142386142548%_
                           (let ()
                             (declare (not safe))
                             (##car _%hd142407142619%_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%hd142386142548%_))
                          (let ((_%tl142389142555%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd142386142548%_)))
                                (_%hd142388142553%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd142386142548%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl142389142555%_))
                                (let ((_%tl142391142562%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl142389142555%_)))
                                      (_%hd142390142560%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl142389142555%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _%tl142391142562%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl142387142550%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##null? _%tl142404142611%_))
                                              (let ((_%id1142524%_
                                                     _%hd142411142595%_)
                                                    (_%expr1142531%_
                                                     _%hd142413142602%_)
                                                    (_%id2142558%_
                                                     _%hd142388142553%_)
                                                    (_%expr2142565%_
                                                     _%hd142390142560%_)
                                                    (_%body142567%_
                                                     _%tl142408142621%_))
                                                (_%K142375142501%_
                                                 _%body142567%_
                                                 _%expr2142565%_
                                                 _%id2142558%_
                                                 _%expr1142531%_
                                                 _%id1142524%_))
                                              (_%else142356142431%_))
                                          (_%else142356142431%_))
                                      (_%else142356142431%_)))
                                (_%else142356142431%_)))
                          (_%else142356142431%_)))
                    (_%else142356142431%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else142356142431%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##eq? _%hd142405142614%_
                                                           'let*))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _%tl142406142616%_))
                                                      (let ((_%tl142368142484%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%tl142406142616%_)))
                    (_%hd142367142482%_
                     (let () (declare (not safe)) (##car _%tl142406142616%_))))
                (if (let () (declare (not safe)) (##null? _%tl142404142611%_))
                    (let ((_%id1142463%_ _%hd142411142595%_)
                          (_%expr1142470%_ _%hd142413142602%_)
                          (_%bind142487%_ _%hd142367142482%_)
                          (_%body142489%_ _%tl142368142484%_))
                      (_%K142358142440%_
                       _%body142489%_
                       _%bind142487%_
                       _%expr1142470%_
                       _%id1142463%_))
                    (_%else142356142431%_)))
              (_%else142356142431%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else142356142431%_))))
                                        (_%else142356142431%_)))
                                  (_%else142356142431%_))
                              (_%else142356142431%_))
                          (_%else142356142431%_)))
                    (_%else142356142431%_)))
              (_%else142356142431%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else142356142431%_))))
                                      (_%else142356142431%_))
                                  (_%else142356142431%_)))
                            (_%else142356142431%_))))))
                 (_%generate-values142049%_
                  (lambda (_%hd142163%_ _%body142164%_)
                    (let _%lp142166%_ ((_%rest142168%_ _%hd142163%_)
                                       (_%bind142169%_ '())
                                       (_%check142170%_ '())
                                       (_%post142171%_ '()))
                      (let* ((_%__stx146294146295%_ _%rest142168%_)
                             (_%g142174142185%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx146294146295%_)))))
                        (let ((_%__kont146296146297%_
                               (lambda (_%L142212%_ _%L142213%_)
                                 (let* ((_%__stx146250146251%_ _%L142213%_)
                                        (_%g142228142253%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx146250146251%_)))))
                                   (let ((_%__kont146252146253%_
                                          (lambda (_%L142326%_ _%L142327%_)
                                            (let ((_%eid142341%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%L142327%_)))
                                                  (_%expr142342%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self142042%_
                                                      _%L142326%_))))
                                              (_%lp142166%_
                                               _%L142212%_
                                               (cons (cons _%eid142341%_
                                                           (cons _%expr142342%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind142169%_)
                                               _%check142170%_
                                               _%post142171%_))))
                                         (_%__kont146254146255%_
                                          (lambda (_%L142274%_ _%L142275%_)
                                            (let* ((_%vals142288%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values142290%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals142288%_
                                                     _%L142275%_
                                                     _%L142274%_))
                                                   (_%refs142292%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals142288%_
                                                     _%L142275%_))
                                                   (_%expr142294%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self142042%_
                                                       _%L142274%_))))
                                              (_%lp142166%_
                                               _%L142212%_
                                               (cons (cons _%vals142288%_
                                                           (cons _%expr142294%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind142169%_)
                                               (cons _%check-values142290%_
                                                     _%check142170%_)
                                               (cons _%refs142292%_
                                                     _%post142171%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx146250146251%_))
                                         (let ((_%e142232142302%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx146250146251%_))))
                                           (let ((_%tl142234142307%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e142232142302%_)))
                                                 (_%hd142233142305%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e142232142302%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd142233142305%_))
                                                 (let ((_%e142235142310%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd142233142305%_))))
                                                   (let ((_%tl142237142315%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e142235142310%_)))
                                                         (_%hd142236142313%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e142235142310%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl142237142315%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl142234142307%_))
                     (let ((_%e142238142318%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl142234142307%_))))
                       (let ((_%tl142240142323%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e142238142318%_)))
                             (_%hd142239142321%_
                              (let ()
                                (declare (not safe))
                                (##car _%e142238142318%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl142240142323%_))
                             (_%__kont146252146253%_
                              _%hd142239142321%_
                              _%hd142236142313%_)
                             (let ()
                               (declare (not safe))
                               (_%g142228142253%_)))))
                     (let () (declare (not safe)) (_%g142228142253%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl142234142307%_))
                     (let ((_%e142246142266%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl142234142307%_))))
                       (let ((_%tl142248142271%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e142246142266%_)))
                             (_%hd142247142269%_
                              (let ()
                                (declare (not safe))
                                (##car _%e142246142266%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl142248142271%_))
                             (_%__kont146254146255%_
                              _%hd142247142269%_
                              _%hd142233142305%_)
                             (let ()
                               (declare (not safe))
                               (_%g142228142253%_)))))
                     (let () (declare (not safe)) (_%g142228142253%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl142234142307%_))
                                                     (let ((_%e142246142266%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl142234142307%_))))
                                                       (let ((_%tl142248142271%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e142246142266%_)))
                     (_%hd142247142269%_
                      (let () (declare (not safe)) (##car _%e142246142266%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl142248142271%_))
                     (_%__kont146254146255%_
                      _%hd142247142269%_
                      _%hd142233142305%_)
                     (let () (declare (not safe)) (_%g142228142253%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g142228142253%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g142228142253%_)))))))
                              (_%__kont146298146299%_
                               (lambda ()
                                 (let* ((_%body142192%_
                                         (if _%compiled-body?142044%_
                                             _%body142164%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self142042%_
                                                _%body142164%_))))
                                        (_%body142194%_
                                         (_%generate-values-post142050%_
                                          _%post142171%_
                                          _%body142192%_))
                                        (_%body142196%_
                                         (_%generate-values-check142051%_
                                          _%check142170%_
                                          _%body142194%_)))
                                   (cons 'let
                                         (cons (reverse _%bind142169%_)
                                               (cons _%body142196%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx146294146295%_))
                              (let ((_%e142178142204%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx146294146295%_))))
                                (let ((_%tl142180142209%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142178142204%_)))
                                      (_%hd142179142207%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142178142204%_))))
                                  (_%__kont146296146297%_
                                   _%tl142180142209%_
                                   _%hd142179142207%_)))
                              (_%__kont146298146299%_)))))))
                 (_%generate-values-post142050%_
                  (lambda (_%post142122%_ _%body142123%_)
                    (let _%lp142125%_ ((_%rest142127%_ _%post142122%_)
                                       (_%body142128%_ _%body142123%_))
                      (let* ((_%rest142129142137%_ _%rest142127%_)
                             (_%else142131142145%_ (lambda () _%body142128%_))
                             (_%K142133142151%_
                              (lambda (_%rest142148%_ _%bind142149%_)
                                (_%lp142125%_
                                 _%rest142148%_
                                 (cons 'let
                                       (cons _%bind142149%_
                                             (cons _%body142128%_ '())))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest142129142137%_))
                            (let ((_%hd142134142154%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest142129142137%_)))
                                  (_%tl142135142156%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest142129142137%_))))
                              (let* ((_%bind142159%_ _%hd142134142154%_)
                                     (_%rest142161%_ _%tl142135142156%_))
                                (_%K142133142151%_
                                 _%rest142161%_
                                 _%bind142159%_)))
                            (_%else142131142145%_))))))
                 (_%generate-values-check142051%_
                  (lambda (_%check142119%_ _%body142120%_)
                    (cons 'begin
                          (let ((__tmp147142 (cons _%body142120%_ '()))
                                (__tmp147141 (reverse _%check142119%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp147142 __tmp147141))))))
          (let* ((_%g142053142070%_
                  (lambda (_%g142054142067%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g142054142067%_))))
                 (_%g142052142116%_
                  (lambda (_%g142054142073%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g142054142073%_))
                        (let ((_%e142057142075%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g142054142073%_))))
                          (let ((_%hd142058142078%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e142057142075%_)))
                                (_%tl142059142080%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e142057142075%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl142059142080%_))
                                (let ((_%e142060142083%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl142059142080%_))))
                                  (let ((_%hd142061142086%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e142060142083%_)))
                                        (_%tl142062142088%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e142060142083%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl142062142088%_))
                                        (let ((_%e142063142091%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl142062142088%_))))
                                          (let ((_%hd142064142094%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e142063142091%_)))
                                                (_%tl142065142096%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e142063142091%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl142065142096%_))
                                                ((lambda (_%L142099%_
                                                          _%L142100%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%L142100%_)
                                                       (_%generate-simple142046%_
                                                        _%L142100%_
                                                        _%L142099%_)
                                                       (_%generate-values142049%_
                                                        _%L142100%_
                                                        _%L142099%_)))
                                                 _%hd142064142094%_
                                                 _%hd142061142086%_)
                                                (_%g142053142070%_
                                                 _%g142054142073%_))))
                                        (_%g142053142070%_
                                         _%g142054142073%_))))
                                (_%g142053142070%_ _%g142054142073%_))))
                        (_%g142053142070%_ _%g142054142073%_)))))
            (_%g142052142116%_ _%stx142043%_)))))
    (define gxc#generate-runtime-let-values%__0
      (lambda (_%self142796%_ _%stx142797%_)
        (let ((_%compiled-body?142799%_ '#f))
          (gxc#generate-runtime-let-values%__%
           _%self142796%_
           _%stx142797%_
           _%compiled-body?142799%_))))
    (define gxc#generate-runtime-let-values%
      (lambda _g147144_
        (let ((_g147143_ (let () (declare (not safe)) (##length _g147144_))))
          (cond ((let () (declare (not safe)) (##fx= _g147143_ 2))
                 (apply gxc#generate-runtime-let-values%__0 _g147144_))
                ((let () (declare (not safe)) (##fx= _g147143_ 3))
                 (apply gxc#generate-runtime-let-values%__% _g147144_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-let-values%
                  _g147144_))))))
    (define gxc#generate-runtime-let-values-bind
      (lambda (_%vals141936%_ _%hd141937%_)
        (let _%lp141939%_ ((_%rest141941%_ _%hd141937%_)
                           (_%k141942%_ '0)
                           (_%r141943%_ '()))
          (let* ((_%__stx146308146309%_ _%rest141941%_)
                 (_%g141948141965%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx146308146309%_)))))
            (let ((_%__kont146310146311%_
                   (lambda (_%L142028%_)
                     (_%lp141939%_
                      _%L142028%_
                      (let () (declare (not safe)) (##fx+ _%k141942%_ '1))
                      _%r141943%_)))
                  (_%__kont146312146313%_
                   (lambda (_%L142001%_ _%L142002%_)
                     (_%lp141939%_
                      _%L142001%_
                      (let () (declare (not safe)) (##fx+ _%k141942%_ '1))
                      (cons (cons (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-binding-id
                                     _%L142002%_))
                                  (cons (gxc#generate-runtime-values-ref
                                         _%vals141936%_
                                         _%k141942%_
                                         _%L142001%_)
                                        '()))
                            _%r141943%_))))
                  (_%__kont146314146315%_
                   (lambda (_%L141977%_)
                     (let ((__tmp147145
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-binding-id
                                           _%L141977%_))
                                        (cons (gxc#generate-runtime-values->list
                                               _%vals141936%_
                                               _%k141942%_)
                                              '()))
                                  '())))
                       (declare (not safe))
                       (__foldl1 cons __tmp147145 _%r141943%_))))
                  (_%__kont146316146317%_ (lambda () (reverse _%r141943%_))))
              (let ((_%g141946141988%_
                     (lambda ()
                       (let ((_%L141977%_ _%__stx146308146309%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%L141977%_))
                             (_%__kont146314146315%_ _%L141977%_)
                             (_%__kont146316146317%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx146308146309%_))
                    (let ((_%e141951142017%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx146308146309%_))))
                      (let ((_%tl141953142022%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e141951142017%_)))
                            (_%hd141952142020%_
                             (let ()
                               (declare (not safe))
                               (##car _%e141951142017%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _%hd141952142020%_))
                            (let ((_%e141954142025%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd141952142020%_))))
                              (if (equal? _%e141954142025%_ '#f)
                                  (_%__kont146310146311%_ _%tl141953142022%_)
                                  (_%__kont146312146313%_
                                   _%tl141953142022%_
                                   _%hd141952142020%_)))
                            (_%__kont146312146313%_
                             _%tl141953142022%_
                             _%hd141952142020%_))))
                    (let () (declare (not safe)) (_%g141946141988%_)))))))))
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_%self141615%_ _%stx141616%_ _%compiled-body?141617%_)
        (letrec ((_%generate-simple141619%_
                  (lambda (_%hd141921%_ _%body141922%_)
                    (gxc#generate-runtime-simple-let
                     _%self141615%_
                     'letrec
                     _%hd141921%_
                     _%body141922%_
                     _%compiled-body?141617%_)))
                 (_%generate-values141620%_
                  (lambda (_%hd141700%_ _%body141701%_)
                    (let _%lp141703%_ ((_%rest141705%_ _%hd141700%_)
                                       (_%bind141706%_ '())
                                       (_%check141707%_ '())
                                       (_%post141708%_ '()))
                      (let* ((_%__stx146382146383%_ _%rest141705%_)
                             (_%g141711141722%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx146382146383%_)))))
                        (let ((_%__kont146384146385%_
                               (lambda (_%L141749%_ _%L141750%_)
                                 (let* ((_%__stx146338146339%_ _%L141750%_)
                                        (_%g141765141790%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx146338146339%_)))))
                                   (let ((_%__kont146340146341%_
                                          (lambda (_%L141897%_ _%L141898%_)
                                            (let ((_%eid141912%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%L141898%_)))
                                                  (_%expr141913%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self141615%_
                                                      _%L141897%_))))
                                              (_%lp141703%_
                                               _%L141749%_
                                               (cons (cons _%eid141912%_
                                                           (cons _%expr141913%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind141706%_)
                                               _%check141707%_
                                               _%post141708%_))))
                                         (_%__kont146342146343%_
                                          (lambda (_%L141811%_ _%L141812%_)
                                            (let* ((_%vals141825%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values141827%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals141825%_
                                                     _%L141812%_
                                                     _%L141811%_))
                                                   (_%refs141829%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals141825%_
                                                     _%L141812%_))
                                                   (_%expr141831%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self141615%_
                                                       _%L141811%_))))
                                              (_%lp141703%_
                                               _%L141749%_
                                               (let ((__tmp147147
                                                      (cons (cons _%vals141825%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr141831%_ '()))
                    _%bind141706%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp147146
                                                      (map (lambda (_%e141833141835%_)
                                                             (let* ((_%g141837141846%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%e141833141835%_)
                            (_%E141839141850%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%g141837141846%_
                                        '([eid _])))
                               '#!void))
                            (_%K141840141855%_
                             (lambda (_%eid141853%_)
                               (cons _%eid141853%_ (cons '#!void '())))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _%g141837141846%_))
                           (let ((_%hd141841141858%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%g141837141846%_)))
                                 (_%tl141842141860%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%g141837141846%_))))
                             (let ((_%eid141863%_ _%hd141841141858%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##pair? _%tl141842141860%_))
                                   (let ((_%tl141844141865%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%tl141842141860%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (##null? _%tl141844141865%_))
                                         (_%K141840141855%_ _%eid141863%_)
                                         (_%E141839141850%_)))
                                   (_%E141839141850%_))))
                           (_%E141839141850%_))))
                   _%refs141829%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (__foldl1
                                                  cons
                                                  __tmp147147
                                                  __tmp147146))
                                               (cons _%check-values141827%_
                                                     _%check141707%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (__foldl1
                                                  cons
                                                  _%refs141829%_
                                                  _%post141708%_)))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx146338146339%_))
                                         (let ((_%e141769141873%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx146338146339%_))))
                                           (let ((_%tl141771141878%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e141769141873%_)))
                                                 (_%hd141770141876%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e141769141873%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd141770141876%_))
                                                 (let ((_%e141772141881%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd141770141876%_))))
                                                   (let ((_%tl141774141886%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e141772141881%_)))
                                                         (_%hd141773141884%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e141772141881%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl141774141886%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl141771141878%_))
                     (let ((_%e141775141889%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl141771141878%_))))
                       (let ((_%tl141777141894%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e141775141889%_)))
                             (_%hd141776141892%_
                              (let ()
                                (declare (not safe))
                                (##car _%e141775141889%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl141777141894%_))
                             (_%__kont146340146341%_
                              _%hd141776141892%_
                              _%hd141773141884%_)
                             (let ()
                               (declare (not safe))
                               (_%g141765141790%_)))))
                     (let () (declare (not safe)) (_%g141765141790%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl141771141878%_))
                     (let ((_%e141783141803%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl141771141878%_))))
                       (let ((_%tl141785141808%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e141783141803%_)))
                             (_%hd141784141806%_
                              (let ()
                                (declare (not safe))
                                (##car _%e141783141803%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl141785141808%_))
                             (_%__kont146342146343%_
                              _%hd141784141806%_
                              _%hd141770141876%_)
                             (let ()
                               (declare (not safe))
                               (_%g141765141790%_)))))
                     (let () (declare (not safe)) (_%g141765141790%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl141771141878%_))
                                                     (let ((_%e141783141803%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl141771141878%_))))
                                                       (let ((_%tl141785141808%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e141783141803%_)))
                     (_%hd141784141806%_
                      (let () (declare (not safe)) (##car _%e141783141803%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl141785141808%_))
                     (_%__kont146342146343%_
                      _%hd141784141806%_
                      _%hd141770141876%_)
                     (let () (declare (not safe)) (_%g141765141790%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g141765141790%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g141765141790%_)))))))
                              (_%__kont146386146387%_
                               (lambda ()
                                 (let* ((_%body141729%_
                                         (if _%compiled-body?141617%_
                                             _%body141701%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self141615%_
                                                _%body141701%_))))
                                        (_%body141731%_
                                         (_%generate-values-post141622%_
                                          _%post141708%_
                                          _%body141729%_))
                                        (_%body141733%_
                                         (_%generate-values-check141621%_
                                          _%check141707%_
                                          _%body141731%_)))
                                   (cons 'letrec
                                         (cons (reverse _%bind141706%_)
                                               (cons _%body141733%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx146382146383%_))
                              (let ((_%e141715141741%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx146382146383%_))))
                                (let ((_%tl141717141746%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141715141741%_)))
                                      (_%hd141716141744%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141715141741%_))))
                                  (_%__kont146384146385%_
                                   _%tl141717141746%_
                                   _%hd141716141744%_)))
                              (_%__kont146386146387%_)))))))
                 (_%generate-values-check141621%_
                  (lambda (_%check141697%_ _%body141698%_)
                    (cons 'begin
                          (let ((__tmp147149 (cons _%body141698%_ '()))
                                (__tmp147148 (reverse _%check141697%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp147149 __tmp147148)))))
                 (_%generate-values-post141622%_
                  (lambda (_%post141690%_ _%body141691%_)
                    (cons 'begin
                          (let ((__tmp147153 (cons _%body141691%_ '()))
                                (__tmp147150
                                 (let ((__tmp147152
                                        (lambda (_%g141692141694%_)
                                          (cons 'set! _%g141692141694%_)))
                                       (__tmp147151 (reverse _%post141690%_)))
                                   (declare (not safe))
                                   (##map __tmp147152 __tmp147151))))
                            (declare (not safe))
                            (__foldr1 cons __tmp147153 __tmp147150))))))
          (let* ((_%g141624141641%_
                  (lambda (_%g141625141638%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g141625141638%_))))
                 (_%g141623141687%_
                  (lambda (_%g141625141644%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g141625141644%_))
                        (let ((_%e141628141646%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g141625141644%_))))
                          (let ((_%hd141629141649%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141628141646%_)))
                                (_%tl141630141651%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141628141646%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl141630141651%_))
                                (let ((_%e141631141654%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl141630141651%_))))
                                  (let ((_%hd141632141657%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e141631141654%_)))
                                        (_%tl141633141659%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e141631141654%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl141633141659%_))
                                        (let ((_%e141634141662%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl141633141659%_))))
                                          (let ((_%hd141635141665%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e141634141662%_)))
                                                (_%tl141636141667%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e141634141662%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl141636141667%_))
                                                ((lambda (_%L141670%_
                                                          _%L141671%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%L141671%_)
                                                       (_%generate-simple141619%_
                                                        _%L141671%_
                                                        _%L141670%_)
                                                       (_%generate-values141620%_
                                                        _%L141671%_
                                                        _%L141670%_)))
                                                 _%hd141635141665%_
                                                 _%hd141632141657%_)
                                                (_%g141624141641%_
                                                 _%g141625141644%_))))
                                        (_%g141624141641%_
                                         _%g141625141644%_))))
                                (_%g141624141641%_ _%g141625141644%_))))
                        (_%g141624141641%_ _%g141625141644%_)))))
            (_%g141623141687%_ _%stx141616%_)))))
    (define gxc#generate-runtime-letrec-values%__0
      (lambda (_%self141927%_ _%stx141928%_)
        (let ((_%compiled-body?141930%_ '#f))
          (gxc#generate-runtime-letrec-values%__%
           _%self141927%_
           _%stx141928%_
           _%compiled-body?141930%_))))
    (define gxc#generate-runtime-letrec-values%
      (lambda _g147155_
        (let ((_g147154_ (let () (declare (not safe)) (##length _g147155_))))
          (cond ((let () (declare (not safe)) (##fx= _g147154_ 2))
                 (apply gxc#generate-runtime-letrec-values%__0 _g147155_))
                ((let () (declare (not safe)) (##fx= _g147154_ 3))
                 (apply gxc#generate-runtime-letrec-values%__% _g147155_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-letrec-values%
                  _g147155_))))))
    (define gxc#generate-runtime-letrec*-values%
      (lambda (_%self141196%_ _%stx141197%_)
        (letrec ((_%generate-values141199%_
                  (lambda (_%hd141442%_ _%body141443%_)
                    (let _%lp141445%_ ((_%rest141447%_ _%hd141442%_)
                                       (_%bind141448%_ '()))
                      (let* ((_%rest141449141457%_ _%rest141447%_)
                             (_%else141451141468%_
                              (lambda ()
                                (let ((_%bind141465%_ (reverse _%bind141448%_))
                                      (_%body141466%_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self141196%_
                                          _%body141443%_))))
                                  (cons 'letrec*
                                        (cons _%bind141465%_
                                              (cons _%body141466%_ '()))))))
                             (_%K141453141602%_
                              (lambda (_%rest141471%_ _%hd-bind141472%_)
                                (let* ((_%__stx146396146397%_
                                        _%hd-bind141472%_)
                                       (_%g141475141500%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx146396146397%_)))))
                                  (let ((_%__kont146398146399%_
                                         (lambda (_%L141581%_ _%L141582%_)
                                           (let ((_%eid141596%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-binding-id*
                                                     _%L141582%_)))
                                                 (_%expr141597%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self141196%_
                                                     _%L141581%_))))
                                             (_%lp141445%_
                                              _%rest141471%_
                                              (cons (cons _%eid141596%_
                                                          (cons _%expr141597%_
                                                                '()))
                                                    _%bind141448%_)))))
                                        (_%__kont146400146401%_
                                         (lambda (_%L141521%_ _%L141522%_)
                                           (let* ((_%vals141541%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%tmp141543%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%check-values141545%_
                                                   (gxc#generate-runtime-check-values
                                                    _%tmp141543%_
                                                    _%L141522%_
                                                    _%L141521%_))
                                                  (_%refs141547%_
                                                   (gxc#generate-runtime-let-values-bind
                                                    _%vals141541%_
                                                    _%L141522%_))
                                                  (_%expr141549%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self141196%_
                                                      _%L141521%_))))
                                             (_%lp141445%_
                                              _%rest141471%_
                                              (let ((__tmp147156
                                                     (cons (cons _%vals141541%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'let
                                     (cons (cons (cons _%tmp141543%_
                                                       (cons _%expr141549%_
                                                             '()))
                                                 '())
                                           (cons _%check-values141545%_
                                                 (cons _%tmp141543%_ '()))))
                               '()))
                   _%bind141448%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 __tmp147156
                                                 _%refs141547%_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx146396146397%_))
                                        (let ((_%e141479141557%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx146396146397%_))))
                                          (let ((_%tl141481141562%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e141479141557%_)))
                                                (_%hd141480141560%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e141479141557%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd141480141560%_))
                                                (let ((_%e141482141565%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd141480141560%_))))
                                                  (let ((_%tl141484141570%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e141482141565%_)))
                                                        (_%hd141483141568%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e141482141565%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl141484141570%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl141481141562%_))
                                                            (let ((_%e141485141573%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl141481141562%_))))
                      (let ((_%tl141487141578%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e141485141573%_)))
                            (_%hd141486141576%_
                             (let ()
                               (declare (not safe))
                               (##car _%e141485141573%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl141487141578%_))
                            (_%__kont146398146399%_
                             _%hd141486141576%_
                             _%hd141483141568%_)
                            (let ()
                              (declare (not safe))
                              (_%g141475141500%_)))))
                    (let () (declare (not safe)) (_%g141475141500%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl141481141562%_))
                    (let ((_%e141493141513%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl141481141562%_))))
                      (let ((_%tl141495141518%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e141493141513%_)))
                            (_%hd141494141516%_
                             (let ()
                               (declare (not safe))
                               (##car _%e141493141513%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl141495141518%_))
                            (_%__kont146400146401%_
                             _%hd141494141516%_
                             _%hd141480141560%_)
                            (let ()
                              (declare (not safe))
                              (_%g141475141500%_)))))
                    (let () (declare (not safe)) (_%g141475141500%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl141481141562%_))
                                                    (let ((_%e141493141513%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl141481141562%_))))
                                                      (let ((_%tl141495141518%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e141493141513%_)))
                    (_%hd141494141516%_
                     (let () (declare (not safe)) (##car _%e141493141513%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl141495141518%_))
                    (_%__kont146400146401%_
                     _%hd141494141516%_
                     _%hd141480141560%_)
                    (let () (declare (not safe)) (_%g141475141500%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g141475141500%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g141475141500%_))))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest141449141457%_))
                            (let ((_%hd141454141605%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest141449141457%_)))
                                  (_%tl141455141607%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest141449141457%_))))
                              (let* ((_%hd-bind141610%_ _%hd141454141605%_)
                                     (_%rest141612%_ _%tl141455141607%_))
                                (_%K141453141602%_
                                 _%rest141612%_
                                 _%hd-bind141610%_)))
                            (_%else141451141468%_))))))
                 (_%generate-letrec?141200%_
                  (lambda (_%hd141332%_)
                    (let _%lp141334%_ ((_%rest141336%_ _%hd141332%_))
                      (let* ((_%rest141337141345%_ _%rest141336%_)
                             (_%else141339141353%_ (lambda () '#t))
                             (_%K141341141430%_
                              (lambda (_%rest141356%_ _%hd-bind141357%_)
                                (let* ((_%g141359141376%_
                                        (lambda (_%g141360141373%_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g141360141373%_))))
                                       (_%g141358141427%_
                                        (lambda (_%g141360141379%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%g141360141379%_))
                                              (let ((_%e141363141381%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%g141360141379%_))))
                                                (let ((_%hd141364141384%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e141363141381%_)))
                                                      (_%tl141365141386%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e141363141381%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd141364141384%_))
                                                      (let ((_%e141366141389%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd141364141384%_))))
                (let ((_%hd141367141392%_
                       (let () (declare (not safe)) (##car _%e141366141389%_)))
                      (_%tl141368141394%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e141366141389%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl141368141394%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl141365141386%_))
                          (let ((_%e141369141397%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl141365141386%_))))
                            (let ((_%hd141370141400%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e141369141397%_)))
                                  (_%tl141371141402%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e141369141397%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl141371141402%_))
                                  ((lambda (_%L141405%_ _%L141406%_)
                                     (if (_%is-lambda-expr?141201%_
                                          _%L141405%_)
                                         (_%lp141334%_ _%rest141356%_)
                                         '#f))
                                   _%hd141370141400%_
                                   _%hd141367141392%_)
                                  (_%g141359141376%_ _%g141360141379%_))))
                          (_%g141359141376%_ _%g141360141379%_))
                      (_%g141359141376%_ _%g141360141379%_))))
              (_%g141359141376%_ _%g141360141379%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g141359141376%_
                                               _%g141360141379%_)))))
                                  (_%g141358141427%_ _%hd-bind141357%_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest141337141345%_))
                            (let ((_%hd141342141433%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest141337141345%_)))
                                  (_%tl141343141435%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest141337141345%_))))
                              (let* ((_%hd-bind141438%_ _%hd141342141433%_)
                                     (_%rest141440%_ _%tl141343141435%_))
                                (_%K141341141430%_
                                 _%rest141440%_
                                 _%hd-bind141438%_)))
                            (_%else141339141353%_))))))
                 (_%is-lambda-expr?141201%_
                  (lambda (_%expr141269%_)
                    (let* ((_%__stx146440146441%_ _%expr141269%_)
                           (_%g141272141286%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx146440146441%_)))))
                      (let ((_%__kont146442146443%_
                             (lambda (_%L141314%_ _%L141315%_) '#t))
                            (_%__kont146444146445%_ (lambda () '#f)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%__stx146440146441%_))
                            (let ((_%e141276141298%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%__stx146440146441%_))))
                              (let ((_%tl141278141303%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e141276141298%_)))
                                    (_%hd141277141301%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e141276141298%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd141277141301%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd141277141301%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl141278141303%_))
                                            (let ((_%e141279141306%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl141278141303%_))))
                                              (let ((_%tl141281141311%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e141279141306%_)))
                                                    (_%hd141280141309%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e141279141306%_))))
                                                (_%__kont146442146443%_
                                                 _%tl141281141311%_
                                                 _%hd141280141309%_)))
                                            (_%__kont146444146445%_))
                                        (_%__kont146444146445%_))
                                    (_%__kont146444146445%_))))
                            (_%__kont146444146445%_)))))))
          (let* ((_%g141203141220%_
                  (lambda (_%g141204141217%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g141204141217%_))))
                 (_%g141202141266%_
                  (lambda (_%g141204141223%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g141204141223%_))
                        (let ((_%e141207141225%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g141204141223%_))))
                          (let ((_%hd141208141228%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141207141225%_)))
                                (_%tl141209141230%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141207141225%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl141209141230%_))
                                (let ((_%e141210141233%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl141209141230%_))))
                                  (let ((_%hd141211141236%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e141210141233%_)))
                                        (_%tl141212141238%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e141210141233%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl141212141238%_))
                                        (let ((_%e141213141241%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl141212141238%_))))
                                          (let ((_%hd141214141244%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e141213141241%_)))
                                                (_%tl141215141246%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e141213141241%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl141215141246%_))
                                                ((lambda (_%L141249%_
                                                          _%L141250%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%L141250%_)
                                                       (if (_%generate-letrec?141200%_
                                                            _%L141250%_)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self141196%_
                                                            'letrec
                                                            _%L141250%_
                                                            _%L141249%_
                                                            '#f)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self141196%_
                                                            'letrec*
                                                            _%L141250%_
                                                            _%L141249%_
                                                            '#f))
                                                       (_%generate-values141199%_
                                                        _%L141250%_
                                                        _%L141249%_)))
                                                 _%hd141214141244%_
                                                 _%hd141211141236%_)
                                                (_%g141203141220%_
                                                 _%g141204141223%_))))
                                        (_%g141203141220%_
                                         _%g141204141223%_))))
                                (_%g141203141220%_ _%g141204141223%_))))
                        (_%g141203141220%_ _%g141204141223%_)))))
            (_%g141202141266%_ _%stx141197%_)))))
    (define gxc#generate-runtime-simple-let?
      (lambda (_%hd141133%_)
        (let _%lp141135%_ ((_%rest141137%_ _%hd141133%_))
          (let* ((_%rest141138141154%_ _%rest141137%_)
                 (_%else141141141162%_ (lambda () '#f)))
            (let ((_%K141144141175%_
                   (lambda (_%rest141173%_) (_%lp141135%_ _%rest141173%_)))
                  (_%K141143141167%_ (lambda () '#t)))
              (let ((_%try-match141140141170%_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _%rest141138141154%_))
                           (_%K141143141167%_)
                           (_%else141141141162%_)))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest141138141154%_))
                    (let ((_%tl141146141180%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest141138141154%_)))
                          (_%hd141145141178%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest141138141154%_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%hd141145141178%_))
                          (let ((_%tl141148141185%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd141145141178%_)))
                                (_%hd141147141183%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd141145141178%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%hd141147141183%_))
                                (let ((_%tl141152141188%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd141147141183%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _%tl141152141188%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl141148141185%_))
                                          (let ((_%tl141150141191%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl141148141185%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##null? _%tl141150141191%_))
                                                (let ((_%rest141194%_
                                                       _%tl141146141180%_))
                                                  (_%lp141135%_
                                                   _%rest141194%_))
                                                (_%else141141141162%_)))
                                          (_%else141141141162%_))
                                      (_%else141141141162%_)))
                                (_%else141141141162%_)))
                          (_%else141141141162%_)))
                    (_%try-match141140141170%_))))))))
    (define gxc#generate-runtime-simple-let
      (lambda (_%self141044%_
               _%form141045%_
               _%hd141046%_
               _%body141047%_
               _%compiled-body?141048%_)
        (letrec ((_%generate1141050%_
                  (lambda (_%bind141089%_)
                    (let* ((_%bind141090141101%_ _%bind141089%_)
                           (_%E141092141105%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%bind141090141101%_
                                       '([[id] expr])))
                              '#!void))
                           (_%K141093141111%_
                            (lambda (_%expr141108%_ _%id141109%_)
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-binding-id*
                                       _%id141109%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self141044%_
                                             _%expr141108%_))
                                          '())))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%bind141090141101%_))
                          (let ((_%hd141094141114%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%bind141090141101%_)))
                                (_%tl141095141116%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%bind141090141101%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%hd141094141114%_))
                                (let ((_%hd141098141119%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd141094141114%_)))
                                      (_%tl141099141121%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd141094141114%_))))
                                  (let ((_%id141124%_ _%hd141098141119%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _%tl141099141121%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _%tl141095141116%_))
                                            (let ((_%hd141096141126%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl141095141116%_)))
                                                  (_%tl141097141128%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl141095141116%_))))
                                              (let ((_%expr141131%_
                                                     _%hd141096141126%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##null? _%tl141097141128%_))
                                                    (_%K141093141111%_
                                                     _%expr141131%_
                                                     _%id141124%_)
                                                    (_%E141092141105%_))))
                                            (_%E141092141105%_))
                                        (_%E141092141105%_))))
                                (_%E141092141105%_)))
                          (_%E141092141105%_))))))
          (let* ((_%bind141052%_ (map _%generate1141050%_ _%hd141046%_))
                 (_%body141054%_
                  (if _%compiled-body?141048%_
                      _%body141047%_
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self141044%_ _%body141047%_))))
                 (_%body141086%_
                  (let* ((_%body141055141063%_ _%body141054%_)
                         (_%else141057141071%_
                          (lambda () (cons _%body141054%_ '())))
                         (_%K141059141076%_
                          (lambda (_%exprs141074%_) _%exprs141074%_)))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%body141055141063%_))
                        (let ((_%hd141060141079%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%body141055141063%_)))
                              (_%tl141061141081%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%body141055141063%_))))
                          (if (let ()
                                (declare (not safe))
                                (##eq? _%hd141060141079%_ 'begin))
                              (let ((_%exprs141084%_ _%tl141061141081%_))
                                (_%K141059141076%_ _%exprs141084%_))
                              (_%else141057141071%_)))
                        (_%else141057141071%_)))))
            (cons _%form141045%_ (cons _%bind141052%_ _%body141086%_))))))
    (define gxc#generate-runtime-quote%
      (lambda (_%self140944%_ _%stx140945%_)
        (letrec ((_%generate1140947%_
                  (lambda (_%datum140999%_)
                    (if (or (null? _%datum140999%_)
                            (let ()
                              (declare (not safe))
                              (interned-symbol? _%datum140999%_))
                            (let ()
                              (declare (not safe))
                              (gx#self-quoting? _%datum140999%_))
                            (eof-object? _%datum140999%_))
                        _%datum140999%_
                        (if (uninterned-symbol? _%datum140999%_)
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__%
                               _%datum140999%_
                               '#t))
                            (if (pair? _%datum140999%_)
                                (cons (_%generate1140947%_
                                       (car _%datum140999%_))
                                      (_%generate1140947%_
                                       (cdr _%datum140999%_)))
                                (if (box? _%datum140999%_)
                                    (box (_%generate1140947%_
                                          (unbox _%datum140999%_)))
                                    (if (vector? _%datum140999%_)
                                        (vector-map
                                         _%generate1140947%_
                                         _%datum140999%_)
                                        (if (or (s8vector? _%datum140999%_)
                                                (u8vector? _%datum140999%_)
                                                (s16vector? _%datum140999%_)
                                                (u16vector? _%datum140999%_)
                                                (s32vector? _%datum140999%_)
                                                (u32vector? _%datum140999%_)
                                                (s64vector? _%datum140999%_)
                                                (u64vector? _%datum140999%_)
                                                (f32vector? _%datum140999%_)
                                                (f64vector? _%datum140999%_))
                                            _%datum140999%_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot compile non-primitive quote"
                                               _%stx140945%_)))))))))))
          (let* ((_%g140949140962%_
                  (lambda (_%g140950140959%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g140950140959%_))))
                 (_%g140948140996%_
                  (lambda (_%g140950140965%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g140950140965%_))
                        (let ((_%e140952140967%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g140950140965%_))))
                          (let ((_%hd140953140970%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140952140967%_)))
                                (_%tl140954140972%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140952140967%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl140954140972%_))
                                (let ((_%e140955140975%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl140954140972%_))))
                                  (let ((_%hd140956140978%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e140955140975%_)))
                                        (_%tl140957140980%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e140955140975%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl140957140980%_))
                                        ((lambda (_%L140983%_)
                                           (cons 'quote
                                                 (cons (_%generate1140947%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%L140983%_)))
                                                       '())))
                                         _%hd140956140978%_)
                                        (_%g140949140962%_
                                         _%g140950140965%_))))
                                (_%g140949140962%_ _%g140950140965%_))))
                        (_%g140949140962%_ _%g140950140965%_)))))
            (_%g140948140996%_ _%stx140945%_)))))
    (define gxc#generate-runtime-call%
      (lambda (_%self140385%_ _%stx140386%_)
        (letrec ((_%compile-call140388%_
                  (lambda (_%rator140677%_ _%rands140678%_)
                    (let ((_%rator140684%_
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self140385%_
                              _%rator140677%_)))
                          (_%rands140685%_
                           (map (lambda (_%g140679140681%_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%self140385%_
                                     _%g140679140681%_)))
                                _%rands140678%_)))
                      (let* ((_%__stx146487146488%_ _%rator140684%_)
                             (_%g140688140740%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx146487146488%_)))))
                        (let ((_%__kont146489146490%_
                               (lambda (_%L140864%_
                                        _%L140865%_
                                        _%L140866%_
                                        _%L140867%_)
                                 (if (let ((__tmp147159
                                            (let ()
                                              (declare (not safe))
                                              (##length _%rands140685%_)))
                                           (__tmp147157
                                            (length (let ((__tmp147158
                                                           (lambda (_%g140903140906%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g140904140908%_)
                     (cons _%g140903140906%_ _%g140904140908%_))))
              (declare (not safe))
              (__foldr1 __tmp147158 '() _%L140866%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp147159 __tmp147157))
                                     (let* ((_%id140911%_ _%L140867%_)
                                            (_%args140920%_
                                             (let ((__tmp147160
                                                    (lambda (_%g140912140915%_
                                                             _%g140913140917%_)
                                                      (cons _%g140912140915%_
                                                            _%g140913140917%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp147160
                                                '()
                                                _%L140866%_)))
                                            (_%body140929%_
                                             (let ((__tmp147161
                                                    (lambda (_%g140921140924%_
                                                             _%g140922140926%_)
                                                      (cons _%g140921140924%_
                                                            _%g140922140926%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp147161
                                                '()
                                                _%L140865%_)))
                                            (_%init140931%_
                                             (map list
                                                  _%args140920%_
                                                  _%rands140685%_)))
                                       (cons 'let
                                             (cons _%id140911%_
                                                   (cons _%init140931%_
                                                         _%body140929%_))))
                                     (let ((__tmp147162
                                            (let ((__tmp147163
                                                   (lambda (_%g140933140936%_
                                                            _%g140934140938%_)
                                                     (cons _%g140933140936%_
                                                           _%g140934140938%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp147163
                                               '()
                                               _%L140866%_))))
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Illegal loop application; arity mismatch"
                                        _%stx140386%_
                                        __tmp147162
                                        _%rands140685%_)))))
                              (_%__kont146495146496%_
                               (lambda ()
                                 (cons _%rator140684%_ _%rands140685%_))))
                          (let ((_%__match146554146555%_
                                 (lambda (_%e140694140752%_
                                          _%hd140695140755%_
                                          _%tl140696140757%_
                                          _%e140697140760%_
                                          _%hd140698140763%_
                                          _%tl140699140765%_
                                          _%e140700140768%_
                                          _%hd140701140771%_
                                          _%tl140702140773%_
                                          _%e140703140776%_
                                          _%hd140704140779%_
                                          _%tl140705140781%_
                                          _%e140706140784%_
                                          _%hd140707140787%_
                                          _%tl140708140789%_
                                          _%e140709140792%_
                                          _%hd140710140795%_
                                          _%tl140711140797%_
                                          _%e140712140800%_
                                          _%hd140713140803%_
                                          _%tl140714140805%_
                                          _%__splice146491146492%_
                                          _%target140715140808%_
                                          _%tl140717140810%_)
                                   (letrec ((_%loop140718140813%_
                                             (lambda (_%hd140716140816%_
                                                      _%arg140722140818%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%hd140716140816%_))
                                                   (let ((_%e140719140821%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%hd140716140816%_))))
                                                     (let ((_%lp-tl140721140826%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e140719140821%_)))
                                                           (_%lp-hd140720140824%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e140719140821%_))))
                                                       (_%loop140718140813%_
                                                        _%lp-tl140721140826%_
                                                        (cons _%lp-hd140720140824%_
                                                              _%arg140722140818%_))))
                                                   (let ((_%arg140723140829%_
                                                          (reverse _%arg140722140818%_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _%tl140714140805%_))
                                                         (let ((_%__splice146493146494%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice _%tl140714140805%_ '0))))
                   (let ((_%tl140726140834%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice146493146494%_ '1)))
                         (_%target140724140832%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice146493146494%_ '0))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl140726140834%_))
                         (letrec ((_%loop140727140837%_
                                   (lambda (_%hd140725140840%_
                                            _%body140731140842%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd140725140840%_))
                                         (let ((_%e140728140845%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd140725140840%_))))
                                           (let ((_%lp-tl140730140850%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e140728140845%_)))
                                                 (_%lp-hd140729140848%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e140728140845%_))))
                                             (_%loop140727140837%_
                                              _%lp-tl140730140850%_
                                              (cons _%lp-hd140729140848%_
                                                    _%body140731140842%_))))
                                         (let ((_%body140732140853%_
                                                (reverse _%body140731140842%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%tl140708140789%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl140702140773%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl140699140765%_))
                                                       (let ((_%e140733140856%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl140699140765%_))))
                 (let ((_%tl140735140861%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e140733140856%_)))
                       (_%hd140734140859%_
                        (let ()
                          (declare (not safe))
                          (##car _%e140733140856%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl140735140861%_))
                       (let ((_%L140864%_ _%hd140734140859%_)
                             (_%L140865%_ _%body140732140853%_)
                             (_%L140866%_ _%arg140723140829%_)
                             (_%L140867%_ _%hd140704140779%_))
                         (if (eq? _%L140867%_ _%L140864%_)
                             (_%__kont146489146490%_
                              _%L140864%_
                              _%L140865%_
                              _%L140866%_
                              _%L140867%_)
                             (_%__kont146495146496%_)))
                       (_%__kont146495146496%_))))
               (_%__kont146495146496%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont146495146496%_))
                                               (_%__kont146495146496%_)))))))
                           (_%loop140727140837%_ _%target140724140832%_ '()))
                         (_%__kont146495146496%_))))
                 (_%__kont146495146496%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%loop140718140813%_
                                      _%target140715140808%_
                                      '())))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx146487146488%_))
                                (let ((_%e140694140752%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx146487146488%_))))
                                  (let ((_%tl140696140757%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e140694140752%_)))
                                        (_%hd140695140755%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e140694140752%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd140695140755%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               'letrec
                                               _%hd140695140755%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl140696140757%_))
                                                (let ((_%e140697140760%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl140696140757%_))))
                                                  (let ((_%tl140699140765%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e140697140760%_)))
                                                        (_%hd140698140763%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e140697140760%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd140698140763%_))
                                                        (let ((_%e140700140768%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd140698140763%_))))
                  (let ((_%tl140702140773%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e140700140768%_)))
                        (_%hd140701140771%_
                         (let ()
                           (declare (not safe))
                           (##car _%e140700140768%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd140701140771%_))
                        (let ((_%e140703140776%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd140701140771%_))))
                          (let ((_%tl140705140781%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140703140776%_)))
                                (_%hd140704140779%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140703140776%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl140705140781%_))
                                (let ((_%e140706140784%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl140705140781%_))))
                                  (let ((_%tl140708140789%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e140706140784%_)))
                                        (_%hd140707140787%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e140706140784%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd140707140787%_))
                                        (let ((_%e140709140792%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd140707140787%_))))
                                          (let ((_%tl140711140797%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e140709140792%_)))
                                                (_%hd140710140795%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e140709140792%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd140710140795%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       'lambda
                                                       _%hd140710140795%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl140711140797%_))
                                                        (let ((_%e140712140800%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl140711140797%_))))
                  (let ((_%tl140714140805%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e140712140800%_)))
                        (_%hd140713140803%_
                         (let ()
                           (declare (not safe))
                           (##car _%e140712140800%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%hd140713140803%_))
                        (let ((_%__splice146491146492%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%hd140713140803%_
                                  '0))))
                          (let ((_%tl140717140810%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice146491146492%_ '1)))
                                (_%target140715140808%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _%__splice146491146492%_
                                    '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl140717140810%_))
                                (_%__match146554146555%_
                                 _%e140694140752%_
                                 _%hd140695140755%_
                                 _%tl140696140757%_
                                 _%e140697140760%_
                                 _%hd140698140763%_
                                 _%tl140699140765%_
                                 _%e140700140768%_
                                 _%hd140701140771%_
                                 _%tl140702140773%_
                                 _%e140703140776%_
                                 _%hd140704140779%_
                                 _%tl140705140781%_
                                 _%e140706140784%_
                                 _%hd140707140787%_
                                 _%tl140708140789%_
                                 _%e140709140792%_
                                 _%hd140710140795%_
                                 _%tl140711140797%_
                                 _%e140712140800%_
                                 _%hd140713140803%_
                                 _%tl140714140805%_
                                 _%__splice146491146492%_
                                 _%target140715140808%_
                                 _%tl140717140810%_)
                                (_%__kont146495146496%_))))
                        (_%__kont146495146496%_))))
                (_%__kont146495146496%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont146495146496%_))
                                                (_%__kont146495146496%_))))
                                        (_%__kont146495146496%_))))
                                (_%__kont146495146496%_))))
                        (_%__kont146495146496%_))))
                (_%__kont146495146496%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont146495146496%_))
                                            (_%__kont146495146496%_))
                                        (_%__kont146495146496%_))))
                                (_%__kont146495146496%_)))))))))
          (let* ((_%g140390140413%_
                  (lambda (_%g140391140410%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g140391140410%_))))
                 (_%g140389140674%_
                  (lambda (_%g140391140416%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g140391140416%_))
                        (let ((_%e140394140418%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g140391140416%_))))
                          (let ((_%hd140395140421%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140394140418%_)))
                                (_%tl140396140423%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140394140418%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl140396140423%_))
                                (let ((_%e140397140426%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl140396140423%_))))
                                  (let ((_%hd140398140429%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e140397140426%_)))
                                        (_%tl140399140431%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e140397140426%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl140399140431%_))
                                        (let ((_g147164_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl140399140431%_
                                                  '0))))
                                          (begin
                                            (let ((_g147165_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g147164_)
                                                         (##vector-length
                                                          _g147164_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g147165_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g147165_)))
                                            (let ((_%target140400140434%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g147164_
                                                      0)))
                                                  (_%tl140402140436%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g147164_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl140402140436%_))
                                                  (letrec ((_%loop140403140439%_
                                                            (lambda (_%hd140401140442%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%rand140407140444%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd140401140442%_))
                          (let ((_%e140404140447%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd140401140442%_))))
                            (let ((_%lp-hd140405140450%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e140404140447%_)))
                                  (_%lp-tl140406140452%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e140404140447%_))))
                              (_%loop140403140439%_
                               _%lp-tl140406140452%_
                               (cons _%lp-hd140405140450%_
                                     _%rand140407140444%_))))
                          (let ((_%rand140408140455%_
                                 (reverse _%rand140407140444%_)))
                            ((lambda (_%L140458%_ _%L140459%_)
                               (if (gxc#current-compile-decls-unsafe?)
                                   (_%compile-call140388%_
                                    _%L140459%_
                                    (let ((__tmp147166
                                           (lambda (_%g140476140479%_
                                                    _%g140477140481%_)
                                             (cons _%g140476140479%_
                                                   _%g140477140481%_))))
                                      (declare (not safe))
                                      (__foldr1 __tmp147166 '() _%L140458%_)))
                                   (let* ((_%__stx146603146604%_ _%L140459%_)
                                          (_%g140485140497%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%__stx146603146604%_)))))
                                     (let ((_%__kont146605146606%_
                                            (lambda ()
                                              (let ((_%f140534%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self140385%_
                                                        _%L140459%_))))
                                                (if (and (let ((__tmp147167
                                                                (symbol->string
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%f140534%_)))
                   (declare (not safe))
                   (##string-prefix? '"##" __tmp147167))
                 (not (let ()
                        (declare (not safe))
                        (##memq _%f140534%_ gxc#checked-primitives))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let _%lp140536%_ ((_%rest140539%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (reverse (let ((__tmp147169
                                                (lambda (_%g140656140659%_
                                                         _%g140657140661%_)
                                                  (cons _%g140656140659%_
                                                        _%g140657140661%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            __tmp147169
                                            '()
                                            _%L140458%_))))
                               (_%bind140541%_ '())
                               (_%args140542%_ '()))
              (let* ((_%rest140543140551%_ _%rest140539%_)
                     (_%else140545140559%_
                      (lambda ()
                        (cons 'let
                              (cons _%bind140541%_
                                    (cons '(declare (not safe))
                                          (cons (cons _%f140534%_
                                                      _%args140542%_)
                                                '()))))))
                     (_%K140547140645%_
                      (lambda (_%rest140562%_ _%e140563%_)
                        (let* ((_%__stx146557146558%_ _%e140563%_)
                               (_%g140568140586%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%__stx146557146558%_)))))
                          (let ((_%__kont146559146560%_
                                 (lambda ()
                                   (_%lp140536%_
                                    _%rest140562%_
                                    _%bind140541%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e140563%_))
                                          _%args140542%_))))
                                (_%__kont146561146562%_
                                 (lambda ()
                                   (_%lp140536%_
                                    _%rest140562%_
                                    _%bind140541%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e140563%_))
                                          _%args140542%_))))
                                (_%__kont146563146564%_
                                 (lambda ()
                                   (let ((_%tmp140593%_
                                          (let ((__tmp147168
                                                 (let ()
                                                   (declare (not safe))
                                                   (##gensym '__tmp))))
                                            (declare (not safe))
                                            (make-symbol__0 __tmp147168))))
                                     (_%lp140536%_
                                      _%rest140562%_
                                      (cons (cons _%tmp140593%_
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__0
                                                           _%e140563%_))
                                                        '()))
                                            _%bind140541%_)
                                      (cons _%tmp140593%_ _%args140542%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx146557146558%_))
                                (let ((_%e140570140624%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx146557146558%_))))
                                  (let ((_%tl140572140629%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e140570140624%_)))
                                        (_%hd140571140627%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e140570140624%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd140571140627%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd140571140627%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl140572140629%_))
                                                (let ((_%e140573140632%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl140572140629%_))))
                                                  (let ((_%tl140575140637%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e140573140632%_)))
                                                        (_%hd140574140635%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e140573140632%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl140575140637%_))
                                                        (_%__kont146559146560%_)
                                                        (_%__kont146563146564%_))))
                                                (_%__kont146563146564%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#quote
                                                   _%hd140571140627%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl140572140629%_))
                                                    (let ((_%e140579140609%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl140572140629%_))))
                                                      (let ((_%tl140581140614%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e140579140609%_)))
                    (_%hd140580140612%_
                     (let () (declare (not safe)) (##car _%e140579140609%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl140581140614%_))
                    (_%__kont146561146562%_)
                    (_%__kont146563146564%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont146563146564%_))
                                                (_%__kont146563146564%_)))
                                        (_%__kont146563146564%_))))
                                (_%__kont146563146564%_)))))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest140543140551%_))
                    (let ((_%hd140548140648%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest140543140551%_)))
                          (_%tl140549140650%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest140543140551%_))))
                      (let* ((_%e140653%_ _%hd140548140648%_)
                             (_%rest140655%_ _%tl140549140650%_))
                        (_%K140547140645%_ _%rest140655%_ _%e140653%_)))
                    (_%else140545140559%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%compile-call140388%_
                                                     _%L140459%_
                                                     (let ((__tmp147170
                                                            (lambda (_%g140663140666%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g140664140668%_)
                      (cons _%g140663140666%_ _%g140664140668%_))))
               (declare (not safe))
               (__foldr1 __tmp147170 '() _%L140458%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%__kont146607146608%_
                                            (lambda ()
                                              (_%compile-call140388%_
                                               _%L140459%_
                                               (let ((__tmp147171
                                                      (lambda (_%g140503140506%_
                                                               _%g140504140508%_)
                                                        (cons _%g140503140506%_
                                                              _%g140504140508%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp147171
                                                  '()
                                                  _%L140458%_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%__stx146603146604%_))
                                           (let ((_%e140487140516%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%__stx146603146604%_))))
                                             (let ((_%tl140489140521%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e140487140516%_)))
                                                   (_%hd140488140519%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e140487140516%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd140488140519%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#ref
                                                          _%hd140488140519%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl140489140521%_))
                                                           (let ((_%e140490140524%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl140489140521%_))))
                     (let ((_%tl140492140529%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e140490140524%_)))
                           (_%hd140491140527%_
                            (let ()
                              (declare (not safe))
                              (##car _%e140490140524%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl140492140529%_))
                           (_%__kont146605146606%_)
                           (_%__kont146607146608%_))))
                   (_%__kont146607146608%_))
               (_%__kont146607146608%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont146607146608%_))))
                                           (_%__kont146607146608%_))))))
                             _%rand140408140455%_
                             _%hd140398140429%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop140403140439%_
                                                     _%target140400140434%_
                                                     '()))
                                                  (_%g140390140413%_
                                                   _%g140391140416%_)))))
                                        (_%g140390140413%_
                                         _%g140391140416%_))))
                                (_%g140390140413%_ _%g140391140416%_))))
                        (_%g140390140413%_ _%g140391140416%_)))))
            (_%g140389140674%_ _%stx140386%_)))))
    (define gxc#generate-runtime-call-unchecked%
      (lambda (_%self140128%_ _%stx140129%_)
        (let* ((_%__stx146675146676%_ _%stx140129%_)
               (_%g140132140161%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx146675146676%_)))))
          (let ((_%__kont146677146678%_
                 (lambda (_%L140229%_ _%L140230%_)
                   (if (gxc#current-compile-decls-unsafe?)
                       (gxc#generate-runtime-call%
                        _%self140128%_
                        _%stx140129%_)
                       (let ((_%f140252%_
                              (let ((__tmp147172
                                     (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f '%#ref))
                                           (cons _%L140230%_ '()))))
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self140128%_
                                 __tmp147172))))
                         (let _%lp140254%_ ((_%rest140257%_
                                             (reverse (let ((__tmp147174
                                                             (lambda (_%g140374140377%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g140375140379%_)
                       (cons _%g140374140377%_ _%g140375140379%_))))
                (declare (not safe))
                (__foldr1 __tmp147174 '() _%L140229%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%bind140259%_ '())
                                            (_%args140260%_ '()))
                           (let* ((_%rest140261140269%_ _%rest140257%_)
                                  (_%else140263140277%_
                                   (lambda ()
                                     (cons 'let
                                           (cons _%bind140259%_
                                                 (cons '(declare (not safe))
                                                       (cons (cons _%f140252%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%args140260%_)
                     '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%K140265140363%_
                                   (lambda (_%rest140280%_ _%e140281%_)
                                     (let* ((_%__stx146629146630%_ _%e140281%_)
                                            (_%g140286140304%_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%__stx146629146630%_)))))
                                       (let ((_%__kont146631146632%_
                                              (lambda ()
                                                (_%lp140254%_
                                                 _%rest140280%_
                                                 _%bind140259%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e140281%_))
                                                       _%args140260%_))))
                                             (_%__kont146633146634%_
                                              (lambda ()
                                                (_%lp140254%_
                                                 _%rest140280%_
                                                 _%bind140259%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e140281%_))
                                                       _%args140260%_))))
                                             (_%__kont146635146636%_
                                              (lambda ()
                                                (let ((_%tmp140311%_
                                                       (let ((__tmp147173
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##gensym '__tmp))))
                 (declare (not safe))
                 (make-symbol__0 __tmp147173))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%lp140254%_
                                                   _%rest140280%_
                                                   (cons (cons _%tmp140311%_
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__0 _%e140281%_))
                             '()))
                 _%bind140259%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _%tmp140311%_
                                                         _%args140260%_))))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%__stx146629146630%_))
                                             (let ((_%e140288140342%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%__stx146629146630%_))))
                                               (let ((_%tl140290140347%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e140288140342%_)))
                                                     (_%hd140289140345%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e140288140342%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd140289140345%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#ref
                                                            _%hd140289140345%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl140290140347%_))
                     (let ((_%e140291140350%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl140290140347%_))))
                       (let ((_%tl140293140355%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e140291140350%_)))
                             (_%hd140292140353%_
                              (let ()
                                (declare (not safe))
                                (##car _%e140291140350%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl140293140355%_))
                             (_%__kont146631146632%_)
                             (_%__kont146635146636%_))))
                     (_%__kont146635146636%_))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-eq? '%#quote _%hd140289140345%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl140290140347%_))
                         (let ((_%e140297140327%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl140290140347%_))))
                           (let ((_%tl140299140332%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e140297140327%_)))
                                 (_%hd140298140330%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e140297140327%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl140299140332%_))
                                 (_%__kont146633146634%_)
                                 (_%__kont146635146636%_))))
                         (_%__kont146635146636%_))
                     (_%__kont146635146636%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont146635146636%_))))
                                             (_%__kont146635146636%_)))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%rest140261140269%_))
                                 (let ((_%hd140266140366%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%rest140261140269%_)))
                                       (_%tl140267140368%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest140261140269%_))))
                                   (let* ((_%e140371%_ _%hd140266140366%_)
                                          (_%rest140373%_ _%tl140267140368%_))
                                     (_%K140265140363%_
                                      _%rest140373%_
                                      _%e140371%_)))
                                 (_%else140263140277%_))))))))
                (_%__kont146681146682%_
                 (lambda ()
                   (gxc#generate-runtime-call% _%self140128%_ _%stx140129%_))))
            (let ((_%__match146720146721%_
                   (lambda (_%e140136140173%_
                            _%hd140137140176%_
                            _%tl140138140178%_
                            _%e140139140181%_
                            _%hd140140140184%_
                            _%tl140141140186%_
                            _%e140142140189%_
                            _%hd140143140192%_
                            _%tl140144140194%_
                            _%e140145140197%_
                            _%hd140146140200%_
                            _%tl140147140202%_
                            _%__splice146679146680%_
                            _%target140148140205%_
                            _%tl140150140207%_)
                     (letrec ((_%loop140151140210%_
                               (lambda (_%hd140149140213%_
                                        _%rand140155140215%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd140149140213%_))
                                     (let ((_%e140152140218%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd140149140213%_))))
                                       (let ((_%lp-tl140154140223%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e140152140218%_)))
                                             (_%lp-hd140153140221%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e140152140218%_))))
                                         (_%loop140151140210%_
                                          _%lp-tl140154140223%_
                                          (cons _%lp-hd140153140221%_
                                                _%rand140155140215%_))))
                                     (let ((_%rand140156140226%_
                                            (reverse _%rand140155140215%_)))
                                       (_%__kont146677146678%_
                                        _%rand140156140226%_
                                        _%hd140146140200%_))))))
                       (_%loop140151140210%_ _%target140148140205%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx146675146676%_))
                  (let ((_%e140136140173%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx146675146676%_))))
                    (let ((_%tl140138140178%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e140136140173%_)))
                          (_%hd140137140176%_
                           (let ()
                             (declare (not safe))
                             (##car _%e140136140173%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl140138140178%_))
                          (let ((_%e140139140181%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl140138140178%_))))
                            (let ((_%tl140141140186%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e140139140181%_)))
                                  (_%hd140140140184%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e140139140181%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd140140140184%_))
                                  (let ((_%e140142140189%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd140140140184%_))))
                                    (let ((_%tl140144140194%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e140142140189%_)))
                                          (_%hd140143140192%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e140142140189%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd140143140192%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd140143140192%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl140144140194%_))
                                                  (let ((_%e140145140197%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl140144140194%_))))
                                                    (let ((_%tl140147140202%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e140145140197%_)))
                                                          (_%hd140146140200%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e140145140197%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl140147140202%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl140141140186%_))
                      (let ((_%__splice146679146680%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl140141140186%_
                                '0))))
                        (let ((_%tl140150140207%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice146679146680%_ '1)))
                              (_%target140148140205%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice146679146680%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl140150140207%_))
                              (_%__match146720146721%_
                               _%e140136140173%_
                               _%hd140137140176%_
                               _%tl140138140178%_
                               _%e140139140181%_
                               _%hd140140140184%_
                               _%tl140141140186%_
                               _%e140142140189%_
                               _%hd140143140192%_
                               _%tl140144140194%_
                               _%e140145140197%_
                               _%hd140146140200%_
                               _%tl140147140202%_
                               _%__splice146679146680%_
                               _%target140148140205%_
                               _%tl140150140207%_)
                              (_%__kont146681146682%_))))
                      (_%__kont146681146682%_))
                  (_%__kont146681146682%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont146681146682%_))
                                              (_%__kont146681146682%_))
                                          (_%__kont146681146682%_))))
                                  (_%__kont146681146682%_))))
                          (_%__kont146681146682%_))))
                  (_%__kont146681146682%_)))))))
    (define gxc#generate-runtime-if%
      (lambda (_%self139940%_ _%stx139941%_)
        (letrec ((_%simplify139943%_
                  (lambda (_%code140028%_)
                    (let* ((_%code140029140047%_ _%code140028%_)
                           (_%else140031140055%_ (lambda () _%code140028%_))
                           (_%K140033140091%_
                            (lambda (_%expr140058%_ _%test140059%_)
                              (let* ((_%expr140060140068%_ _%expr140058%_)
                                     (_%else140062140076%_
                                      (lambda ()
                                        (cons 'and
                                              (cons _%test140059%_
                                                    (cons _%expr140058%_
                                                          '())))))
                                     (_%K140064140081%_
                                      (lambda (_%exprs140079%_)
                                        (cons 'and
                                              (cons _%test140059%_
                                                    _%exprs140079%_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%expr140060140068%_))
                                    (let ((_%hd140065140084%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%expr140060140068%_)))
                                          (_%tl140066140086%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%expr140060140068%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _%hd140065140084%_ 'and))
                                          (let ((_%exprs140089%_
                                                 _%tl140066140086%_))
                                            (_%K140064140081%_
                                             _%exprs140089%_))
                                          (_%else140062140076%_)))
                                    (_%else140062140076%_))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%code140029140047%_))
                          (let ((_%hd140034140094%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%code140029140047%_)))
                                (_%tl140035140096%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%code140029140047%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##eq? _%hd140034140094%_ 'if))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%tl140035140096%_))
                                    (let ((_%hd140036140099%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl140035140096%_)))
                                          (_%tl140037140101%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl140035140096%_))))
                                      (let ((_%test140104%_
                                             _%hd140036140099%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _%tl140037140101%_))
                                            (let ((_%hd140038140106%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl140037140101%_)))
                                                  (_%tl140039140108%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl140037140101%_))))
                                              (let ((_%expr140111%_
                                                     _%hd140038140106%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _%tl140039140108%_))
                                                    (let ((_%hd140040140113%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl140039140108%_)))
                                                          (_%tl140041140115%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl140039140108%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##pair? _%hd140040140113%_))
                                                          (let ((_%hd140042140118%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%hd140040140113%_)))
                        (_%tl140043140120%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%hd140040140113%_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _%hd140042140118%_ 'quote))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl140043140120%_))
                            (let ((_%hd140044140123%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%tl140043140120%_)))
                                  (_%tl140045140125%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%tl140043140120%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd140044140123%_ '#f))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _%tl140045140125%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl140041140115%_))
                                          (_%K140033140091%_
                                           _%expr140111%_
                                           _%test140104%_)
                                          (_%else140031140055%_))
                                      (_%else140031140055%_))
                                  (_%else140031140055%_)))
                            (_%else140031140055%_))
                        (_%else140031140055%_)))
                  (_%else140031140055%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else140031140055%_))))
                                            (_%else140031140055%_))))
                                    (_%else140031140055%_))
                                (_%else140031140055%_)))
                          (_%else140031140055%_))))))
          (let* ((_%g139945139966%_
                  (lambda (_%g139946139963%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g139946139963%_))))
                 (_%g139944140025%_
                  (lambda (_%g139946139969%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g139946139969%_))
                        (let ((_%e139950139971%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g139946139969%_))))
                          (let ((_%hd139951139974%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e139950139971%_)))
                                (_%tl139952139976%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e139950139971%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl139952139976%_))
                                (let ((_%e139953139979%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl139952139976%_))))
                                  (let ((_%hd139954139982%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e139953139979%_)))
                                        (_%tl139955139984%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e139953139979%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl139955139984%_))
                                        (let ((_%e139956139987%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl139955139984%_))))
                                          (let ((_%hd139957139990%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e139956139987%_)))
                                                (_%tl139958139992%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e139956139987%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl139958139992%_))
                                                (let ((_%e139959139995%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl139958139992%_))))
                                                  (let ((_%hd139960139998%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e139959139995%_)))
                                                        (_%tl139961140000%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e139959139995%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl139961140000%_))
                                                        ((lambda (_%L140003%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L140004%_
                          _%L140005%_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#current-compile-boolean-context))
                       (_%simplify139943%_
                        (cons 'if
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _%self139940%_
                                       _%L140005%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self139940%_
                                             _%L140004%_))
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self139940%_
                                                   _%L140003%_))
                                                '())))))
                       (cons 'if
                             (cons (let ((__tmp147175
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self139940%_
                                               _%L140005%_)))))
                                     (declare (not safe))
                                     (__call-with-parameters
                                      __tmp147175
                                      gxc#current-compile-boolean-context
                                      '#t))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self139940%_
                                            _%L140004%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self139940%_
                                                  _%L140003%_))
                                               '()))))))
                 _%hd139960139998%_
                 _%hd139957139990%_
                 _%hd139954139982%_)
                (_%g139945139966%_ _%g139946139969%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g139945139966%_
                                                 _%g139946139969%_))))
                                        (_%g139945139966%_
                                         _%g139946139969%_))))
                                (_%g139945139966%_ _%g139946139969%_))))
                        (_%g139945139966%_ _%g139946139969%_)))))
            (_%g139944140025%_ _%stx139941%_)))))
    (define gxc#generate-runtime-ref%
      (lambda (_%self139888%_ _%stx139889%_)
        (let* ((_%g139891139904%_
                (lambda (_%g139892139901%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g139892139901%_))))
               (_%g139890139937%_
                (lambda (_%g139892139907%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g139892139907%_))
                      (let ((_%e139894139909%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g139892139907%_))))
                        (let ((_%hd139895139912%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e139894139909%_)))
                              (_%tl139896139914%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e139894139909%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl139896139914%_))
                              (let ((_%e139897139917%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl139896139914%_))))
                                (let ((_%hd139898139920%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e139897139917%_)))
                                      (_%tl139899139922%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e139897139917%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl139899139922%_))
                                      ((lambda (_%L139925%_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#generate-runtime-binding-id
                                            _%L139925%_)))
                                       _%hd139898139920%_)
                                      (_%g139891139904%_ _%g139892139907%_))))
                              (_%g139891139904%_ _%g139892139907%_))))
                      (_%g139891139904%_ _%g139892139907%_)))))
          (_%g139890139937%_ _%stx139889%_))))
    (define gxc#generate-runtime-setq%
      (lambda (_%self139820%_ _%stx139821%_)
        (let* ((_%g139823139840%_
                (lambda (_%g139824139837%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g139824139837%_))))
               (_%g139822139885%_
                (lambda (_%g139824139843%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g139824139843%_))
                      (let ((_%e139827139845%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g139824139843%_))))
                        (let ((_%hd139828139848%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e139827139845%_)))
                              (_%tl139829139850%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e139827139845%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl139829139850%_))
                              (let ((_%e139830139853%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl139829139850%_))))
                                (let ((_%hd139831139856%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e139830139853%_)))
                                      (_%tl139832139858%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e139830139853%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl139832139858%_))
                                      (let ((_%e139833139861%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl139832139858%_))))
                                        (let ((_%hd139834139864%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e139833139861%_)))
                                              (_%tl139835139866%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e139833139861%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl139835139866%_))
                                              ((lambda (_%L139869%_
                                                        _%L139870%_)
                                                 (cons 'set!
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#generate-runtime-binding-id _%L139870%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _%self139820%_ _%L139869%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd139834139864%_
                                               _%hd139831139856%_)
                                              (_%g139823139840%_
                                               _%g139824139843%_))))
                                      (_%g139823139840%_ _%g139824139843%_))))
                              (_%g139823139840%_ _%g139824139843%_))))
                      (_%g139823139840%_ _%g139824139843%_)))))
          (_%g139822139885%_ _%stx139821%_))))
    (define gxc#generate-runtime-struct-instancep%
      (lambda (_%self139631%_ _%stx139632%_)
        (let* ((_%g139634139651%_
                (lambda (_%g139635139648%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g139635139648%_))))
               (_%g139633139817%_
                (lambda (_%g139635139654%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g139635139654%_))
                      (let ((_%e139638139656%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g139635139654%_))))
                        (let ((_%hd139639139659%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e139638139656%_)))
                              (_%tl139640139661%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e139638139656%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl139640139661%_))
                              (let ((_%e139641139664%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl139640139661%_))))
                                (let ((_%hd139642139667%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e139641139664%_)))
                                      (_%tl139643139669%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e139641139664%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl139643139669%_))
                                      (let ((_%e139644139672%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl139643139669%_))))
                                        (let ((_%hd139645139675%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e139644139672%_)))
                                              (_%tl139646139677%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e139644139672%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl139646139677%_))
                                              ((lambda (_%L139680%_
                                                        _%L139681%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self139631%_ _%L139680%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _%self139631%_ _%L139681%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp139696%_ ((_%rest139699%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L139681%_ (cons _%L139680%_ '())))
                                (_%bind139701%_ '())
                                (_%args139702%_ '()))
               (let* ((_%rest139703139711%_ _%rest139699%_)
                      (_%else139705139719%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind139701%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-instance-of?
                                                       _%args139702%_)
                                                 '()))))))
                      (_%K139707139805%_
                       (lambda (_%rest139722%_ _%e139723%_)
                         (let* ((_%__stx146723146724%_ _%e139723%_)
                                (_%g139728139746%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx146723146724%_)))))
                           (let ((_%__kont146725146726%_
                                  (lambda ()
                                    (_%lp139696%_
                                     _%rest139722%_
                                     _%bind139701%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e139723%_))
                                           _%args139702%_))))
                                 (_%__kont146727146728%_
                                  (lambda ()
                                    (_%lp139696%_
                                     _%rest139722%_
                                     _%bind139701%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e139723%_))
                                           _%args139702%_))))
                                 (_%__kont146729146730%_
                                  (lambda ()
                                    (let ((_%tmp139753%_
                                           (let ((__tmp147176
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp147176))))
                                      (_%lp139696%_
                                       _%rest139722%_
                                       (cons (cons _%tmp139753%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e139723%_))
                                                         '()))
                                             _%bind139701%_)
                                       (cons _%tmp139753%_ _%args139702%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx146723146724%_))
                                 (let ((_%e139730139784%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx146723146724%_))))
                                   (let ((_%tl139732139789%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e139730139784%_)))
                                         (_%hd139731139787%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e139730139784%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd139731139787%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd139731139787%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl139732139789%_))
                                                 (let ((_%e139733139792%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl139732139789%_))))
                                                   (let ((_%tl139735139797%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e139733139792%_)))
                                                         (_%hd139734139795%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e139733139792%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl139735139797%_))
                                                         (_%__kont146725146726%_)
                                                         (_%__kont146729146730%_))))
                                                 (_%__kont146729146730%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd139731139787%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl139732139789%_))
                                                     (let ((_%e139739139769%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl139732139789%_))))
                                                       (let ((_%tl139741139774%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e139739139769%_)))
                     (_%hd139740139772%_
                      (let () (declare (not safe)) (##car _%e139739139769%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl139741139774%_))
                     (_%__kont146727146728%_)
                     (_%__kont146729146730%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont146729146730%_))
                                                 (_%__kont146729146730%_)))
                                         (_%__kont146729146730%_))))
                                 (_%__kont146729146730%_)))))))
                 (if (let ()
                       (declare (not safe))
                       (##pair? _%rest139703139711%_))
                     (let ((_%hd139708139808%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest139703139711%_)))
                           (_%tl139709139810%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest139703139711%_))))
                       (let* ((_%e139813%_ _%hd139708139808%_)
                              (_%rest139815%_ _%tl139709139810%_))
                         (_%K139707139805%_ _%rest139815%_ _%e139813%_)))
                     (_%else139705139719%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd139645139675%_
                                               _%hd139642139667%_)
                                              (_%g139634139651%_
                                               _%g139635139654%_))))
                                      (_%g139634139651%_ _%g139635139654%_))))
                              (_%g139634139651%_ _%g139635139654%_))))
                      (_%g139634139651%_ _%g139635139654%_)))))
          (_%g139633139817%_ _%stx139632%_))))
    (define gxc#generate-runtime-struct-direct-instancep%
      (lambda (_%self139442%_ _%stx139443%_)
        (let* ((_%g139445139462%_
                (lambda (_%g139446139459%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g139446139459%_))))
               (_%g139444139628%_
                (lambda (_%g139446139465%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g139446139465%_))
                      (let ((_%e139449139467%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g139446139465%_))))
                        (let ((_%hd139450139470%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e139449139467%_)))
                              (_%tl139451139472%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e139449139467%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl139451139472%_))
                              (let ((_%e139452139475%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl139451139472%_))))
                                (let ((_%hd139453139478%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e139452139475%_)))
                                      (_%tl139454139480%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e139452139475%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl139454139480%_))
                                      (let ((_%e139455139483%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl139454139480%_))))
                                        (let ((_%hd139456139486%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e139455139483%_)))
                                              (_%tl139457139488%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e139455139483%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl139457139488%_))
                                              ((lambda (_%L139491%_
                                                        _%L139492%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-direct-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self139442%_ _%L139491%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _%self139442%_ _%L139492%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp139507%_ ((_%rest139510%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L139492%_ (cons _%L139491%_ '())))
                                (_%bind139512%_ '())
                                (_%args139513%_ '()))
               (let* ((_%rest139514139522%_ _%rest139510%_)
                      (_%else139516139530%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind139512%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-direct-instance-of?
                                                       _%args139513%_)
                                                 '()))))))
                      (_%K139518139616%_
                       (lambda (_%rest139533%_ _%e139534%_)
                         (let* ((_%__stx146769146770%_ _%e139534%_)
                                (_%g139539139557%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx146769146770%_)))))
                           (let ((_%__kont146771146772%_
                                  (lambda ()
                                    (_%lp139507%_
                                     _%rest139533%_
                                     _%bind139512%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e139534%_))
                                           _%args139513%_))))
                                 (_%__kont146773146774%_
                                  (lambda ()
                                    (_%lp139507%_
                                     _%rest139533%_
                                     _%bind139512%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e139534%_))
                                           _%args139513%_))))
                                 (_%__kont146775146776%_
                                  (lambda ()
                                    (let ((_%tmp139564%_
                                           (let ((__tmp147177
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp147177))))
                                      (_%lp139507%_
                                       _%rest139533%_
                                       (cons (cons _%tmp139564%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e139534%_))
                                                         '()))
                                             _%bind139512%_)
                                       (cons _%tmp139564%_ _%args139513%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx146769146770%_))
                                 (let ((_%e139541139595%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx146769146770%_))))
                                   (let ((_%tl139543139600%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e139541139595%_)))
                                         (_%hd139542139598%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e139541139595%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd139542139598%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd139542139598%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl139543139600%_))
                                                 (let ((_%e139544139603%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl139543139600%_))))
                                                   (let ((_%tl139546139608%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e139544139603%_)))
                                                         (_%hd139545139606%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e139544139603%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl139546139608%_))
                                                         (_%__kont146771146772%_)
                                                         (_%__kont146775146776%_))))
                                                 (_%__kont146775146776%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd139542139598%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl139543139600%_))
                                                     (let ((_%e139550139580%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl139543139600%_))))
                                                       (let ((_%tl139552139585%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e139550139580%_)))
                     (_%hd139551139583%_
                      (let () (declare (not safe)) (##car _%e139550139580%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl139552139585%_))
                     (_%__kont146773146774%_)
                     (_%__kont146775146776%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont146775146776%_))
                                                 (_%__kont146775146776%_)))
                                         (_%__kont146775146776%_))))
                                 (_%__kont146775146776%_)))))))
                 (if (let ()
                       (declare (not safe))
                       (##pair? _%rest139514139522%_))
                     (let ((_%hd139519139619%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest139514139522%_)))
                           (_%tl139520139621%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest139514139522%_))))
                       (let* ((_%e139624%_ _%hd139519139619%_)
                              (_%rest139626%_ _%tl139520139621%_))
                         (_%K139518139616%_ _%rest139626%_ _%e139624%_)))
                     (_%else139516139530%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd139456139486%_
                                               _%hd139453139478%_)
                                              (_%g139445139462%_
                                               _%g139446139465%_))))
                                      (_%g139445139462%_ _%g139446139465%_))))
                              (_%g139445139462%_ _%g139446139465%_))))
                      (_%g139445139462%_ _%g139446139465%_)))))
          (_%g139444139628%_ _%stx139443%_))))
    (define gxc#generate-runtime-struct-ref%
      (lambda (_%self139358%_ _%stx139359%_)
        (let* ((_%g139361139382%_
                (lambda (_%g139362139379%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g139362139379%_))))
               (_%g139360139439%_
                (lambda (_%g139362139385%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g139362139385%_))
                      (let ((_%e139366139387%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g139362139385%_))))
                        (let ((_%hd139367139390%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e139366139387%_)))
                              (_%tl139368139392%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e139366139387%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl139368139392%_))
                              (let ((_%e139369139395%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl139368139392%_))))
                                (let ((_%hd139370139398%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e139369139395%_)))
                                      (_%tl139371139400%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e139369139395%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl139371139400%_))
                                      (let ((_%e139372139403%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl139371139400%_))))
                                        (let ((_%hd139373139406%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e139372139403%_)))
                                              (_%tl139374139408%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e139372139403%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl139374139408%_))
                                              (let ((_%e139375139411%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl139374139408%_))))
                                                (let ((_%hd139376139414%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e139375139411%_)))
                                                      (_%tl139377139416%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e139375139411%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl139377139416%_))
                                                      ((lambda (_%L139419%_
                                                                _%L139420%_
                                                                _%L139421%_)
                                                         (cons '##structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1 _%self139358%_ _%L139419%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self139358%_
                                      _%L139420%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self139358%_
                                            _%L139421%_))
                                         (cons ''#f '()))))))
               _%hd139376139414%_
               _%hd139373139406%_
               _%hd139370139398%_)
              (_%g139361139382%_ _%g139362139385%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g139361139382%_
                                               _%g139362139385%_))))
                                      (_%g139361139382%_ _%g139362139385%_))))
                              (_%g139361139382%_ _%g139362139385%_))))
                      (_%g139361139382%_ _%g139362139385%_)))))
          (_%g139360139439%_ _%stx139359%_))))
    (define gxc#generate-runtime-struct-setq%
      (lambda (_%self139258%_ _%stx139259%_)
        (let* ((_%g139261139286%_
                (lambda (_%g139262139283%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g139262139283%_))))
               (_%g139260139355%_
                (lambda (_%g139262139289%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g139262139289%_))
                      (let ((_%e139267139291%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g139262139289%_))))
                        (let ((_%hd139268139294%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e139267139291%_)))
                              (_%tl139269139296%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e139267139291%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl139269139296%_))
                              (let ((_%e139270139299%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl139269139296%_))))
                                (let ((_%hd139271139302%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e139270139299%_)))
                                      (_%tl139272139304%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e139270139299%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl139272139304%_))
                                      (let ((_%e139273139307%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl139272139304%_))))
                                        (let ((_%hd139274139310%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e139273139307%_)))
                                              (_%tl139275139312%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e139273139307%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl139275139312%_))
                                              (let ((_%e139276139315%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl139275139312%_))))
                                                (let ((_%hd139277139318%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e139276139315%_)))
                                                      (_%tl139278139320%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e139276139315%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl139278139320%_))
                                                      (let ((_%e139279139323%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl139278139320%_))))
                (let ((_%hd139280139326%_
                       (let () (declare (not safe)) (##car _%e139279139323%_)))
                      (_%tl139281139328%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e139279139323%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl139281139328%_))
                      ((lambda (_%L139331%_
                                _%L139332%_
                                _%L139333%_
                                _%L139334%_)
                         (cons '##structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self139258%_
                                        _%L139332%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self139258%_
                                              _%L139331%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self139258%_
                                                    _%L139333%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self139258%_
                                                          _%L139334%_))
                                                       (cons ''#f '())))))))
                       _%hd139280139326%_
                       _%hd139277139318%_
                       _%hd139274139310%_
                       _%hd139271139302%_)
                      (_%g139261139286%_ _%g139262139289%_))))
              (_%g139261139286%_ _%g139262139289%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g139261139286%_
                                               _%g139262139289%_))))
                                      (_%g139261139286%_ _%g139262139289%_))))
                              (_%g139261139286%_ _%g139262139289%_))))
                      (_%g139261139286%_ _%g139262139289%_)))))
          (_%g139260139355%_ _%stx139259%_))))
    (define gxc#generate-runtime-struct-direct-ref%
      (lambda (_%self139174%_ _%stx139175%_)
        (let* ((_%g139177139198%_
                (lambda (_%g139178139195%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g139178139195%_))))
               (_%g139176139255%_
                (lambda (_%g139178139201%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g139178139201%_))
                      (let ((_%e139182139203%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g139178139201%_))))
                        (let ((_%hd139183139206%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e139182139203%_)))
                              (_%tl139184139208%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e139182139203%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl139184139208%_))
                              (let ((_%e139185139211%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl139184139208%_))))
                                (let ((_%hd139186139214%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e139185139211%_)))
                                      (_%tl139187139216%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e139185139211%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl139187139216%_))
                                      (let ((_%e139188139219%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl139187139216%_))))
                                        (let ((_%hd139189139222%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e139188139219%_)))
                                              (_%tl139190139224%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e139188139219%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl139190139224%_))
                                              (let ((_%e139191139227%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl139190139224%_))))
                                                (let ((_%hd139192139230%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e139191139227%_)))
                                                      (_%tl139193139232%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e139191139227%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl139193139232%_))
                                                      ((lambda (_%L139235%_
                                                                _%L139236%_
                                                                _%L139237%_)
                                                         (cons '##direct-structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1 _%self139174%_ _%L139235%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self139174%_
                                      _%L139236%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self139174%_
                                            _%L139237%_))
                                         (cons ''#f '()))))))
               _%hd139192139230%_
               _%hd139189139222%_
               _%hd139186139214%_)
              (_%g139177139198%_ _%g139178139201%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g139177139198%_
                                               _%g139178139201%_))))
                                      (_%g139177139198%_ _%g139178139201%_))))
                              (_%g139177139198%_ _%g139178139201%_))))
                      (_%g139177139198%_ _%g139178139201%_)))))
          (_%g139176139255%_ _%stx139175%_))))
    (define gxc#generate-runtime-struct-direct-setq%
      (lambda (_%self139074%_ _%stx139075%_)
        (let* ((_%g139077139102%_
                (lambda (_%g139078139099%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g139078139099%_))))
               (_%g139076139171%_
                (lambda (_%g139078139105%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g139078139105%_))
                      (let ((_%e139083139107%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g139078139105%_))))
                        (let ((_%hd139084139110%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e139083139107%_)))
                              (_%tl139085139112%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e139083139107%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl139085139112%_))
                              (let ((_%e139086139115%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl139085139112%_))))
                                (let ((_%hd139087139118%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e139086139115%_)))
                                      (_%tl139088139120%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e139086139115%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl139088139120%_))
                                      (let ((_%e139089139123%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl139088139120%_))))
                                        (let ((_%hd139090139126%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e139089139123%_)))
                                              (_%tl139091139128%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e139089139123%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl139091139128%_))
                                              (let ((_%e139092139131%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl139091139128%_))))
                                                (let ((_%hd139093139134%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e139092139131%_)))
                                                      (_%tl139094139136%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e139092139131%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl139094139136%_))
                                                      (let ((_%e139095139139%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl139094139136%_))))
                (let ((_%hd139096139142%_
                       (let () (declare (not safe)) (##car _%e139095139139%_)))
                      (_%tl139097139144%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e139095139139%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl139097139144%_))
                      ((lambda (_%L139147%_
                                _%L139148%_
                                _%L139149%_
                                _%L139150%_)
                         (cons '##direct-structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self139074%_
                                        _%L139148%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self139074%_
                                              _%L139147%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self139074%_
                                                    _%L139149%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self139074%_
                                                          _%L139150%_))
                                                       (cons ''#f '())))))))
                       _%hd139096139142%_
                       _%hd139093139134%_
                       _%hd139090139126%_
                       _%hd139087139118%_)
                      (_%g139077139102%_ _%g139078139105%_))))
              (_%g139077139102%_ _%g139078139105%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g139077139102%_
                                               _%g139078139105%_))))
                                      (_%g139077139102%_ _%g139078139105%_))))
                              (_%g139077139102%_ _%g139078139105%_))))
                      (_%g139077139102%_ _%g139078139105%_)))))
          (_%g139076139171%_ _%stx139075%_))))
    (define gxc#generate-runtime-struct-unchecked-ref%
      (lambda (_%self138869%_ _%stx138870%_)
        (let* ((_%g138872138893%_
                (lambda (_%g138873138890%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138873138890%_))))
               (_%g138871139071%_
                (lambda (_%g138873138896%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138873138896%_))
                      (let ((_%e138877138898%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138873138896%_))))
                        (let ((_%hd138878138901%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138877138898%_)))
                              (_%tl138879138903%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138877138898%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138879138903%_))
                              (let ((_%e138880138906%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138879138903%_))))
                                (let ((_%hd138881138909%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138880138906%_)))
                                      (_%tl138882138911%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138880138906%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl138882138911%_))
                                      (let ((_%e138883138914%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl138882138911%_))))
                                        (let ((_%hd138884138917%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e138883138914%_)))
                                              (_%tl138885138919%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e138883138914%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl138885138919%_))
                                              (let ((_%e138886138922%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl138885138919%_))))
                                                (let ((_%hd138887138925%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e138886138922%_)))
                                                      (_%tl138888138927%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e138886138922%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl138888138927%_))
                                                      ((lambda (_%L138930%_
                                                                _%L138931%_
                                                                _%L138932%_)
                                                         (if (gxc#current-compile-decls-unsafe?)
                                                             (cons '##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__1
                                    _%self138869%_
                                    _%L138930%_))
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self138869%_
                                          _%L138931%_))
                                       (cons ''#f (cons ''#f '())))))
                     (let _%lp138950%_ ((_%rest138953%_
                                         (cons _%L138931%_
                                               (cons _%L138930%_ '())))
                                        (_%bind138955%_ '())
                                        (_%args138956%_ '()))
                       (let* ((_%rest138957138965%_ _%rest138953%_)
                              (_%else138959138973%_
                               (lambda ()
                                 (cons 'let
                                       (cons _%bind138955%_
                                             (cons '(declare (not safe))
                                                   (cons (cons '##unchecked-structure-ref
                                                               (let ((__tmp147178
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons ''#f (cons ''#f '()))))
                         (declare (not safe))
                         (__foldr1 cons __tmp147178 _%args138956%_)))
                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%K138961139059%_
                               (lambda (_%rest138976%_ _%e138977%_)
                                 (let* ((_%__stx146815146816%_ _%e138977%_)
                                        (_%g138982139000%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx146815146816%_)))))
                                   (let ((_%__kont146817146818%_
                                          (lambda ()
                                            (_%lp138950%_
                                             _%rest138976%_
                                             _%bind138955%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e138977%_))
                                                   _%args138956%_))))
                                         (_%__kont146819146820%_
                                          (lambda ()
                                            (_%lp138950%_
                                             _%rest138976%_
                                             _%bind138955%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e138977%_))
                                                   _%args138956%_))))
                                         (_%__kont146821146822%_
                                          (lambda ()
                                            (let ((_%tmp139007%_
                                                   (let ((__tmp147179
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym
                                                             '__tmp))))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp147179))))
                                              (_%lp138950%_
                                               _%rest138976%_
                                               (cons (cons _%tmp139007%_
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__0 _%e138977%_))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind138955%_)
                                               (cons _%tmp139007%_
                                                     _%args138956%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx146815146816%_))
                                         (let ((_%e138984139038%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx146815146816%_))))
                                           (let ((_%tl138986139043%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e138984139038%_)))
                                                 (_%hd138985139041%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e138984139038%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd138985139041%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#ref
                                                        _%hd138985139041%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl138986139043%_))
                                                         (let ((_%e138987139046%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl138986139043%_))))
                   (let ((_%tl138989139051%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e138987139046%_)))
                         (_%hd138988139049%_
                          (let ()
                            (declare (not safe))
                            (##car _%e138987139046%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl138989139051%_))
                         (_%__kont146817146818%_)
                         (_%__kont146821146822%_))))
                 (_%__kont146821146822%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#quote
                                                            _%hd138985139041%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl138986139043%_))
                     (let ((_%e138993139023%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl138986139043%_))))
                       (let ((_%tl138995139028%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e138993139023%_)))
                             (_%hd138994139026%_
                              (let ()
                                (declare (not safe))
                                (##car _%e138993139023%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl138995139028%_))
                             (_%__kont146819146820%_)
                             (_%__kont146821146822%_))))
                     (_%__kont146821146822%_))
                 (_%__kont146821146822%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont146821146822%_))))
                                         (_%__kont146821146822%_)))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%rest138957138965%_))
                             (let ((_%hd138962139062%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest138957138965%_)))
                                   (_%tl138963139064%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest138957138965%_))))
                               (let* ((_%e139067%_ _%hd138962139062%_)
                                      (_%rest139069%_ _%tl138963139064%_))
                                 (_%K138961139059%_
                                  _%rest139069%_
                                  _%e139067%_)))
                             (_%else138959138973%_))))))
               _%hd138887138925%_
               _%hd138884138917%_
               _%hd138881138909%_)
              (_%g138872138893%_ _%g138873138896%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g138872138893%_
                                               _%g138873138896%_))))
                                      (_%g138872138893%_ _%g138873138896%_))))
                              (_%g138872138893%_ _%g138873138896%_))))
                      (_%g138872138893%_ _%g138873138896%_)))))
          (_%g138871139071%_ _%stx138870%_))))
    (define gxc#generate-runtime-struct-unchecked-setq%
      (lambda (_%self138648%_ _%stx138649%_)
        (let* ((_%g138651138676%_
                (lambda (_%g138652138673%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138652138673%_))))
               (_%g138650138866%_
                (lambda (_%g138652138679%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138652138679%_))
                      (let ((_%e138657138681%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138652138679%_))))
                        (let ((_%hd138658138684%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138657138681%_)))
                              (_%tl138659138686%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138657138681%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138659138686%_))
                              (let ((_%e138660138689%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138659138686%_))))
                                (let ((_%hd138661138692%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138660138689%_)))
                                      (_%tl138662138694%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138660138689%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl138662138694%_))
                                      (let ((_%e138663138697%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl138662138694%_))))
                                        (let ((_%hd138664138700%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e138663138697%_)))
                                              (_%tl138665138702%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e138663138697%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl138665138702%_))
                                              (let ((_%e138666138705%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl138665138702%_))))
                                                (let ((_%hd138667138708%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e138666138705%_)))
                                                      (_%tl138668138710%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e138666138705%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl138668138710%_))
                                                      (let ((_%e138669138713%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl138668138710%_))))
                (let ((_%hd138670138716%_
                       (let () (declare (not safe)) (##car _%e138669138713%_)))
                      (_%tl138671138718%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e138669138713%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl138671138718%_))
                      ((lambda (_%L138721%_
                                _%L138722%_
                                _%L138723%_
                                _%L138724%_)
                         (if (gxc#current-compile-decls-unsafe?)
                             (cons '##unchecked-structure-set!
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self138648%_
                                            _%L138722%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self138648%_
                                                  _%L138721%_))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self138648%_
                                                        _%L138723%_))
                                                     (cons ''#f
                                                           (cons ''#f '()))))))
                             (let _%lp138745%_ ((_%rest138748%_
                                                 (cons _%L138723%_
                                                       (cons _%L138721%_
                                                             (cons _%L138722%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%bind138750%_ '())
                                                (_%args138751%_ '()))
                               (let* ((_%rest138752138760%_ _%rest138748%_)
                                      (_%else138754138768%_
                                       (lambda ()
                                         (cons 'let
                                               (cons _%bind138750%_
                                                     (cons '(declare
                                                              (not safe))
                                                           (cons (cons '##unchecked-structure-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp147180 (cons ''#f (cons ''#f '()))))
                                 (declare (not safe))
                                 (__foldr1 cons __tmp147180 _%args138751%_)))
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%K138756138854%_
                                       (lambda (_%rest138771%_ _%e138772%_)
                                         (let* ((_%__stx146861146862%_
                                                 _%e138772%_)
                                                (_%g138777138795%_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%__stx146861146862%_)))))
                                           (let ((_%__kont146863146864%_
                                                  (lambda ()
                                                    (_%lp138745%_
                                                     _%rest138771%_
                                                     _%bind138750%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e138772%_))
                                                           _%args138751%_))))
                                                 (_%__kont146865146866%_
                                                  (lambda ()
                                                    (_%lp138745%_
                                                     _%rest138771%_
                                                     _%bind138750%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e138772%_))
                                                           _%args138751%_))))
                                                 (_%__kont146867146868%_
                                                  (lambda ()
                                                    (let ((_%tmp138802%_
                                                           (let ((__tmp147181
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__tmp))))
                     (declare (not safe))
                     (make-symbol__0 __tmp147181))))
              (_%lp138745%_
               _%rest138771%_
               (cons (cons _%tmp138802%_
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__0 _%e138772%_))
                                 '()))
                     _%bind138750%_)
               (cons _%tmp138802%_ _%args138751%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%__stx146861146862%_))
                                                 (let ((_%e138779138833%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%__stx146861146862%_))))
                                                   (let ((_%tl138781138838%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e138779138833%_)))
                                                         (_%hd138780138836%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e138779138833%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _%hd138780138836%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-eq? '%#ref _%hd138780138836%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl138781138838%_))
                         (let ((_%e138782138841%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl138781138838%_))))
                           (let ((_%tl138784138846%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e138782138841%_)))
                                 (_%hd138783138844%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e138782138841%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl138784138846%_))
                                 (_%__kont146863146864%_)
                                 (_%__kont146867146868%_))))
                         (_%__kont146867146868%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-eq? '%#quote _%hd138780138836%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%tl138781138838%_))
                             (let ((_%e138788138818%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%tl138781138838%_))))
                               (let ((_%tl138790138823%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e138788138818%_)))
                                     (_%hd138789138821%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e138788138818%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%tl138790138823%_))
                                     (_%__kont146865146866%_)
                                     (_%__kont146867146868%_))))
                             (_%__kont146867146868%_))
                         (_%__kont146867146868%_)))
                 (_%__kont146867146868%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont146867146868%_)))))))
                                 (if (let ()
                                       (declare (not safe))
                                       (##pair? _%rest138752138760%_))
                                     (let ((_%hd138757138857%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%rest138752138760%_)))
                                           (_%tl138758138859%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%rest138752138760%_))))
                                       (let* ((_%e138862%_ _%hd138757138857%_)
                                              (_%rest138864%_
                                               _%tl138758138859%_))
                                         (_%K138756138854%_
                                          _%rest138864%_
                                          _%e138862%_)))
                                     (_%else138754138768%_))))))
                       _%hd138670138716%_
                       _%hd138667138708%_
                       _%hd138664138700%_
                       _%hd138661138692%_)
                      (_%g138651138676%_ _%g138652138679%_))))
              (_%g138651138676%_ _%g138652138679%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g138651138676%_
                                               _%g138652138679%_))))
                                      (_%g138651138676%_ _%g138652138679%_))))
                              (_%g138651138676%_ _%g138652138679%_))))
                      (_%g138651138676%_ _%g138652138679%_)))))
          (_%g138650138866%_ _%stx138649%_))))
    (define gxc#generate-runtime-loader-import%
      (lambda (_%self138487%_ _%stx138488%_)
        (letrec ((_%import-set-template138490%_
                  (lambda (_%in138593%_ _%phi138594%_)
                    (let ((_%iphi138596%_
                           (fx+ _%phi138594%_
                                (##direct-structure-ref
                                 _%in138593%_
                                 '2
                                 gx#import-set::t
                                 '#f)))
                          (_%imports138597%_
                           (##structure-ref
                            (##direct-structure-ref
                             _%in138593%_
                             '1
                             gx#import-set::t
                             '#f)
                            '8
                            gx#module-context::t
                            '#f)))
                      (let _%lp138599%_ ((_%rest138601%_ _%imports138597%_)
                                         (_%r138602%_ '()))
                        (let* ((_%rest138603138611%_ _%rest138601%_)
                               (_%else138605138619%_ (lambda () _%r138602%_))
                               (_%K138607138636%_
                                (lambda (_%rest138622%_ _%in138623%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%in138623%_
                                         'gx#module-context::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxzero? _%iphi138596%_))
                                          (_%lp138599%_
                                           _%rest138622%_
                                           (cons _%in138623%_ _%r138602%_))
                                          (_%lp138599%_
                                           _%rest138622%_
                                           _%r138602%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%in138623%_
                                             'gx#module-import::t))
                                          (let ((_%iphi138627%_
                                                 (fx+ _%phi138594%_
                                                      (##direct-structure-ref
                                                       _%in138623%_
                                                       '3
                                                       gx#module-import::t
                                                       '#f))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##fxzero? _%iphi138627%_))
                                                (_%lp138599%_
                                                 _%rest138622%_
                                                 (cons (##direct-structure-ref
                                                        (##direct-structure-ref
                                                         _%in138623%_
                                                         '1
                                                         gx#module-import::t
                                                         '#f)
                                                        '1
                                                        gx#module-export::t
                                                        '#f)
                                                       _%r138602%_))
                                                (_%lp138599%_
                                                 _%rest138622%_
                                                 _%r138602%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 _%in138623%_
                                                 'gx#import-set::t))
                                              (let ((_%xphi138630%_
                                                     (fx+ _%iphi138596%_
                                                          (##direct-structure-ref
                                                           _%in138623%_
                                                           '2
                                                           gx#import-set::t
                                                           '#f))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##fxzero?
                                                       _%xphi138630%_))
                                                    (_%lp138599%_
                                                     _%rest138622%_
                                                     (cons (##direct-structure-ref
                                                            _%in138623%_
                                                            '1
                                                            gx#import-set::t
                                                            '#f)
                                                           _%r138602%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##fxpositive?
                                                           _%xphi138630%_))
                                                        (_%lp138599%_
                                                         _%rest138622%_
                                                         (let ((__tmp147182
                                                                (_%import-set-template138490%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in138623%_
                         _%iphi138596%_)))
                   (declare (not safe))
                   (__foldl1 cons _%r138602%_ __tmp147182)))
                (_%lp138599%_ _%rest138622%_ _%r138602%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%lp138599%_
                                               _%rest138622%_
                                               _%r138602%_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest138603138611%_))
                              (let ((_%hd138608138639%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest138603138611%_)))
                                    (_%tl138609138641%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest138603138611%_))))
                                (let* ((_%in138644%_ _%hd138608138639%_)
                                       (_%rest138646%_ _%tl138609138641%_))
                                  (_%K138607138636%_
                                   _%rest138646%_
                                   _%in138644%_)))
                              (_%else138605138619%_))))))))
          (let* ((_%g138492138502%_
                  (lambda (_%g138493138499%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g138493138499%_))))
                 (_%g138491138590%_
                  (lambda (_%g138493138505%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g138493138505%_))
                        (let ((_%e138495138507%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g138493138505%_))))
                          (let ((_%hd138496138510%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e138495138507%_)))
                                (_%tl138497138512%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e138495138507%_))))
                            ((lambda (_%L138515%_)
                               (let ((_%ht138526%_
                                      (let ()
                                        (declare (not safe))
                                        (make-hash-table-eq))))
                                 (let _%lp138528%_ ((_%rest138530%_
                                                     _%L138515%_)
                                                    (_%loads138531%_ '()))
                                   (letrec ((_%K138533%_
                                             (lambda (_%ctx138583%_
                                                      _%rest138584%_)
                                               (let ((_%id138586%_
                                                      (##structure-ref
                                                       _%ctx138583%_
                                                       '1
                                                       gx#expander-context::t
                                                       '#f)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (hash-get
                                                        _%ht138526%_
                                                        _%id138586%_))
                                                     (_%lp138528%_
                                                      _%rest138584%_
                                                      _%loads138531%_)
                                                     (let ((_%rt138588%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#module-id->path-string
                                                               _%id138586%_))))
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _%ht138526%_
                                                          _%id138586%_
                                                          _%rt138588%_))
                                                       (_%lp138528%_
                                                        _%rest138584%_
                                                        (cons _%rt138588%_
                                                              _%loads138531%_))))))))
                                     (let* ((_%rest138534138542%_
                                             _%rest138530%_)
                                            (_%else138536138554%_
                                             (lambda ()
                                               (cons 'begin
                                                     (let ((__tmp147184
                                                            (lambda (_%g138549138551%_)
                                                              (list 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g138549138551%_)))
                   (__tmp147183 (reverse _%loads138531%_)))
               (declare (not safe))
               (##map __tmp147184 __tmp147183)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%K138538138571%_
                                             (lambda (_%rest138557%_
                                                      _%in138558%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-instance-of?
                                                      _%in138558%_
                                                      'gx#module-context::t))
                                                   (_%K138533%_
                                                    _%in138558%_
                                                    _%rest138557%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          _%in138558%_
                                                          'gx#module-import::t))
                                                       (if (fxzero? (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%in138558%_
                             '3
                             gx#module-import::t
                             '#f))
                   (_%K138533%_
                    (##direct-structure-ref
                     (##direct-structure-ref
                      _%in138558%_
                      '1
                      gx#module-import::t
                      '#f)
                     '1
                     gx#module-export::t
                     '#f)
                    _%rest138557%_)
                   (_%lp138528%_ _%rest138557%_ _%loads138531%_))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%in138558%_
                      'gx#import-set::t))
                   (let ((_%phi138563%_
                          (##direct-structure-ref
                           _%in138558%_
                           '2
                           gx#import-set::t
                           '#f)))
                     (if (fxzero? _%phi138563%_)
                         (_%K138533%_
                          (##direct-structure-ref
                           _%in138558%_
                           '1
                           gx#import-set::t
                           '#f)
                          _%rest138557%_)
                         (if (fxpositive? _%phi138563%_)
                             (let ((_%deps138567%_
                                    (_%import-set-template138490%_
                                     _%in138558%_
                                     '0)))
                               (_%lp138528%_
                                (let ()
                                  (declare (not safe))
                                  (__foldl1
                                   cons
                                   _%rest138557%_
                                   _%deps138567%_))
                                _%loads138531%_))
                             (_%lp138528%_ _%rest138557%_ _%loads138531%_))))
                   (let ()
                     (declare (not safe))
                     (gxc#raise-compile-error
                      '"Unexpected import"
                      _%stx138488%_
                      _%in138558%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##pair? _%rest138534138542%_))
                                           (let ((_%hd138539138574%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%rest138534138542%_)))
                                                 (_%tl138540138576%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%rest138534138542%_))))
                                             (let* ((_%in138579%_
                                                     _%hd138539138574%_)
                                                    (_%rest138581%_
                                                     _%tl138540138576%_))
                                               (_%K138538138571%_
                                                _%rest138581%_
                                                _%in138579%_)))
                                           (_%else138536138554%_)))))))
                             _%tl138497138512%_)))
                        (_%g138492138502%_ _%g138493138505%_)))))
            (_%g138491138590%_ _%stx138488%_)))))
    (define gxc#generate-runtime-quote-syntax%
      (lambda (_%self138300%_ _%stx138301%_)
        (letrec ((_%add-lift!138303%_
                  (lambda (_%expr138485%_)
                    (set-box!
                     (let () (declare (not safe)) (gxc#current-compile-lift))
                     (cons _%expr138485%_
                           (unbox (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-lift)))))))
                 (_%generate-syntax-quote138304%_
                  (lambda (_%id138482%_ _%marks138483%_)
                    (cons '##structure
                          (cons 'gx#syntax-quote::t
                                (cons (cons 'quote (cons _%id138482%_ '()))
                                      (cons '#f
                                            (cons '(gx#current-expander-context)
                                                  (cons _%marks138483%_
                                                        '()))))))))
                 (_%generate-simple138305%_
                  (lambda (_%stxq138477%_)
                    (let ((_%gid138479%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__% '#t)))
                          (_%qid138480%_
                           (gxc#generate-runtime-identifier _%stxq138477%_)))
                      (_%add-lift!138303%_
                       (cons 'define
                             (cons _%gid138479%_
                                   (cons (_%generate-syntax-quote138304%_
                                          _%qid138480%_
                                          ''())
                                         '()))))
                      (let ((__tmp147185
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp147185 _%stxq138477%_ _%gid138479%_))
                      _%gid138479%_)))
                 (_%generate-serialized138306%_
                  (lambda (_%stxq138467%_ _%marks138468%_)
                    (let* ((_%mark-refs138470%_
                            (map _%generate-mark138307%_ _%marks138468%_))
                           (_%gid138472%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%qid138474%_
                            (gxc#generate-runtime-identifier _%stxq138467%_)))
                      (_%add-lift!138303%_
                       (cons 'define
                             (cons _%gid138472%_
                                   (cons (_%generate-syntax-quote138304%_
                                          _%qid138474%_
                                          (cons 'list _%mark-refs138470%_))
                                         '()))))
                      (let ((__tmp147186
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp147186 _%stxq138467%_ _%gid138472%_))
                      _%gid138472%_)))
                 (_%generate-mark138307%_
                  (lambda (_%mark138452%_)
                    (let ((_%$e138454%_
                           (let ((__tmp147187
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-marks))))
                             (declare (not safe))
                             (hash-get __tmp147187 _%mark138452%_))))
                      (if _%$e138454%_
                          (values _%$e138454%_)
                          (let* ((_%gid138458%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-temporary__% '#t)))
                                 (_%repr138460%_
                                  (_%serialize-mark138308%_ _%mark138452%_))
                                 (_%ctx138462%_
                                  (let ((__tmp147188
                                         (##structure-ref
                                          _%mark138452%_
                                          '2
                                          gx#expander-mark::t
                                          '#f)))
                                    (declare (not safe))
                                    (gx#core-context-top__1 __tmp147188)))
                                 (_%ctx-ref138464%_
                                  (if (eq? _%ctx138462%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-context)))
                                      '(gx#current-expander-context)
                                      (cons 'gx#import-module
                                            (cons (cons 'quote
                                                        (cons (_%context-ref138309%_
                                                               _%ctx138462%_)
                                                              '()))
                                                  '())))))
                            (let ((__tmp147189
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-marks))))
                              (declare (not safe))
                              (hash-put!
                               __tmp147189
                               _%mark138452%_
                               _%gid138458%_))
                            (_%add-lift!138303%_
                             (cons 'define
                                   (cons _%gid138458%_
                                         (cons (cons 'gx#core-deserialize-mark
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%repr138460%_ '()))
                   (cons _%ctx-ref138464%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            _%gid138458%_)))))
                 (_%serialize-mark138308%_
                  (lambda (_%mark138399%_)
                    (letrec ((_%quote-e138401%_
                              (lambda (_%sym138450%_)
                                (if (let ()
                                      (declare (not safe))
                                      (interned-symbol? _%sym138450%_))
                                    _%sym138450%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-gensym-reference__0
                                       _%sym138450%_))))))
                      (let* ((_%mark138402138411%_ _%mark138399%_)
                             (_%E138404138415%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%mark138402138411%_
                                         '((expander-mark
                                            subst
                                            ctx
                                            phi
                                            trace))))
                                '#!void))
                             (_%K138405138427%_
                              (lambda (_%trace138418%_
                                       _%phi138419%_
                                       _%ctx138420%_
                                       _%subst138421%_)
                                (let ((_%subs138423%_
                                       (if _%subst138421%_
                                           (let ()
                                             (declare (not safe))
                                             (hash->list _%subst138421%_))
                                           '())))
                                  (cons _%phi138419%_
                                        (map (lambda (_%pair138425%_)
                                               (cons (_%quote-e138401%_
                                                      (car _%pair138425%_))
                                                     (_%quote-e138401%_
                                                      (cdr _%pair138425%_))))
                                             _%subs138423%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%mark138402138411%_
                               'gx#expander-mark::t))
                            (let* ((_%e138406138430%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark138402138411%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%subst138433%_ _%e138406138430%_)
                                   (_%e138407138435%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark138402138411%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%ctx138438%_ _%e138407138435%_)
                                   (_%e138408138440%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark138402138411%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%phi138443%_ _%e138408138440%_)
                                   (_%e138409138445%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark138402138411%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%trace138448%_ _%e138409138445%_))
                              (_%K138405138427%_
                               _%trace138448%_
                               _%phi138443%_
                               _%ctx138438%_
                               _%subst138433%_))
                            (_%E138404138415%_))))))
                 (_%context-ref138309%_
                  (lambda (_%ctx138386%_)
                    (if (let ((__tmp147190
                               (##structure-ref
                                _%ctx138386%_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (declare (not safe))
                          (##structure-instance-of?
                           __tmp147190
                           'gx#module-context::t))
                        (let ((_%ctx-ref138388%_
                               (_%context-ref-nested138311%_ _%ctx138386%_))
                              (_%ctx-origin138389%_
                               (_%context-ref-origin138310%_ _%ctx138386%_))
                              (_%origin138390%_
                               (_%context-ref-origin138310%_
                                (let ()
                                  (declare (not safe))
                                  (gx#current-expander-context)))))
                          (if (eq? _%origin138390%_ _%ctx-origin138389%_)
                              (let ((_%ref138392%_
                                     (_%context-ref-nested138311%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context)))))
                                (let _%lp138394%_ ((_%ref138396%_
                                                    (cdr _%ref138392%_))
                                                   (_%ctx-ref138397%_
                                                    (cdr _%ctx-ref138388%_)))
                                  (if (and (pair? _%ref138396%_)
                                           (eq? (car _%ref138396%_)
                                                (car _%ctx-ref138397%_)))
                                      (_%lp138394%_
                                       (cdr _%ref138396%_)
                                       (cdr _%ctx-ref138397%_))
                                      (cons '#f _%ctx-ref138397%_))))
                              _%ctx-ref138388%_))
                        (let ((__tmp147191
                               (##structure-ref
                                _%ctx138386%_
                                '1
                                gx#expander-context::t
                                '#f)))
                          (declare (not safe))
                          (make-symbol__1 '":" __tmp147191)))))
                 (_%context-ref-origin138310%_
                  (lambda (_%ctx138378%_)
                    (let _%lp138380%_ ((_%ctx138382%_ _%ctx138378%_))
                      (let ((_%super138384%_
                             (##structure-ref
                              _%ctx138382%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super138384%_
                               'gx#module-context::t))
                            (_%lp138380%_ _%super138384%_)
                            _%ctx138382%_)))))
                 (_%context-ref-nested138311%_
                  (lambda (_%ctx138369%_)
                    (let _%lp138371%_ ((_%ctx138373%_ _%ctx138369%_)
                                       (_%r138374%_ '()))
                      (let ((_%super138376%_
                             (##structure-ref
                              _%ctx138373%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super138376%_
                               'gx#module-context::t))
                            (_%lp138371%_
                             _%super138376%_
                             (cons (car (##structure-ref
                                         _%ctx138373%_
                                         '7
                                         gx#module-context::t
                                         '#f))
                                   _%r138374%_))
                            (cons (let ((__tmp147192
                                         (##structure-ref
                                          _%ctx138373%_
                                          '1
                                          gx#expander-context::t
                                          '#f)))
                                    (declare (not safe))
                                    (make-symbol__1 '":" __tmp147192))
                                  _%r138374%_)))))))
          (let* ((_%g138313138326%_
                  (lambda (_%g138314138323%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g138314138323%_))))
                 (_%g138312138366%_
                  (lambda (_%g138314138329%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g138314138329%_))
                        (let ((_%e138316138331%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g138314138329%_))))
                          (let ((_%hd138317138334%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e138316138331%_)))
                                (_%tl138318138336%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e138316138331%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl138318138336%_))
                                (let ((_%e138319138339%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl138318138336%_))))
                                  (let ((_%hd138320138342%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e138319138339%_)))
                                        (_%tl138321138344%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e138319138339%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl138321138344%_))
                                        ((lambda (_%L138347%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#identifier? _%L138347%_))
                                               (let ((_%$e138360%_
                                                      (let ((__tmp147193
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#current-compile-identifiers))))
                (declare (not safe))
                (hash-get __tmp147193 _%L138347%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e138360%_
                                                     (values _%$e138360%_)
                                                     (let ((_%marks138364%_
                                                            (##direct-structure-ref
                                                             _%L138347%_
                                                             '4
                                                             gx#syntax-quote::t
                                                             '#f)))
                                                       (if (null? _%marks138364%_)
                                                           (_%generate-simple138305%_
                                                            _%L138347%_)
                                                           (_%generate-serialized138306%_
                                                            _%L138347%_
                                                            _%marks138364%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"Cannot quote non-identifier syntax"
                                                  _%L138347%_))))
                                         _%hd138320138342%_)
                                        (_%g138313138326%_
                                         _%g138314138329%_))))
                                (_%g138313138326%_ _%g138314138329%_))))
                        (_%g138313138326%_ _%g138314138329%_)))))
            (_%g138312138366%_ _%stx138301%_)))))
    (define gxc#generate-runtime-phi-define-runtime%
      (lambda (_%self138232%_ _%stx138233%_)
        (let* ((_%g138235138252%_
                (lambda (_%g138236138249%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138236138249%_))))
               (_%g138234138297%_
                (lambda (_%g138236138255%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138236138255%_))
                      (let ((_%e138239138257%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138236138255%_))))
                        (let ((_%hd138240138260%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138239138257%_)))
                              (_%tl138241138262%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138239138257%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138241138262%_))
                              (let ((_%e138242138265%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138241138262%_))))
                                (let ((_%hd138243138268%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138242138265%_)))
                                      (_%tl138244138270%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138242138265%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl138244138270%_))
                                      (let ((_%e138245138273%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl138244138270%_))))
                                        (let ((_%hd138246138276%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e138245138273%_)))
                                              (_%tl138247138278%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e138245138273%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl138247138278%_))
                                              ((lambda (_%L138281%_
                                                        _%L138282%_)
                                                 (cons 'define
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%L138282%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _%self138232%_ _%L138281%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd138246138276%_
                                               _%hd138243138268%_)
                                              (_%g138235138252%_
                                               _%g138236138255%_))))
                                      (_%g138235138252%_ _%g138236138255%_))))
                              (_%g138235138252%_ _%g138236138255%_))))
                      (_%g138235138252%_ _%g138236138255%_)))))
          (_%g138234138297%_ _%stx138233%_))))
    (define gxc#generate-meta-begin%
      (lambda (_%self138181%_ _%stx138182%_)
        (let* ((_%g138184138194%_
                (lambda (_%g138185138191%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138185138191%_))))
               (_%g138183138229%_
                (lambda (_%g138185138197%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138185138197%_))
                      (let ((_%e138187138199%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138185138197%_))))
                        (let ((_%hd138188138202%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138187138199%_)))
                              (_%tl138189138204%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138187138199%_))))
                          ((lambda (_%L138207%_)
                             (let* ((_%c-body138221%_
                                     (map (lambda (_%g138216138218%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self138181%_
                                               _%g138216138218%_)))
                                          _%L138207%_))
                                    (_%c-body138226%_
                                     (let ((__tmp147194
                                            (lambda (_%$obj138223%_)
                                              (not (eq? _%$obj138223%_
                                                        '#!void)))))
                                       (declare (not safe))
                                       (##filter
                                        __tmp147194
                                        _%c-body138221%_))))
                               (cons '%#begin _%c-body138226%_)))
                           _%tl138189138204%_)))
                      (_%g138184138194%_ _%g138185138197%_)))))
          (_%g138183138229%_ _%stx138182%_))))
    (define gxc#generate-meta-begin-syntax%
      (lambda (_%self138086%_ _%stx138087%_)
        (let* ((_%g138089138099%_
                (lambda (_%g138090138096%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138090138096%_))))
               (_%g138088138178%_
                (lambda (_%g138090138102%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138090138102%_))
                      (let ((_%e138092138104%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138090138102%_))))
                        (let ((_%hd138093138107%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138092138104%_)))
                              (_%tl138094138109%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138092138104%_))))
                          ((lambda (_%L138112%_)
                             (let* ((_%phi138122%_
                                     (let ((__tmp147195
                                            (let ()
                                              (declare (not safe))
                                              (gx#current-expander-phi))))
                                       (declare (not safe))
                                       (##fx+ __tmp147195 '1)))
                                    (_%block138124%_
                                     (gxc#meta-state-begin-phi!
                                      (let ()
                                        (declare (not safe))
                                        (slot-ref__0 _%self138086%_ 'state))
                                      _%phi138122%_))
                                    (_%compiled138127%_
                                     (let ((__tmp147196
                                            (lambda ()
                                              (gxc#apply-generate-meta-phi__%
                                               '#f
                                               (let ()
                                                 (declare (not safe))
                                                 (slot-ref__0
                                                  _%self138086%_
                                                  'state))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#begin))
                                                     _%L138112%_)))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp147196
                                        gx#current-expander-phi
                                        _%phi138122%_)))
                                    (_%g138130138140%_
                                     (lambda (_%g138131138137%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g138131138137%_))))
                                    (_%g138129138175%_
                                     (lambda (_%g138131138143%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%g138131138143%_))
                                           (let ((_%e138133138145%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%g138131138143%_))))
                                             (let ((_%hd138134138148%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e138133138145%_)))
                                                   (_%tl138135138150%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e138133138145%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd138134138148%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#begin
                                                          _%hd138134138148%_))
                                                       ((lambda (_%L138153%_)
                                                          (let ((_%c-body138170%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (filter (lambda (_%$obj138167%_)
                                   (not (eq? _%$obj138167%_ '#!void)))
                                 _%L138153%_)))
                    (if _%block138124%_
                        (cons '%#begin-syntax
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'load-module '()))
                                                (cons (cons '%#quote
                                                            (cons _%block138124%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%c-body138170%_))
                        (if (null? _%c-body138170%_)
                            '#!void
                            (cons '%#begin-syntax _%c-body138170%_)))))
                _%tl138135138150%_)
               (_%g138130138140%_ _%g138131138143%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g138130138140%_
                                                    _%g138131138143%_))))
                                           (_%g138130138140%_
                                            _%g138131138143%_)))))
                               (_%g138129138175%_ _%compiled138127%_)))
                           _%tl138094138109%_)))
                      (_%g138089138099%_ _%g138090138102%_)))))
          (_%g138088138178%_ _%stx138087%_))))
    (define gxc#generate-meta-module%
      (lambda (_%self138017%_ _%stx138018%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self138017%_ 'state)))
        (let* ((_%g138020138034%_
                (lambda (_%g138021138031%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138021138031%_))))
               (_%g138019138083%_
                (lambda (_%g138021138037%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138021138037%_))
                      (let ((_%e138024138039%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138021138037%_))))
                        (let ((_%hd138025138042%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138024138039%_)))
                              (_%tl138026138044%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138024138039%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138026138044%_))
                              (let ((_%e138027138047%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138026138044%_))))
                                (let ((_%hd138028138050%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138027138047%_)))
                                      (_%tl138029138052%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138027138047%_))))
                                  ((lambda (_%L138055%_ _%L138056%_)
                                     (let ((_%key138069%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#core-identifier-key
                                               _%L138056%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (interned-symbol? _%key138069%_))
                                           '#!void
                                           (let ()
                                             (declare (not safe))
                                             (gxc#raise-compile-error
                                              '"Cannot compile module with uninterned id"
                                              _%stx138018%_
                                              _%L138056%_
                                              _%key138069%_)))
                                       (let* ((_%ctx138071%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-local-e__0
                                                  _%L138056%_)))
                                              (_%code138074%_
                                               (let ((__tmp147197
                                                      (lambda ()
                                                        (let ((__tmp147198
                                                               (##structure-ref
                                                                _%ctx138071%_
                                                                '11
                                                                gx#module-context::t
                                                                '#f)))
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self138017%_
                                                           __tmp147198)))))
                                                 (declare (not safe))
                                                 (__call-with-parameters
                                                  __tmp147197
                                                  gx#current-expander-context
                                                  _%ctx138071%_)))
                                              (_%rt138076%_
                                               (let ((__tmp147199
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#current-compile-runtime-sections))))
                                                 (declare (not safe))
                                                 (hash-get
                                                  __tmp147199
                                                  _%ctx138071%_)))
                                              (_%loader138078%_
                                               (if _%rt138076%_
                                                   (cons (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons 'load-module '()))
                             (cons (cons '%#quote (cons _%rt138076%_ '()))
                                   '())))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                              (_%modid138080%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _%L138056%_))))
                                         (gxc#meta-state-end-phi!
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self138017%_
                                             'state)))
                                         (cons '%#module
                                               (cons _%modid138080%_
                                                     (cons _%code138074%_
                                                           _%loader138078%_))))))
                                   _%tl138029138052%_
                                   _%hd138028138050%_)))
                              (_%g138020138034%_ _%g138021138037%_))))
                      (_%g138020138034%_ _%g138021138037%_)))))
          (_%g138019138083%_ _%stx138018%_))))
    (define gxc#generate-meta-import-path
      (lambda (_%ctx138004%_ _%context-chain138005%_)
        (let _%lp138007%_ ((_%ctx138009%_ _%ctx138004%_) (_%path138010%_ '()))
          (let ((_%super138012%_
                 (##structure-ref _%ctx138009%_ '3 gx#phi-context::t '#f)))
            (if (memq _%super138012%_ _%context-chain138005%_)
                (cons '#f
                      (cons (car (##structure-ref
                                  _%ctx138009%_
                                  '7
                                  gx#module-context::t
                                  '#f))
                            _%path138010%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%super138012%_
                       'gx#module-context::t))
                    (_%lp138007%_
                     _%super138012%_
                     (cons (car (##structure-ref
                                 _%ctx138009%_
                                 '7
                                 gx#module-context::t
                                 '#f))
                           _%path138010%_))
                    (cons (let ((__tmp147200
                                 (##structure-ref
                                  _%ctx138009%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (make-symbol__1 '":" __tmp147200))
                          _%path138010%_)))))))
    (define gxc#current-context-chain
      (lambda ()
        (let _%lp137997%_ ((_%ctx137999%_
                            (let ()
                              (declare (not safe))
                              (gx#current-expander-context)))
                           (_%r138000%_ '()))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%ctx137999%_ 'gx#module-context::t))
              (_%lp137997%_
               (##structure-ref _%ctx137999%_ '3 gx#phi-context::t '#f)
               (cons _%ctx137999%_ _%r138000%_))
              _%r138000%_))))
    (define gxc#generate-meta-import%
      (lambda (_%self137760%_ _%stx137761%_)
        (letrec* ((_%context-chain137763%_ (gxc#current-context-chain))
                  (_%make-import-spec137764%_
                   (lambda (_%in137933%_)
                     (let* ((_%in137934137946%_ _%in137933%_)
                            (_%E137936137950%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%in137934137946%_
                                        '((module-import
                                           (module-export
                                            src-ctx
                                            src-key
                                            src-phi
                                            src-name)
                                           name
                                           phi))))
                               '#!void))
                            (_%K137937137960%_
                             (lambda (_%phi137953%_
                                      _%name137954%_
                                      _%src-name137955%_
                                      _%src-phi137956%_
                                      _%src-key137957%_
                                      _%src-ctx137958%_)
                               (cons _%phi137953%_
                                     (cons (gxc#generate-runtime-identifier-key
                                            _%name137954%_)
                                           (cons _%src-phi137956%_
                                                 (cons (gxc#generate-runtime-identifier-key
                                                        _%src-name137955%_)
                                                       '())))))))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              _%in137934137946%_
                              'gx#module-import::t))
                           (let ((_%e137938137963%_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%in137934137946%_
                                     '1
                                     '#f
                                     '#f))))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    _%e137938137963%_
                                    'gx#module-export::t))
                                 (let* ((_%e137941137966%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e137938137963%_
                                            '1
                                            '#f
                                            '#f)))
                                        (_%src-ctx137969%_ _%e137941137966%_)
                                        (_%e137942137971%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e137938137963%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%src-key137974%_ _%e137942137971%_)
                                        (_%e137943137976%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e137938137963%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%src-phi137979%_ _%e137943137976%_)
                                        (_%e137944137981%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e137938137963%_
                                            '4
                                            '#f
                                            '#f)))
                                        (_%src-name137984%_ _%e137944137981%_)
                                        (_%e137939137986%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in137934137946%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%name137989%_ _%e137939137986%_)
                                        (_%e137940137991%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in137934137946%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%phi137994%_ _%e137940137991%_))
                                   (_%K137937137960%_
                                    _%phi137994%_
                                    _%name137989%_
                                    _%src-name137984%_
                                    _%src-phi137979%_
                                    _%src-key137974%_
                                    _%src-ctx137969%_))
                                 (_%E137936137950%_)))
                           (_%E137936137950%_)))))
                  (_%make-import-path137765%_
                   (lambda (_%ctx137931%_)
                     (gxc#generate-meta-import-path
                      _%ctx137931%_
                      _%context-chain137763%_)))
                  (_%make-import-spec-in137766%_
                   (lambda (_%ctx137928%_ _%in137929%_)
                     (cons 'spec:
                           (cons (_%make-import-path137765%_ _%ctx137928%_)
                                 (reverse _%in137929%_))))))
          (gxc#meta-state-end-phi!
           (let () (declare (not safe)) (slot-ref__0 _%self137760%_ 'state)))
          (let* ((_%g137768137778%_
                  (lambda (_%g137769137775%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g137769137775%_))))
                 (_%g137767137925%_
                  (lambda (_%g137769137781%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g137769137781%_))
                        (let ((_%e137771137783%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g137769137781%_))))
                          (let ((_%hd137772137786%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e137771137783%_)))
                                (_%tl137773137788%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e137771137783%_))))
                            ((lambda (_%L137791%_)
                               (let _%lp137802%_ ((_%rest137804%_ _%L137791%_)
                                                  (_%current-src137805%_ '#f)
                                                  (_%current-in137806%_ '())
                                                  (_%r137807%_ '()))
                                 (let* ((_%rest137808137816%_ _%rest137804%_)
                                        (_%else137810137826%_
                                         (lambda ()
                                           (let ((_%r137824%_
                                                  (if _%current-src137805%_
                                                      (cons (_%make-import-spec-in137766%_
                                                             _%current-src137805%_
                                                             _%current-in137806%_)
                                                            _%r137807%_)
                                                      _%r137807%_)))
                                             (cons '%#import
                                                   (reverse _%r137824%_)))))
                                        (_%K137812137913%_
                                         (lambda (_%rest137829%_ _%in137830%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in137830%_
                                                  'gx#module-import::t))
                                               (let* ((_%in137832137839%_
                                                       _%in137830%_)
                                                      (_%E137834137843%_
                                                       (lambda ()
                                                         (let ()
                                                           (declare (not safe))
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%in137832137839%_
                          '((module-import (module-export src-ctx)))))
                 '#!void))
              (_%K137835137851%_
               (lambda (_%src-ctx137846%_)
                 (if (eq? _%current-src137805%_ _%src-ctx137846%_)
                     (_%lp137802%_
                      _%rest137829%_
                      _%current-src137805%_
                      (cons (_%make-import-spec137764%_ _%in137830%_)
                            _%current-in137806%_)
                      _%r137807%_)
                     (if _%current-src137805%_
                         (_%lp137802%_
                          _%rest137829%_
                          _%src-ctx137846%_
                          (cons (_%make-import-spec137764%_ _%in137830%_) '())
                          (cons (_%make-import-spec-in137766%_
                                 _%current-src137805%_
                                 _%current-in137806%_)
                                _%r137807%_))
                         (_%lp137802%_
                          _%rest137829%_
                          _%src-ctx137846%_
                          (cons (_%make-import-spec137764%_ _%in137830%_) '())
                          _%r137807%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%in137832137839%_
                                                        'gx#module-import::t))
                                                     (let ((_%e137836137854%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%in137832137839%_
                                                               '1
                                                               '#f
                                                               '#f))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure-direct-instance-of?
                                                              _%e137836137854%_
                                                              'gx#module-export::t))
                                                           (let* ((_%e137837137857%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%e137836137854%_
                              '1
                              '#f
                              '#f)))
                          (_%src-ctx137860%_ _%e137837137857%_))
                     (_%K137835137851%_ _%src-ctx137860%_))
                   (_%E137834137843%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E137834137843%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%in137830%_
                                                      'gx#import-set::t))
                                                   (let* ((_%phi137863%_
                                                           (##direct-structure-ref
                                                            _%in137830%_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))
                                                          (_%src137865%_
                                                           (##direct-structure-ref
                                                            _%in137830%_
                                                            '1
                                                            gx#import-set::t
                                                            '#f))
                                                          (_%src-in137905%_
                                                           (let* ((_%g137866137875%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (_%make-import-path137765%_ _%src137865%_))
                          (_%E137869137879%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (error '"No clause matching"
                                      _%g137866137875%_
                                      '([path])
                                      '(path)))
                             '#!void)))
                     (let ((_%K137871137895%_
                            (lambda (_%path137893%_) _%path137893%_))
                           (_%K137870137885%_
                            (lambda (_%path137883%_)
                              (cons 'in: _%path137883%_))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _%g137866137875%_))
                           (let ((_%tl137873137900%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%g137866137875%_)))
                                 (_%hd137872137898%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%g137866137875%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _%tl137873137900%_))
                                 (let ((_%path137903%_ _%hd137872137898%_))
                                   (_%K137871137895%_ _%path137903%_))
                                 (let ((_%path137888%_ _%g137866137875%_))
                                   (_%K137870137885%_ _%path137888%_))))
                           (let ((_%path137888%_ _%g137866137875%_))
                             (_%K137870137885%_ _%path137888%_))))))
                  (_%r137907%_
                   (if _%current-src137805%_
                       (cons (_%make-import-spec-in137766%_
                              _%current-src137805%_
                              _%current-in137806%_)
                             _%r137807%_)
                       _%r137807%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%lp137802%_
                                                      _%rest137829%_
                                                      '#f
                                                      '()
                                                      (cons (if (fxzero? _%phi137863%_)
                                                                _%src-in137905%_
                                                                (cons 'phi:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%phi137863%_
                                    (cons _%src-in137905%_ '()))))
                    _%r137907%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-instance-of?
                                                          _%in137830%_
                                                          'gx#module-context::t))
                                                       (let ((_%r137911%_
                                                              (if _%current-src137805%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (_%make-import-spec-in137766%_
                                 _%current-src137805%_
                                 _%current-in137806%_)
                                _%r137807%_)
                          _%r137807%_)))
                 (_%lp137802%_
                  _%rest137829%_
                  '#f
                  '()
                  (cons (cons 'runtime:
                              (_%make-import-path137765%_ _%in137830%_))
                        _%r137911%_)))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _%rest137808137816%_))
                                       (let ((_%hd137813137916%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest137808137816%_)))
                                             (_%tl137814137918%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest137808137816%_))))
                                         (let* ((_%in137921%_
                                                 _%hd137813137916%_)
                                                (_%rest137923%_
                                                 _%tl137814137918%_))
                                           (_%K137812137913%_
                                            _%rest137923%_
                                            _%in137921%_)))
                                       (_%else137810137826%_)))))
                             _%tl137773137788%_)))
                        (_%g137768137778%_ _%g137769137781%_)))))
            (_%g137767137925%_ _%stx137761%_)))))
    (define gxc#generate-meta-export%
      (lambda (_%self137570%_ _%stx137571%_)
        (letrec* ((_%context-chain137573%_ (gxc#current-context-chain))
                  (_%make-import-path137574%_
                   (lambda (_%ctx137758%_)
                     (gxc#generate-meta-import-path
                      _%ctx137758%_
                      _%context-chain137573%_))))
          (let* ((_%g137576137586%_
                  (lambda (_%g137577137583%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g137577137583%_))))
                 (_%g137575137755%_
                  (lambda (_%g137577137589%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g137577137589%_))
                        (let ((_%e137579137591%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g137577137589%_))))
                          (let ((_%hd137580137594%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e137579137591%_)))
                                (_%tl137581137596%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e137579137591%_))))
                            ((lambda (_%L137599%_)
                               (let _%lp137610%_ ((_%rest137612%_ _%L137599%_)
                                                  (_%r137613%_ '()))
                                 (let* ((_%rest137614137622%_ _%rest137612%_)
                                        (_%else137616137630%_
                                         (lambda ()
                                           (cons '%#export
                                                 (reverse _%r137613%_))))
                                        (_%K137618137743%_
                                         (lambda (_%rest137633%_ _%out137634%_)
                                           (let* ((_%out137635137648%_
                                                   _%out137634%_)
                                                  (_%E137638137652%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%out137635137648%_
                                                              '((module-export
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _
                         key
                         phi
                         name))
                      '((export-set src phi))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#!void)))
                                             (let ((_%K137642137722%_
                                                    (lambda (_%name137718%_
                                                             _%phi137719%_
                                                             _%key137720%_)
                                                      (_%lp137610%_
                                                       _%rest137633%_
                                                       (cons (cons 'spec:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%phi137719%_
                                 (cons (gxc#generate-runtime-identifier-key
                                        _%key137720%_)
                                       (cons (gxc#generate-runtime-identifier-key
                                              _%name137718%_)
                                             '()))))
                     _%r137613%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K137639137702%_
                                                    (lambda (_%phi137656%_
                                                             _%src137657%_)
                                                      (let* ((_%out137697%_
                                                              (if _%src137657%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'import:
                                (cons (let* ((_%g137658137667%_
                                              (_%make-import-path137574%_
                                               _%src137657%_))
                                             (_%E137661137671%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (error '"No clause matching"
                                                         _%g137658137667%_
                                                         '([path])
                                                         '(path)))
                                                '#!void)))
                                        (let ((_%K137663137687%_
                                               (lambda (_%path137685%_)
                                                 _%path137685%_))
                                              (_%K137662137677%_
                                               (lambda (_%path137675%_)
                                                 (cons 'in: _%path137675%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _%g137658137667%_))
                                              (let ((_%tl137665137692%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%g137658137667%_)))
                                                    (_%hd137664137690%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%g137658137667%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##null? _%tl137665137692%_))
                                                    (let ((_%path137695%_
                                                           _%hd137664137690%_))
                                                      (_%K137663137687%_
                                                       _%path137695%_))
                                                    (let ((_%path137680%_
                                                           _%g137658137667%_))
                                                      (_%K137662137677%_
                                                       _%path137680%_))))
                                              (let ((_%path137680%_
                                                     _%g137658137667%_))
                                                (_%K137662137677%_
                                                 _%path137680%_)))))
                                      '()))
                          '#t))
                     (_%out137699%_
                      (if (fxzero? _%phi137656%_)
                          _%out137697%_
                          (cons 'phi:
                                (cons _%phi137656%_
                                      (cons _%out137697%_ '()))))))
                (_%lp137610%_
                 _%rest137633%_
                 (cons _%out137699%_ _%r137613%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_%try-match137637137715%_
                                                      (lambda ()
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-direct-instance-of?
                                                               _%out137635137648%_
                                                               'gx#export-set::t))
                                                            (let* ((_%e137640137705%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out137635137648%_
                               '1
                               '#f
                               '#f)))
                           (_%e137641137710%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out137635137648%_
                               '2
                               '#f
                               '#f))))
                      (let ((_%src137708%_ _%e137640137705%_)
                            (_%phi137713%_ _%e137641137710%_))
                        (_%K137639137702%_ _%phi137713%_ _%src137708%_)))
                    (_%E137638137652%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%out137635137648%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e137643137725%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%out137635137648%_
                        '1
                        '#f
                        '#f)))
                    (_%e137644137728%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out137635137648%_
                        '2
                        '#f
                        '#f)))
                    (_%e137645137733%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out137635137648%_
                        '3
                        '#f
                        '#f)))
                    (_%e137646137738%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out137635137648%_
                        '4
                        '#f
                        '#f))))
               (let ((_%key137731%_ _%e137644137728%_)
                     (_%phi137736%_ _%e137645137733%_)
                     (_%name137741%_ _%e137646137738%_))
                 (_%K137642137722%_
                  _%name137741%_
                  _%phi137736%_
                  _%key137731%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%try-match137637137715%_))))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _%rest137614137622%_))
                                       (let ((_%hd137619137746%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest137614137622%_)))
                                             (_%tl137620137748%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest137614137622%_))))
                                         (let* ((_%out137751%_
                                                 _%hd137619137746%_)
                                                (_%rest137753%_
                                                 _%tl137620137748%_))
                                           (_%K137618137743%_
                                            _%rest137753%_
                                            _%out137751%_)))
                                       (_%else137616137630%_)))))
                             _%tl137581137596%_)))
                        (_%g137576137586%_ _%g137577137589%_)))))
            (_%g137575137755%_ _%stx137571%_)))))
    (define gxc#generate-meta-provide%
      (lambda (_%self137531%_ _%stx137532%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self137531%_ 'state)))
        (let* ((_%g137534137544%_
                (lambda (_%g137535137541%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137535137541%_))))
               (_%g137533137567%_
                (lambda (_%g137535137547%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137535137547%_))
                      (let ((_%e137537137549%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137535137547%_))))
                        (let ((_%hd137538137552%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137537137549%_)))
                              (_%tl137539137554%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137537137549%_))))
                          ((lambda (_%L137557%_)
                             (cons '%#provide
                                   (map gxc#generate-runtime-identifier
                                        _%L137557%_)))
                           _%tl137539137554%_)))
                      (_%g137534137544%_ _%g137535137547%_)))))
          (_%g137533137567%_ _%stx137532%_))))
    (define gxc#generate-meta-extern%
      (lambda (_%self137402%_ _%stx137403%_)
        (letrec ((_%generate1137405%_
                  (lambda (_%id137526%_ _%eid137527%_)
                    (let ((_%eid137529%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%eid137527%_))))
                      (if (let ()
                            (declare (not safe))
                            (interned-symbol? _%eid137529%_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"Cannot compile extern reference"
                             _%stx137403%_
                             _%eid137529%_)))
                      (cons (gxc#generate-runtime-identifier _%id137526%_)
                            (cons _%eid137529%_ '()))))))
          (let* ((_%g137407137435%_
                  (lambda (_%g137408137432%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g137408137432%_))))
                 (_%g137406137523%_
                  (lambda (_%g137408137438%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g137408137438%_))
                        (let ((_%e137411137440%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g137408137438%_))))
                          (let ((_%hd137412137443%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e137411137440%_)))
                                (_%tl137413137445%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e137411137440%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl137413137445%_))
                                (let ((_g147201_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl137413137445%_
                                          '0))))
                                  (begin
                                    (let ((_g147202_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g147201_)
                                                 (##vector-length _g147201_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g147202_ 2)))
                                          (error "Context expects 2 values"
                                                 _g147202_)))
                                    (let ((_%target137414137448%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g147201_ 0)))
                                          (_%tl137416137450%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g147201_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl137416137450%_))
                                          (letrec ((_%loop137417137453%_
                                                    (lambda (_%hd137415137456%_
                                                             _%eid137421137458%_
                                                             _%id137422137460%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd137415137456%_))
                                                          (let ((_%e137418137463%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd137415137456%_))))
                    (let ((_%lp-hd137419137466%_
                           (let ()
                             (declare (not safe))
                             (##car _%e137418137463%_)))
                          (_%lp-tl137420137468%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e137418137463%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd137419137466%_))
                          (let ((_%e137425137471%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd137419137466%_))))
                            (let ((_%hd137426137474%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e137425137471%_)))
                                  (_%tl137427137476%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e137425137471%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl137427137476%_))
                                  (let ((_%e137428137479%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl137427137476%_))))
                                    (let ((_%hd137429137482%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e137428137479%_)))
                                          (_%tl137430137484%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e137428137479%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl137430137484%_))
                                          (_%loop137417137453%_
                                           _%lp-tl137420137468%_
                                           (cons _%hd137429137482%_
                                                 _%eid137421137458%_)
                                           (cons _%hd137426137474%_
                                                 _%id137422137460%_))
                                          (_%g137407137435%_
                                           _%g137408137438%_))))
                                  (_%g137407137435%_ _%g137408137438%_))))
                          (_%g137407137435%_ _%g137408137438%_))))
                  (let ((_%eid137423137487%_ (reverse _%eid137421137458%_))
                        (_%id137424137489%_ (reverse _%id137422137460%_)))
                    ((lambda (_%L137492%_ _%L137493%_)
                       (cons '%#extern
                             (map _%generate1137405%_
                                  (let ((__tmp147203
                                         (lambda (_%g137508137511%_
                                                  _%g137509137513%_)
                                           (cons _%g137508137511%_
                                                 _%g137509137513%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp147203 '() _%L137493%_))
                                  (let ((__tmp147204
                                         (lambda (_%g137515137518%_
                                                  _%g137516137520%_)
                                           (cons _%g137515137518%_
                                                 _%g137516137520%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp147204 '() _%L137492%_)))))
                     _%eid137423137487%_
                     _%id137424137489%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop137417137453%_
                                             _%target137414137448%_
                                             '()
                                             '()))
                                          (_%g137407137435%_
                                           _%g137408137438%_)))))
                                (_%g137407137435%_ _%g137408137438%_))))
                        (_%g137407137435%_ _%g137408137438%_)))))
            (_%g137406137523%_ _%stx137403%_)))))
    (define gxc#generate-meta-define-values%
      (lambda (_%self137192%_ _%stx137193%_)
        (letrec ((_%generate1137195%_
                  (lambda (_%id137397%_)
                    (let ((_%eid137399%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%id137397%_)))
                          (_%ident137400%_
                           (gxc#generate-runtime-identifier _%id137397%_)))
                      (cons '%#define-runtime
                            (cons _%ident137400%_ (cons _%eid137399%_ '()))))))
                 (_%generate*137196%_
                  (lambda (_%all137365%_)
                    (let* ((_%all137366137374%_ _%all137365%_)
                           (_%else137368137382%_
                            (lambda () (cons '%#begin _%all137365%_)))
                           (_%K137370137387%_
                            (lambda (_%one137385%_) _%one137385%_)))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%all137366137374%_))
                          (let ((_%hd137371137390%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all137366137374%_)))
                                (_%tl137372137392%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all137366137374%_))))
                            (let ((_%one137395%_ _%hd137371137390%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _%tl137372137392%_))
                                  (_%K137370137387%_ _%one137395%_)
                                  (_%else137368137382%_))))
                          (_%else137368137382%_))))))
          (let* ((_%g137198137215%_
                  (lambda (_%g137199137212%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g137199137212%_))))
                 (_%g137197137362%_
                  (lambda (_%g137199137218%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g137199137218%_))
                        (let ((_%e137202137220%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g137199137218%_))))
                          (let ((_%hd137203137223%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e137202137220%_)))
                                (_%tl137204137225%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e137202137220%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl137204137225%_))
                                (let ((_%e137205137228%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl137204137225%_))))
                                  (let ((_%hd137206137231%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e137205137228%_)))
                                        (_%tl137207137233%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e137205137228%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl137207137233%_))
                                        (let ((_%e137208137236%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl137207137233%_))))
                                          (let ((_%hd137209137239%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e137208137236%_)))
                                                (_%tl137210137241%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e137208137236%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl137210137241%_))
                                                ((lambda (_%L137244%_
                                                          _%L137245%_)
                                                   (let _%lp137261%_ ((_%rest137263%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%L137245%_)
                              (_%r137264%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((_%__stx146940146941%_
                                                             _%rest137263%_)
                                                            (_%g137269137286%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%__stx146940146941%_)))))
               (let ((_%__kont146942146943%_
                      (lambda (_%L137349%_)
                        (_%lp137261%_ _%L137349%_ _%r137264%_)))
                     (_%__kont146944146945%_
                      (lambda (_%L137322%_ _%L137323%_)
                        (_%lp137261%_
                         _%L137322%_
                         (cons (_%generate1137195%_ _%L137323%_)
                               _%r137264%_))))
                     (_%__kont146946146947%_
                      (lambda (_%L137298%_)
                        (_%generate*137196%_
                         (let ((__tmp147205
                                (cons (_%generate1137195%_ _%L137298%_) '())))
                           (declare (not safe))
                           (__foldl1 cons __tmp147205 _%r137264%_)))))
                     (_%__kont146948146949%_
                      (lambda () (_%generate*137196%_ (reverse _%r137264%_)))))
                 (let ((_%g137267137309%_
                        (lambda ()
                          (let ((_%L137298%_ _%__stx146940146941%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L137298%_))
                                (_%__kont146946146947%_ _%L137298%_)
                                (_%__kont146948146949%_))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%__stx146940146941%_))
                       (let ((_%e137272137338%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%__stx146940146941%_))))
                         (let ((_%tl137274137343%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e137272137338%_)))
                               (_%hd137273137341%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e137272137338%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-datum? _%hd137273137341%_))
                               (let ((_%e137275137346%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd137273137341%_))))
                                 (if (equal? _%e137275137346%_ '#f)
                                     (_%__kont146942146943%_
                                      _%tl137274137343%_)
                                     (_%__kont146944146945%_
                                      _%tl137274137343%_
                                      _%hd137273137341%_)))
                               (_%__kont146944146945%_
                                _%tl137274137343%_
                                _%hd137273137341%_))))
                       (let () (declare (not safe)) (_%g137267137309%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd137209137239%_
                                                 _%hd137206137231%_)
                                                (_%g137198137215%_
                                                 _%g137199137218%_))))
                                        (_%g137198137215%_
                                         _%g137199137218%_))))
                                (_%g137198137215%_ _%g137199137218%_))))
                        (_%g137198137215%_ _%g137199137218%_)))))
            (_%g137197137362%_ _%stx137193%_)))))
    (define gxc#generate-meta-define-syntax%
      (lambda (_%self137089%_ _%stx137090%_)
        (let* ((_%g137092137109%_
                (lambda (_%g137093137106%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137093137106%_))))
               (_%g137091137189%_
                (lambda (_%g137093137112%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137093137112%_))
                      (let ((_%e137096137114%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137093137112%_))))
                        (let ((_%hd137097137117%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137096137114%_)))
                              (_%tl137098137119%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137096137114%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137098137119%_))
                              (let ((_%e137099137122%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137098137119%_))))
                                (let ((_%hd137100137125%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137099137122%_)))
                                      (_%tl137101137127%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137099137122%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137101137127%_))
                                      (let ((_%e137102137130%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137101137127%_))))
                                        (let ((_%hd137103137133%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137102137130%_)))
                                              (_%tl137104137135%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137102137130%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl137104137135%_))
                                              ((lambda (_%L137138%_
                                                        _%L137139%_)
                                                 (let* ((_%eid137154%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#generate-runtime-binding-id
                                                            _%L137139%_)))
                                                        (_%phi137156%_
                                                         (let ((__tmp147206
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#current-expander-phi))))
                   (declare (not safe))
                   (##fx+ __tmp147206 '1)))
                (_%block137158%_
                 (gxc#meta-state-begin-phi!
                  (let ()
                    (declare (not safe))
                    (slot-ref__0 _%self137089%_ 'state))
                  _%phi137156%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%g137161137168%_
                                                           (lambda (_%g137162137165%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g137162137165%_))))
                  (_%g137160137186%_
                   (lambda (_%g137162137171%_)
                     ((lambda (_%L137173%_)
                        (gxc#meta-state-add-phi!
                         (let ()
                           (declare (not safe))
                           (slot-ref__0 _%self137089%_ 'state))
                         _%phi137156%_
                         (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#define-runtime))
                               (cons _%L137173%_ (cons _%L137138%_ '())))))
                      _%g137162137171%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g137160137186%_
                                                      _%eid137154%_))
                                                   (if _%block137158%_
                                                       (cons '%#begin
                                                             (cons (cons '%#begin-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons 'load-module
                                                               '()))
                                                   (cons (cons '%#quote
                                                               (cons _%block137158%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons '%#define-syntax
                                       (cons (gxc#generate-runtime-identifier
                                              _%L137139%_)
                                             (cons _%eid137154%_ '())))
                                 '())))
               (cons '%#define-syntax
                     (cons (gxc#generate-runtime-identifier _%L137139%_)
                           (cons _%eid137154%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd137103137133%_
                                               _%hd137100137125%_)
                                              (_%g137092137109%_
                                               _%g137093137112%_))))
                                      (_%g137092137109%_ _%g137093137112%_))))
                              (_%g137092137109%_ _%g137093137112%_))))
                      (_%g137092137109%_ _%g137093137112%_)))))
          (_%g137091137189%_ _%stx137090%_))))
    (define gxc#generate-meta-define-alias%
      (lambda (_%self137021%_ _%stx137022%_)
        (let* ((_%g137024137041%_
                (lambda (_%g137025137038%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137025137038%_))))
               (_%g137023137086%_
                (lambda (_%g137025137044%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137025137044%_))
                      (let ((_%e137028137046%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137025137044%_))))
                        (let ((_%hd137029137049%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137028137046%_)))
                              (_%tl137030137051%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137028137046%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137030137051%_))
                              (let ((_%e137031137054%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137030137051%_))))
                                (let ((_%hd137032137057%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137031137054%_)))
                                      (_%tl137033137059%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137031137054%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137033137059%_))
                                      (let ((_%e137034137062%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137033137059%_))))
                                        (let ((_%hd137035137065%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137034137062%_)))
                                              (_%tl137036137067%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137034137062%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl137036137067%_))
                                              ((lambda (_%L137070%_
                                                        _%L137071%_)
                                                 (cons '%#define-alias
                                                       (cons (gxc#generate-runtime-identifier
                                                              _%L137071%_)
                                                             (cons (gxc#generate-runtime-identifier
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%L137070%_)
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd137035137065%_
                                               _%hd137032137057%_)
                                              (_%g137024137041%_
                                               _%g137025137044%_))))
                                      (_%g137024137041%_ _%g137025137044%_))))
                              (_%g137024137041%_ _%g137025137044%_))))
                      (_%g137024137041%_ _%g137025137044%_)))))
          (_%g137023137086%_ _%stx137022%_))))
    (define gxc#generate-meta-phi-define-values%
      (lambda (_%self137018%_ _%stx137019%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self137018%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx137019%_)
        (gxc#generate-meta-define-values% _%self137018%_ _%stx137019%_)))
    (define gxc#generate-meta-phi-expr
      (lambda (_%self137015%_ _%stx137016%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self137015%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx137016%_)
        '#!void))
    (define gxc#meta-state::t
      (let ((__tmp147208 (list)) (__tmp147207 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state::t
         'meta-state
         __tmp147208
         '(src n open blocks)
         __tmp147207
         ':init!)))
    (define gxc#meta-state?
      (let () (declare (not safe)) (__make-class-predicate gxc#meta-state::t)))
    (define gxc#make-meta-state
      (lambda _%$args137012%_
        (apply make-instance gxc#meta-state::t _%$args137012%_)))
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
      (lambda (_%self136357136996%_ _%ctx136998%_)
        (let* ((_%self137000%_ _%self136357136996%_)
               (_%self137002%_ _%self137000%_))
          (if (let ((__tmp147209
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self137002%_))))
                (declare (not safe))
                (##fx< '4 __tmp147209))
              (begin
                (let ((__tmp147210
                       (let ((__tmp147211
                              (##structure-ref
                               _%ctx136998%_
                               '1
                               gx#expander-context::t
                               '#f)))
                         (declare (not safe))
                         (gxc#module-id->path-string __tmp147211))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self137002%_
                   __tmp147210
                   '1
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self137002%_ '1 '2 '#f '#f))
                (let ((__tmp147212
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self137002%_
                   __tmp147212
                   '3
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self137002%_ '() '4 '#f '#f))
                '#!void)
              (let ((__tmp147213
                     (let ()
                       (declare (not safe))
                       (##vector-length _%self137002%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self137002%_
                       '4
                       __tmp147213))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#meta-state::t ':init! gxc#meta-state:::init! '#f))
    (define gxc#meta-state-block::t
      (let ((__tmp147215 (list)) (__tmp147214 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state-block::t
         'meta-state-block
         __tmp147215
         '(ctx phi n code)
         __tmp147214
         '#f)))
    (define gxc#meta-state-block?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#meta-state-block::t)))
    (define gxc#make-meta-state-block
      (lambda _%$args136871%_
        (apply make-instance gxc#meta-state-block::t _%$args136871%_)))
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
      (lambda (_%state136830%_ _%phi136831%_)
        (let* ((_%state136832136840%_ _%state136830%_)
               (_%E136834136844%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%state136832136840%_
                           '((meta-state src n open))))
                  '#!void))
               (_%K136835136853%_
                (lambda (_%open136847%_ _%n136848%_ _%src136849%_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _%open136847%_ _%phi136831%_))
                      '#f
                      (let ((_%block-ref136851%_
                             (let ((__tmp147216 (number->string _%n136848%_)))
                               (declare (not safe))
                               (##string-append
                                _%src136849%_
                                '"~"
                                __tmp147216))))
                        (##structure-set!
                         _%state136830%_
                         (let () (declare (not safe)) (##fx+ _%n136848%_ '1))
                         '2
                         gxc#meta-state::t
                         '#f)
                        (let ((__tmp147217
                               (let ((__tmp147218
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context))))
                                 (declare (not safe))
                                 (##structure
                                  gxc#meta-state-block::t
                                  __tmp147218
                                  _%phi136831%_
                                  _%n136848%_
                                  '()))))
                          (declare (not safe))
                          (hash-put! _%open136847%_ _%phi136831%_ __tmp147217))
                        _%block-ref136851%_)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _%state136832136840%_
                 'gxc#meta-state::t))
              (let* ((_%e136836136856%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state136832136840%_
                         '1
                         '#f
                         '#f)))
                     (_%src136859%_ _%e136836136856%_)
                     (_%e136837136861%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state136832136840%_
                         '2
                         '#f
                         '#f)))
                     (_%n136864%_ _%e136837136861%_)
                     (_%e136838136866%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state136832136840%_
                         '3
                         '#f
                         '#f)))
                     (_%open136869%_ _%e136838136866%_))
                (_%K136835136853%_ _%open136869%_ _%n136864%_ _%src136859%_))
              (_%E136834136844%_)))))
    (define gxc#meta-state-add-phi!
      (lambda (_%state136824%_ _%phi136825%_ _%stx136826%_)
        (let ((_%block136828%_
               (let ((__tmp147219
                      (##structure-ref
                       _%state136824%_
                       '3
                       gxc#meta-state::t
                       '#f)))
                 (declare (not safe))
                 (hash-get __tmp147219 _%phi136825%_))))
          (##structure-set!
           _%block136828%_
           (cons _%stx136826%_
                 (##structure-ref
                  _%block136828%_
                  '4
                  gxc#meta-state-block::t
                  '#f))
           '4
           gxc#meta-state-block::t
           '#f))))
    (define gxc#meta-state-end-phi!
      (lambda (_%state136818%_)
        (##structure-set!
         _%state136818%_
         (let ((__tmp147222
                (lambda (_%_136820%_ _%block136821%_ _%r136822%_)
                  (cons _%block136821%_ _%r136822%_)))
               (__tmp147221
                (##structure-ref _%state136818%_ '4 gxc#meta-state::t '#f))
               (__tmp147220
                (##structure-ref _%state136818%_ '3 gxc#meta-state::t '#f)))
           (declare (not safe))
           (hash-fold __tmp147222 __tmp147221 __tmp147220))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _%state136818%_
         (let () (declare (not safe)) (make-hash-table-eq))
         '3
         gxc#meta-state::t
         '#f)))
    (define gxc#meta-state-end!
      (lambda (_%state136770%_)
        (gxc#meta-state-end-phi! _%state136770%_)
        (let ((__tmp147224
               (lambda (_%block136772%_ _%r136773%_)
                 (let* ((_%block136774136783%_ _%block136772%_)
                        (_%E136776136787%_
                         (lambda ()
                           (let ()
                             (declare (not safe))
                             (error '"No clause matching"
                                    _%block136774136783%_
                                    '((meta-state-block ctx phi n code))))
                           '#!void))
                        (_%K136777136795%_
                         (lambda (_%code136790%_
                                  _%n136791%_
                                  _%phi136792%_
                                  _%ctx136793%_)
                           (if (null? _%code136790%_)
                               _%r136773%_
                               (cons (cons _%ctx136793%_
                                           (cons _%phi136792%_
                                                 (cons _%n136791%_
                                                       (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (reverse _%code136790%_))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%r136773%_)))))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%block136774136783%_
                          'gxc#meta-state-block::t))
                       (let* ((_%e136778136798%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block136774136783%_
                                  '1
                                  '#f
                                  '#f)))
                              (_%ctx136801%_ _%e136778136798%_)
                              (_%e136779136803%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block136774136783%_
                                  '2
                                  '#f
                                  '#f)))
                              (_%phi136806%_ _%e136779136803%_)
                              (_%e136780136808%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block136774136783%_
                                  '3
                                  '#f
                                  '#f)))
                              (_%n136811%_ _%e136780136808%_)
                              (_%e136781136813%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block136774136783%_
                                  '4
                                  '#f
                                  '#f)))
                              (_%code136816%_ _%e136781136813%_))
                         (_%K136777136795%_
                          _%code136816%_
                          _%n136811%_
                          _%phi136806%_
                          _%ctx136801%_))
                       (_%E136776136787%_)))))
              (__tmp147223
               (##structure-ref _%state136770%_ '4 gxc#meta-state::t '#f)))
          (declare (not safe))
          (__foldl1 __tmp147224 '() __tmp147223))))
    (define gxc#collect-expression-refs
      (lambda (_%stx136766%_)
        (let ((_%ht136768%_
               (let () (declare (not safe)) (make-hash-table-eq))))
          (gxc#apply-collect-expression-refs__% '#f _%ht136768%_ _%stx136766%_)
          _%ht136768%_)))
    (define gxc#collect-refs-ref%
      (lambda (_%self136709%_ _%stx136710%_)
        (let* ((_%g136712136725%_
                (lambda (_%g136713136722%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136713136722%_))))
               (_%g136711136763%_
                (lambda (_%g136713136728%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136713136728%_))
                      (let ((_%e136715136730%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136713136728%_))))
                        (let ((_%hd136716136733%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136715136730%_)))
                              (_%tl136717136735%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136715136730%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136717136735%_))
                              (let ((_%e136718136738%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136717136735%_))))
                                (let ((_%hd136719136741%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136718136738%_)))
                                      (_%tl136720136743%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136718136738%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl136720136743%_))
                                      ((lambda (_%L136746%_)
                                         (let* ((_%bind136758%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#resolve-identifier__0
                                                    _%L136746%_)))
                                                (_%eid136760%_
                                                 (if _%bind136758%_
                                                     (##structure-ref
                                                      _%bind136758%_
                                                      '1
                                                      gx#binding::t
                                                      '#f)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%L136746%_))))
                                                (__tmp147225
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self136709%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-put!
                                            __tmp147225
                                            _%eid136760%_
                                            _%eid136760%_)))
                                       _%hd136719136741%_)
                                      (_%g136712136725%_ _%g136713136728%_))))
                              (_%g136712136725%_ _%g136713136728%_))))
                      (_%g136712136725%_ _%g136713136728%_)))))
          (_%g136711136763%_ _%stx136710%_))))
    (define gxc#collect-refs-setq%
      (lambda (_%self136636%_ _%stx136637%_)
        (let* ((_%g136639136656%_
                (lambda (_%g136640136653%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136640136653%_))))
               (_%g136638136706%_
                (lambda (_%g136640136659%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136640136659%_))
                      (let ((_%e136643136661%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136640136659%_))))
                        (let ((_%hd136644136664%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136643136661%_)))
                              (_%tl136645136666%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136643136661%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136645136666%_))
                              (let ((_%e136646136669%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136645136666%_))))
                                (let ((_%hd136647136672%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136646136669%_)))
                                      (_%tl136648136674%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136646136669%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl136648136674%_))
                                      (let ((_%e136649136677%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl136648136674%_))))
                                        (let ((_%hd136650136680%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e136649136677%_)))
                                              (_%tl136651136682%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e136649136677%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl136651136682%_))
                                              ((lambda (_%L136685%_
                                                        _%L136686%_)
                                                 (let* ((_%bind136701%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#resolve-identifier__0
                                                            _%L136686%_)))
                                                        (_%eid136703%_
                                                         (if _%bind136701%_
                                                             (##structure-ref
                                                              _%bind136701%_
                                                              '1
                                                              gx#binding::t
                                                              '#f)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%L136686%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp147226
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self136636%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp147226
                                                      _%eid136703%_
                                                      _%eid136703%_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self136636%_
                                                      _%L136685%_))))
                                               _%hd136650136680%_
                                               _%hd136647136672%_)
                                              (_%g136639136656%_
                                               _%g136640136659%_))))
                                      (_%g136639136656%_ _%g136640136659%_))))
                              (_%g136639136656%_ _%g136640136659%_))))
                      (_%g136639136656%_ _%g136640136659%_)))))
          (_%g136638136706%_ _%stx136637%_))))
    (define gxc#find-runtime-begin%
      (lambda (_%self136593%_ _%stx136594%_)
        (let* ((_%g136596136606%_
                (lambda (_%g136597136603%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136597136603%_))))
               (_%g136595136633%_
                (lambda (_%g136597136609%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136597136609%_))
                      (let ((_%e136599136611%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136597136609%_))))
                        (let ((_%hd136600136614%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136599136611%_)))
                              (_%tl136601136616%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136599136611%_))))
                          ((lambda (_%L136619%_)
                             (let ((__tmp147227
                                    (lambda (_%g136628136630%_)
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self136593%_
                                         _%g136628136630%_)))))
                               (declare (not safe))
                               (__ormap1 __tmp147227 _%L136619%_)))
                           _%tl136601136616%_)))
                      (_%g136596136606%_ _%g136597136609%_)))))
          (_%g136595136633%_ _%stx136594%_))))
    (define gxc#count-values-single%
      (lambda (_%self136590%_ _%stx136591%_) '1))
    (define gxc#count-values-call%
      (lambda (_%self136456%_ _%stx136457%_)
        (let* ((_%__stx146970146971%_ _%stx136457%_)
               (_%g136460136489%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx146970146971%_)))))
          (let ((_%__kont146972146973%_
                 (lambda (_%L136557%_ _%L136558%_)
                   (length (let ((__tmp147228
                                  (lambda (_%g136579136582%_ _%g136580136584%_)
                                    (cons _%g136579136582%_
                                          _%g136580136584%_))))
                             (declare (not safe))
                             (__foldr1 __tmp147228 '() _%L136557%_)))))
                (_%__kont146976146977%_ (lambda () '#f)))
            (let ((_%__match147015147016%_
                   (lambda (_%e136464136501%_
                            _%hd136465136504%_
                            _%tl136466136506%_
                            _%e136467136509%_
                            _%hd136468136512%_
                            _%tl136469136514%_
                            _%e136470136517%_
                            _%hd136471136520%_
                            _%tl136472136522%_
                            _%e136473136525%_
                            _%hd136474136528%_
                            _%tl136475136530%_
                            _%__splice146974146975%_
                            _%target136476136533%_
                            _%tl136478136535%_)
                     (letrec ((_%loop136479136538%_
                               (lambda (_%hd136477136541%_
                                        _%rand136483136543%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd136477136541%_))
                                     (let ((_%e136480136546%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd136477136541%_))))
                                       (let ((_%lp-tl136482136551%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e136480136546%_)))
                                             (_%lp-hd136481136549%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e136480136546%_))))
                                         (_%loop136479136538%_
                                          _%lp-tl136482136551%_
                                          (cons _%lp-hd136481136549%_
                                                _%rand136483136543%_))))
                                     (let ((_%rand136484136554%_
                                            (reverse _%rand136483136543%_)))
                                       (let ((_%L136557%_ _%rand136484136554%_)
                                             (_%L136558%_ _%hd136474136528%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L136558%_
                                                'values))
                                             (_%__kont146972146973%_
                                              _%L136557%_
                                              _%L136558%_)
                                             (_%__kont146976146977%_))))))))
                       (_%loop136479136538%_ _%target136476136533%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx146970146971%_))
                  (let ((_%e136464136501%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx146970146971%_))))
                    (let ((_%tl136466136506%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e136464136501%_)))
                          (_%hd136465136504%_
                           (let ()
                             (declare (not safe))
                             (##car _%e136464136501%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl136466136506%_))
                          (let ((_%e136467136509%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl136466136506%_))))
                            (let ((_%tl136469136514%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e136467136509%_)))
                                  (_%hd136468136512%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e136467136509%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd136468136512%_))
                                  (let ((_%e136470136517%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd136468136512%_))))
                                    (let ((_%tl136472136522%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e136470136517%_)))
                                          (_%hd136471136520%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e136470136517%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd136471136520%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd136471136520%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl136472136522%_))
                                                  (let ((_%e136473136525%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl136472136522%_))))
                                                    (let ((_%tl136475136530%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e136473136525%_)))
                                                          (_%hd136474136528%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e136473136525%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl136475136530%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl136469136514%_))
                      (let ((_%__splice146974146975%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl136469136514%_
                                '0))))
                        (let ((_%tl136478136535%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice146974146975%_ '1)))
                              (_%target136476136533%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice146974146975%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl136478136535%_))
                              (_%__match147015147016%_
                               _%e136464136501%_
                               _%hd136465136504%_
                               _%tl136466136506%_
                               _%e136467136509%_
                               _%hd136468136512%_
                               _%tl136469136514%_
                               _%e136470136517%_
                               _%hd136471136520%_
                               _%tl136472136522%_
                               _%e136473136525%_
                               _%hd136474136528%_
                               _%tl136475136530%_
                               _%__splice146974146975%_
                               _%target136476136533%_
                               _%tl136478136535%_)
                              (_%__kont146976146977%_))))
                      (_%__kont146976146977%_))
                  (_%__kont146976146977%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont146976146977%_))
                                              (_%__kont146976146977%_))
                                          (_%__kont146976146977%_))))
                                  (_%__kont146976146977%_))))
                          (_%__kont146976146977%_))))
                  (_%__kont146976146977%_)))))))
    (define gxc#count-values-if%
      (lambda (_%self136359%_ _%stx136360%_)
        (let* ((_%g136362136383%_
                (lambda (_%g136363136380%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136363136380%_))))
               (_%g136361136453%_
                (lambda (_%g136363136386%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136363136386%_))
                      (let ((_%e136367136388%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136363136386%_))))
                        (let ((_%hd136368136391%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136367136388%_)))
                              (_%tl136369136393%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136367136388%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136369136393%_))
                              (let ((_%e136370136396%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136369136393%_))))
                                (let ((_%hd136371136399%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136370136396%_)))
                                      (_%tl136372136401%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136370136396%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl136372136401%_))
                                      (let ((_%e136373136404%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl136372136401%_))))
                                        (let ((_%hd136374136407%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e136373136404%_)))
                                              (_%tl136375136409%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e136373136404%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl136375136409%_))
                                              (let ((_%e136376136412%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl136375136409%_))))
                                                (let ((_%hd136377136415%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e136376136412%_)))
                                                      (_%tl136378136417%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e136376136412%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl136378136417%_))
                                                      ((lambda (_%L136420%_
                                                                _%L136421%_
                                                                _%L136422%_)
                                                         (let ((_%c1136439136441%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1 _%self136359%_ _%L136421%_))))
                   (if _%c1136439136441%_
                       (let* ((_%c1136444%_ _%c1136439136441%_)
                              (_%c2136445136447%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self136359%_
                                  _%L136420%_))))
                         (if _%c2136445136447%_
                             (let ((_%c2136450%_ _%c2136445136447%_))
                               (if (fx= _%c1136444%_ _%c2136450%_)
                                   _%c1136444%_
                                   '#f))
                             '#f))
                       '#f)))
               _%hd136377136415%_
               _%hd136374136407%_
               _%hd136371136399%_)
              (_%g136362136383%_ _%g136363136386%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g136362136383%_
                                               _%g136363136386%_))))
                                      (_%g136362136383%_ _%g136363136386%_))))
                              (_%g136362136383%_ _%g136363136386%_))))
                      (_%g136362136383%_ _%g136363136386%_)))))
          (_%g136361136453%_ _%stx136360%_))))))
