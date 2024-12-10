(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/compile::timestamp 1733687560)
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
        (letrec ((_%hash-e147628%_
                  (lambda (_%id147630%_)
                    (symbol-hash
                     (let () (declare (not safe)) (gx#stx-e _%id147630%_))))))
          (let ()
            (declare (not safe))
            (make-hash-table__%
             '#f
             absent-value
             absent-value
             gx#bound-identifier=?
             _%hash-e147628%_
             absent-value
             absent-value
             absent-value
             absent-value)))))
    (define gxc#::collect-bindings::t
      (let ((__tmp149015 (list gxc#::void::t))
            (__tmp149014 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-bindings::t
         '::collect-bindings
         __tmp149015
         '()
         __tmp149014
         '#f)))
    (define gxc#::collect-bindings?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-bindings::t)))
    (define gxc#make-::collect-bindings
      (lambda _%$args147624%_
        (apply make-instance gxc#::collect-bindings::t _%$args147624%_)))
    (define gxc#::collect-bindings-bind-methods!
      (let ((__tmp149016
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
        (__make-promise __tmp149016)))
    (define gxc#apply-collect-bindings
      (lambda (_%stx147616%_)
        (force gxc#::collect-bindings-bind-methods!)
        (let* ((_%self147619%_
                (let ((__obj148990
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-bindings::t))))
                  __obj148990))
               (__tmp149017
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self147619%_ _%stx147616%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp149017
           gxc#current-compile-method
           _%self147619%_))))
    (define gxc#::lift-modules::t
      (let ((__tmp149019 (list gxc#::void::t))
            (__tmp149018 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::lift-modules::t
         '::lift-modules
         __tmp149019
         '(modules)
         __tmp149018
         '#f)))
    (define gxc#::lift-modules?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::lift-modules::t)))
    (define gxc#make-::lift-modules
      (lambda _%$args147613%_
        (apply make-instance gxc#::lift-modules::t _%$args147613%_)))
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
      (let ((__tmp149020
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
        (__make-promise __tmp149020)))
    (define gxc#apply-lift-modules__%
      (lambda (_%@@keywords147587%_ _%modules147584147588%_ _%stx147590%_)
        (let ((_%modules147593%_
               (if (eq? _%modules147584147588%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'modules:))
                   _%modules147584147588%_)))
          (force gxc#::lift-modules-bind-methods!)
          (let* ((_%self147595%_
                  (let ((__obj148992
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::lift-modules::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj148992
                       _%modules147593%_
                       '1
                       '#f
                       '#f))
                    __obj148992))
                 (__tmp149021
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self147595%_ _%stx147590%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp149021
             gxc#current-compile-method
             _%self147595%_)))))
    (define gxc#apply-lift-modules__@
      (lambda (_%@@keywords147602%_ . _%args147603%_)
        (apply gxc#apply-lift-modules__%
               _%@@keywords147602%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords147602%_
                  'modules:
                  absent-value))
               _%args147603%_)))
    (define gxc#apply-lift-modules
      (lambda _%args147585147609%_
        (apply keyword-dispatch
               '#(modules:)
               gxc#apply-lift-modules__@
               _%args147585147609%_)))
    (define gxc#::find-runtime-code::t
      (let ((__tmp149023 (list)) (__tmp149022 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-runtime-code::t
         '::find-runtime-code
         __tmp149023
         '()
         __tmp149022
         '#f)))
    (define gxc#::find-runtime-code?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-runtime-code::t)))
    (define gxc#make-::find-runtime-code
      (lambda _%$args147580%_
        (apply make-instance gxc#::find-runtime-code::t _%$args147580%_)))
    (define gxc#::find-runtime-code-bind-methods!
      (let ((__tmp149024
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
        (__make-promise __tmp149024)))
    (define gxc#apply-find-runtime-code
      (lambda (_%stx147572%_)
        (force gxc#::find-runtime-code-bind-methods!)
        (let* ((_%self147575%_
                (let ((__obj148994
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-runtime-code::t))))
                  __obj148994))
               (__tmp149025
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self147575%_ _%stx147572%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp149025
           gxc#current-compile-method
           _%self147575%_))))
    (define gxc#::find-lambda-expression::t
      (let ((__tmp149027 (list gxc#::false::t))
            (__tmp149026 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-lambda-expression::t
         '::find-lambda-expression
         __tmp149027
         '()
         __tmp149026
         '#f)))
    (define gxc#::find-lambda-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-lambda-expression::t)))
    (define gxc#make-::find-lambda-expression
      (lambda _%$args147569%_
        (apply make-instance gxc#::find-lambda-expression::t _%$args147569%_)))
    (define gxc#::find-lambda-expression-bind-methods!
      (let ((__tmp149028
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
        (__make-promise __tmp149028)))
    (define gxc#apply-find-lambda-expression
      (lambda (_%stx147561%_)
        (force gxc#::find-lambda-expression-bind-methods!)
        (let* ((_%self147564%_
                (let ((__obj148996
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-lambda-expression::t))))
                  __obj148996))
               (__tmp149029
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self147564%_ _%stx147561%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp149029
           gxc#current-compile-method
           _%self147564%_))))
    (define gxc#::count-values::t
      (let ((__tmp149031 (list gxc#::false-expression::t))
            (__tmp149030 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::count-values::t
         '::count-values
         __tmp149031
         '()
         __tmp149030
         '#f)))
    (define gxc#::count-values?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::count-values::t)))
    (define gxc#make-::count-values
      (lambda _%$args147558%_
        (apply make-instance gxc#::count-values::t _%$args147558%_)))
    (define gxc#::count-values-bind-methods!
      (let ((__tmp149032
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
        (__make-promise __tmp149032)))
    (define gxc#apply-count-values
      (lambda (_%stx147550%_)
        (force gxc#::count-values-bind-methods!)
        (let* ((_%self147553%_
                (let ((__obj148998
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::count-values::t))))
                  __obj148998))
               (__tmp149033
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self147553%_ _%stx147550%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp149033
           gxc#current-compile-method
           _%self147553%_))))
    (define gxc#::generate-runtime-empty::t
      (let ((__tmp149034 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-empty::t
         '::generate-runtime-empty
         __tmp149034
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime-empty?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-empty::t)))
    (define gxc#make-::generate-runtime-empty
      (lambda _%$args147547%_
        (apply make-instance gxc#::generate-runtime-empty::t _%$args147547%_)))
    (define gxc#::generate-runtime-empty-bind-methods!
      (let ((__tmp149035
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
        (__make-promise __tmp149035)))
    (define gxc#::generate-loader::t
      (let ((__tmp149037 (list gxc#::generate-runtime-empty::t))
            (__tmp149036 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-loader::t
         '::generate-loader
         __tmp149037
         '()
         __tmp149036
         '#f)))
    (define gxc#::generate-loader?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-loader::t)))
    (define gxc#make-::generate-loader
      (lambda _%$args147543%_
        (apply make-instance gxc#::generate-loader::t _%$args147543%_)))
    (define gxc#::generate-loader-bind-methods!
      (let ((__tmp149038
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
        (__make-promise __tmp149038)))
    (define gxc#apply-generate-loader
      (lambda (_%stx147535%_)
        (force gxc#::generate-loader-bind-methods!)
        (let* ((_%self147538%_
                (let ((__obj149001
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-loader::t))))
                  __obj149001))
               (__tmp149039
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self147538%_ _%stx147535%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp149039
           gxc#current-compile-method
           _%self147538%_))))
    (define gxc#::generate-runtime::t
      (let ((__tmp149040 (list gxc#::generate-runtime-empty::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime::t
         '::generate-runtime
         __tmp149040
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime::t)))
    (define gxc#make-::generate-runtime
      (lambda _%$args147532%_
        (apply make-instance gxc#::generate-runtime::t _%$args147532%_)))
    (define gxc#::generate-runtime-bind-methods!
      (let ((__tmp149041
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
        (__make-promise __tmp149041)))
    (define gxc#apply-generate-runtime
      (lambda (_%stx147524%_)
        (force gxc#::generate-runtime-bind-methods!)
        (let* ((_%self147527%_
                (let ((__obj149003
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime::t))))
                  __obj149003))
               (__tmp149042
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self147527%_ _%stx147524%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp149042
           gxc#current-compile-method
           _%self147527%_))))
    (define gxc#::generate-runtime-phi::t
      (let ((__tmp149044 (list gxc#::generate-runtime::t))
            (__tmp149043 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-phi::t
         '::generate-runtime-phi
         __tmp149044
         '()
         __tmp149043
         '#f)))
    (define gxc#::generate-runtime-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-phi::t)))
    (define gxc#make-::generate-runtime-phi
      (lambda _%$args147521%_
        (apply make-instance gxc#::generate-runtime-phi::t _%$args147521%_)))
    (define gxc#::generate-runtime-phi-bind-methods!
      (let ((__tmp149045
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
        (__make-promise __tmp149045)))
    (define gxc#apply-generate-runtime-phi
      (lambda (_%stx147513%_)
        (force gxc#::generate-runtime-phi-bind-methods!)
        (let* ((_%self147516%_
                (let ((__obj149005
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime-phi::t))))
                  __obj149005))
               (__tmp149046
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self147516%_ _%stx147513%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp149046
           gxc#current-compile-method
           _%self147516%_))))
    (define gxc#::collect-expression-refs::t
      (let ((__tmp149047 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-expression-refs::t
         '::collect-expression-refs
         __tmp149047
         '(table)
         '()
         '#f)))
    (define gxc#::collect-expression-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-expression-refs::t)))
    (define gxc#make-::collect-expression-refs
      (lambda _%$args147510%_
        (apply make-instance
               gxc#::collect-expression-refs::t
               _%$args147510%_)))
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
      (let ((__tmp149048
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
        (__make-promise __tmp149048)))
    (define gxc#apply-collect-expression-refs__%
      (lambda (_%@@keywords147484%_ _%table147481147485%_ _%stx147487%_)
        (let ((_%table147490%_
               (if (eq? _%table147481147485%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table147481147485%_)))
          (force gxc#::collect-expression-refs-bind-methods!)
          (let* ((_%self147492%_
                  (let ((__obj149007
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#::collect-expression-refs::t
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj149007
                       _%table147490%_
                       '1
                       '#f
                       '#f))
                    __obj149007))
                 (__tmp149049
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self147492%_ _%stx147487%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp149049
             gxc#current-compile-method
             _%self147492%_)))))
    (define gxc#apply-collect-expression-refs__@
      (lambda (_%@@keywords147499%_ . _%args147500%_)
        (apply gxc#apply-collect-expression-refs__%
               _%@@keywords147499%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords147499%_
                  'table:
                  absent-value))
               _%args147500%_)))
    (define gxc#apply-collect-expression-refs
      (lambda _%args147482147506%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-expression-refs__@
               _%args147482147506%_)))
    (define gxc#::generate-meta::t
      (let ((__tmp149051 (list gxc#::void-expression::t))
            (__tmp149050 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta::t
         '::generate-meta
         __tmp149051
         '(state)
         __tmp149050
         '#f)))
    (define gxc#::generate-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta::t)))
    (define gxc#make-::generate-meta
      (lambda _%$args147477%_
        (apply make-instance gxc#::generate-meta::t _%$args147477%_)))
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
      (let ((__tmp149052
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
        (__make-promise __tmp149052)))
    (define gxc#apply-generate-meta__%
      (lambda (_%@@keywords147451%_ _%state147448147452%_ _%stx147454%_)
        (let ((_%state147457%_
               (if (eq? _%state147448147452%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state147448147452%_)))
          (force gxc#::generate-meta-bind-methods!)
          (let* ((_%self147459%_
                  (let ((__obj149009
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj149009
                       _%state147457%_
                       '1
                       '#f
                       '#f))
                    __obj149009))
                 (__tmp149053
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self147459%_ _%stx147454%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp149053
             gxc#current-compile-method
             _%self147459%_)))))
    (define gxc#apply-generate-meta__@
      (lambda (_%@@keywords147466%_ . _%args147467%_)
        (apply gxc#apply-generate-meta__%
               _%@@keywords147466%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords147466%_
                  'state:
                  absent-value))
               _%args147467%_)))
    (define gxc#apply-generate-meta
      (lambda _%args147449147473%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta__@
               _%args147449147473%_)))
    (define gxc#::generate-meta-phi::t
      (let ((__tmp149055 (list)) (__tmp149054 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta-phi::t
         '::generate-meta-phi
         __tmp149055
         '(state)
         __tmp149054
         '#f)))
    (define gxc#::generate-meta-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta-phi::t)))
    (define gxc#make-::generate-meta-phi
      (lambda _%$args147444%_
        (apply make-instance gxc#::generate-meta-phi::t _%$args147444%_)))
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
      (let ((__tmp149056
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
        (__make-promise __tmp149056)))
    (define gxc#apply-generate-meta-phi__%
      (lambda (_%@@keywords147418%_ _%state147415147419%_ _%stx147421%_)
        (let ((_%state147424%_
               (if (eq? _%state147415147419%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state147415147419%_)))
          (force gxc#::generate-meta-phi-bind-methods!)
          (let* ((_%self147426%_
                  (let ((__obj149011
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta-phi::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj149011
                       _%state147424%_
                       '1
                       '#f
                       '#f))
                    __obj149011))
                 (__tmp149057
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self147426%_ _%stx147421%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp149057
             gxc#current-compile-method
             _%self147426%_)))))
    (define gxc#apply-generate-meta-phi__@
      (lambda (_%@@keywords147433%_ . _%args147434%_)
        (apply gxc#apply-generate-meta-phi__%
               _%@@keywords147433%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords147433%_
                  'state:
                  absent-value))
               _%args147434%_)))
    (define gxc#apply-generate-meta-phi
      (lambda _%args147416147440%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta-phi__@
               _%args147416147440%_)))
    (define gxc#collect-bindings-define-values%
      (lambda (_%self147344%_ _%stx147345%_)
        (let* ((_%g147347147364%_
                (lambda (_%g147348147361%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g147348147361%_))))
               (_%g147346147411%_
                (lambda (_%g147348147367%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g147348147367%_))
                      (let ((_%e147351147369%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g147348147367%_))))
                        (let ((_%hd147352147372%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e147351147369%_)))
                              (_%tl147353147374%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e147351147369%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl147353147374%_))
                              (let ((_%e147354147377%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl147353147374%_))))
                                (let ((_%hd147355147380%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e147354147377%_)))
                                      (_%tl147356147382%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e147354147377%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl147356147382%_))
                                      (let ((_%e147357147385%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl147356147382%_))))
                                        (let ((_%hd147358147388%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e147357147385%_)))
                                              (_%tl147359147390%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e147357147385%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl147359147390%_))
                                              ((lambda (_%L147393%_
                                                        _%L147394%_)
                                                 (let ((__tmp149058
                                                        (lambda (_%bind147409%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#identifier? _%bind147409%_))
                      (gxc#add-module-binding! _%bind147409%_ '#f)
                      '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#stx-for-each1
                                                    __tmp149058
                                                    _%L147394%_)))
                                               _%hd147358147388%_
                                               _%hd147355147380%_)
                                              (_%g147347147364%_
                                               _%g147348147367%_))))
                                      (_%g147347147364%_ _%g147348147367%_))))
                              (_%g147347147364%_ _%g147348147367%_))))
                      (_%g147347147364%_ _%g147348147367%_)))))
          (_%g147346147411%_ _%stx147345%_))))
    (define gxc#collect-bindings-define-syntax%
      (lambda (_%self147276%_ _%stx147277%_)
        (let* ((_%g147279147296%_
                (lambda (_%g147280147293%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g147280147293%_))))
               (_%g147278147341%_
                (lambda (_%g147280147299%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g147280147299%_))
                      (let ((_%e147283147301%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g147280147299%_))))
                        (let ((_%hd147284147304%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e147283147301%_)))
                              (_%tl147285147306%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e147283147301%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl147285147306%_))
                              (let ((_%e147286147309%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl147285147306%_))))
                                (let ((_%hd147287147312%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e147286147309%_)))
                                      (_%tl147288147314%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e147286147309%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl147288147314%_))
                                      (let ((_%e147289147317%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl147288147314%_))))
                                        (let ((_%hd147290147320%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e147289147317%_)))
                                              (_%tl147291147322%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e147289147317%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl147291147322%_))
                                              ((lambda (_%L147325%_
                                                        _%L147326%_)
                                                 (gxc#add-module-binding!
                                                  _%L147326%_
                                                  '#t))
                                               _%hd147290147320%_
                                               _%hd147287147312%_)
                                              (_%g147279147296%_
                                               _%g147280147299%_))))
                                      (_%g147279147296%_ _%g147280147299%_))))
                              (_%g147279147296%_ _%g147280147299%_))))
                      (_%g147279147296%_ _%g147280147299%_)))))
          (_%g147278147341%_ _%stx147277%_))))
    (define gxc#lift-modules-module%
      (lambda (_%self147218%_ _%stx147219%_)
        (let* ((_%g147221147235%_
                (lambda (_%g147222147232%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g147222147232%_))))
               (_%g147220147273%_
                (lambda (_%g147222147238%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g147222147238%_))
                      (let ((_%e147225147240%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g147222147238%_))))
                        (let ((_%hd147226147243%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e147225147240%_)))
                              (_%tl147227147245%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e147225147240%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl147227147245%_))
                              (let ((_%e147228147248%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl147227147245%_))))
                                (let ((_%hd147229147251%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e147228147248%_)))
                                      (_%tl147230147253%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e147228147248%_))))
                                  ((lambda (_%L147256%_ _%L147257%_)
                                     (let ((_%ctx147270%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-local-e__0
                                               _%L147257%_))))
                                       (set-box!
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self147218%_
                                           'modules))
                                        (cons _%ctx147270%_
                                              (unbox (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self147218%_
                                                        'modules)))))
                                       (let ((__tmp149059
                                              (lambda ()
                                                (let ((__tmp149060
                                                       (##structure-ref
                                                        _%ctx147270%_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self147218%_
                                                   __tmp149060)))))
                                         (declare (not safe))
                                         (__call-with-parameters
                                          __tmp149059
                                          gx#current-expander-context
                                          _%ctx147270%_))))
                                   _%tl147230147253%_
                                   _%hd147229147251%_)))
                              (_%g147221147235%_ _%g147222147238%_))))
                      (_%g147221147235%_ _%g147222147238%_)))))
          (_%g147220147273%_ _%stx147219%_))))
    (define gxc#current-compile-decls-unsafe?
      (lambda ()
        (let ((_%decls147171147173%_
               (let () (declare (not safe)) (gxc#current-compile-decls))))
          (if _%decls147171147173%_
              (let ((_%decls147176%_ _%decls147171147173%_))
                (let _%lp147178%_ ((_%rest147180%_ _%decls147176%_))
                  (let* ((_%rest147181147189%_ _%rest147180%_)
                         (_%else147183147197%_ (lambda () '#f))
                         (_%K147185147206%_
                          (lambda (_%decls147200%_ _%decl147201%_)
                            (if (equal? _%decl147201%_ '(not safe))
                                '#t
                                (if (equal? _%decl147201%_ '(safe))
                                    '#f
                                    (_%lp147178%_ _%decls147200%_))))))
                    (if (pair? _%rest147181147189%_)
                        (let ((_%hd147186147209%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest147181147189%_)))
                              (_%tl147187147211%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest147181147189%_))))
                          (let* ((_%decl147214%_ _%hd147186147209%_)
                                 (_%decls147216%_ _%tl147187147211%_))
                            (_%K147185147206%_
                             _%decls147216%_
                             _%decl147214%_)))
                        (_%else147183147197%_)))))
              '#f))))
    (define gxc#add-module-binding!
      (lambda (_%id147165%_ _%syntax?147166%_)
        (let ((_%eid147168%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id147165%_))
                '1
                gx#binding::t
                '#f))
              (_%ht147169%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-symbol-table))
                '2
                gxc#symbol-table::t
                '#f)))
          (if (let () (declare (not safe)) (interned-symbol? _%eid147168%_))
              '#!void
              (let ((__tmp149061
                     (let ((__tmp149062
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__0
                               _%eid147168%_))))
                       (declare (not safe))
                       (gx#make-binding-id__1 __tmp149062 _%syntax?147166%_))))
                (declare (not safe))
                (hash-put! _%ht147169%_ _%eid147168%_ __tmp149061))))))
    (define gxc#generate-runtime-identifier
      (lambda (_%id147163%_)
        (gxc#generate-runtime-identifier-key
         (let () (declare (not safe)) (gx#core-identifier-key _%id147163%_)))))
    (define gxc#generate-runtime-identifier-key
      (lambda (_%key147118%_)
        (if (let () (declare (not safe)) (interned-symbol? _%key147118%_))
            _%key147118%_
            (if (uninterned-symbol? _%key147118%_)
                (let ()
                  (declare (not safe))
                  (gxc#generate-runtime-gensym-reference__0 _%key147118%_))
                (let* ((_%key147122147129%_ _%key147118%_)
                       (_%E147124147133%_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (error '"No clause matching"
                                   _%key147122147129%_
                                   '([eid . mark])))
                          '#!void))
                       (_%K147125147151%_
                        (lambda (_%mark147136%_ _%eid147137%_)
                          (let ((_%$e147139%_
                                 (##structure-ref
                                  _%mark147136%_
                                  '1
                                  gx#expander-mark::t
                                  '#f)))
                            (if _%$e147139%_
                                ((lambda (_%ht147142%_)
                                   (let ((_%$e147144%_
                                          (let ()
                                            (declare (not safe))
                                            (hash-get
                                             _%ht147142%_
                                             _%eid147137%_))))
                                     (if _%$e147144%_
                                         ((lambda (_%id147147%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (interned-symbol?
                                                   _%id147147%_))
                                                _%id147147%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _%id147147%_))))
                                          _%$e147144%_)
                                         (gxc#generate-runtime-identifier-key
                                          _%eid147137%_))))
                                 _%$e147139%_)
                                (gxc#generate-runtime-identifier-key
                                 _%eid147137%_))))))
                  (if (pair? _%key147122147129%_)
                      (let ((_%hd147126147154%_
                             (let ()
                               (declare (not safe))
                               (##car _%key147122147129%_)))
                            (_%tl147127147156%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%key147122147129%_))))
                        (let* ((_%eid147159%_ _%hd147126147154%_)
                               (_%mark147161%_ _%tl147127147156%_))
                          (_%K147125147151%_ _%mark147161%_ _%eid147159%_)))
                      (_%E147124147133%_)))))))
    (define gxc#generate-runtime-empty
      (lambda (_%self147115%_ _%stx147116%_) '(begin)))
    (define gxc#generate-runtime-begin%
      (lambda (_%self146962%_ _%stx146963%_)
        (letrec ((_%simplify146965%_
                  (lambda (_%body147013%_)
                    (let _%lp147015%_ ((_%rest147017%_ _%body147013%_)
                                       (_%r147018%_ '()))
                      (let* ((_%rest147019147027%_ _%rest147017%_)
                             (_%else147021147035%_
                              (lambda () (reverse _%r147018%_)))
                             (_%K147023147103%_
                              (lambda (_%rest147038%_ _%hd147039%_)
                                (let* ((_%hd147040147056%_ _%hd147039%_)
                                       (_%else147044147064%_
                                        (lambda ()
                                          (_%lp147015%_
                                           _%rest147038%_
                                           (cons _%hd147039%_ _%r147018%_)))))
                                  (let ((_%K147052147093%_
                                         (lambda (_%exprs147091%_)
                                           (_%lp147015%_
                                            (let ()
                                              (declare (not safe))
                                              (__foldr1
                                               cons
                                               _%rest147038%_
                                               _%exprs147091%_))
                                            _%r147018%_)))
                                        (_%K147047147077%_
                                         (lambda ()
                                           (if (null? _%rest147038%_)
                                               (_%lp147015%_
                                                _%rest147038%_
                                                (cons _%hd147039%_
                                                      _%r147018%_))
                                               (_%lp147015%_
                                                _%rest147038%_
                                                _%r147018%_))))
                                        (_%K147046147069%_
                                         (lambda ()
                                           (if (null? _%rest147038%_)
                                               (_%lp147015%_
                                                _%rest147038%_
                                                (cons _%hd147039%_
                                                      _%r147018%_))
                                               (_%lp147015%_
                                                _%rest147038%_
                                                _%r147018%_)))))
                                    (let ((_%try-match147043147072%_
                                           (lambda ()
                                             (if (symbol? _%hd147040147056%_)
                                                 (_%K147046147069%_)
                                                 (_%else147044147064%_)))))
                                      (if (pair? _%hd147040147056%_)
                                          (let ((_%tl147054147098%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd147040147056%_)))
                                                (_%hd147053147096%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd147040147056%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd147053147096%_
                                                         'begin))
                                                (let ((_%exprs147101%_
                                                       _%tl147054147098%_))
                                                  (_%K147052147093%_
                                                   _%exprs147101%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd147053147096%_
                                                             'quote))
                                                    (if (pair? _%tl147054147098%_)
                                                        (let ((_%tl147051147085%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%tl147054147098%_))))
                  (if (null? _%tl147051147085%_)
                      (_%K147047147077%_)
                      (_%try-match147043147072%_)))
                (_%try-match147043147072%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%try-match147043147072%_))))
                                          (_%try-match147043147072%_))))))))
                        (if (pair? _%rest147019147027%_)
                            (let ((_%hd147024147106%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest147019147027%_)))
                                  (_%tl147025147108%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest147019147027%_))))
                              (let* ((_%hd147111%_ _%hd147024147106%_)
                                     (_%rest147113%_ _%tl147025147108%_))
                                (_%K147023147103%_
                                 _%rest147113%_
                                 _%hd147111%_)))
                            (_%else147021147035%_)))))))
          (let* ((_%g146967146977%_
                  (lambda (_%g146968146974%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g146968146974%_))))
                 (_%g146966147010%_
                  (lambda (_%g146968146980%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g146968146980%_))
                        (let ((_%e146970146982%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g146968146980%_))))
                          (let ((_%hd146971146985%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e146970146982%_)))
                                (_%tl146972146987%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e146970146982%_))))
                            ((lambda (_%L146990%_)
                               (let* ((_%body147005%_
                                       (map (lambda (_%g147000147002%_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%self146962%_
                                                 _%g147000147002%_)))
                                            _%L146990%_))
                                      (_%body147007%_
                                       (_%simplify146965%_ _%body147005%_)))
                                 (if (let ((__tmp149063
                                            (length _%body147007%_)))
                                       (declare (not safe))
                                       (##fx= __tmp149063 '1))
                                     (car _%body147007%_)
                                     (cons 'begin _%body147007%_))))
                             _%tl146972146987%_)))
                        (_%g146967146977%_ _%g146968146980%_)))))
            (_%g146966147010%_ _%stx146963%_)))))
    (define gxc#generate-runtime-begin-foreign%
      (lambda (_%self146923%_ _%stx146924%_)
        (let* ((_%g146926146936%_
                (lambda (_%g146927146933%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g146927146933%_))))
               (_%g146925146959%_
                (lambda (_%g146927146939%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g146927146939%_))
                      (let ((_%e146929146941%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g146927146939%_))))
                        (let ((_%hd146930146944%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e146929146941%_)))
                              (_%tl146931146946%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e146929146941%_))))
                          ((lambda (_%L146949%_)
                             (cons 'begin
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax->datum _%L146949%_))))
                           _%tl146931146946%_)))
                      (_%g146926146936%_ _%g146927146939%_)))))
          (_%g146925146959%_ _%stx146924%_))))
    (define gxc#generate-runtime-begin-annotation%
      (lambda (_%self146687%_ _%stx146688%_)
        (let* ((_%__stx147653147654%_ _%stx146688%_)
               (_%g146692146744%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx147653147654%_)))))
          (let ((_%__kont147655147656%_
                 (lambda (_%L146905%_ _%L146906%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self146687%_ _%L146905%_))))
                (_%__kont147657147658%_
                 (lambda (_%L146853%_ _%L146854%_ _%L146855%_)
                   (if (let ((__tmp149064
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%L146855%_))))
                         (declare (not safe))
                         (##memq __tmp149064 '(@inline)))
                       '(begin)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self146687%_ _%L146853%_)))))
                (_%__kont147661147662%_
                 (lambda (_%L146773%_ _%L146774%_)
                   (let ((_%decls146789%_ (map gx#syntax->datum _%L146774%_)))
                     (let ((__tmp149067
                            (lambda ()
                              (cons 'begin
                                    (cons (cons 'declare _%decls146789%_)
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self146687%_
                                                   _%L146773%_))
                                                '())))))
                           (__tmp149065
                            (let ((__tmp149066
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-decls))))
                              (declare (not safe))
                              (__foldr1 cons __tmp149066 _%decls146789%_))))
                       (declare (not safe))
                       (__call-with-parameters
                        __tmp149067
                        gxc#current-compile-decls
                        __tmp149065))))))
            (let* ((_%__match147708147709%_
                    (lambda (_%e146708146797%_
                             _%hd146709146800%_
                             _%tl146710146802%_
                             _%e146711146805%_
                             _%hd146712146808%_
                             _%tl146713146810%_
                             _%e146714146813%_
                             _%hd146715146816%_
                             _%tl146716146818%_
                             _%__splice147659147660%_
                             _%target146717146821%_
                             _%tl146719146823%_)
                      (letrec ((_%loop146720146826%_
                                (lambda (_%hd146718146829%_
                                         _%param146724146831%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd146718146829%_))
                                      (let ((_%e146721146834%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd146718146829%_))))
                                        (let ((_%lp-tl146723146839%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e146721146834%_)))
                                              (_%lp-hd146722146837%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e146721146834%_))))
                                          (_%loop146720146826%_
                                           _%lp-tl146723146839%_
                                           (cons _%lp-hd146722146837%_
                                                 _%param146724146831%_))))
                                      (let ((_%param146725146842%_
                                             (reverse _%param146724146831%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl146713146810%_))
                                            (let ((_%e146726146845%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl146713146810%_))))
                                              (let ((_%tl146728146850%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e146726146845%_)))
                                                    (_%hd146727146848%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e146726146845%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl146728146850%_))
                                                    (let ((_%L146853%_
                                                           _%hd146727146848%_)
                                                          (_%L146854%_
                                                           _%param146725146842%_)
                                                          (_%L146855%_
                                                           _%hd146715146816%_))
                                                      (if (and (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier? _%L146855%_))
                       (not (let ((__tmp149068
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L146855%_))))
                              (declare (not safe))
                              (##memq __tmp149068 gxc#gambit-annotations))))
                  (_%__kont147657147658%_ _%L146853%_ _%L146854%_ _%L146855%_)
                  (_%__kont147661147662%_
                   _%hd146727146848%_
                   _%hd146712146808%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g146692146744%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g146692146744%_))))))))
                        (_%loop146720146826%_ _%target146717146821%_ '()))))
                   (_%__match147682147683%_
                    (lambda (_%e146696146881%_
                             _%hd146697146884%_
                             _%tl146698146886%_
                             _%e146699146889%_
                             _%hd146700146892%_
                             _%tl146701146894%_
                             _%e146702146897%_
                             _%hd146703146900%_
                             _%tl146704146902%_)
                      (let ((_%L146905%_ _%hd146703146900%_)
                            (_%L146906%_ _%hd146700146892%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%L146906%_))
                            (_%__kont147655147656%_ _%L146905%_ _%L146906%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd146700146892%_))
                                (let ((_%e146714146813%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd146700146892%_))))
                                  (let ((_%tl146716146818%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e146714146813%_)))
                                        (_%hd146715146816%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e146714146813%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl146716146818%_))
                                        (let ((_%__splice147659147660%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl146716146818%_
                                                  '0))))
                                          (let ((_%tl146719146823%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice147659147660%_
                                                    '1)))
                                                (_%target146717146821%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice147659147660%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl146719146823%_))
                                                (_%__match147708147709%_
                                                 _%e146696146881%_
                                                 _%hd146697146884%_
                                                 _%tl146698146886%_
                                                 _%e146699146889%_
                                                 _%hd146700146892%_
                                                 _%tl146701146894%_
                                                 _%e146714146813%_
                                                 _%hd146715146816%_
                                                 _%tl146716146818%_
                                                 _%__splice147659147660%_
                                                 _%target146717146821%_
                                                 _%tl146719146823%_)
                                                (_%__kont147661147662%_
                                                 _%hd146703146900%_
                                                 _%hd146700146892%_))))
                                        (_%__kont147661147662%_
                                         _%hd146703146900%_
                                         _%hd146700146892%_))))
                                (_%__kont147661147662%_
                                 _%hd146703146900%_
                                 _%hd146700146892%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx147653147654%_))
                  (let ((_%e146696146881%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx147653147654%_))))
                    (let ((_%tl146698146886%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e146696146881%_)))
                          (_%hd146697146884%_
                           (let ()
                             (declare (not safe))
                             (##car _%e146696146881%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl146698146886%_))
                          (let ((_%e146699146889%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl146698146886%_))))
                            (let ((_%tl146701146894%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e146699146889%_)))
                                  (_%hd146700146892%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e146699146889%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl146701146894%_))
                                  (let ((_%e146702146897%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl146701146894%_))))
                                    (let ((_%tl146704146902%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e146702146897%_)))
                                          (_%hd146703146900%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e146702146897%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl146704146902%_))
                                          (_%__match147682147683%_
                                           _%e146696146881%_
                                           _%hd146697146884%_
                                           _%tl146698146886%_
                                           _%e146699146889%_
                                           _%hd146700146892%_
                                           _%tl146701146894%_
                                           _%e146702146897%_
                                           _%hd146703146900%_
                                           _%tl146704146902%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd146700146892%_))
                                              (let ((_%e146714146813%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd146700146892%_))))
                                                (let ((_%tl146716146818%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e146714146813%_)))
                                                      (_%hd146715146816%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e146714146813%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl146716146818%_))
                                                      (let ((_%__splice147659147660%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl146716146818%_ '0))))
                (let ((_%tl146719146823%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice147659147660%_ '1)))
                      (_%target146717146821%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice147659147660%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl146719146823%_))
                      (_%__match147708147709%_
                       _%e146696146881%_
                       _%hd146697146884%_
                       _%tl146698146886%_
                       _%e146699146889%_
                       _%hd146700146892%_
                       _%tl146701146894%_
                       _%e146714146813%_
                       _%hd146715146816%_
                       _%tl146716146818%_
                       _%__splice147659147660%_
                       _%target146717146821%_
                       _%tl146719146823%_)
                      (let () (declare (not safe)) (_%g146692146744%_)))))
              (let () (declare (not safe)) (_%g146692146744%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g146692146744%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd146700146892%_))
                                      (let ((_%e146714146813%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd146700146892%_))))
                                        (let ((_%tl146716146818%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e146714146813%_)))
                                              (_%hd146715146816%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e146714146813%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl146716146818%_))
                                              (let ((_%__splice147659147660%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl146716146818%_
                                                        '0))))
                                                (let ((_%tl146719146823%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice147659147660%_
                                                          '1)))
                                                      (_%target146717146821%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice147659147660%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl146719146823%_))
                                                      (_%__match147708147709%_
                                                       _%e146696146881%_
                                                       _%hd146697146884%_
                                                       _%tl146698146886%_
                                                       _%e146699146889%_
                                                       _%hd146700146892%_
                                                       _%tl146701146894%_
                                                       _%e146714146813%_
                                                       _%hd146715146816%_
                                                       _%tl146716146818%_
                                                       _%__splice147659147660%_
                                                       _%target146717146821%_
                                                       _%tl146719146823%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g146692146744%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g146692146744%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g146692146744%_))))))
                          (let () (declare (not safe)) (_%g146692146744%_)))))
                  (let () (declare (not safe)) (_%g146692146744%_))))))))
    (define gxc#generate-runtime-declare%
      (lambda (_%self146646%_ _%stx146647%_)
        (let* ((_%g146649146659%_
                (lambda (_%g146650146656%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g146650146656%_))))
               (_%g146648146684%_
                (lambda (_%g146650146662%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g146650146662%_))
                      (let ((_%e146652146664%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g146650146662%_))))
                        (let ((_%hd146653146667%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e146652146664%_)))
                              (_%tl146654146669%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e146652146664%_))))
                          ((lambda (_%L146672%_)
                             (let ((_%decls146682%_
                                    (map gx#syntax->datum _%L146672%_)))
                               (let ((__tmp149069
                                      (let ((__tmp149070
                                             (let ()
                                               (declare (not safe))
                                               (gxc#current-compile-decls))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp149070
                                         _%decls146682%_))))
                                 (declare (not safe))
                                 (gxc#current-compile-decls __tmp149069))
                               (cons 'declare _%decls146682%_)))
                           _%tl146654146669%_)))
                      (_%g146649146659%_ _%g146650146662%_)))))
          (_%g146648146684%_ _%stx146647%_))))
    (define gxc#generate-runtime-define-values%
      (lambda (_%self146392%_ _%stx146393%_)
        (let* ((_%g146395146412%_
                (lambda (_%g146396146409%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g146396146409%_))))
               (_%g146394146643%_
                (lambda (_%g146396146415%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g146396146415%_))
                      (let ((_%e146399146417%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g146396146415%_))))
                        (let ((_%hd146400146420%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e146399146417%_)))
                              (_%tl146401146422%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e146399146417%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl146401146422%_))
                              (let ((_%e146402146425%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl146401146422%_))))
                                (let ((_%hd146403146428%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e146402146425%_)))
                                      (_%tl146404146430%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e146402146425%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl146404146430%_))
                                      (let ((_%e146405146433%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl146404146430%_))))
                                        (let ((_%hd146406146436%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e146405146433%_)))
                                              (_%tl146407146438%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e146405146433%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl146407146438%_))
                                              ((lambda (_%L146441%_
                                                        _%L146442%_)
                                                 (let* ((_%__stx147761147762%_
                                                         _%L146442%_)
                                                        (_%g146459146473%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx147761147762%_)))))
                                                   (let ((_%__kont147763147764%_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _%self146392%_
                                                               _%L146441%_))))
                                                         (_%__kont147765147766%_
                                                          (lambda (_%L146605%_)
                                                            (let ((_%eid146614%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%L146605%_))))
                      (let ((_%lambda-expr146615146617%_
                             (gxc#apply-find-lambda-expression _%L146441%_)))
                        (if _%lambda-expr146615146617%_
                            (let* ((_%lambda-expr146620%_
                                    _%lambda-expr146615146617%_)
                                   (__tmp149071
                                    (let ()
                                      (declare (not safe))
                                      (gxc#current-compile-runtime-names))))
                              (declare (not safe))
                              (hash-put!
                               __tmp149071
                               _%lambda-expr146620%_
                               _%eid146614%_))
                            '#f))
                      (cons 'define
                            (cons _%eid146614%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__1
                                           _%self146392%_
                                           _%L146441%_))
                                        '()))))))
                 (_%__kont147767147768%_
                  (lambda ()
                    (let* ((_%tmp146480%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%body146589%_
                            (let _%lp146482%_ ((_%rest146484%_ _%L146442%_)
                                               (_%k146485%_ '0)
                                               (_%r146486%_ '()))
                              (let* ((_%__stx147731147732%_ _%rest146484%_)
                                     (_%g146491146508%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx147731147732%_)))))
                                (let ((_%__kont147733147734%_
                                       (lambda (_%L146576%_)
                                         (_%lp146482%_
                                          _%L146576%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k146485%_ '1))
                                          _%r146486%_)))
                                      (_%__kont147735147736%_
                                       (lambda (_%L146549%_ _%L146550%_)
                                         (_%lp146482%_
                                          _%L146549%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k146485%_ '1))
                                          (cons (cons 'define
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#generate-runtime-binding-id
                                                               _%L146550%_))
                                                            (cons (gxc#generate-runtime-values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tmp146480%_
                           _%k146485%_
                           _%L146549%_)
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%r146486%_))))
                                      (_%__kont147737147738%_
                                       (lambda (_%L146520%_)
                                         (let ((__tmp149072
                                                (cons (cons 'define
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#generate-runtime-binding-id _%L146520%_))
                          (cons (gxc#generate-runtime-values->list
                                 _%tmp146480%_
                                 _%k146485%_)
                                '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (__foldl1
                                            cons
                                            __tmp149072
                                            _%r146486%_))))
                                      (_%__kont147739147740%_
                                       (lambda () (reverse _%r146486%_))))
                                  (let ((_%g146489146536%_
                                         (lambda ()
                                           (let ((_%L146520%_
                                                  _%__stx147731147732%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%L146520%_))
                                                 (_%__kont147737147738%_
                                                  _%L146520%_)
                                                 (_%__kont147739147740%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx147731147732%_))
                                        (let ((_%e146494146565%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx147731147732%_))))
                                          (let ((_%tl146496146570%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e146494146565%_)))
                                                (_%hd146495146568%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e146494146565%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd146495146568%_))
                                                (let ((_%e146497146573%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd146495146568%_))))
                                                  (if (equal? _%e146497146573%_
                                                              '#f)
                                                      (_%__kont147733147734%_
                                                       _%tl146496146570%_)
                                                      (_%__kont147735147736%_
                                                       _%tl146496146570%_
                                                       _%hd146495146568%_)))
                                                (_%__kont147735147736%_
                                                 _%tl146496146570%_
                                                 _%hd146495146568%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g146489146536%_)))))))))
                      (cons 'begin
                            (cons (cons 'define
                                        (cons _%tmp146480%_
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self146392%_
                                                       _%L146441%_))
                                                    '())))
                                  (cons (gxc#generate-runtime-check-values
                                         _%tmp146480%_
                                         _%L146442%_
                                         _%L146441%_)
                                        _%body146589%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx147761147762%_))
                                                         (let ((_%e146461146627%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx147761147762%_))))
                   (let ((_%tl146463146632%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e146461146627%_)))
                         (_%hd146462146630%_
                          (let ()
                            (declare (not safe))
                            (##car _%e146461146627%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-datum? _%hd146462146630%_))
                         (let ((_%e146464146635%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd146462146630%_))))
                           (if (equal? _%e146464146635%_ '#f)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl146463146632%_))
                                   (_%__kont147763147764%_)
                                   (_%__kont147767147768%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl146463146632%_))
                                   (_%__kont147765147766%_ _%hd146462146630%_)
                                   (_%__kont147767147768%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl146463146632%_))
                             (_%__kont147765147766%_ _%hd146462146630%_)
                             (_%__kont147767147768%_)))))
                 (_%__kont147767147768%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd146406146436%_
                                               _%hd146403146428%_)
                                              (_%g146395146412%_
                                               _%g146396146415%_))))
                                      (_%g146395146412%_ _%g146396146415%_))))
                              (_%g146395146412%_ _%g146396146415%_))))
                      (_%g146395146412%_ _%g146396146415%_)))))
          (_%g146394146643%_ _%stx146393%_))))
    (define gxc#generate-runtime-check-values
      (lambda (_%vals146367%_ _%hd146368%_ _%expr146369%_)
        (let ((_%$e146371%_ (gxc#apply-count-values _%expr146369%_)))
          (if _%$e146371%_
              ((lambda (_%count146374%_)
                 (let ((_%len146376%_
                        (let ()
                          (declare (not safe))
                          (gx#stx-length _%hd146368%_)))
                       (_%cmp146377%_
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-list? _%hd146368%_))
                            fx=
                            fx>=)))
                   (if (or (let ()
                             (declare (not safe))
                             (##fx= _%len146376%_ '0))
                           (_%cmp146377%_ _%count146374%_ _%len146376%_))
                       '#!void
                       (let ()
                         (declare (not safe))
                         (gxc#raise-compile-error
                          '"Value count mismatch"
                          _%expr146369%_
                          _%hd146368%_)))))
               _%$e146371%_)
              (let* ((_%len146383%_
                      (let ()
                        (declare (not safe))
                        (gx#stx-length _%hd146368%_)))
                     (_%cmp146385%_
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-list? _%hd146368%_))
                          '##fx=
                          '##fx>=))
                     (_%errmsg146387%_
                      (let ((__tmp149074
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-list? _%hd146368%_))
                                 '"Context expects "
                                 '"Context expects at least "))
                            (__tmp149073 (number->string _%len146383%_)))
                        (declare (not safe))
                        (##string-append __tmp149074 __tmp149073 '" values")))
                     (_%count146389%_
                      (let ()
                        (declare (not safe))
                        (gxc#generate-runtime-temporary__0))))
                (if (if (let ()
                          (declare (not safe))
                          (gx#stx-list? _%hd146368%_))
                        '#f
                        (let () (declare (not safe)) (##fx= _%len146383%_ '0)))
                    '#!void
                    (cons 'let
                          (cons (cons (cons _%count146389%_
                                            (cons (gxc#generate-runtime-values-count
                                                   _%vals146367%_)
                                                  '()))
                                      '())
                                (cons (cons 'if
                                            (cons (cons 'not
                                                        (cons (if (gxc#current-compile-decls-unsafe?)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%cmp146385%_
                                (cons _%count146389%_
                                      (cons _%len146383%_ '())))
                          (cons 'let
                                (cons '()
                                      (cons '(declare (not safe))
                                            (cons (cons _%cmp146385%_
                                                        (cons _%count146389%_
                                                              (cons _%len146383%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons 'error
                                                              (cons _%errmsg146387%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%count146389%_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))))))))
    (define gxc#generate-runtime-values-count
      (lambda (_%var146362%_)
        (letrec ((_%generate-inline146364%_
                  (lambda ()
                    (cons 'if
                          (cons (cons '##values? (cons _%var146362%_ '()))
                                (cons (cons '##vector-length
                                            (cons _%var146362%_ '()))
                                      (cons '1 '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline146364%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline146364%_) '()))))))))
    (define gxc#generate-runtime-values-ref
      (lambda (_%var146355%_ _%i146356%_ _%rest146357%_)
        (letrec ((_%generate-inline146359%_
                  (lambda ()
                    (if (and (let ()
                               (declare (not safe))
                               (##fx= _%i146356%_ '0))
                             (not (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%rest146357%_))))
                        (cons 'if
                              (cons (cons '##values? (cons _%var146355%_ '()))
                                    (cons (cons '##vector-ref
                                                (cons _%var146355%_
                                                      (cons '0 '())))
                                          (cons _%var146355%_ '()))))
                        (cons '##vector-ref
                              (cons _%var146355%_ (cons _%i146356%_ '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline146359%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline146359%_) '()))))))))
    (define gxc#generate-runtime-values->list
      (lambda (_%var146349%_ _%i146350%_)
        (if (let () (declare (not safe)) (##fx= _%i146350%_ '0))
            (if (gxc#current-compile-decls-unsafe?)
                (cons 'if
                      (cons (cons '##values? (cons _%var146349%_ '()))
                            (cons (cons '##vector->list
                                        (cons _%var146349%_ '()))
                                  (cons (cons 'list (cons _%var146349%_ '()))
                                        '()))))
                (cons 'let
                      (cons '()
                            (cons '(declare (not safe))
                                  (cons (cons 'if
                                              (cons (cons '##values?
                                                          (cons _%var146349%_
                                                                '()))
                                                    (cons (cons '##vector->list
                                                                (cons _%var146349%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons 'list (cons _%var146349%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
            (if (let () (declare (not safe)) (##fx= _%i146350%_ '1))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons 'if
                          (cons (cons '##values? (cons _%var146349%_ '()))
                                (cons (cons '##cdr
                                            (cons (cons '##vector->list
                                                        (cons _%var146349%_
                                                              '()))
                                                  '()))
                                      (cons ''() '()))))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons 'if
                                                  (cons (cons '##values?
                                                              (cons _%var146349%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '##cdr
                            (cons (cons '##vector->list
                                        (cons _%var146349%_ '()))
                                  '()))
                      (cons ''() '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons '##list-tail
                          (cons (cons '##vector->list (cons _%var146349%_ '()))
                                (cons _%i146350%_ '())))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons '##list-tail
                                                  (cons (cons '##vector->list
                                                              (cons _%var146349%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _%i146350%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))))))
    (define gxc#generate-runtime-lambda%
      (lambda (_%self146281%_ _%stx146282%_)
        (let* ((_%g146284146301%_
                (lambda (_%g146285146298%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g146285146298%_))))
               (_%g146283146346%_
                (lambda (_%g146285146304%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g146285146304%_))
                      (let ((_%e146288146306%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g146285146304%_))))
                        (let ((_%hd146289146309%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e146288146306%_)))
                              (_%tl146290146311%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e146288146306%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl146290146311%_))
                              (let ((_%e146291146314%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl146290146311%_))))
                                (let ((_%hd146292146317%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e146291146314%_)))
                                      (_%tl146293146319%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e146291146314%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl146293146319%_))
                                      (let ((_%e146294146322%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl146293146319%_))))
                                        (let ((_%hd146295146325%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e146294146322%_)))
                                              (_%tl146296146327%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e146294146322%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl146296146327%_))
                                              ((lambda (_%L146330%_
                                                        _%L146331%_)
                                                 (gxc#generate-runtime-lambda-form
                                                  _%self146281%_
                                                  _%L146331%_
                                                  _%L146330%_))
                                               _%hd146295146325%_
                                               _%hd146292146317%_)
                                              (_%g146284146301%_
                                               _%g146285146304%_))))
                                      (_%g146284146301%_ _%g146285146304%_))))
                              (_%g146284146301%_ _%g146285146304%_))))
                      (_%g146284146301%_ _%g146285146304%_)))))
          (_%g146283146346%_ _%stx146282%_))))
    (define gxc#generate-runtime-lambda-form
      (lambda (_%self146240%_ _%hd146241%_ _%body146242%_)
        (let* ((_%hd146244%_ (gxc#generate-runtime-lambda-head _%hd146241%_))
               (_%body146246%_
                (let ()
                  (declare (not safe))
                  (gxc#compile-e__1 _%self146240%_ _%body146242%_)))
               (_%body146278%_
                (let* ((_%body146247146255%_ _%body146246%_)
                       (_%else146249146263%_
                        (lambda () (cons _%body146246%_ '())))
                       (_%K146251146268%_
                        (lambda (_%exprs146266%_) _%exprs146266%_)))
                  (if (pair? _%body146247146255%_)
                      (let ((_%hd146252146271%_
                             (let ()
                               (declare (not safe))
                               (##car _%body146247146255%_)))
                            (_%tl146253146273%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%body146247146255%_))))
                        (if (let ()
                              (declare (not safe))
                              (##eq? _%hd146252146271%_ 'begin))
                            (let ((_%exprs146276%_ _%tl146253146273%_))
                              (_%K146251146268%_ _%exprs146276%_))
                            (_%else146249146263%_)))
                      (_%else146249146263%_)))))
          (cons 'lambda (cons _%hd146244%_ _%body146278%_)))))
    (define gxc#generate-runtime-lambda-head
      (lambda (_%hd146238%_)
        (let ()
          (declare (not safe))
          (gx#stx-map1 gxc#generate-runtime-binding-id* _%hd146238%_))))
    (define gxc#generate-runtime-case-lambda%
      (lambda (_%self144777%_ _%stx144778%_)
        (letrec ((_%dispatch-case?144780%_
                  (lambda (_%hd145468%_ _%body145469%_)
                    (let* ((_%form145471%_
                            (cons _%hd145468%_ (cons _%body145469%_ '())))
                           (_%__stx147793147794%_ _%form145471%_)
                           (_%g145476145633%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx147793147794%_)))))
                      (let ((_%__kont147795147796%_
                             (lambda (_%L146158%_ _%L146159%_ _%L146160%_)
                               '#t))
                            (_%__kont147801147802%_
                             (lambda (_%L145946%_
                                      _%L145947%_
                                      _%L145948%_
                                      _%L145949%_
                                      _%L145950%_
                                      _%L145951%_)
                               '#t))
                            (_%__kont147807147808%_
                             (lambda (_%L145741%_
                                      _%L145742%_
                                      _%L145743%_
                                      _%L145744%_)
                               '#t))
                            (_%__kont147809147810%_ (lambda () '#f)))
                        (let* ((_%__match147934147935%_
                                (lambda (_%e145593145645%_
                                         _%hd145594145648%_
                                         _%tl145595145650%_
                                         _%e145596145653%_
                                         _%hd145597145656%_
                                         _%tl145598145658%_
                                         _%e145599145661%_
                                         _%hd145600145664%_
                                         _%tl145601145666%_
                                         _%e145602145669%_
                                         _%hd145603145672%_
                                         _%tl145604145674%_
                                         _%e145605145677%_
                                         _%hd145606145680%_
                                         _%tl145607145682%_
                                         _%e145608145685%_
                                         _%hd145609145688%_
                                         _%tl145610145690%_
                                         _%e145611145693%_
                                         _%hd145612145696%_
                                         _%tl145613145698%_
                                         _%e145614145701%_
                                         _%hd145615145704%_
                                         _%tl145616145706%_
                                         _%e145617145709%_
                                         _%hd145618145712%_
                                         _%tl145619145714%_
                                         _%e145620145717%_
                                         _%hd145621145720%_
                                         _%tl145622145722%_
                                         _%e145623145725%_
                                         _%hd145624145728%_
                                         _%tl145625145730%_
                                         _%e145626145733%_
                                         _%hd145627145736%_
                                         _%tl145628145738%_)
                                  (let ((_%L145741%_ _%hd145627145736%_)
                                        (_%L145742%_ _%hd145618145712%_)
                                        (_%L145743%_ _%hd145609145688%_)
                                        (_%L145744%_ _%hd145594145648%_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (gx#identifier? _%L145744%_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#runtime-identifier=?
                                                _%L145743%_
                                                'apply))
                                             (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L145744%_
                                                _%L145741%_))
                                             (not (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%L145742%_
                                                     _%L145744%_))))
                                        (_%__kont147807147808%_
                                         _%L145741%_
                                         _%L145742%_
                                         _%L145743%_
                                         _%L145744%_)
                                        (_%__kont147809147810%_)))))
                               (_%__match147906147907%_
                                (lambda (_%e145593145645%_
                                         _%hd145594145648%_
                                         _%tl145595145650%_
                                         _%e145596145653%_
                                         _%hd145597145656%_
                                         _%tl145598145658%_
                                         _%e145599145661%_
                                         _%hd145600145664%_
                                         _%tl145601145666%_
                                         _%e145602145669%_
                                         _%hd145603145672%_
                                         _%tl145604145674%_
                                         _%e145605145677%_
                                         _%hd145606145680%_
                                         _%tl145607145682%_
                                         _%e145608145685%_
                                         _%hd145609145688%_
                                         _%tl145610145690%_
                                         _%e145611145693%_
                                         _%hd145612145696%_
                                         _%tl145613145698%_
                                         _%e145614145701%_
                                         _%hd145615145704%_
                                         _%tl145616145706%_
                                         _%e145617145709%_
                                         _%hd145618145712%_
                                         _%tl145619145714%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl145613145698%_))
                                      (let ((_%e145620145717%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl145613145698%_))))
                                        (let ((_%tl145622145722%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e145620145717%_)))
                                              (_%hd145621145720%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e145620145717%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd145621145720%_))
                                              (let ((_%e145623145725%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd145621145720%_))))
                                                (let ((_%tl145625145730%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e145623145725%_)))
                                                      (_%hd145624145728%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e145623145725%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd145624145728%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _%hd145624145728%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl145625145730%_))
                      (let ((_%e145626145733%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl145625145730%_))))
                        (let ((_%tl145628145738%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145626145733%_)))
                              (_%hd145627145736%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145626145733%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl145628145738%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl145622145722%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl145598145658%_))
                                      (_%__match147934147935%_
                                       _%e145593145645%_
                                       _%hd145594145648%_
                                       _%tl145595145650%_
                                       _%e145596145653%_
                                       _%hd145597145656%_
                                       _%tl145598145658%_
                                       _%e145599145661%_
                                       _%hd145600145664%_
                                       _%tl145601145666%_
                                       _%e145602145669%_
                                       _%hd145603145672%_
                                       _%tl145604145674%_
                                       _%e145605145677%_
                                       _%hd145606145680%_
                                       _%tl145607145682%_
                                       _%e145608145685%_
                                       _%hd145609145688%_
                                       _%tl145610145690%_
                                       _%e145611145693%_
                                       _%hd145612145696%_
                                       _%tl145613145698%_
                                       _%e145614145701%_
                                       _%hd145615145704%_
                                       _%tl145616145706%_
                                       _%e145617145709%_
                                       _%hd145618145712%_
                                       _%tl145619145714%_
                                       _%e145620145717%_
                                       _%hd145621145720%_
                                       _%tl145622145722%_
                                       _%e145623145725%_
                                       _%hd145624145728%_
                                       _%tl145625145730%_
                                       _%e145626145733%_
                                       _%hd145627145736%_
                                       _%tl145628145738%_)
                                      (_%__kont147809147810%_))
                                  (_%__kont147809147810%_))
                              (_%__kont147809147810%_))))
                      (_%__kont147809147810%_))
                  (_%__kont147809147810%_))
              (_%__kont147809147810%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont147809147810%_))))
                                      (_%__kont147809147810%_))))
                               (_%__match147836147837%_
                                (lambda (_%e145529145786%_
                                         _%hd145530145789%_
                                         _%tl145531145791%_
                                         _%__splice147803147804%_
                                         _%target145532145794%_
                                         _%tl145534145796%_)
                                  (letrec ((_%loop145535145799%_
                                            (lambda (_%hd145533145802%_
                                                     _%arg145539145804%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd145533145802%_))
                                                  (let ((_%e145536145807%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd145533145802%_))))
                                                    (let ((_%lp-tl145538145812%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e145536145807%_)))
                                                          (_%lp-hd145537145810%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e145536145807%_))))
                                                      (_%loop145535145799%_
                                                       _%lp-tl145538145812%_
                                                       (cons _%lp-hd145537145810%_
                                                             _%arg145539145804%_))))
                                                  (let ((_%arg145540145815%_
                                                         (reverse _%arg145539145804%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl145531145791%_))
                                                        (let ((_%e145541145818%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl145531145791%_))))
                  (let ((_%tl145543145823%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e145541145818%_)))
                        (_%hd145542145821%_
                         (let ()
                           (declare (not safe))
                           (##car _%e145541145818%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd145542145821%_))
                        (let ((_%e145544145826%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd145542145821%_))))
                          (let ((_%tl145546145831%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e145544145826%_)))
                                (_%hd145545145829%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e145544145826%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd145545145829%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd145545145829%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl145546145831%_))
                                        (let ((_%e145547145834%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl145546145831%_))))
                                          (let ((_%tl145549145839%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e145547145834%_)))
                                                (_%hd145548145837%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e145547145834%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd145548145837%_))
                                                (let ((_%e145550145842%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd145548145837%_))))
                                                  (let ((_%tl145552145847%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e145550145842%_)))
                                                        (_%hd145551145845%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e145550145842%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd145551145845%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd145551145845%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl145552145847%_))
                        (let ((_%e145553145850%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl145552145847%_))))
                          (let ((_%tl145555145855%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e145553145850%_)))
                                (_%hd145554145853%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e145553145850%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl145555145855%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl145549145839%_))
                                    (let ((_%e145556145858%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl145549145839%_))))
                                      (let ((_%tl145558145863%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e145556145858%_)))
                                            (_%hd145557145861%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e145556145858%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd145557145861%_))
                                            (let ((_%e145559145866%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd145557145861%_))))
                                              (let ((_%tl145561145871%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e145559145866%_)))
                                                    (_%hd145560145869%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e145559145866%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd145560145869%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd145560145869%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl145561145871%_))
                                                            (let ((_%e145562145874%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl145561145871%_))))
                      (let ((_%tl145564145879%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e145562145874%_)))
                            (_%hd145563145877%_
                             (let ()
                               (declare (not safe))
                               (##car _%e145562145874%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl145564145879%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl145558145863%_))
                                (if (let ((__tmp149075
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-length
                                              _%tl145558145863%_))))
                                      (declare (not safe))
                                      (##fx>= __tmp149075 '1))
                                    (let ((_%__splice147805147806%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl145558145863%_
                                              '1))))
                                      (let ((_%tl145567145884%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice147805147806%_
                                                '1)))
                                            (_%target145565145882%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice147805147806%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl145567145884%_))
                                            (let ((_%e145574145887%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl145567145884%_))))
                                              (let ((_%tl145576145892%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e145574145887%_)))
                                                    (_%hd145575145890%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e145574145887%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd145575145890%_))
                                                    (let ((_%e145577145895%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd145575145890%_))))
                                                      (let ((_%tl145579145900%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e145577145895%_)))
                    (_%hd145578145898%_
                     (let () (declare (not safe)) (##car _%e145577145895%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd145578145898%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _%hd145578145898%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl145579145900%_))
                            (let ((_%e145580145903%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl145579145900%_))))
                              (let ((_%tl145582145908%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e145580145903%_)))
                                    (_%hd145581145906%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e145580145903%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl145582145908%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl145576145892%_))
                                        (letrec ((_%loop145568145911%_
                                                  (lambda (_%hd145566145914%_
                                                           _%xarg145572145916%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd145566145914%_))
                                                        (let ((_%e145569145919%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd145566145914%_))))
                  (let ((_%lp-tl145571145924%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e145569145919%_)))
                        (_%lp-hd145570145922%_
                         (let ()
                           (declare (not safe))
                           (##car _%e145569145919%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd145570145922%_))
                        (let ((_%e145583145927%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd145570145922%_))))
                          (let ((_%tl145585145932%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e145583145927%_)))
                                (_%hd145584145930%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e145583145927%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd145584145930%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _%hd145584145930%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl145585145932%_))
                                        (let ((_%e145586145935%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl145585145932%_))))
                                          (let ((_%tl145588145940%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e145586145935%_)))
                                                (_%hd145587145938%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e145586145935%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl145588145940%_))
                                                (_%loop145568145911%_
                                                 _%lp-tl145571145924%_
                                                 (cons _%hd145587145938%_
                                                       _%xarg145572145916%_))
                                                (_%__match147906147907%_
                                                 _%e145529145786%_
                                                 _%hd145530145789%_
                                                 _%tl145531145791%_
                                                 _%e145541145818%_
                                                 _%hd145542145821%_
                                                 _%tl145543145823%_
                                                 _%e145544145826%_
                                                 _%hd145545145829%_
                                                 _%tl145546145831%_
                                                 _%e145547145834%_
                                                 _%hd145548145837%_
                                                 _%tl145549145839%_
                                                 _%e145550145842%_
                                                 _%hd145551145845%_
                                                 _%tl145552145847%_
                                                 _%e145553145850%_
                                                 _%hd145554145853%_
                                                 _%tl145555145855%_
                                                 _%e145556145858%_
                                                 _%hd145557145861%_
                                                 _%tl145558145863%_
                                                 _%e145559145866%_
                                                 _%hd145560145869%_
                                                 _%tl145561145871%_
                                                 _%e145562145874%_
                                                 _%hd145563145877%_
                                                 _%tl145564145879%_))))
                                        (_%__match147906147907%_
                                         _%e145529145786%_
                                         _%hd145530145789%_
                                         _%tl145531145791%_
                                         _%e145541145818%_
                                         _%hd145542145821%_
                                         _%tl145543145823%_
                                         _%e145544145826%_
                                         _%hd145545145829%_
                                         _%tl145546145831%_
                                         _%e145547145834%_
                                         _%hd145548145837%_
                                         _%tl145549145839%_
                                         _%e145550145842%_
                                         _%hd145551145845%_
                                         _%tl145552145847%_
                                         _%e145553145850%_
                                         _%hd145554145853%_
                                         _%tl145555145855%_
                                         _%e145556145858%_
                                         _%hd145557145861%_
                                         _%tl145558145863%_
                                         _%e145559145866%_
                                         _%hd145560145869%_
                                         _%tl145561145871%_
                                         _%e145562145874%_
                                         _%hd145563145877%_
                                         _%tl145564145879%_))
                                    (_%__match147906147907%_
                                     _%e145529145786%_
                                     _%hd145530145789%_
                                     _%tl145531145791%_
                                     _%e145541145818%_
                                     _%hd145542145821%_
                                     _%tl145543145823%_
                                     _%e145544145826%_
                                     _%hd145545145829%_
                                     _%tl145546145831%_
                                     _%e145547145834%_
                                     _%hd145548145837%_
                                     _%tl145549145839%_
                                     _%e145550145842%_
                                     _%hd145551145845%_
                                     _%tl145552145847%_
                                     _%e145553145850%_
                                     _%hd145554145853%_
                                     _%tl145555145855%_
                                     _%e145556145858%_
                                     _%hd145557145861%_
                                     _%tl145558145863%_
                                     _%e145559145866%_
                                     _%hd145560145869%_
                                     _%tl145561145871%_
                                     _%e145562145874%_
                                     _%hd145563145877%_
                                     _%tl145564145879%_))
                                (_%__match147906147907%_
                                 _%e145529145786%_
                                 _%hd145530145789%_
                                 _%tl145531145791%_
                                 _%e145541145818%_
                                 _%hd145542145821%_
                                 _%tl145543145823%_
                                 _%e145544145826%_
                                 _%hd145545145829%_
                                 _%tl145546145831%_
                                 _%e145547145834%_
                                 _%hd145548145837%_
                                 _%tl145549145839%_
                                 _%e145550145842%_
                                 _%hd145551145845%_
                                 _%tl145552145847%_
                                 _%e145553145850%_
                                 _%hd145554145853%_
                                 _%tl145555145855%_
                                 _%e145556145858%_
                                 _%hd145557145861%_
                                 _%tl145558145863%_
                                 _%e145559145866%_
                                 _%hd145560145869%_
                                 _%tl145561145871%_
                                 _%e145562145874%_
                                 _%hd145563145877%_
                                 _%tl145564145879%_))))
                        (_%__match147906147907%_
                         _%e145529145786%_
                         _%hd145530145789%_
                         _%tl145531145791%_
                         _%e145541145818%_
                         _%hd145542145821%_
                         _%tl145543145823%_
                         _%e145544145826%_
                         _%hd145545145829%_
                         _%tl145546145831%_
                         _%e145547145834%_
                         _%hd145548145837%_
                         _%tl145549145839%_
                         _%e145550145842%_
                         _%hd145551145845%_
                         _%tl145552145847%_
                         _%e145553145850%_
                         _%hd145554145853%_
                         _%tl145555145855%_
                         _%e145556145858%_
                         _%hd145557145861%_
                         _%tl145558145863%_
                         _%e145559145866%_
                         _%hd145560145869%_
                         _%tl145561145871%_
                         _%e145562145874%_
                         _%hd145563145877%_
                         _%tl145564145879%_))))
                (let ((_%xarg145573145943%_ (reverse _%xarg145572145916%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl145543145823%_))
                      (let ((_%L145946%_ _%hd145581145906%_)
                            (_%L145947%_ _%xarg145573145943%_)
                            (_%L145948%_ _%hd145563145877%_)
                            (_%L145949%_ _%hd145554145853%_)
                            (_%L145950%_ _%tl145534145796%_)
                            (_%L145951%_ _%arg145540145815%_))
                        (if (and (let ((__tmp149076
                                        (let ((__tmp149077
                                               (lambda (_%g145994145997%_
                                                        _%g145995145999%_)
                                                 (cons _%g145994145997%_
                                                       _%g145995145999%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp149077
                                           '()
                                           _%L145951%_))))
                                   (declare (not safe))
                                   (gx#identifier-list? __tmp149076))
                                 (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L145950%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _%L145949%_
                                    'apply))
                                 (let ((__tmp149080
                                        (length (let ((__tmp149081
                                                       (lambda (_%g146001146004%_
                                                                _%g146002146006%_)
                                                         (cons _%g146001146004%_
                                                               _%g146002146006%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp149081
                                                   '()
                                                   _%L145951%_))))
                                       (__tmp149078
                                        (length (let ((__tmp149079
                                                       (lambda (_%g146008146011%_
                                                                _%g146009146013%_)
                                                         (cons _%g146008146011%_
                                                               _%g146009146013%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp149079
                                                   '()
                                                   _%L145947%_)))))
                                   (declare (not safe))
                                   (##fx= __tmp149080 __tmp149078))
                                 (let ((__tmp149084
                                        (let ((__tmp149085
                                               (lambda (_%g146015146018%_
                                                        _%g146016146020%_)
                                                 (cons _%g146015146018%_
                                                       _%g146016146020%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp149085
                                           '()
                                           _%L145951%_)))
                                       (__tmp149082
                                        (let ((__tmp149083
                                               (lambda (_%g146022146025%_
                                                        _%g146023146027%_)
                                                 (cons _%g146022146025%_
                                                       _%g146023146027%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp149083
                                           '()
                                           _%L145947%_))))
                                   (declare (not safe))
                                   (__andmap2
                                    gx#free-identifier=?
                                    __tmp149084
                                    __tmp149082))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L145950%_
                                    _%L145946%_))
                                 (not (let ((__tmp149089
                                             (lambda (_%g146029146031%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#free-identifier=?
                                                  _%g146029146031%_
                                                  _%L145948%_))))
                                            (__tmp149086
                                             (let ((__tmp149088
                                                    (lambda (_%g146033146036%_
                                                             _%g146034146038%_)
                                                      (cons _%g146033146036%_
                                                            _%g146034146038%_)))
                                                   (__tmp149087
                                                    (cons _%L145950%_ '())))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp149088
                                                __tmp149087
                                                _%L145951%_))))
                                        (declare (not safe))
                                        (__find __tmp149089 __tmp149086))))
                            (_%__kont147801147802%_
                             _%L145946%_
                             _%L145947%_
                             _%L145948%_
                             _%L145949%_
                             _%L145950%_
                             _%L145951%_)
                            (_%__match147906147907%_
                             _%e145529145786%_
                             _%hd145530145789%_
                             _%tl145531145791%_
                             _%e145541145818%_
                             _%hd145542145821%_
                             _%tl145543145823%_
                             _%e145544145826%_
                             _%hd145545145829%_
                             _%tl145546145831%_
                             _%e145547145834%_
                             _%hd145548145837%_
                             _%tl145549145839%_
                             _%e145550145842%_
                             _%hd145551145845%_
                             _%tl145552145847%_
                             _%e145553145850%_
                             _%hd145554145853%_
                             _%tl145555145855%_
                             _%e145556145858%_
                             _%hd145557145861%_
                             _%tl145558145863%_
                             _%e145559145866%_
                             _%hd145560145869%_
                             _%tl145561145871%_
                             _%e145562145874%_
                             _%hd145563145877%_
                             _%tl145564145879%_)))
                      (_%__match147906147907%_
                       _%e145529145786%_
                       _%hd145530145789%_
                       _%tl145531145791%_
                       _%e145541145818%_
                       _%hd145542145821%_
                       _%tl145543145823%_
                       _%e145544145826%_
                       _%hd145545145829%_
                       _%tl145546145831%_
                       _%e145547145834%_
                       _%hd145548145837%_
                       _%tl145549145839%_
                       _%e145550145842%_
                       _%hd145551145845%_
                       _%tl145552145847%_
                       _%e145553145850%_
                       _%hd145554145853%_
                       _%tl145555145855%_
                       _%e145556145858%_
                       _%hd145557145861%_
                       _%tl145558145863%_
                       _%e145559145866%_
                       _%hd145560145869%_
                       _%tl145561145871%_
                       _%e145562145874%_
                       _%hd145563145877%_
                       _%tl145564145879%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop145568145911%_
                                           _%target145565145882%_
                                           '()))
                                        (_%__match147906147907%_
                                         _%e145529145786%_
                                         _%hd145530145789%_
                                         _%tl145531145791%_
                                         _%e145541145818%_
                                         _%hd145542145821%_
                                         _%tl145543145823%_
                                         _%e145544145826%_
                                         _%hd145545145829%_
                                         _%tl145546145831%_
                                         _%e145547145834%_
                                         _%hd145548145837%_
                                         _%tl145549145839%_
                                         _%e145550145842%_
                                         _%hd145551145845%_
                                         _%tl145552145847%_
                                         _%e145553145850%_
                                         _%hd145554145853%_
                                         _%tl145555145855%_
                                         _%e145556145858%_
                                         _%hd145557145861%_
                                         _%tl145558145863%_
                                         _%e145559145866%_
                                         _%hd145560145869%_
                                         _%tl145561145871%_
                                         _%e145562145874%_
                                         _%hd145563145877%_
                                         _%tl145564145879%_))
                                    (_%__match147906147907%_
                                     _%e145529145786%_
                                     _%hd145530145789%_
                                     _%tl145531145791%_
                                     _%e145541145818%_
                                     _%hd145542145821%_
                                     _%tl145543145823%_
                                     _%e145544145826%_
                                     _%hd145545145829%_
                                     _%tl145546145831%_
                                     _%e145547145834%_
                                     _%hd145548145837%_
                                     _%tl145549145839%_
                                     _%e145550145842%_
                                     _%hd145551145845%_
                                     _%tl145552145847%_
                                     _%e145553145850%_
                                     _%hd145554145853%_
                                     _%tl145555145855%_
                                     _%e145556145858%_
                                     _%hd145557145861%_
                                     _%tl145558145863%_
                                     _%e145559145866%_
                                     _%hd145560145869%_
                                     _%tl145561145871%_
                                     _%e145562145874%_
                                     _%hd145563145877%_
                                     _%tl145564145879%_))))
                            (_%__match147906147907%_
                             _%e145529145786%_
                             _%hd145530145789%_
                             _%tl145531145791%_
                             _%e145541145818%_
                             _%hd145542145821%_
                             _%tl145543145823%_
                             _%e145544145826%_
                             _%hd145545145829%_
                             _%tl145546145831%_
                             _%e145547145834%_
                             _%hd145548145837%_
                             _%tl145549145839%_
                             _%e145550145842%_
                             _%hd145551145845%_
                             _%tl145552145847%_
                             _%e145553145850%_
                             _%hd145554145853%_
                             _%tl145555145855%_
                             _%e145556145858%_
                             _%hd145557145861%_
                             _%tl145558145863%_
                             _%e145559145866%_
                             _%hd145560145869%_
                             _%tl145561145871%_
                             _%e145562145874%_
                             _%hd145563145877%_
                             _%tl145564145879%_))
                        (_%__match147906147907%_
                         _%e145529145786%_
                         _%hd145530145789%_
                         _%tl145531145791%_
                         _%e145541145818%_
                         _%hd145542145821%_
                         _%tl145543145823%_
                         _%e145544145826%_
                         _%hd145545145829%_
                         _%tl145546145831%_
                         _%e145547145834%_
                         _%hd145548145837%_
                         _%tl145549145839%_
                         _%e145550145842%_
                         _%hd145551145845%_
                         _%tl145552145847%_
                         _%e145553145850%_
                         _%hd145554145853%_
                         _%tl145555145855%_
                         _%e145556145858%_
                         _%hd145557145861%_
                         _%tl145558145863%_
                         _%e145559145866%_
                         _%hd145560145869%_
                         _%tl145561145871%_
                         _%e145562145874%_
                         _%hd145563145877%_
                         _%tl145564145879%_))
                    (_%__match147906147907%_
                     _%e145529145786%_
                     _%hd145530145789%_
                     _%tl145531145791%_
                     _%e145541145818%_
                     _%hd145542145821%_
                     _%tl145543145823%_
                     _%e145544145826%_
                     _%hd145545145829%_
                     _%tl145546145831%_
                     _%e145547145834%_
                     _%hd145548145837%_
                     _%tl145549145839%_
                     _%e145550145842%_
                     _%hd145551145845%_
                     _%tl145552145847%_
                     _%e145553145850%_
                     _%hd145554145853%_
                     _%tl145555145855%_
                     _%e145556145858%_
                     _%hd145557145861%_
                     _%tl145558145863%_
                     _%e145559145866%_
                     _%hd145560145869%_
                     _%tl145561145871%_
                     _%e145562145874%_
                     _%hd145563145877%_
                     _%tl145564145879%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match147906147907%_
                                                     _%e145529145786%_
                                                     _%hd145530145789%_
                                                     _%tl145531145791%_
                                                     _%e145541145818%_
                                                     _%hd145542145821%_
                                                     _%tl145543145823%_
                                                     _%e145544145826%_
                                                     _%hd145545145829%_
                                                     _%tl145546145831%_
                                                     _%e145547145834%_
                                                     _%hd145548145837%_
                                                     _%tl145549145839%_
                                                     _%e145550145842%_
                                                     _%hd145551145845%_
                                                     _%tl145552145847%_
                                                     _%e145553145850%_
                                                     _%hd145554145853%_
                                                     _%tl145555145855%_
                                                     _%e145556145858%_
                                                     _%hd145557145861%_
                                                     _%tl145558145863%_
                                                     _%e145559145866%_
                                                     _%hd145560145869%_
                                                     _%tl145561145871%_
                                                     _%e145562145874%_
                                                     _%hd145563145877%_
                                                     _%tl145564145879%_))))
                                            (_%__match147906147907%_
                                             _%e145529145786%_
                                             _%hd145530145789%_
                                             _%tl145531145791%_
                                             _%e145541145818%_
                                             _%hd145542145821%_
                                             _%tl145543145823%_
                                             _%e145544145826%_
                                             _%hd145545145829%_
                                             _%tl145546145831%_
                                             _%e145547145834%_
                                             _%hd145548145837%_
                                             _%tl145549145839%_
                                             _%e145550145842%_
                                             _%hd145551145845%_
                                             _%tl145552145847%_
                                             _%e145553145850%_
                                             _%hd145554145853%_
                                             _%tl145555145855%_
                                             _%e145556145858%_
                                             _%hd145557145861%_
                                             _%tl145558145863%_
                                             _%e145559145866%_
                                             _%hd145560145869%_
                                             _%tl145561145871%_
                                             _%e145562145874%_
                                             _%hd145563145877%_
                                             _%tl145564145879%_))))
                                    (_%__match147906147907%_
                                     _%e145529145786%_
                                     _%hd145530145789%_
                                     _%tl145531145791%_
                                     _%e145541145818%_
                                     _%hd145542145821%_
                                     _%tl145543145823%_
                                     _%e145544145826%_
                                     _%hd145545145829%_
                                     _%tl145546145831%_
                                     _%e145547145834%_
                                     _%hd145548145837%_
                                     _%tl145549145839%_
                                     _%e145550145842%_
                                     _%hd145551145845%_
                                     _%tl145552145847%_
                                     _%e145553145850%_
                                     _%hd145554145853%_
                                     _%tl145555145855%_
                                     _%e145556145858%_
                                     _%hd145557145861%_
                                     _%tl145558145863%_
                                     _%e145559145866%_
                                     _%hd145560145869%_
                                     _%tl145561145871%_
                                     _%e145562145874%_
                                     _%hd145563145877%_
                                     _%tl145564145879%_))
                                (_%__match147906147907%_
                                 _%e145529145786%_
                                 _%hd145530145789%_
                                 _%tl145531145791%_
                                 _%e145541145818%_
                                 _%hd145542145821%_
                                 _%tl145543145823%_
                                 _%e145544145826%_
                                 _%hd145545145829%_
                                 _%tl145546145831%_
                                 _%e145547145834%_
                                 _%hd145548145837%_
                                 _%tl145549145839%_
                                 _%e145550145842%_
                                 _%hd145551145845%_
                                 _%tl145552145847%_
                                 _%e145553145850%_
                                 _%hd145554145853%_
                                 _%tl145555145855%_
                                 _%e145556145858%_
                                 _%hd145557145861%_
                                 _%tl145558145863%_
                                 _%e145559145866%_
                                 _%hd145560145869%_
                                 _%tl145561145871%_
                                 _%e145562145874%_
                                 _%hd145563145877%_
                                 _%tl145564145879%_))
                            (_%__kont147809147810%_))))
                    (_%__kont147809147810%_))
                (_%__kont147809147810%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont147809147810%_))))
                                            (_%__kont147809147810%_))))
                                    (_%__kont147809147810%_))
                                (_%__kont147809147810%_))))
                        (_%__kont147809147810%_))
                    (_%__kont147809147810%_))
                (_%__kont147809147810%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont147809147810%_))))
                                        (_%__kont147809147810%_))
                                    (_%__kont147809147810%_))
                                (_%__kont147809147810%_))))
                        (_%__kont147809147810%_))))
                (_%__kont147809147810%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop145535145799%_
                                     _%target145532145794%_
                                     '()))))
                               (_%__match147824147825%_
                                (lambda (_%e145481146046%_
                                         _%hd145482146049%_
                                         _%tl145483146051%_
                                         _%__splice147797147798%_
                                         _%target145484146054%_
                                         _%tl145486146056%_)
                                  (letrec ((_%loop145487146059%_
                                            (lambda (_%hd145485146062%_
                                                     _%arg145491146064%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd145485146062%_))
                                                  (let ((_%e145488146067%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd145485146062%_))))
                                                    (let ((_%lp-tl145490146072%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e145488146067%_)))
                                                          (_%lp-hd145489146070%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e145488146067%_))))
                                                      (_%loop145487146059%_
                                                       _%lp-tl145490146072%_
                                                       (cons _%lp-hd145489146070%_
                                                             _%arg145491146064%_))))
                                                  (let ((_%arg145492146075%_
                                                         (reverse _%arg145491146064%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl145483146051%_))
                                                        (let ((_%e145493146078%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl145483146051%_))))
                  (let ((_%tl145495146083%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e145493146078%_)))
                        (_%hd145494146081%_
                         (let ()
                           (declare (not safe))
                           (##car _%e145493146078%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd145494146081%_))
                        (let ((_%e145496146086%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd145494146081%_))))
                          (let ((_%tl145498146091%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e145496146086%_)))
                                (_%hd145497146089%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e145496146086%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd145497146089%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd145497146089%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl145498146091%_))
                                        (let ((_%e145499146094%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl145498146091%_))))
                                          (let ((_%tl145501146099%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e145499146094%_)))
                                                (_%hd145500146097%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e145499146094%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd145500146097%_))
                                                (let ((_%e145502146102%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd145500146097%_))))
                                                  (let ((_%tl145504146107%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e145502146102%_)))
                                                        (_%hd145503146105%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e145502146102%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd145503146105%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd145503146105%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl145504146107%_))
                        (let ((_%e145505146110%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl145504146107%_))))
                          (let ((_%tl145507146115%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e145505146110%_)))
                                (_%hd145506146113%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e145505146110%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl145507146115%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl145501146099%_))
                                    (let ((_%__splice147799147800%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl145501146099%_
                                              '0))))
                                      (let ((_%tl145510146120%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice147799147800%_
                                                '1)))
                                            (_%target145508146118%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice147799147800%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl145510146120%_))
                                            (letrec ((_%loop145511146123%_
                                                      (lambda (_%hd145509146126%_
                                                               _%xarg145515146128%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd145509146126%_))
                                                            (let ((_%e145512146131%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd145509146126%_))))
                      (let ((_%lp-tl145514146136%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e145512146131%_)))
                            (_%lp-hd145513146134%_
                             (let ()
                               (declare (not safe))
                               (##car _%e145512146131%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd145513146134%_))
                            (let ((_%e145517146139%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd145513146134%_))))
                              (let ((_%tl145519146144%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e145517146139%_)))
                                    (_%hd145518146142%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e145517146139%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd145518146142%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd145518146142%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl145519146144%_))
                                            (let ((_%e145520146147%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl145519146144%_))))
                                              (let ((_%tl145522146152%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e145520146147%_)))
                                                    (_%hd145521146150%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e145520146147%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl145522146152%_))
                                                    (_%loop145511146123%_
                                                     _%lp-tl145514146136%_
                                                     (cons _%hd145521146150%_
                                                           _%xarg145515146128%_))
                                                    (_%__match147836147837%_
                                                     _%e145481146046%_
                                                     _%hd145482146049%_
                                                     _%tl145483146051%_
                                                     _%__splice147797147798%_
                                                     _%target145484146054%_
                                                     _%tl145486146056%_))))
                                            (_%__match147836147837%_
                                             _%e145481146046%_
                                             _%hd145482146049%_
                                             _%tl145483146051%_
                                             _%__splice147797147798%_
                                             _%target145484146054%_
                                             _%tl145486146056%_))
                                        (_%__match147836147837%_
                                         _%e145481146046%_
                                         _%hd145482146049%_
                                         _%tl145483146051%_
                                         _%__splice147797147798%_
                                         _%target145484146054%_
                                         _%tl145486146056%_))
                                    (_%__match147836147837%_
                                     _%e145481146046%_
                                     _%hd145482146049%_
                                     _%tl145483146051%_
                                     _%__splice147797147798%_
                                     _%target145484146054%_
                                     _%tl145486146056%_))))
                            (_%__match147836147837%_
                             _%e145481146046%_
                             _%hd145482146049%_
                             _%tl145483146051%_
                             _%__splice147797147798%_
                             _%target145484146054%_
                             _%tl145486146056%_))))
                    (let ((_%xarg145516146155%_
                           (reverse _%xarg145515146128%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl145495146083%_))
                          (let ((_%L146158%_ _%xarg145516146155%_)
                                (_%L146159%_ _%hd145506146113%_)
                                (_%L146160%_ _%arg145492146075%_))
                            (if (and (let ((__tmp149090
                                            (let ((__tmp149091
                                                   (lambda (_%g146188146191%_
                                                            _%g146189146193%_)
                                                     (cons _%g146188146191%_
                                                           _%g146189146193%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp149091
                                               '()
                                               _%L146160%_))))
                                       (declare (not safe))
                                       (gx#identifier-list? __tmp149090))
                                     (let ((__tmp149094
                                            (length (let ((__tmp149095
                                                           (lambda (_%g146195146198%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g146196146200%_)
                     (cons _%g146195146198%_ _%g146196146200%_))))
              (declare (not safe))
              (__foldr1 __tmp149095 '() _%L146160%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (__tmp149092
                                            (length (let ((__tmp149093
                                                           (lambda (_%g146202146205%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g146203146207%_)
                     (cons _%g146202146205%_ _%g146203146207%_))))
              (declare (not safe))
              (__foldr1 __tmp149093 '() _%L146158%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp149094 __tmp149092))
                                     (let ((__tmp149098
                                            (let ((__tmp149099
                                                   (lambda (_%g146209146212%_
                                                            _%g146210146214%_)
                                                     (cons _%g146209146212%_
                                                           _%g146210146214%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp149099
                                               '()
                                               _%L146160%_)))
                                           (__tmp149096
                                            (let ((__tmp149097
                                                   (lambda (_%g146216146219%_
                                                            _%g146217146221%_)
                                                     (cons _%g146216146219%_
                                                           _%g146217146221%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp149097
                                               '()
                                               _%L146158%_))))
                                       (declare (not safe))
                                       (__andmap2
                                        gx#free-identifier=?
                                        __tmp149098
                                        __tmp149096))
                                     (not (let ((__tmp149102
                                                 (lambda (_%g146223146225%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g146223146225%_
                                                      _%L146159%_))))
                                                (__tmp149100
                                                 (let ((__tmp149101
                                                        (lambda (_%g146227146230%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g146228146232%_)
                  (cons _%g146227146230%_ _%g146228146232%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp149101
                                                    '()
                                                    _%L146160%_))))
                                            (declare (not safe))
                                            (__find __tmp149102 __tmp149100))))
                                (_%__kont147795147796%_
                                 _%L146158%_
                                 _%L146159%_
                                 _%L146160%_)
                                (_%__match147836147837%_
                                 _%e145481146046%_
                                 _%hd145482146049%_
                                 _%tl145483146051%_
                                 _%__splice147797147798%_
                                 _%target145484146054%_
                                 _%tl145486146056%_)))
                          (_%__match147836147837%_
                           _%e145481146046%_
                           _%hd145482146049%_
                           _%tl145483146051%_
                           _%__splice147797147798%_
                           _%target145484146054%_
                           _%tl145486146056%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop145511146123%_
                                               _%target145508146118%_
                                               '()))
                                            (_%__match147836147837%_
                                             _%e145481146046%_
                                             _%hd145482146049%_
                                             _%tl145483146051%_
                                             _%__splice147797147798%_
                                             _%target145484146054%_
                                             _%tl145486146056%_))))
                                    (_%__match147836147837%_
                                     _%e145481146046%_
                                     _%hd145482146049%_
                                     _%tl145483146051%_
                                     _%__splice147797147798%_
                                     _%target145484146054%_
                                     _%tl145486146056%_))
                                (_%__match147836147837%_
                                 _%e145481146046%_
                                 _%hd145482146049%_
                                 _%tl145483146051%_
                                 _%__splice147797147798%_
                                 _%target145484146054%_
                                 _%tl145486146056%_))))
                        (_%__match147836147837%_
                         _%e145481146046%_
                         _%hd145482146049%_
                         _%tl145483146051%_
                         _%__splice147797147798%_
                         _%target145484146054%_
                         _%tl145486146056%_))
                    (_%__match147836147837%_
                     _%e145481146046%_
                     _%hd145482146049%_
                     _%tl145483146051%_
                     _%__splice147797147798%_
                     _%target145484146054%_
                     _%tl145486146056%_))
                (_%__match147836147837%_
                 _%e145481146046%_
                 _%hd145482146049%_
                 _%tl145483146051%_
                 _%__splice147797147798%_
                 _%target145484146054%_
                 _%tl145486146056%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match147836147837%_
                                                 _%e145481146046%_
                                                 _%hd145482146049%_
                                                 _%tl145483146051%_
                                                 _%__splice147797147798%_
                                                 _%target145484146054%_
                                                 _%tl145486146056%_))))
                                        (_%__match147836147837%_
                                         _%e145481146046%_
                                         _%hd145482146049%_
                                         _%tl145483146051%_
                                         _%__splice147797147798%_
                                         _%target145484146054%_
                                         _%tl145486146056%_))
                                    (_%__match147836147837%_
                                     _%e145481146046%_
                                     _%hd145482146049%_
                                     _%tl145483146051%_
                                     _%__splice147797147798%_
                                     _%target145484146054%_
                                     _%tl145486146056%_))
                                (_%__match147836147837%_
                                 _%e145481146046%_
                                 _%hd145482146049%_
                                 _%tl145483146051%_
                                 _%__splice147797147798%_
                                 _%target145484146054%_
                                 _%tl145486146056%_))))
                        (_%__match147836147837%_
                         _%e145481146046%_
                         _%hd145482146049%_
                         _%tl145483146051%_
                         _%__splice147797147798%_
                         _%target145484146054%_
                         _%tl145486146056%_))))
                (_%__match147836147837%_
                 _%e145481146046%_
                 _%hd145482146049%_
                 _%tl145483146051%_
                 _%__splice147797147798%_
                 _%target145484146054%_
                 _%tl145486146056%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop145487146059%_
                                     _%target145484146054%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx147793147794%_))
                              (let ((_%e145481146046%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx147793147794%_))))
                                (let ((_%tl145483146051%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145481146046%_)))
                                      (_%hd145482146049%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145481146046%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd145482146049%_))
                                      (let ((_%__splice147797147798%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd145482146049%_
                                                '0))))
                                        (let ((_%tl145486146056%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice147797147798%_
                                                  '1)))
                                              (_%target145484146054%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice147797147798%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl145486146056%_))
                                              (_%__match147824147825%_
                                               _%e145481146046%_
                                               _%hd145482146049%_
                                               _%tl145483146051%_
                                               _%__splice147797147798%_
                                               _%target145484146054%_
                                               _%tl145486146056%_)
                                              (_%__match147836147837%_
                                               _%e145481146046%_
                                               _%hd145482146049%_
                                               _%tl145483146051%_
                                               _%__splice147797147798%_
                                               _%target145484146054%_
                                               _%tl145486146056%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl145483146051%_))
                                          (let ((_%e145596145653%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl145483146051%_))))
                                            (let ((_%tl145598145658%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e145596145653%_)))
                                                  (_%hd145597145656%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e145596145653%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd145597145656%_))
                                                  (let ((_%e145599145661%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd145597145656%_))))
                                                    (let ((_%tl145601145666%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e145599145661%_)))
                                                          (_%hd145600145664%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e145599145661%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd145600145664%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd145600145664%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl145601145666%_))
                          (let ((_%e145602145669%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl145601145666%_))))
                            (let ((_%tl145604145674%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e145602145669%_)))
                                  (_%hd145603145672%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e145602145669%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd145603145672%_))
                                  (let ((_%e145605145677%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd145603145672%_))))
                                    (let ((_%tl145607145682%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e145605145677%_)))
                                          (_%hd145606145680%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e145605145677%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd145606145680%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd145606145680%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl145607145682%_))
                                                  (let ((_%e145608145685%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl145607145682%_))))
                                                    (let ((_%tl145610145690%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e145608145685%_)))
                                                          (_%hd145609145688%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e145608145685%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl145610145690%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl145604145674%_))
                      (let ((_%e145611145693%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl145604145674%_))))
                        (let ((_%tl145613145698%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145611145693%_)))
                              (_%hd145612145696%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145611145693%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd145612145696%_))
                              (let ((_%e145614145701%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd145612145696%_))))
                                (let ((_%tl145616145706%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145614145701%_)))
                                      (_%hd145615145704%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145614145701%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd145615145704%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd145615145704%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl145616145706%_))
                                              (let ((_%e145617145709%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl145616145706%_))))
                                                (let ((_%tl145619145714%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e145617145709%_)))
                                                      (_%hd145618145712%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e145617145709%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl145619145714%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl145613145698%_))
                                                          (let ((_%e145620145717%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl145613145698%_))))
                    (let ((_%tl145622145722%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e145620145717%_)))
                          (_%hd145621145720%_
                           (let ()
                             (declare (not safe))
                             (##car _%e145620145717%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd145621145720%_))
                          (let ((_%e145623145725%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd145621145720%_))))
                            (let ((_%tl145625145730%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e145623145725%_)))
                                  (_%hd145624145728%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e145623145725%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd145624145728%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _%hd145624145728%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl145625145730%_))
                                          (let ((_%e145626145733%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl145625145730%_))))
                                            (let ((_%tl145628145738%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e145626145733%_)))
                                                  (_%hd145627145736%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e145626145733%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl145628145738%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl145622145722%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl145598145658%_))
                                                          (_%__match147934147935%_
                                                           _%e145481146046%_
                                                           _%hd145482146049%_
                                                           _%tl145483146051%_
                                                           _%e145596145653%_
                                                           _%hd145597145656%_
                                                           _%tl145598145658%_
                                                           _%e145599145661%_
                                                           _%hd145600145664%_
                                                           _%tl145601145666%_
                                                           _%e145602145669%_
                                                           _%hd145603145672%_
                                                           _%tl145604145674%_
                                                           _%e145605145677%_
                                                           _%hd145606145680%_
                                                           _%tl145607145682%_
                                                           _%e145608145685%_
                                                           _%hd145609145688%_
                                                           _%tl145610145690%_
                                                           _%e145611145693%_
                                                           _%hd145612145696%_
                                                           _%tl145613145698%_
                                                           _%e145614145701%_
                                                           _%hd145615145704%_
                                                           _%tl145616145706%_
                                                           _%e145617145709%_
                                                           _%hd145618145712%_
                                                           _%tl145619145714%_
                                                           _%e145620145717%_
                                                           _%hd145621145720%_
                                                           _%tl145622145722%_
                                                           _%e145623145725%_
                                                           _%hd145624145728%_
                                                           _%tl145625145730%_
                                                           _%e145626145733%_
                                                           _%hd145627145736%_
                                                           _%tl145628145738%_)
                                                          (_%__kont147809147810%_))
                                                      (_%__kont147809147810%_))
                                                  (_%__kont147809147810%_))))
                                          (_%__kont147809147810%_))
                                      (_%__kont147809147810%_))
                                  (_%__kont147809147810%_))))
                          (_%__kont147809147810%_))))
                  (_%__kont147809147810%_))
              (_%__kont147809147810%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont147809147810%_))
                                          (_%__kont147809147810%_))
                                      (_%__kont147809147810%_))))
                              (_%__kont147809147810%_))))
                      (_%__kont147809147810%_))
                  (_%__kont147809147810%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont147809147810%_))
                                              (_%__kont147809147810%_))
                                          (_%__kont147809147810%_))))
                                  (_%__kont147809147810%_))))
                          (_%__kont147809147810%_))
                      (_%__kont147809147810%_))
                  (_%__kont147809147810%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont147809147810%_))))
                                          (_%__kont147809147810%_)))))
                              (_%__kont147809147810%_)))))))
                 (_%dispatch-case-e144781%_
                  (lambda (_%hd144932%_ _%body144933%_)
                    (let* ((_%form144935%_
                            (cons _%hd144932%_ (cons _%body144933%_ '())))
                           (_%__stx147937147938%_ _%form144935%_)
                           (_%g144939145063%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx147937147938%_)))))
                      (let ((_%__kont147939147940%_
                             (lambda (_%L145434%_ _%L145435%_ _%L145436%_)
                               (let ((__tmp149103
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L145435%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self144777%_
                                  __tmp149103))))
                            (_%__kont147945147946%_
                             (lambda (_%L145282%_
                                      _%L145283%_
                                      _%L145284%_
                                      _%L145285%_)
                               (let ((__tmp149104
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L145282%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self144777%_
                                  __tmp149104))))
                            (_%__kont147949147950%_
                             (lambda (_%L145148%_ _%L145149%_ _%L145150%_)
                               (let ((__tmp149105
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L145148%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self144777%_
                                  __tmp149105)))))
                        (let* ((_%__match148046148047%_
                                (lambda (_%e145029145068%_
                                         _%hd145030145071%_
                                         _%tl145031145073%_
                                         _%e145032145076%_
                                         _%hd145033145079%_
                                         _%tl145034145081%_
                                         _%e145035145084%_
                                         _%hd145036145087%_
                                         _%tl145037145089%_
                                         _%e145038145092%_
                                         _%hd145039145095%_
                                         _%tl145040145097%_
                                         _%e145041145100%_
                                         _%hd145042145103%_
                                         _%tl145043145105%_
                                         _%e145044145108%_
                                         _%hd145045145111%_
                                         _%tl145046145113%_
                                         _%e145047145116%_
                                         _%hd145048145119%_
                                         _%tl145049145121%_
                                         _%e145050145124%_
                                         _%hd145051145127%_
                                         _%tl145052145129%_
                                         _%e145053145132%_
                                         _%hd145054145135%_
                                         _%tl145055145137%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl145049145121%_))
                                      (let ((_%e145056145140%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl145049145121%_))))
                                        (let ((_%tl145058145145%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e145056145140%_)))
                                              (_%hd145057145143%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e145056145140%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl145058145145%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl145034145081%_))
                                                  (_%__kont147949147950%_
                                                   _%hd145054145135%_
                                                   _%hd145045145111%_
                                                   _%hd145030145071%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g144939145063%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g144939145063%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g144939145063%_)))))
                               (_%__match147976147977%_
                                (lambda (_%e144990145186%_
                                         _%hd144991145189%_
                                         _%tl144992145191%_
                                         _%__splice147947147948%_
                                         _%target144993145194%_
                                         _%tl144995145196%_)
                                  (letrec ((_%loop144996145199%_
                                            (lambda (_%hd144994145202%_
                                                     _%arg145000145204%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd144994145202%_))
                                                  (let ((_%e144997145207%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd144994145202%_))))
                                                    (let ((_%lp-tl144999145212%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e144997145207%_)))
                                                          (_%lp-hd144998145210%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e144997145207%_))))
                                                      (_%loop144996145199%_
                                                       _%lp-tl144999145212%_
                                                       (cons _%lp-hd144998145210%_
                                                             _%arg145000145204%_))))
                                                  (let ((_%arg145001145215%_
                                                         (reverse _%arg145000145204%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl144992145191%_))
                                                        (let ((_%e145002145218%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl144992145191%_))))
                  (let ((_%tl145004145223%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e145002145218%_)))
                        (_%hd145003145221%_
                         (let ()
                           (declare (not safe))
                           (##car _%e145002145218%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd145003145221%_))
                        (let ((_%e145005145226%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd145003145221%_))))
                          (let ((_%tl145007145231%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e145005145226%_)))
                                (_%hd145006145229%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e145005145226%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd145006145229%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd145006145229%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl145007145231%_))
                                        (let ((_%e145008145234%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl145007145231%_))))
                                          (let ((_%tl145010145239%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e145008145234%_)))
                                                (_%hd145009145237%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e145008145234%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd145009145237%_))
                                                (let ((_%e145011145242%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd145009145237%_))))
                                                  (let ((_%tl145013145247%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e145011145242%_)))
                                                        (_%hd145012145245%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e145011145242%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd145012145245%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd145012145245%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl145013145247%_))
                        (let ((_%e145014145250%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl145013145247%_))))
                          (let ((_%tl145016145255%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e145014145250%_)))
                                (_%hd145015145253%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e145014145250%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl145016145255%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl145010145239%_))
                                    (let ((_%e145017145258%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl145010145239%_))))
                                      (let ((_%tl145019145263%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e145017145258%_)))
                                            (_%hd145018145261%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e145017145258%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd145018145261%_))
                                            (let ((_%e145020145266%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd145018145261%_))))
                                              (let ((_%tl145022145271%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e145020145266%_)))
                                                    (_%hd145021145269%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e145020145266%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd145021145269%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd145021145269%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl145022145271%_))
                                                            (let ((_%e145023145274%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl145022145271%_))))
                      (let ((_%tl145025145279%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e145023145274%_)))
                            (_%hd145024145277%_
                             (let ()
                               (declare (not safe))
                               (##car _%e145023145274%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl145025145279%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl145004145223%_))
                                (_%__kont147945147946%_
                                 _%hd145024145277%_
                                 _%hd145015145253%_
                                 _%tl144995145196%_
                                 _%arg145001145215%_)
                                (_%__match148046148047%_
                                 _%e144990145186%_
                                 _%hd144991145189%_
                                 _%tl144992145191%_
                                 _%e145002145218%_
                                 _%hd145003145221%_
                                 _%tl145004145223%_
                                 _%e145005145226%_
                                 _%hd145006145229%_
                                 _%tl145007145231%_
                                 _%e145008145234%_
                                 _%hd145009145237%_
                                 _%tl145010145239%_
                                 _%e145011145242%_
                                 _%hd145012145245%_
                                 _%tl145013145247%_
                                 _%e145014145250%_
                                 _%hd145015145253%_
                                 _%tl145016145255%_
                                 _%e145017145258%_
                                 _%hd145018145261%_
                                 _%tl145019145263%_
                                 _%e145020145266%_
                                 _%hd145021145269%_
                                 _%tl145022145271%_
                                 _%e145023145274%_
                                 _%hd145024145277%_
                                 _%tl145025145279%_))
                            (let ()
                              (declare (not safe))
                              (_%g144939145063%_)))))
                    (let () (declare (not safe)) (_%g144939145063%_)))
                (let () (declare (not safe)) (_%g144939145063%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g144939145063%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g144939145063%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g144939145063%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g144939145063%_)))))
                        (let () (declare (not safe)) (_%g144939145063%_)))
                    (let () (declare (not safe)) (_%g144939145063%_)))
                (let () (declare (not safe)) (_%g144939145063%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g144939145063%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g144939145063%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g144939145063%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g144939145063%_)))))
                        (let () (declare (not safe)) (_%g144939145063%_)))))
                (let () (declare (not safe)) (_%g144939145063%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop144996145199%_
                                     _%target144993145194%_
                                     '()))))
                               (_%__match147964147965%_
                                (lambda (_%e144944145322%_
                                         _%hd144945145325%_
                                         _%tl144946145327%_
                                         _%__splice147941147942%_
                                         _%target144947145330%_
                                         _%tl144949145332%_)
                                  (letrec ((_%loop144950145335%_
                                            (lambda (_%hd144948145338%_
                                                     _%arg144954145340%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd144948145338%_))
                                                  (let ((_%e144951145343%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd144948145338%_))))
                                                    (let ((_%lp-tl144953145348%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e144951145343%_)))
                                                          (_%lp-hd144952145346%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e144951145343%_))))
                                                      (_%loop144950145335%_
                                                       _%lp-tl144953145348%_
                                                       (cons _%lp-hd144952145346%_
                                                             _%arg144954145340%_))))
                                                  (let ((_%arg144955145351%_
                                                         (reverse _%arg144954145340%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl144946145327%_))
                                                        (let ((_%e144956145354%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl144946145327%_))))
                  (let ((_%tl144958145359%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e144956145354%_)))
                        (_%hd144957145357%_
                         (let ()
                           (declare (not safe))
                           (##car _%e144956145354%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd144957145357%_))
                        (let ((_%e144959145362%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd144957145357%_))))
                          (let ((_%tl144961145367%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e144959145362%_)))
                                (_%hd144960145365%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e144959145362%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd144960145365%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd144960145365%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl144961145367%_))
                                        (let ((_%e144962145370%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl144961145367%_))))
                                          (let ((_%tl144964145375%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e144962145370%_)))
                                                (_%hd144963145373%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e144962145370%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd144963145373%_))
                                                (let ((_%e144965145378%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd144963145373%_))))
                                                  (let ((_%tl144967145383%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e144965145378%_)))
                                                        (_%hd144966145381%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e144965145378%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd144966145381%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd144966145381%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl144967145383%_))
                        (let ((_%e144968145386%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl144967145383%_))))
                          (let ((_%tl144970145391%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e144968145386%_)))
                                (_%hd144969145389%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e144968145386%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl144970145391%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl144964145375%_))
                                    (let ((_%__splice147943147944%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl144964145375%_
                                              '0))))
                                      (let ((_%tl144973145396%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice147943147944%_
                                                '1)))
                                            (_%target144971145394%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice147943147944%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl144973145396%_))
                                            (letrec ((_%loop144974145399%_
                                                      (lambda (_%hd144972145402%_
                                                               _%xarg144978145404%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd144972145402%_))
                                                            (let ((_%e144975145407%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd144972145402%_))))
                      (let ((_%lp-tl144977145412%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e144975145407%_)))
                            (_%lp-hd144976145410%_
                             (let ()
                               (declare (not safe))
                               (##car _%e144975145407%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd144976145410%_))
                            (let ((_%e144980145415%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd144976145410%_))))
                              (let ((_%tl144982145420%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e144980145415%_)))
                                    (_%hd144981145418%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e144980145415%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd144981145418%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd144981145418%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl144982145420%_))
                                            (let ((_%e144983145423%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl144982145420%_))))
                                              (let ((_%tl144985145428%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e144983145423%_)))
                                                    (_%hd144984145426%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e144983145423%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl144985145428%_))
                                                    (_%loop144974145399%_
                                                     _%lp-tl144977145412%_
                                                     (cons _%hd144984145426%_
                                                           _%xarg144978145404%_))
                                                    (_%__match147976147977%_
                                                     _%e144944145322%_
                                                     _%hd144945145325%_
                                                     _%tl144946145327%_
                                                     _%__splice147941147942%_
                                                     _%target144947145330%_
                                                     _%tl144949145332%_))))
                                            (_%__match147976147977%_
                                             _%e144944145322%_
                                             _%hd144945145325%_
                                             _%tl144946145327%_
                                             _%__splice147941147942%_
                                             _%target144947145330%_
                                             _%tl144949145332%_))
                                        (_%__match147976147977%_
                                         _%e144944145322%_
                                         _%hd144945145325%_
                                         _%tl144946145327%_
                                         _%__splice147941147942%_
                                         _%target144947145330%_
                                         _%tl144949145332%_))
                                    (_%__match147976147977%_
                                     _%e144944145322%_
                                     _%hd144945145325%_
                                     _%tl144946145327%_
                                     _%__splice147941147942%_
                                     _%target144947145330%_
                                     _%tl144949145332%_))))
                            (_%__match147976147977%_
                             _%e144944145322%_
                             _%hd144945145325%_
                             _%tl144946145327%_
                             _%__splice147941147942%_
                             _%target144947145330%_
                             _%tl144949145332%_))))
                    (let ((_%xarg144979145431%_
                           (reverse _%xarg144978145404%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl144958145359%_))
                          (_%__kont147939147940%_
                           _%xarg144979145431%_
                           _%hd144969145389%_
                           _%arg144955145351%_)
                          (_%__match147976147977%_
                           _%e144944145322%_
                           _%hd144945145325%_
                           _%tl144946145327%_
                           _%__splice147941147942%_
                           _%target144947145330%_
                           _%tl144949145332%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop144974145399%_
                                               _%target144971145394%_
                                               '()))
                                            (_%__match147976147977%_
                                             _%e144944145322%_
                                             _%hd144945145325%_
                                             _%tl144946145327%_
                                             _%__splice147941147942%_
                                             _%target144947145330%_
                                             _%tl144949145332%_))))
                                    (_%__match147976147977%_
                                     _%e144944145322%_
                                     _%hd144945145325%_
                                     _%tl144946145327%_
                                     _%__splice147941147942%_
                                     _%target144947145330%_
                                     _%tl144949145332%_))
                                (_%__match147976147977%_
                                 _%e144944145322%_
                                 _%hd144945145325%_
                                 _%tl144946145327%_
                                 _%__splice147941147942%_
                                 _%target144947145330%_
                                 _%tl144949145332%_))))
                        (_%__match147976147977%_
                         _%e144944145322%_
                         _%hd144945145325%_
                         _%tl144946145327%_
                         _%__splice147941147942%_
                         _%target144947145330%_
                         _%tl144949145332%_))
                    (_%__match147976147977%_
                     _%e144944145322%_
                     _%hd144945145325%_
                     _%tl144946145327%_
                     _%__splice147941147942%_
                     _%target144947145330%_
                     _%tl144949145332%_))
                (_%__match147976147977%_
                 _%e144944145322%_
                 _%hd144945145325%_
                 _%tl144946145327%_
                 _%__splice147941147942%_
                 _%target144947145330%_
                 _%tl144949145332%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match147976147977%_
                                                 _%e144944145322%_
                                                 _%hd144945145325%_
                                                 _%tl144946145327%_
                                                 _%__splice147941147942%_
                                                 _%target144947145330%_
                                                 _%tl144949145332%_))))
                                        (_%__match147976147977%_
                                         _%e144944145322%_
                                         _%hd144945145325%_
                                         _%tl144946145327%_
                                         _%__splice147941147942%_
                                         _%target144947145330%_
                                         _%tl144949145332%_))
                                    (_%__match147976147977%_
                                     _%e144944145322%_
                                     _%hd144945145325%_
                                     _%tl144946145327%_
                                     _%__splice147941147942%_
                                     _%target144947145330%_
                                     _%tl144949145332%_))
                                (_%__match147976147977%_
                                 _%e144944145322%_
                                 _%hd144945145325%_
                                 _%tl144946145327%_
                                 _%__splice147941147942%_
                                 _%target144947145330%_
                                 _%tl144949145332%_))))
                        (_%__match147976147977%_
                         _%e144944145322%_
                         _%hd144945145325%_
                         _%tl144946145327%_
                         _%__splice147941147942%_
                         _%target144947145330%_
                         _%tl144949145332%_))))
                (_%__match147976147977%_
                 _%e144944145322%_
                 _%hd144945145325%_
                 _%tl144946145327%_
                 _%__splice147941147942%_
                 _%target144947145330%_
                 _%tl144949145332%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop144950145335%_
                                     _%target144947145330%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx147937147938%_))
                              (let ((_%e144944145322%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx147937147938%_))))
                                (let ((_%tl144946145327%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e144944145322%_)))
                                      (_%hd144945145325%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e144944145322%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd144945145325%_))
                                      (let ((_%__splice147941147942%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd144945145325%_
                                                '0))))
                                        (let ((_%tl144949145332%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice147941147942%_
                                                  '1)))
                                              (_%target144947145330%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice147941147942%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl144949145332%_))
                                              (_%__match147964147965%_
                                               _%e144944145322%_
                                               _%hd144945145325%_
                                               _%tl144946145327%_
                                               _%__splice147941147942%_
                                               _%target144947145330%_
                                               _%tl144949145332%_)
                                              (_%__match147976147977%_
                                               _%e144944145322%_
                                               _%hd144945145325%_
                                               _%tl144946145327%_
                                               _%__splice147941147942%_
                                               _%target144947145330%_
                                               _%tl144949145332%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl144946145327%_))
                                          (let ((_%e145032145076%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl144946145327%_))))
                                            (let ((_%tl145034145081%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e145032145076%_)))
                                                  (_%hd145033145079%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e145032145076%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd145033145079%_))
                                                  (let ((_%e145035145084%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd145033145079%_))))
                                                    (let ((_%tl145037145089%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e145035145084%_)))
                                                          (_%hd145036145087%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e145035145084%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd145036145087%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd145036145087%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl145037145089%_))
                          (let ((_%e145038145092%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl145037145089%_))))
                            (let ((_%tl145040145097%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e145038145092%_)))
                                  (_%hd145039145095%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e145038145092%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd145039145095%_))
                                  (let ((_%e145041145100%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd145039145095%_))))
                                    (let ((_%tl145043145105%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e145041145100%_)))
                                          (_%hd145042145103%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e145041145100%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd145042145103%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd145042145103%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl145043145105%_))
                                                  (let ((_%e145044145108%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl145043145105%_))))
                                                    (let ((_%tl145046145113%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e145044145108%_)))
                                                          (_%hd145045145111%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e145044145108%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl145046145113%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl145040145097%_))
                      (let ((_%e145047145116%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl145040145097%_))))
                        (let ((_%tl145049145121%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145047145116%_)))
                              (_%hd145048145119%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145047145116%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd145048145119%_))
                              (let ((_%e145050145124%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd145048145119%_))))
                                (let ((_%tl145052145129%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145050145124%_)))
                                      (_%hd145051145127%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145050145124%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd145051145127%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd145051145127%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl145052145129%_))
                                              (let ((_%e145053145132%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl145052145129%_))))
                                                (let ((_%tl145055145137%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e145053145132%_)))
                                                      (_%hd145054145135%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e145053145132%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl145055145137%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl145049145121%_))
                                                          (let ((_%e145056145140%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl145049145121%_))))
                    (let ((_%tl145058145145%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e145056145140%_)))
                          (_%hd145057145143%_
                           (let ()
                             (declare (not safe))
                             (##car _%e145056145140%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl145058145145%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl145034145081%_))
                              (_%__kont147949147950%_
                               _%hd145054145135%_
                               _%hd145045145111%_
                               _%hd144945145325%_)
                              (let ()
                                (declare (not safe))
                                (_%g144939145063%_)))
                          (let () (declare (not safe)) (_%g144939145063%_)))))
                  (let () (declare (not safe)) (_%g144939145063%_)))
              (let () (declare (not safe)) (_%g144939145063%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g144939145063%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g144939145063%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g144939145063%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g144939145063%_)))))
                      (let () (declare (not safe)) (_%g144939145063%_)))
                  (let () (declare (not safe)) (_%g144939145063%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g144939145063%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g144939145063%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g144939145063%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g144939145063%_)))))
                          (let () (declare (not safe)) (_%g144939145063%_)))
                      (let () (declare (not safe)) (_%g144939145063%_)))
                  (let () (declare (not safe)) (_%g144939145063%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g144939145063%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g144939145063%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g144939145063%_))))))))
                 (_%generate1144782%_
                  (lambda (_%args144917%_
                           _%arglen144918%_
                           _%hd144919%_
                           _%body144920%_)
                    (let* ((_%len144922%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-length _%hd144919%_)))
                           (_%condition144927%_
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _%hd144919%_))
                                (if (gxc#current-compile-decls-unsafe?)
                                    (cons '##fx=
                                          (cons _%arglen144918%_
                                                (cons _%len144922%_ '())))
                                    (cons 'let
                                          (cons '()
                                                (cons '(declare (not safe))
                                                      (cons (cons '##fx=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%arglen144918%_ (cons _%len144922%_ '())))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (if (> _%len144922%_ '0)
                                    (if (gxc#current-compile-decls-unsafe?)
                                        (cons '##fx>=
                                              (cons _%arglen144918%_
                                                    (cons _%len144922%_ '())))
                                        (cons 'let
                                              (cons '()
                                                    (cons '(declare (not safe))
                                                          (cons (cons '##fx>=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%arglen144918%_ (cons _%len144922%_ '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '#t)))
                           (_%dispatch144929%_
                            (if (_%dispatch-case?144780%_
                                 _%hd144919%_
                                 _%body144920%_)
                                (_%dispatch-case-e144781%_
                                 _%hd144919%_
                                 _%body144920%_)
                                (gxc#generate-runtime-lambda-form
                                 _%self144777%_
                                 _%hd144919%_
                                 _%body144920%_))))
                      (cons _%condition144927%_
                            (cons (cons 'apply
                                        (cons _%dispatch144929%_
                                              (cons _%args144917%_ '())))
                                  '()))))))
          (let* ((_%g144784144812%_
                  (lambda (_%g144785144809%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g144785144809%_))))
                 (_%g144783144914%_
                  (lambda (_%g144785144815%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g144785144815%_))
                        (let ((_%e144788144817%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g144785144815%_))))
                          (let ((_%hd144789144820%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e144788144817%_)))
                                (_%tl144790144822%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e144788144817%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl144790144822%_))
                                (let ((_g149106_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl144790144822%_
                                          '0))))
                                  (begin
                                    (let ((_g149107_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g149106_)
                                                 (##vector-length _g149106_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g149107_ 2)))
                                          (error "Context expects 2 values"
                                                 _g149107_)))
                                    (let ((_%target144791144825%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g149106_ 0)))
                                          (_%tl144793144827%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g149106_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl144793144827%_))
                                          (letrec ((_%loop144794144830%_
                                                    (lambda (_%hd144792144833%_
                                                             _%body144798144835%_
                                                             _%hd144799144837%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd144792144833%_))
                                                          (let ((_%e144795144840%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd144792144833%_))))
                    (let ((_%lp-hd144796144843%_
                           (let ()
                             (declare (not safe))
                             (##car _%e144795144840%_)))
                          (_%lp-tl144797144845%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e144795144840%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd144796144843%_))
                          (let ((_%e144802144848%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd144796144843%_))))
                            (let ((_%hd144803144851%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e144802144848%_)))
                                  (_%tl144804144853%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e144802144848%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl144804144853%_))
                                  (let ((_%e144805144856%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl144804144853%_))))
                                    (let ((_%hd144806144859%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e144805144856%_)))
                                          (_%tl144807144861%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e144805144856%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl144807144861%_))
                                          (_%loop144794144830%_
                                           _%lp-tl144797144845%_
                                           (cons _%hd144806144859%_
                                                 _%body144798144835%_)
                                           (cons _%hd144803144851%_
                                                 _%hd144799144837%_))
                                          (_%g144784144812%_
                                           _%g144785144815%_))))
                                  (_%g144784144812%_ _%g144785144815%_))))
                          (_%g144784144812%_ _%g144785144815%_))))
                  (let ((_%body144800144864%_ (reverse _%body144798144835%_))
                        (_%hd144801144866%_ (reverse _%hd144799144837%_)))
                    ((lambda (_%L144869%_ _%L144870%_)
                       (let ((_%args144889%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%arglen144890%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%name144891%_
                              (let ((_%$e144886%_
                                     (let ((__tmp149108
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-runtime-names))))
                                       (declare (not safe))
                                       (hash-get __tmp149108 _%stx144778%_))))
                                (if _%$e144886%_
                                    _%$e144886%_
                                    ''case-lambda-dispatch))))
                         (cons 'lambda
                               (cons _%args144889%_
                                     (cons (cons 'let
                                                 (cons (cons (cons _%arglen144890%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (gxc#current-compile-decls-unsafe?)
                                     (cons '##length (cons _%args144889%_ '()))
                                     (cons 'let
                                           (cons '()
                                                 (cons '(declare (not safe))
                                                       (cons (cons '##length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%args144889%_ '()))
                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 '()))
                     '())
               (cons (cons 'cond
                           (let ((__tmp149112
                                  (cons (cons 'else
                                              (cons (cons '##raise-wrong-number-of-arguments-exception
                                                          (cons _%name144891%_
                                                                (cons _%args144889%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '()))
                                 (__tmp149109
                                  (map (lambda (_%g144892144895%_
                                                _%g144893144897%_)
                                         (_%generate1144782%_
                                          _%args144889%_
                                          _%arglen144890%_
                                          _%g144892144895%_
                                          _%g144893144897%_))
                                       (let ((__tmp149110
                                              (lambda (_%g144899144902%_
                                                       _%g144900144904%_)
                                                (cons _%g144899144902%_
                                                      _%g144900144904%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp149110
                                          '()
                                          _%L144870%_))
                                       (let ((__tmp149111
                                              (lambda (_%g144906144909%_
                                                       _%g144907144911%_)
                                                (cons _%g144906144909%_
                                                      _%g144907144911%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp149111
                                          '()
                                          _%L144869%_)))))
                             (declare (not safe))
                             (__foldr1 cons __tmp149112 __tmp149109)))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))
                     _%body144800144864%_
                     _%hd144801144866%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop144794144830%_
                                             _%target144791144825%_
                                             '()
                                             '()))
                                          (_%g144784144812%_
                                           _%g144785144815%_)))))
                                (_%g144784144812%_ _%g144785144815%_))))
                        (_%g144784144812%_ _%g144785144815%_)))))
            (_%g144783144914%_ _%stx144778%_)))))
    (define gxc#generate-runtime-let-values%__%
      (lambda (_%self144014%_ _%stx144015%_ _%compiled-body?144016%_)
        (letrec ((_%generate-simple144018%_
                  (lambda (_%hd144762%_ _%body144763%_)
                    (_%coalesce-boolean144019%_
                     (_%simplify-let144020%_
                      (gxc#generate-runtime-simple-let
                       _%self144014%_
                       'let
                       _%hd144762%_
                       _%body144763%_
                       _%compiled-body?144016%_)))))
                 (_%coalesce-boolean144019%_
                  (lambda (_%code144623%_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-boolean-context))
                        (let* ((_%code144624144650%_ _%code144623%_)
                               (_%else144626144658%_
                                (lambda () _%code144623%_))
                               (_%K144628144695%_
                                (lambda (_%expr2144661%_
                                         _%expr1144662%_
                                         _%id144663%_)
                                  (let* ((_%expr2144664144672%_
                                          _%expr2144661%_)
                                         (_%else144666144680%_
                                          (lambda ()
                                            (cons 'or
                                                  (cons _%expr1144662%_
                                                        (cons _%expr2144661%_
                                                              '())))))
                                         (_%K144668144685%_
                                          (lambda (_%exprs144683%_)
                                            (cons 'or
                                                  (cons _%expr1144662%_
                                                        _%exprs144683%_)))))
                                    (if (pair? _%expr2144664144672%_)
                                        (let ((_%hd144669144688%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%expr2144664144672%_)))
                                              (_%tl144670144690%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%expr2144664144672%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd144669144688%_ 'or))
                                              (let ((_%exprs144693%_
                                                     _%tl144670144690%_))
                                                (_%K144668144685%_
                                                 _%exprs144693%_))
                                              (_%else144666144680%_)))
                                        (_%else144666144680%_))))))
                          (if (pair? _%code144624144650%_)
                              (let ((_%hd144629144698%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%code144624144650%_)))
                                    (_%tl144630144700%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%code144624144650%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%hd144629144698%_ 'let))
                                    (if (pair? _%tl144630144700%_)
                                        (let ((_%hd144631144703%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%tl144630144700%_)))
                                              (_%tl144632144705%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%tl144630144700%_))))
                                          (if (pair? _%hd144631144703%_)
                                              (let ((_%hd144643144708%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%hd144631144703%_)))
                                                    (_%tl144644144710%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%hd144631144703%_))))
                                                (if (pair? _%hd144643144708%_)
                                                    (let ((_%hd144645144713%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%hd144643144708%_)))
                                                          (_%tl144646144715%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%hd144643144708%_))))
                                                      (let ((_%id144718%_
                                                             _%hd144645144713%_))
                                                        (if (pair? _%tl144646144715%_)
                                                            (let ((_%hd144647144720%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##car _%tl144646144715%_)))
                          (_%tl144648144722%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl144646144715%_))))
                      (let ((_%expr1144725%_ _%hd144647144720%_))
                        (if (null? _%tl144648144722%_)
                            (if (null? _%tl144644144710%_)
                                (if (pair? _%tl144632144705%_)
                                    (let ((_%hd144633144727%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl144632144705%_)))
                                          (_%tl144634144729%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl144632144705%_))))
                                      (if (pair? _%hd144633144727%_)
                                          (let ((_%hd144635144732%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd144633144727%_)))
                                                (_%tl144636144734%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd144633144727%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd144635144732%_
                                                         'if))
                                                (if (pair? _%tl144636144734%_)
                                                    (let ((_%hd144637144737%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl144636144734%_)))
                                                          (_%tl144638144739%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl144636144734%_))))
                                                      (if ((lambda (_%g144741144743%_)
                                                             (eq? _%g144741144743%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id144718%_))
                   _%hd144637144737%_)
                  (if (pair? _%tl144638144739%_)
                      (let ((_%hd144639144746%_
                             (let ()
                               (declare (not safe))
                               (##car _%tl144638144739%_)))
                            (_%tl144640144748%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%tl144638144739%_))))
                        (if ((lambda (_%g144750144752%_)
                               (eq? _%g144750144752%_ _%id144718%_))
                             _%hd144639144746%_)
                            (if (pair? _%tl144640144748%_)
                                (let ((_%hd144641144755%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl144640144748%_)))
                                      (_%tl144642144757%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl144640144748%_))))
                                  (let ((_%expr2144760%_ _%hd144641144755%_))
                                    (if (null? _%tl144642144757%_)
                                        (if (null? _%tl144634144729%_)
                                            (_%K144628144695%_
                                             _%expr2144760%_
                                             _%expr1144725%_
                                             _%id144718%_)
                                            (_%else144626144658%_))
                                        (_%else144626144658%_))))
                                (_%else144626144658%_))
                            (_%else144626144658%_)))
                      (_%else144626144658%_))
                  (_%else144626144658%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else144626144658%_))
                                                (_%else144626144658%_)))
                                          (_%else144626144658%_)))
                                    (_%else144626144658%_))
                                (_%else144626144658%_))
                            (_%else144626144658%_))))
                    (_%else144626144658%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else144626144658%_)))
                                              (_%else144626144658%_)))
                                        (_%else144626144658%_))
                                    (_%else144626144658%_)))
                              (_%else144626144658%_)))
                        _%code144623%_)))
                 (_%simplify-let144020%_
                  (lambda (_%code144322%_)
                    (let* ((_%code144323144395%_ _%code144322%_)
                           (_%else144328144403%_ (lambda () _%code144322%_)))
                      (let ((_%K144387144603%_
                             (lambda (_%expr144601%_) _%expr144601%_))
                            (_%K144370144549%_
                             (lambda (_%body144545%_
                                      _%expr144546%_
                                      _%id144547%_)
                               (cons 'let
                                     (cons (cons (cons _%id144547%_
                                                       (cons _%expr144546%_
                                                             '()))
                                                 '())
                                           _%body144545%_))))
                            (_%K144347144473%_
                             (lambda (_%body144467%_
                                      _%expr2144468%_
                                      _%id2144469%_
                                      _%expr1144470%_
                                      _%id1144471%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1144471%_
                                                       (cons _%expr1144470%_
                                                             '()))
                                                 (cons (cons _%id2144469%_
                                                             (cons _%expr2144468%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body144467%_))))
                            (_%K144330144412%_
                             (lambda (_%body144407%_
                                      _%bind144408%_
                                      _%expr1144409%_
                                      _%id1144410%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1144410%_
                                                       (cons _%expr1144409%_
                                                             '()))
                                                 _%bind144408%_)
                                           _%body144407%_)))))
                        (if (pair? _%code144323144395%_)
                            (let ((_%tl144389144608%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%code144323144395%_)))
                                  (_%hd144388144606%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%code144323144395%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd144388144606%_ 'let))
                                  (if (pair? _%tl144389144608%_)
                                      (let ((_%tl144391144613%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%tl144389144608%_)))
                                            (_%hd144390144611%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%tl144389144608%_))))
                                        (if (null? _%hd144390144611%_)
                                            (if (pair? _%tl144391144613%_)
                                                (let ((_%tl144393144618%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%tl144391144613%_)))
                                                      (_%hd144392144616%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%tl144391144613%_))))
                                                  (if (null? _%tl144393144618%_)
                                                      (let ((_%expr144621%_
                                                             _%hd144392144616%_))
                                                        (_%K144387144603%_
                                                         _%expr144621%_))
                                                      (_%else144328144403%_)))
                                                (_%else144328144403%_))
                                            (if (pair? _%hd144390144611%_)
                                                (let ((_%tl144382144564%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd144390144611%_)))
                                                      (_%hd144381144562%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd144390144611%_))))
                                                  (if (pair? _%hd144381144562%_)
                                                      (let ((_%tl144384144569%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%hd144381144562%_)))
                    (_%hd144383144567%_
                     (let () (declare (not safe)) (##car _%hd144381144562%_))))
                (if (pair? _%tl144384144569%_)
                    (let ((_%tl144386144576%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl144384144569%_)))
                          (_%hd144385144574%_
                           (let ()
                             (declare (not safe))
                             (##car _%tl144384144569%_))))
                      (if (null? _%tl144386144576%_)
                          (if (null? _%tl144382144564%_)
                              (if (pair? _%tl144391144613%_)
                                  (let ((_%tl144376144583%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl144391144613%_)))
                                        (_%hd144375144581%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl144391144613%_))))
                                    (if (pair? _%hd144375144581%_)
                                        (let ((_%tl144378144588%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%hd144375144581%_)))
                                              (_%hd144377144586%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%hd144375144581%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd144377144586%_
                                                       'let))
                                              (if (pair? _%tl144378144588%_)
                                                  (let ((_%tl144380144593%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl144378144588%_)))
                                                        (_%hd144379144591%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl144378144588%_))))
                                                    (if (null? _%hd144379144591%_)
                                                        (if (null? _%tl144376144583%_)
                                                            (let ((_%id144572%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%hd144383144567%_)
                          (_%expr144579%_ _%hd144385144574%_)
                          (_%body144596%_ _%tl144380144593%_))
                      (_%K144370144549%_
                       _%body144596%_
                       _%expr144579%_
                       _%id144572%_))
                    (_%else144328144403%_))
                (if (pair? _%hd144379144591%_)
                    (let ((_%tl144359144522%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%hd144379144591%_)))
                          (_%hd144358144520%_
                           (let ()
                             (declare (not safe))
                             (##car _%hd144379144591%_))))
                      (if (pair? _%hd144358144520%_)
                          (let ((_%tl144361144527%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd144358144520%_)))
                                (_%hd144360144525%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd144358144520%_))))
                            (if (pair? _%tl144361144527%_)
                                (let ((_%tl144363144534%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl144361144527%_)))
                                      (_%hd144362144532%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl144361144527%_))))
                                  (if (null? _%tl144363144534%_)
                                      (if (null? _%tl144359144522%_)
                                          (if (null? _%tl144376144583%_)
                                              (let ((_%id1144496%_
                                                     _%hd144383144567%_)
                                                    (_%expr1144503%_
                                                     _%hd144385144574%_)
                                                    (_%id2144530%_
                                                     _%hd144360144525%_)
                                                    (_%expr2144537%_
                                                     _%hd144362144532%_)
                                                    (_%body144539%_
                                                     _%tl144380144593%_))
                                                (_%K144347144473%_
                                                 _%body144539%_
                                                 _%expr2144537%_
                                                 _%id2144530%_
                                                 _%expr1144503%_
                                                 _%id1144496%_))
                                              (_%else144328144403%_))
                                          (_%else144328144403%_))
                                      (_%else144328144403%_)))
                                (_%else144328144403%_)))
                          (_%else144328144403%_)))
                    (_%else144328144403%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else144328144403%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##eq? _%hd144377144586%_
                                                           'let*))
                                                  (if (pair? _%tl144378144588%_)
                                                      (let ((_%tl144340144456%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%tl144378144588%_)))
                    (_%hd144339144454%_
                     (let () (declare (not safe)) (##car _%tl144378144588%_))))
                (if (null? _%tl144376144583%_)
                    (let ((_%id1144435%_ _%hd144383144567%_)
                          (_%expr1144442%_ _%hd144385144574%_)
                          (_%bind144459%_ _%hd144339144454%_)
                          (_%body144461%_ _%tl144340144456%_))
                      (_%K144330144412%_
                       _%body144461%_
                       _%bind144459%_
                       _%expr1144442%_
                       _%id1144435%_))
                    (_%else144328144403%_)))
              (_%else144328144403%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else144328144403%_))))
                                        (_%else144328144403%_)))
                                  (_%else144328144403%_))
                              (_%else144328144403%_))
                          (_%else144328144403%_)))
                    (_%else144328144403%_)))
              (_%else144328144403%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else144328144403%_))))
                                      (_%else144328144403%_))
                                  (_%else144328144403%_)))
                            (_%else144328144403%_))))))
                 (_%generate-values144021%_
                  (lambda (_%hd144135%_ _%body144136%_)
                    (let _%lp144138%_ ((_%rest144140%_ _%hd144135%_)
                                       (_%bind144141%_ '())
                                       (_%check144142%_ '())
                                       (_%post144143%_ '()))
                      (let* ((_%__stx148266148267%_ _%rest144140%_)
                             (_%g144146144157%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx148266148267%_)))))
                        (let ((_%__kont148268148269%_
                               (lambda (_%L144184%_ _%L144185%_)
                                 (let* ((_%__stx148222148223%_ _%L144185%_)
                                        (_%g144200144225%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx148222148223%_)))))
                                   (let ((_%__kont148224148225%_
                                          (lambda (_%L144298%_ _%L144299%_)
                                            (let ((_%eid144313%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%L144299%_)))
                                                  (_%expr144314%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self144014%_
                                                      _%L144298%_))))
                                              (_%lp144138%_
                                               _%L144184%_
                                               (cons (cons _%eid144313%_
                                                           (cons _%expr144314%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind144141%_)
                                               _%check144142%_
                                               _%post144143%_))))
                                         (_%__kont148226148227%_
                                          (lambda (_%L144246%_ _%L144247%_)
                                            (let* ((_%vals144260%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values144262%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals144260%_
                                                     _%L144247%_
                                                     _%L144246%_))
                                                   (_%refs144264%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals144260%_
                                                     _%L144247%_))
                                                   (_%expr144266%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self144014%_
                                                       _%L144246%_))))
                                              (_%lp144138%_
                                               _%L144184%_
                                               (cons (cons _%vals144260%_
                                                           (cons _%expr144266%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind144141%_)
                                               (cons _%check-values144262%_
                                                     _%check144142%_)
                                               (cons _%refs144264%_
                                                     _%post144143%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx148222148223%_))
                                         (let ((_%e144204144274%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx148222148223%_))))
                                           (let ((_%tl144206144279%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e144204144274%_)))
                                                 (_%hd144205144277%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e144204144274%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd144205144277%_))
                                                 (let ((_%e144207144282%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd144205144277%_))))
                                                   (let ((_%tl144209144287%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e144207144282%_)))
                                                         (_%hd144208144285%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e144207144282%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl144209144287%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl144206144279%_))
                     (let ((_%e144210144290%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl144206144279%_))))
                       (let ((_%tl144212144295%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e144210144290%_)))
                             (_%hd144211144293%_
                              (let ()
                                (declare (not safe))
                                (##car _%e144210144290%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl144212144295%_))
                             (_%__kont148224148225%_
                              _%hd144211144293%_
                              _%hd144208144285%_)
                             (let ()
                               (declare (not safe))
                               (_%g144200144225%_)))))
                     (let () (declare (not safe)) (_%g144200144225%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl144206144279%_))
                     (let ((_%e144218144238%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl144206144279%_))))
                       (let ((_%tl144220144243%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e144218144238%_)))
                             (_%hd144219144241%_
                              (let ()
                                (declare (not safe))
                                (##car _%e144218144238%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl144220144243%_))
                             (_%__kont148226148227%_
                              _%hd144219144241%_
                              _%hd144205144277%_)
                             (let ()
                               (declare (not safe))
                               (_%g144200144225%_)))))
                     (let () (declare (not safe)) (_%g144200144225%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl144206144279%_))
                                                     (let ((_%e144218144238%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl144206144279%_))))
                                                       (let ((_%tl144220144243%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e144218144238%_)))
                     (_%hd144219144241%_
                      (let () (declare (not safe)) (##car _%e144218144238%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl144220144243%_))
                     (_%__kont148226148227%_
                      _%hd144219144241%_
                      _%hd144205144277%_)
                     (let () (declare (not safe)) (_%g144200144225%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g144200144225%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g144200144225%_)))))))
                              (_%__kont148270148271%_
                               (lambda ()
                                 (let* ((_%body144164%_
                                         (if _%compiled-body?144016%_
                                             _%body144136%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self144014%_
                                                _%body144136%_))))
                                        (_%body144166%_
                                         (_%generate-values-post144022%_
                                          _%post144143%_
                                          _%body144164%_))
                                        (_%body144168%_
                                         (_%generate-values-check144023%_
                                          _%check144142%_
                                          _%body144166%_)))
                                   (cons 'let
                                         (cons (reverse _%bind144141%_)
                                               (cons _%body144168%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx148266148267%_))
                              (let ((_%e144150144176%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx148266148267%_))))
                                (let ((_%tl144152144181%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e144150144176%_)))
                                      (_%hd144151144179%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e144150144176%_))))
                                  (_%__kont148268148269%_
                                   _%tl144152144181%_
                                   _%hd144151144179%_)))
                              (_%__kont148270148271%_)))))))
                 (_%generate-values-post144022%_
                  (lambda (_%post144094%_ _%body144095%_)
                    (let _%lp144097%_ ((_%rest144099%_ _%post144094%_)
                                       (_%body144100%_ _%body144095%_))
                      (let* ((_%rest144101144109%_ _%rest144099%_)
                             (_%else144103144117%_ (lambda () _%body144100%_))
                             (_%K144105144123%_
                              (lambda (_%rest144120%_ _%bind144121%_)
                                (_%lp144097%_
                                 _%rest144120%_
                                 (cons 'let
                                       (cons _%bind144121%_
                                             (cons _%body144100%_ '())))))))
                        (if (pair? _%rest144101144109%_)
                            (let ((_%hd144106144126%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest144101144109%_)))
                                  (_%tl144107144128%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest144101144109%_))))
                              (let* ((_%bind144131%_ _%hd144106144126%_)
                                     (_%rest144133%_ _%tl144107144128%_))
                                (_%K144105144123%_
                                 _%rest144133%_
                                 _%bind144131%_)))
                            (_%else144103144117%_))))))
                 (_%generate-values-check144023%_
                  (lambda (_%check144091%_ _%body144092%_)
                    (cons 'begin
                          (let ((__tmp149114 (cons _%body144092%_ '()))
                                (__tmp149113 (reverse _%check144091%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp149114 __tmp149113))))))
          (let* ((_%g144025144042%_
                  (lambda (_%g144026144039%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g144026144039%_))))
                 (_%g144024144088%_
                  (lambda (_%g144026144045%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g144026144045%_))
                        (let ((_%e144029144047%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g144026144045%_))))
                          (let ((_%hd144030144050%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e144029144047%_)))
                                (_%tl144031144052%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e144029144047%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl144031144052%_))
                                (let ((_%e144032144055%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl144031144052%_))))
                                  (let ((_%hd144033144058%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e144032144055%_)))
                                        (_%tl144034144060%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e144032144055%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl144034144060%_))
                                        (let ((_%e144035144063%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl144034144060%_))))
                                          (let ((_%hd144036144066%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e144035144063%_)))
                                                (_%tl144037144068%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e144035144063%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl144037144068%_))
                                                ((lambda (_%L144071%_
                                                          _%L144072%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%L144072%_)
                                                       (_%generate-simple144018%_
                                                        _%L144072%_
                                                        _%L144071%_)
                                                       (_%generate-values144021%_
                                                        _%L144072%_
                                                        _%L144071%_)))
                                                 _%hd144036144066%_
                                                 _%hd144033144058%_)
                                                (_%g144025144042%_
                                                 _%g144026144045%_))))
                                        (_%g144025144042%_
                                         _%g144026144045%_))))
                                (_%g144025144042%_ _%g144026144045%_))))
                        (_%g144025144042%_ _%g144026144045%_)))))
            (_%g144024144088%_ _%stx144015%_)))))
    (define gxc#generate-runtime-let-values%__0
      (lambda (_%self144768%_ _%stx144769%_)
        (let ((_%compiled-body?144771%_ '#f))
          (gxc#generate-runtime-let-values%__%
           _%self144768%_
           _%stx144769%_
           _%compiled-body?144771%_))))
    (define gxc#generate-runtime-let-values%
      (lambda _g149116_
        (let ((_g149115_ (let () (declare (not safe)) (##length _g149116_))))
          (cond ((let () (declare (not safe)) (##fx= _g149115_ 2))
                 (apply gxc#generate-runtime-let-values%__0 _g149116_))
                ((let () (declare (not safe)) (##fx= _g149115_ 3))
                 (apply gxc#generate-runtime-let-values%__% _g149116_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-let-values%
                  _g149116_))))))
    (define gxc#generate-runtime-let-values-bind
      (lambda (_%vals143908%_ _%hd143909%_)
        (let _%lp143911%_ ((_%rest143913%_ _%hd143909%_)
                           (_%k143914%_ '0)
                           (_%r143915%_ '()))
          (let* ((_%__stx148280148281%_ _%rest143913%_)
                 (_%g143920143937%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx148280148281%_)))))
            (let ((_%__kont148282148283%_
                   (lambda (_%L144000%_)
                     (_%lp143911%_
                      _%L144000%_
                      (let () (declare (not safe)) (##fx+ _%k143914%_ '1))
                      _%r143915%_)))
                  (_%__kont148284148285%_
                   (lambda (_%L143973%_ _%L143974%_)
                     (_%lp143911%_
                      _%L143973%_
                      (let () (declare (not safe)) (##fx+ _%k143914%_ '1))
                      (cons (cons (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-binding-id
                                     _%L143974%_))
                                  (cons (gxc#generate-runtime-values-ref
                                         _%vals143908%_
                                         _%k143914%_
                                         _%L143973%_)
                                        '()))
                            _%r143915%_))))
                  (_%__kont148286148287%_
                   (lambda (_%L143949%_)
                     (let ((__tmp149117
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-binding-id
                                           _%L143949%_))
                                        (cons (gxc#generate-runtime-values->list
                                               _%vals143908%_
                                               _%k143914%_)
                                              '()))
                                  '())))
                       (declare (not safe))
                       (__foldl1 cons __tmp149117 _%r143915%_))))
                  (_%__kont148288148289%_ (lambda () (reverse _%r143915%_))))
              (let ((_%g143918143960%_
                     (lambda ()
                       (let ((_%L143949%_ _%__stx148280148281%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%L143949%_))
                             (_%__kont148286148287%_ _%L143949%_)
                             (_%__kont148288148289%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx148280148281%_))
                    (let ((_%e143923143989%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx148280148281%_))))
                      (let ((_%tl143925143994%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e143923143989%_)))
                            (_%hd143924143992%_
                             (let ()
                               (declare (not safe))
                               (##car _%e143923143989%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _%hd143924143992%_))
                            (let ((_%e143926143997%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd143924143992%_))))
                              (if (equal? _%e143926143997%_ '#f)
                                  (_%__kont148282148283%_ _%tl143925143994%_)
                                  (_%__kont148284148285%_
                                   _%tl143925143994%_
                                   _%hd143924143992%_)))
                            (_%__kont148284148285%_
                             _%tl143925143994%_
                             _%hd143924143992%_))))
                    (let () (declare (not safe)) (_%g143918143960%_)))))))))
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_%self143587%_ _%stx143588%_ _%compiled-body?143589%_)
        (letrec ((_%generate-simple143591%_
                  (lambda (_%hd143893%_ _%body143894%_)
                    (gxc#generate-runtime-simple-let
                     _%self143587%_
                     'letrec
                     _%hd143893%_
                     _%body143894%_
                     _%compiled-body?143589%_)))
                 (_%generate-values143592%_
                  (lambda (_%hd143672%_ _%body143673%_)
                    (let _%lp143675%_ ((_%rest143677%_ _%hd143672%_)
                                       (_%bind143678%_ '())
                                       (_%check143679%_ '())
                                       (_%post143680%_ '()))
                      (let* ((_%__stx148354148355%_ _%rest143677%_)
                             (_%g143683143694%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx148354148355%_)))))
                        (let ((_%__kont148356148357%_
                               (lambda (_%L143721%_ _%L143722%_)
                                 (let* ((_%__stx148310148311%_ _%L143722%_)
                                        (_%g143737143762%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx148310148311%_)))))
                                   (let ((_%__kont148312148313%_
                                          (lambda (_%L143869%_ _%L143870%_)
                                            (let ((_%eid143884%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%L143870%_)))
                                                  (_%expr143885%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self143587%_
                                                      _%L143869%_))))
                                              (_%lp143675%_
                                               _%L143721%_
                                               (cons (cons _%eid143884%_
                                                           (cons _%expr143885%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind143678%_)
                                               _%check143679%_
                                               _%post143680%_))))
                                         (_%__kont148314148315%_
                                          (lambda (_%L143783%_ _%L143784%_)
                                            (let* ((_%vals143797%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values143799%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals143797%_
                                                     _%L143784%_
                                                     _%L143783%_))
                                                   (_%refs143801%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals143797%_
                                                     _%L143784%_))
                                                   (_%expr143803%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self143587%_
                                                       _%L143783%_))))
                                              (_%lp143675%_
                                               _%L143721%_
                                               (let ((__tmp149119
                                                      (cons (cons _%vals143797%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr143803%_ '()))
                    _%bind143678%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp149118
                                                      (map (lambda (_%e143805143807%_)
                                                             (let* ((_%g143809143818%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%e143805143807%_)
                            (_%E143811143822%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%g143809143818%_
                                        '([eid _])))
                               '#!void))
                            (_%K143812143827%_
                             (lambda (_%eid143825%_)
                               (cons _%eid143825%_ (cons '#!void '())))))
                       (if (pair? _%g143809143818%_)
                           (let ((_%hd143813143830%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%g143809143818%_)))
                                 (_%tl143814143832%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%g143809143818%_))))
                             (let ((_%eid143835%_ _%hd143813143830%_))
                               (if (pair? _%tl143814143832%_)
                                   (let ((_%tl143816143837%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%tl143814143832%_))))
                                     (if (null? _%tl143816143837%_)
                                         (_%K143812143827%_ _%eid143835%_)
                                         (_%E143811143822%_)))
                                   (_%E143811143822%_))))
                           (_%E143811143822%_))))
                   _%refs143801%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (__foldl1
                                                  cons
                                                  __tmp149119
                                                  __tmp149118))
                                               (cons _%check-values143799%_
                                                     _%check143679%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (__foldl1
                                                  cons
                                                  _%refs143801%_
                                                  _%post143680%_)))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx148310148311%_))
                                         (let ((_%e143741143845%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx148310148311%_))))
                                           (let ((_%tl143743143850%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e143741143845%_)))
                                                 (_%hd143742143848%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e143741143845%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd143742143848%_))
                                                 (let ((_%e143744143853%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd143742143848%_))))
                                                   (let ((_%tl143746143858%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e143744143853%_)))
                                                         (_%hd143745143856%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e143744143853%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl143746143858%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl143743143850%_))
                     (let ((_%e143747143861%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl143743143850%_))))
                       (let ((_%tl143749143866%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e143747143861%_)))
                             (_%hd143748143864%_
                              (let ()
                                (declare (not safe))
                                (##car _%e143747143861%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl143749143866%_))
                             (_%__kont148312148313%_
                              _%hd143748143864%_
                              _%hd143745143856%_)
                             (let ()
                               (declare (not safe))
                               (_%g143737143762%_)))))
                     (let () (declare (not safe)) (_%g143737143762%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl143743143850%_))
                     (let ((_%e143755143775%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl143743143850%_))))
                       (let ((_%tl143757143780%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e143755143775%_)))
                             (_%hd143756143778%_
                              (let ()
                                (declare (not safe))
                                (##car _%e143755143775%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl143757143780%_))
                             (_%__kont148314148315%_
                              _%hd143756143778%_
                              _%hd143742143848%_)
                             (let ()
                               (declare (not safe))
                               (_%g143737143762%_)))))
                     (let () (declare (not safe)) (_%g143737143762%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl143743143850%_))
                                                     (let ((_%e143755143775%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl143743143850%_))))
                                                       (let ((_%tl143757143780%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e143755143775%_)))
                     (_%hd143756143778%_
                      (let () (declare (not safe)) (##car _%e143755143775%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl143757143780%_))
                     (_%__kont148314148315%_
                      _%hd143756143778%_
                      _%hd143742143848%_)
                     (let () (declare (not safe)) (_%g143737143762%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g143737143762%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g143737143762%_)))))))
                              (_%__kont148358148359%_
                               (lambda ()
                                 (let* ((_%body143701%_
                                         (if _%compiled-body?143589%_
                                             _%body143673%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self143587%_
                                                _%body143673%_))))
                                        (_%body143703%_
                                         (_%generate-values-post143594%_
                                          _%post143680%_
                                          _%body143701%_))
                                        (_%body143705%_
                                         (_%generate-values-check143593%_
                                          _%check143679%_
                                          _%body143703%_)))
                                   (cons 'letrec
                                         (cons (reverse _%bind143678%_)
                                               (cons _%body143705%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx148354148355%_))
                              (let ((_%e143687143713%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx148354148355%_))))
                                (let ((_%tl143689143718%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e143687143713%_)))
                                      (_%hd143688143716%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e143687143713%_))))
                                  (_%__kont148356148357%_
                                   _%tl143689143718%_
                                   _%hd143688143716%_)))
                              (_%__kont148358148359%_)))))))
                 (_%generate-values-check143593%_
                  (lambda (_%check143669%_ _%body143670%_)
                    (cons 'begin
                          (let ((__tmp149121 (cons _%body143670%_ '()))
                                (__tmp149120 (reverse _%check143669%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp149121 __tmp149120)))))
                 (_%generate-values-post143594%_
                  (lambda (_%post143662%_ _%body143663%_)
                    (cons 'begin
                          (let ((__tmp149125 (cons _%body143663%_ '()))
                                (__tmp149122
                                 (let ((__tmp149124
                                        (lambda (_%g143664143666%_)
                                          (cons 'set! _%g143664143666%_)))
                                       (__tmp149123 (reverse _%post143662%_)))
                                   (declare (not safe))
                                   (##map __tmp149124 __tmp149123))))
                            (declare (not safe))
                            (__foldr1 cons __tmp149125 __tmp149122))))))
          (let* ((_%g143596143613%_
                  (lambda (_%g143597143610%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g143597143610%_))))
                 (_%g143595143659%_
                  (lambda (_%g143597143616%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g143597143616%_))
                        (let ((_%e143600143618%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g143597143616%_))))
                          (let ((_%hd143601143621%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e143600143618%_)))
                                (_%tl143602143623%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e143600143618%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl143602143623%_))
                                (let ((_%e143603143626%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl143602143623%_))))
                                  (let ((_%hd143604143629%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e143603143626%_)))
                                        (_%tl143605143631%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e143603143626%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl143605143631%_))
                                        (let ((_%e143606143634%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl143605143631%_))))
                                          (let ((_%hd143607143637%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e143606143634%_)))
                                                (_%tl143608143639%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e143606143634%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl143608143639%_))
                                                ((lambda (_%L143642%_
                                                          _%L143643%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%L143643%_)
                                                       (_%generate-simple143591%_
                                                        _%L143643%_
                                                        _%L143642%_)
                                                       (_%generate-values143592%_
                                                        _%L143643%_
                                                        _%L143642%_)))
                                                 _%hd143607143637%_
                                                 _%hd143604143629%_)
                                                (_%g143596143613%_
                                                 _%g143597143616%_))))
                                        (_%g143596143613%_
                                         _%g143597143616%_))))
                                (_%g143596143613%_ _%g143597143616%_))))
                        (_%g143596143613%_ _%g143597143616%_)))))
            (_%g143595143659%_ _%stx143588%_)))))
    (define gxc#generate-runtime-letrec-values%__0
      (lambda (_%self143899%_ _%stx143900%_)
        (let ((_%compiled-body?143902%_ '#f))
          (gxc#generate-runtime-letrec-values%__%
           _%self143899%_
           _%stx143900%_
           _%compiled-body?143902%_))))
    (define gxc#generate-runtime-letrec-values%
      (lambda _g149127_
        (let ((_g149126_ (let () (declare (not safe)) (##length _g149127_))))
          (cond ((let () (declare (not safe)) (##fx= _g149126_ 2))
                 (apply gxc#generate-runtime-letrec-values%__0 _g149127_))
                ((let () (declare (not safe)) (##fx= _g149126_ 3))
                 (apply gxc#generate-runtime-letrec-values%__% _g149127_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-letrec-values%
                  _g149127_))))))
    (define gxc#generate-runtime-letrec*-values%
      (lambda (_%self143168%_ _%stx143169%_)
        (letrec ((_%generate-values143171%_
                  (lambda (_%hd143414%_ _%body143415%_)
                    (let _%lp143417%_ ((_%rest143419%_ _%hd143414%_)
                                       (_%bind143420%_ '()))
                      (let* ((_%rest143421143429%_ _%rest143419%_)
                             (_%else143423143440%_
                              (lambda ()
                                (let ((_%bind143437%_ (reverse _%bind143420%_))
                                      (_%body143438%_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self143168%_
                                          _%body143415%_))))
                                  (cons 'letrec*
                                        (cons _%bind143437%_
                                              (cons _%body143438%_ '()))))))
                             (_%K143425143574%_
                              (lambda (_%rest143443%_ _%hd-bind143444%_)
                                (let* ((_%__stx148368148369%_
                                        _%hd-bind143444%_)
                                       (_%g143447143472%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx148368148369%_)))))
                                  (let ((_%__kont148370148371%_
                                         (lambda (_%L143553%_ _%L143554%_)
                                           (let ((_%eid143568%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-binding-id*
                                                     _%L143554%_)))
                                                 (_%expr143569%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self143168%_
                                                     _%L143553%_))))
                                             (_%lp143417%_
                                              _%rest143443%_
                                              (cons (cons _%eid143568%_
                                                          (cons _%expr143569%_
                                                                '()))
                                                    _%bind143420%_)))))
                                        (_%__kont148372148373%_
                                         (lambda (_%L143493%_ _%L143494%_)
                                           (let* ((_%vals143513%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%tmp143515%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%check-values143517%_
                                                   (gxc#generate-runtime-check-values
                                                    _%tmp143515%_
                                                    _%L143494%_
                                                    _%L143493%_))
                                                  (_%refs143519%_
                                                   (gxc#generate-runtime-let-values-bind
                                                    _%vals143513%_
                                                    _%L143494%_))
                                                  (_%expr143521%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self143168%_
                                                      _%L143493%_))))
                                             (_%lp143417%_
                                              _%rest143443%_
                                              (let ((__tmp149128
                                                     (cons (cons _%vals143513%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'let
                                     (cons (cons (cons _%tmp143515%_
                                                       (cons _%expr143521%_
                                                             '()))
                                                 '())
                                           (cons _%check-values143517%_
                                                 (cons _%tmp143515%_ '()))))
                               '()))
                   _%bind143420%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 __tmp149128
                                                 _%refs143519%_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx148368148369%_))
                                        (let ((_%e143451143529%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx148368148369%_))))
                                          (let ((_%tl143453143534%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e143451143529%_)))
                                                (_%hd143452143532%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e143451143529%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd143452143532%_))
                                                (let ((_%e143454143537%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd143452143532%_))))
                                                  (let ((_%tl143456143542%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e143454143537%_)))
                                                        (_%hd143455143540%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e143454143537%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl143456143542%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl143453143534%_))
                                                            (let ((_%e143457143545%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl143453143534%_))))
                      (let ((_%tl143459143550%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e143457143545%_)))
                            (_%hd143458143548%_
                             (let ()
                               (declare (not safe))
                               (##car _%e143457143545%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl143459143550%_))
                            (_%__kont148370148371%_
                             _%hd143458143548%_
                             _%hd143455143540%_)
                            (let ()
                              (declare (not safe))
                              (_%g143447143472%_)))))
                    (let () (declare (not safe)) (_%g143447143472%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl143453143534%_))
                    (let ((_%e143465143485%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl143453143534%_))))
                      (let ((_%tl143467143490%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e143465143485%_)))
                            (_%hd143466143488%_
                             (let ()
                               (declare (not safe))
                               (##car _%e143465143485%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl143467143490%_))
                            (_%__kont148372148373%_
                             _%hd143466143488%_
                             _%hd143452143532%_)
                            (let ()
                              (declare (not safe))
                              (_%g143447143472%_)))))
                    (let () (declare (not safe)) (_%g143447143472%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl143453143534%_))
                                                    (let ((_%e143465143485%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl143453143534%_))))
                                                      (let ((_%tl143467143490%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e143465143485%_)))
                    (_%hd143466143488%_
                     (let () (declare (not safe)) (##car _%e143465143485%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl143467143490%_))
                    (_%__kont148372148373%_
                     _%hd143466143488%_
                     _%hd143452143532%_)
                    (let () (declare (not safe)) (_%g143447143472%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g143447143472%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g143447143472%_))))))))
                        (if (pair? _%rest143421143429%_)
                            (let ((_%hd143426143577%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest143421143429%_)))
                                  (_%tl143427143579%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest143421143429%_))))
                              (let* ((_%hd-bind143582%_ _%hd143426143577%_)
                                     (_%rest143584%_ _%tl143427143579%_))
                                (_%K143425143574%_
                                 _%rest143584%_
                                 _%hd-bind143582%_)))
                            (_%else143423143440%_))))))
                 (_%generate-letrec?143172%_
                  (lambda (_%hd143304%_)
                    (let _%lp143306%_ ((_%rest143308%_ _%hd143304%_))
                      (let* ((_%rest143309143317%_ _%rest143308%_)
                             (_%else143311143325%_ (lambda () '#t))
                             (_%K143313143402%_
                              (lambda (_%rest143328%_ _%hd-bind143329%_)
                                (let* ((_%g143331143348%_
                                        (lambda (_%g143332143345%_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g143332143345%_))))
                                       (_%g143330143399%_
                                        (lambda (_%g143332143351%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%g143332143351%_))
                                              (let ((_%e143335143353%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%g143332143351%_))))
                                                (let ((_%hd143336143356%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e143335143353%_)))
                                                      (_%tl143337143358%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e143335143353%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd143336143356%_))
                                                      (let ((_%e143338143361%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd143336143356%_))))
                (let ((_%hd143339143364%_
                       (let () (declare (not safe)) (##car _%e143338143361%_)))
                      (_%tl143340143366%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e143338143361%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl143340143366%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl143337143358%_))
                          (let ((_%e143341143369%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl143337143358%_))))
                            (let ((_%hd143342143372%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e143341143369%_)))
                                  (_%tl143343143374%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e143341143369%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl143343143374%_))
                                  ((lambda (_%L143377%_ _%L143378%_)
                                     (if (_%is-lambda-expr?143173%_
                                          _%L143377%_)
                                         (_%lp143306%_ _%rest143328%_)
                                         '#f))
                                   _%hd143342143372%_
                                   _%hd143339143364%_)
                                  (_%g143331143348%_ _%g143332143351%_))))
                          (_%g143331143348%_ _%g143332143351%_))
                      (_%g143331143348%_ _%g143332143351%_))))
              (_%g143331143348%_ _%g143332143351%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g143331143348%_
                                               _%g143332143351%_)))))
                                  (_%g143330143399%_ _%hd-bind143329%_)))))
                        (if (pair? _%rest143309143317%_)
                            (let ((_%hd143314143405%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest143309143317%_)))
                                  (_%tl143315143407%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest143309143317%_))))
                              (let* ((_%hd-bind143410%_ _%hd143314143405%_)
                                     (_%rest143412%_ _%tl143315143407%_))
                                (_%K143313143402%_
                                 _%rest143412%_
                                 _%hd-bind143410%_)))
                            (_%else143311143325%_))))))
                 (_%is-lambda-expr?143173%_
                  (lambda (_%expr143241%_)
                    (let* ((_%__stx148412148413%_ _%expr143241%_)
                           (_%g143244143258%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx148412148413%_)))))
                      (let ((_%__kont148414148415%_
                             (lambda (_%L143286%_ _%L143287%_) '#t))
                            (_%__kont148416148417%_ (lambda () '#f)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%__stx148412148413%_))
                            (let ((_%e143248143270%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%__stx148412148413%_))))
                              (let ((_%tl143250143275%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e143248143270%_)))
                                    (_%hd143249143273%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e143248143270%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd143249143273%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd143249143273%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl143250143275%_))
                                            (let ((_%e143251143278%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl143250143275%_))))
                                              (let ((_%tl143253143283%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e143251143278%_)))
                                                    (_%hd143252143281%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e143251143278%_))))
                                                (_%__kont148414148415%_
                                                 _%tl143253143283%_
                                                 _%hd143252143281%_)))
                                            (_%__kont148416148417%_))
                                        (_%__kont148416148417%_))
                                    (_%__kont148416148417%_))))
                            (_%__kont148416148417%_)))))))
          (let* ((_%g143175143192%_
                  (lambda (_%g143176143189%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g143176143189%_))))
                 (_%g143174143238%_
                  (lambda (_%g143176143195%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g143176143195%_))
                        (let ((_%e143179143197%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g143176143195%_))))
                          (let ((_%hd143180143200%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e143179143197%_)))
                                (_%tl143181143202%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e143179143197%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl143181143202%_))
                                (let ((_%e143182143205%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl143181143202%_))))
                                  (let ((_%hd143183143208%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e143182143205%_)))
                                        (_%tl143184143210%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e143182143205%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl143184143210%_))
                                        (let ((_%e143185143213%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl143184143210%_))))
                                          (let ((_%hd143186143216%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e143185143213%_)))
                                                (_%tl143187143218%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e143185143213%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl143187143218%_))
                                                ((lambda (_%L143221%_
                                                          _%L143222%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%L143222%_)
                                                       (if (_%generate-letrec?143172%_
                                                            _%L143222%_)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self143168%_
                                                            'letrec
                                                            _%L143222%_
                                                            _%L143221%_
                                                            '#f)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self143168%_
                                                            'letrec*
                                                            _%L143222%_
                                                            _%L143221%_
                                                            '#f))
                                                       (_%generate-values143171%_
                                                        _%L143222%_
                                                        _%L143221%_)))
                                                 _%hd143186143216%_
                                                 _%hd143183143208%_)
                                                (_%g143175143192%_
                                                 _%g143176143195%_))))
                                        (_%g143175143192%_
                                         _%g143176143195%_))))
                                (_%g143175143192%_ _%g143176143195%_))))
                        (_%g143175143192%_ _%g143176143195%_)))))
            (_%g143174143238%_ _%stx143169%_)))))
    (define gxc#generate-runtime-simple-let?
      (lambda (_%hd143105%_)
        (let _%lp143107%_ ((_%rest143109%_ _%hd143105%_))
          (let* ((_%rest143110143126%_ _%rest143109%_)
                 (_%else143113143134%_ (lambda () '#f)))
            (let ((_%K143116143147%_
                   (lambda (_%rest143145%_) (_%lp143107%_ _%rest143145%_)))
                  (_%K143115143139%_ (lambda () '#t)))
              (let ((_%try-match143112143142%_
                     (lambda ()
                       (if (null? _%rest143110143126%_)
                           (_%K143115143139%_)
                           (_%else143113143134%_)))))
                (if (pair? _%rest143110143126%_)
                    (let ((_%tl143118143152%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest143110143126%_)))
                          (_%hd143117143150%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest143110143126%_))))
                      (if (pair? _%hd143117143150%_)
                          (let ((_%tl143120143157%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd143117143150%_)))
                                (_%hd143119143155%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd143117143150%_))))
                            (if (pair? _%hd143119143155%_)
                                (let ((_%tl143124143160%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd143119143155%_))))
                                  (if (null? _%tl143124143160%_)
                                      (if (pair? _%tl143120143157%_)
                                          (let ((_%tl143122143163%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl143120143157%_))))
                                            (if (null? _%tl143122143163%_)
                                                (let ((_%rest143166%_
                                                       _%tl143118143152%_))
                                                  (_%lp143107%_
                                                   _%rest143166%_))
                                                (_%else143113143134%_)))
                                          (_%else143113143134%_))
                                      (_%else143113143134%_)))
                                (_%else143113143134%_)))
                          (_%else143113143134%_)))
                    (_%try-match143112143142%_))))))))
    (define gxc#generate-runtime-simple-let
      (lambda (_%self143016%_
               _%form143017%_
               _%hd143018%_
               _%body143019%_
               _%compiled-body?143020%_)
        (letrec ((_%generate1143022%_
                  (lambda (_%bind143061%_)
                    (let* ((_%bind143062143073%_ _%bind143061%_)
                           (_%E143064143077%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%bind143062143073%_
                                       '([[id] expr])))
                              '#!void))
                           (_%K143065143083%_
                            (lambda (_%expr143080%_ _%id143081%_)
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-binding-id*
                                       _%id143081%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self143016%_
                                             _%expr143080%_))
                                          '())))))
                      (if (pair? _%bind143062143073%_)
                          (let ((_%hd143066143086%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%bind143062143073%_)))
                                (_%tl143067143088%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%bind143062143073%_))))
                            (if (pair? _%hd143066143086%_)
                                (let ((_%hd143070143091%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd143066143086%_)))
                                      (_%tl143071143093%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd143066143086%_))))
                                  (let ((_%id143096%_ _%hd143070143091%_))
                                    (if (null? _%tl143071143093%_)
                                        (if (pair? _%tl143067143088%_)
                                            (let ((_%hd143068143098%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl143067143088%_)))
                                                  (_%tl143069143100%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl143067143088%_))))
                                              (let ((_%expr143103%_
                                                     _%hd143068143098%_))
                                                (if (null? _%tl143069143100%_)
                                                    (_%K143065143083%_
                                                     _%expr143103%_
                                                     _%id143096%_)
                                                    (_%E143064143077%_))))
                                            (_%E143064143077%_))
                                        (_%E143064143077%_))))
                                (_%E143064143077%_)))
                          (_%E143064143077%_))))))
          (let* ((_%bind143024%_ (map _%generate1143022%_ _%hd143018%_))
                 (_%body143026%_
                  (if _%compiled-body?143020%_
                      _%body143019%_
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self143016%_ _%body143019%_))))
                 (_%body143058%_
                  (let* ((_%body143027143035%_ _%body143026%_)
                         (_%else143029143043%_
                          (lambda () (cons _%body143026%_ '())))
                         (_%K143031143048%_
                          (lambda (_%exprs143046%_) _%exprs143046%_)))
                    (if (pair? _%body143027143035%_)
                        (let ((_%hd143032143051%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%body143027143035%_)))
                              (_%tl143033143053%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%body143027143035%_))))
                          (if (let ()
                                (declare (not safe))
                                (##eq? _%hd143032143051%_ 'begin))
                              (let ((_%exprs143056%_ _%tl143033143053%_))
                                (_%K143031143048%_ _%exprs143056%_))
                              (_%else143029143043%_)))
                        (_%else143029143043%_)))))
            (cons _%form143017%_ (cons _%bind143024%_ _%body143058%_))))))
    (define gxc#generate-runtime-quote%
      (lambda (_%self142916%_ _%stx142917%_)
        (letrec ((_%generate1142919%_
                  (lambda (_%datum142971%_)
                    (if (or (null? _%datum142971%_)
                            (let ()
                              (declare (not safe))
                              (interned-symbol? _%datum142971%_))
                            (let ()
                              (declare (not safe))
                              (gx#self-quoting? _%datum142971%_))
                            (eof-object? _%datum142971%_))
                        _%datum142971%_
                        (if (uninterned-symbol? _%datum142971%_)
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__%
                               _%datum142971%_
                               '#t))
                            (if (pair? _%datum142971%_)
                                (cons (_%generate1142919%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%datum142971%_)))
                                      (_%generate1142919%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%datum142971%_))))
                                (if (box? _%datum142971%_)
                                    (box (_%generate1142919%_
                                          (unbox _%datum142971%_)))
                                    (if (vector? _%datum142971%_)
                                        (vector-map
                                         _%generate1142919%_
                                         _%datum142971%_)
                                        (if (or (s8vector? _%datum142971%_)
                                                (u8vector? _%datum142971%_)
                                                (s16vector? _%datum142971%_)
                                                (u16vector? _%datum142971%_)
                                                (s32vector? _%datum142971%_)
                                                (u32vector? _%datum142971%_)
                                                (s64vector? _%datum142971%_)
                                                (u64vector? _%datum142971%_)
                                                (f32vector? _%datum142971%_)
                                                (f64vector? _%datum142971%_))
                                            _%datum142971%_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot compile non-primitive quote"
                                               _%stx142917%_)))))))))))
          (let* ((_%g142921142934%_
                  (lambda (_%g142922142931%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g142922142931%_))))
                 (_%g142920142968%_
                  (lambda (_%g142922142937%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g142922142937%_))
                        (let ((_%e142924142939%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g142922142937%_))))
                          (let ((_%hd142925142942%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e142924142939%_)))
                                (_%tl142926142944%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e142924142939%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl142926142944%_))
                                (let ((_%e142927142947%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl142926142944%_))))
                                  (let ((_%hd142928142950%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e142927142947%_)))
                                        (_%tl142929142952%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e142927142947%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl142929142952%_))
                                        ((lambda (_%L142955%_)
                                           (cons 'quote
                                                 (cons (_%generate1142919%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%L142955%_)))
                                                       '())))
                                         _%hd142928142950%_)
                                        (_%g142921142934%_
                                         _%g142922142937%_))))
                                (_%g142921142934%_ _%g142922142937%_))))
                        (_%g142921142934%_ _%g142922142937%_)))))
            (_%g142920142968%_ _%stx142917%_)))))
    (define gxc#generate-runtime-call%
      (lambda (_%self142357%_ _%stx142358%_)
        (letrec ((_%compile-call142360%_
                  (lambda (_%rator142649%_ _%rands142650%_)
                    (let ((_%rator142656%_
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self142357%_
                              _%rator142649%_)))
                          (_%rands142657%_
                           (map (lambda (_%g142651142653%_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%self142357%_
                                     _%g142651142653%_)))
                                _%rands142650%_)))
                      (let* ((_%__stx148459148460%_ _%rator142656%_)
                             (_%g142660142712%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx148459148460%_)))))
                        (let ((_%__kont148461148462%_
                               (lambda (_%L142836%_
                                        _%L142837%_
                                        _%L142838%_
                                        _%L142839%_)
                                 (if (let ((__tmp149131
                                            (let ()
                                              (declare (not safe))
                                              (##length _%rands142657%_)))
                                           (__tmp149129
                                            (length (let ((__tmp149130
                                                           (lambda (_%g142875142878%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g142876142880%_)
                     (cons _%g142875142878%_ _%g142876142880%_))))
              (declare (not safe))
              (__foldr1 __tmp149130 '() _%L142838%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp149131 __tmp149129))
                                     (let* ((_%id142883%_ _%L142839%_)
                                            (_%args142892%_
                                             (let ((__tmp149132
                                                    (lambda (_%g142884142887%_
                                                             _%g142885142889%_)
                                                      (cons _%g142884142887%_
                                                            _%g142885142889%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp149132
                                                '()
                                                _%L142838%_)))
                                            (_%body142901%_
                                             (let ((__tmp149133
                                                    (lambda (_%g142893142896%_
                                                             _%g142894142898%_)
                                                      (cons _%g142893142896%_
                                                            _%g142894142898%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp149133
                                                '()
                                                _%L142837%_)))
                                            (_%init142903%_
                                             (map list
                                                  _%args142892%_
                                                  _%rands142657%_)))
                                       (cons 'let
                                             (cons _%id142883%_
                                                   (cons _%init142903%_
                                                         _%body142901%_))))
                                     (let ((__tmp149134
                                            (let ((__tmp149135
                                                   (lambda (_%g142905142908%_
                                                            _%g142906142910%_)
                                                     (cons _%g142905142908%_
                                                           _%g142906142910%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp149135
                                               '()
                                               _%L142838%_))))
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Illegal loop application; arity mismatch"
                                        _%stx142358%_
                                        __tmp149134
                                        _%rands142657%_)))))
                              (_%__kont148467148468%_
                               (lambda ()
                                 (cons _%rator142656%_ _%rands142657%_))))
                          (let ((_%__match148526148527%_
                                 (lambda (_%e142666142724%_
                                          _%hd142667142727%_
                                          _%tl142668142729%_
                                          _%e142669142732%_
                                          _%hd142670142735%_
                                          _%tl142671142737%_
                                          _%e142672142740%_
                                          _%hd142673142743%_
                                          _%tl142674142745%_
                                          _%e142675142748%_
                                          _%hd142676142751%_
                                          _%tl142677142753%_
                                          _%e142678142756%_
                                          _%hd142679142759%_
                                          _%tl142680142761%_
                                          _%e142681142764%_
                                          _%hd142682142767%_
                                          _%tl142683142769%_
                                          _%e142684142772%_
                                          _%hd142685142775%_
                                          _%tl142686142777%_
                                          _%__splice148463148464%_
                                          _%target142687142780%_
                                          _%tl142689142782%_)
                                   (letrec ((_%loop142690142785%_
                                             (lambda (_%hd142688142788%_
                                                      _%arg142694142790%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%hd142688142788%_))
                                                   (let ((_%e142691142793%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%hd142688142788%_))))
                                                     (let ((_%lp-tl142693142798%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e142691142793%_)))
                                                           (_%lp-hd142692142796%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e142691142793%_))))
                                                       (_%loop142690142785%_
                                                        _%lp-tl142693142798%_
                                                        (cons _%lp-hd142692142796%_
                                                              _%arg142694142790%_))))
                                                   (let ((_%arg142695142801%_
                                                          (reverse _%arg142694142790%_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _%tl142686142777%_))
                                                         (let ((_%__splice148465148466%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice _%tl142686142777%_ '0))))
                   (let ((_%tl142698142806%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice148465148466%_ '1)))
                         (_%target142696142804%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice148465148466%_ '0))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl142698142806%_))
                         (letrec ((_%loop142699142809%_
                                   (lambda (_%hd142697142812%_
                                            _%body142703142814%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd142697142812%_))
                                         (let ((_%e142700142817%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd142697142812%_))))
                                           (let ((_%lp-tl142702142822%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e142700142817%_)))
                                                 (_%lp-hd142701142820%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e142700142817%_))))
                                             (_%loop142699142809%_
                                              _%lp-tl142702142822%_
                                              (cons _%lp-hd142701142820%_
                                                    _%body142703142814%_))))
                                         (let ((_%body142704142825%_
                                                (reverse _%body142703142814%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%tl142680142761%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl142674142745%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl142671142737%_))
                                                       (let ((_%e142705142828%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl142671142737%_))))
                 (let ((_%tl142707142833%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e142705142828%_)))
                       (_%hd142706142831%_
                        (let ()
                          (declare (not safe))
                          (##car _%e142705142828%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl142707142833%_))
                       (let ((_%L142836%_ _%hd142706142831%_)
                             (_%L142837%_ _%body142704142825%_)
                             (_%L142838%_ _%arg142695142801%_)
                             (_%L142839%_ _%hd142676142751%_))
                         (if (eq? _%L142839%_ _%L142836%_)
                             (_%__kont148461148462%_
                              _%L142836%_
                              _%L142837%_
                              _%L142838%_
                              _%L142839%_)
                             (_%__kont148467148468%_)))
                       (_%__kont148467148468%_))))
               (_%__kont148467148468%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont148467148468%_))
                                               (_%__kont148467148468%_)))))))
                           (_%loop142699142809%_ _%target142696142804%_ '()))
                         (_%__kont148467148468%_))))
                 (_%__kont148467148468%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%loop142690142785%_
                                      _%target142687142780%_
                                      '())))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx148459148460%_))
                                (let ((_%e142666142724%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx148459148460%_))))
                                  (let ((_%tl142668142729%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e142666142724%_)))
                                        (_%hd142667142727%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e142666142724%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd142667142727%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               'letrec
                                               _%hd142667142727%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl142668142729%_))
                                                (let ((_%e142669142732%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl142668142729%_))))
                                                  (let ((_%tl142671142737%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e142669142732%_)))
                                                        (_%hd142670142735%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e142669142732%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd142670142735%_))
                                                        (let ((_%e142672142740%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd142670142735%_))))
                  (let ((_%tl142674142745%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e142672142740%_)))
                        (_%hd142673142743%_
                         (let ()
                           (declare (not safe))
                           (##car _%e142672142740%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd142673142743%_))
                        (let ((_%e142675142748%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd142673142743%_))))
                          (let ((_%tl142677142753%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e142675142748%_)))
                                (_%hd142676142751%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e142675142748%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl142677142753%_))
                                (let ((_%e142678142756%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl142677142753%_))))
                                  (let ((_%tl142680142761%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e142678142756%_)))
                                        (_%hd142679142759%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e142678142756%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd142679142759%_))
                                        (let ((_%e142681142764%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd142679142759%_))))
                                          (let ((_%tl142683142769%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e142681142764%_)))
                                                (_%hd142682142767%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e142681142764%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd142682142767%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       'lambda
                                                       _%hd142682142767%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl142683142769%_))
                                                        (let ((_%e142684142772%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl142683142769%_))))
                  (let ((_%tl142686142777%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e142684142772%_)))
                        (_%hd142685142775%_
                         (let ()
                           (declare (not safe))
                           (##car _%e142684142772%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%hd142685142775%_))
                        (let ((_%__splice148463148464%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%hd142685142775%_
                                  '0))))
                          (let ((_%tl142689142782%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice148463148464%_ '1)))
                                (_%target142687142780%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _%__splice148463148464%_
                                    '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl142689142782%_))
                                (_%__match148526148527%_
                                 _%e142666142724%_
                                 _%hd142667142727%_
                                 _%tl142668142729%_
                                 _%e142669142732%_
                                 _%hd142670142735%_
                                 _%tl142671142737%_
                                 _%e142672142740%_
                                 _%hd142673142743%_
                                 _%tl142674142745%_
                                 _%e142675142748%_
                                 _%hd142676142751%_
                                 _%tl142677142753%_
                                 _%e142678142756%_
                                 _%hd142679142759%_
                                 _%tl142680142761%_
                                 _%e142681142764%_
                                 _%hd142682142767%_
                                 _%tl142683142769%_
                                 _%e142684142772%_
                                 _%hd142685142775%_
                                 _%tl142686142777%_
                                 _%__splice148463148464%_
                                 _%target142687142780%_
                                 _%tl142689142782%_)
                                (_%__kont148467148468%_))))
                        (_%__kont148467148468%_))))
                (_%__kont148467148468%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont148467148468%_))
                                                (_%__kont148467148468%_))))
                                        (_%__kont148467148468%_))))
                                (_%__kont148467148468%_))))
                        (_%__kont148467148468%_))))
                (_%__kont148467148468%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont148467148468%_))
                                            (_%__kont148467148468%_))
                                        (_%__kont148467148468%_))))
                                (_%__kont148467148468%_)))))))))
          (let* ((_%g142362142385%_
                  (lambda (_%g142363142382%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g142363142382%_))))
                 (_%g142361142646%_
                  (lambda (_%g142363142388%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g142363142388%_))
                        (let ((_%e142366142390%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g142363142388%_))))
                          (let ((_%hd142367142393%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e142366142390%_)))
                                (_%tl142368142395%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e142366142390%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl142368142395%_))
                                (let ((_%e142369142398%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl142368142395%_))))
                                  (let ((_%hd142370142401%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e142369142398%_)))
                                        (_%tl142371142403%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e142369142398%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl142371142403%_))
                                        (let ((_g149136_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl142371142403%_
                                                  '0))))
                                          (begin
                                            (let ((_g149137_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g149136_)
                                                         (##vector-length
                                                          _g149136_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g149137_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g149137_)))
                                            (let ((_%target142372142406%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g149136_
                                                      0)))
                                                  (_%tl142374142408%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g149136_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl142374142408%_))
                                                  (letrec ((_%loop142375142411%_
                                                            (lambda (_%hd142373142414%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%rand142379142416%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd142373142414%_))
                          (let ((_%e142376142419%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd142373142414%_))))
                            (let ((_%lp-hd142377142422%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e142376142419%_)))
                                  (_%lp-tl142378142424%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e142376142419%_))))
                              (_%loop142375142411%_
                               _%lp-tl142378142424%_
                               (cons _%lp-hd142377142422%_
                                     _%rand142379142416%_))))
                          (let ((_%rand142380142427%_
                                 (reverse _%rand142379142416%_)))
                            ((lambda (_%L142430%_ _%L142431%_)
                               (if (gxc#current-compile-decls-unsafe?)
                                   (_%compile-call142360%_
                                    _%L142431%_
                                    (let ((__tmp149138
                                           (lambda (_%g142448142451%_
                                                    _%g142449142453%_)
                                             (cons _%g142448142451%_
                                                   _%g142449142453%_))))
                                      (declare (not safe))
                                      (__foldr1 __tmp149138 '() _%L142430%_)))
                                   (let* ((_%__stx148575148576%_ _%L142431%_)
                                          (_%g142457142469%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%__stx148575148576%_)))))
                                     (let ((_%__kont148577148578%_
                                            (lambda ()
                                              (let ((_%f142506%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self142357%_
                                                        _%L142431%_))))
                                                (if (and (let ((__tmp149139
                                                                (symbol->string
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%f142506%_)))
                   (declare (not safe))
                   (##string-prefix? '"##" __tmp149139))
                 (not (let ()
                        (declare (not safe))
                        (##memq _%f142506%_ gxc#checked-primitives))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let _%lp142508%_ ((_%rest142511%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (reverse (let ((__tmp149141
                                                (lambda (_%g142628142631%_
                                                         _%g142629142633%_)
                                                  (cons _%g142628142631%_
                                                        _%g142629142633%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            __tmp149141
                                            '()
                                            _%L142430%_))))
                               (_%bind142513%_ '())
                               (_%args142514%_ '()))
              (let* ((_%rest142515142523%_ _%rest142511%_)
                     (_%else142517142531%_
                      (lambda ()
                        (cons 'let
                              (cons _%bind142513%_
                                    (cons '(declare (not safe))
                                          (cons (cons _%f142506%_
                                                      _%args142514%_)
                                                '()))))))
                     (_%K142519142617%_
                      (lambda (_%rest142534%_ _%e142535%_)
                        (let* ((_%__stx148529148530%_ _%e142535%_)
                               (_%g142540142558%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%__stx148529148530%_)))))
                          (let ((_%__kont148531148532%_
                                 (lambda ()
                                   (_%lp142508%_
                                    _%rest142534%_
                                    _%bind142513%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e142535%_))
                                          _%args142514%_))))
                                (_%__kont148533148534%_
                                 (lambda ()
                                   (_%lp142508%_
                                    _%rest142534%_
                                    _%bind142513%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e142535%_))
                                          _%args142514%_))))
                                (_%__kont148535148536%_
                                 (lambda ()
                                   (let ((_%tmp142565%_
                                          (let ((__tmp149140
                                                 (let ()
                                                   (declare (not safe))
                                                   (##gensym '__tmp))))
                                            (declare (not safe))
                                            (make-symbol__0 __tmp149140))))
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
                                  (gx#stx-pair? _%__stx148529148530%_))
                                (let ((_%e142542142596%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx148529148530%_))))
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
                                                           (declare (not safe))
                                                           (##cdr _%e142545142604%_)))
                                                        (_%hd142546142607%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e142545142604%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl142547142609%_))
                                                        (_%__kont148531148532%_)
                                                        (_%__kont148535148536%_))))
                                                (_%__kont148535148536%_))
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
                    (_%__kont148533148534%_)
                    (_%__kont148535148536%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont148535148536%_))
                                                (_%__kont148535148536%_)))
                                        (_%__kont148535148536%_))))
                                (_%__kont148535148536%_)))))))
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
                    (_%else142517142531%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%compile-call142360%_
                                                     _%L142431%_
                                                     (let ((__tmp149142
                                                            (lambda (_%g142635142638%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g142636142640%_)
                      (cons _%g142635142638%_ _%g142636142640%_))))
               (declare (not safe))
               (__foldr1 __tmp149142 '() _%L142430%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%__kont148579148580%_
                                            (lambda ()
                                              (_%compile-call142360%_
                                               _%L142431%_
                                               (let ((__tmp149143
                                                      (lambda (_%g142475142478%_
                                                               _%g142476142480%_)
                                                        (cons _%g142475142478%_
                                                              _%g142476142480%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp149143
                                                  '()
                                                  _%L142430%_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%__stx148575148576%_))
                                           (let ((_%e142459142488%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%__stx148575148576%_))))
                                             (let ((_%tl142461142493%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e142459142488%_)))
                                                   (_%hd142460142491%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e142459142488%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd142460142491%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#ref
                                                          _%hd142460142491%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl142461142493%_))
                                                           (let ((_%e142462142496%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl142461142493%_))))
                     (let ((_%tl142464142501%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e142462142496%_)))
                           (_%hd142463142499%_
                            (let ()
                              (declare (not safe))
                              (##car _%e142462142496%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl142464142501%_))
                           (_%__kont148577148578%_)
                           (_%__kont148579148580%_))))
                   (_%__kont148579148580%_))
               (_%__kont148579148580%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont148579148580%_))))
                                           (_%__kont148579148580%_))))))
                             _%rand142380142427%_
                             _%hd142370142401%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop142375142411%_
                                                     _%target142372142406%_
                                                     '()))
                                                  (_%g142362142385%_
                                                   _%g142363142388%_)))))
                                        (_%g142362142385%_
                                         _%g142363142388%_))))
                                (_%g142362142385%_ _%g142363142388%_))))
                        (_%g142362142385%_ _%g142363142388%_)))))
            (_%g142361142646%_ _%stx142358%_)))))
    (define gxc#generate-runtime-call-unchecked%
      (lambda (_%self142100%_ _%stx142101%_)
        (let* ((_%__stx148647148648%_ _%stx142101%_)
               (_%g142104142133%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx148647148648%_)))))
          (let ((_%__kont148649148650%_
                 (lambda (_%L142201%_ _%L142202%_)
                   (if (gxc#current-compile-decls-unsafe?)
                       (gxc#generate-runtime-call%
                        _%self142100%_
                        _%stx142101%_)
                       (let ((_%f142224%_
                              (let ((__tmp149144
                                     (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f '%#ref))
                                           (cons _%L142202%_ '()))))
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self142100%_
                                 __tmp149144))))
                         (let _%lp142226%_ ((_%rest142229%_
                                             (reverse (let ((__tmp149146
                                                             (lambda (_%g142346142349%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g142347142351%_)
                       (cons _%g142346142349%_ _%g142347142351%_))))
                (declare (not safe))
                (__foldr1 __tmp149146 '() _%L142201%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%bind142231%_ '())
                                            (_%args142232%_ '()))
                           (let* ((_%rest142233142241%_ _%rest142229%_)
                                  (_%else142235142249%_
                                   (lambda ()
                                     (cons 'let
                                           (cons _%bind142231%_
                                                 (cons '(declare (not safe))
                                                       (cons (cons _%f142224%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%args142232%_)
                     '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%K142237142335%_
                                   (lambda (_%rest142252%_ _%e142253%_)
                                     (let* ((_%__stx148601148602%_ _%e142253%_)
                                            (_%g142258142276%_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%__stx148601148602%_)))))
                                       (let ((_%__kont148603148604%_
                                              (lambda ()
                                                (_%lp142226%_
                                                 _%rest142252%_
                                                 _%bind142231%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e142253%_))
                                                       _%args142232%_))))
                                             (_%__kont148605148606%_
                                              (lambda ()
                                                (_%lp142226%_
                                                 _%rest142252%_
                                                 _%bind142231%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e142253%_))
                                                       _%args142232%_))))
                                             (_%__kont148607148608%_
                                              (lambda ()
                                                (let ((_%tmp142283%_
                                                       (let ((__tmp149145
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##gensym '__tmp))))
                 (declare (not safe))
                 (make-symbol__0 __tmp149145))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%lp142226%_
                                                   _%rest142252%_
                                                   (cons (cons _%tmp142283%_
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__0 _%e142253%_))
                             '()))
                 _%bind142231%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _%tmp142283%_
                                                         _%args142232%_))))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%__stx148601148602%_))
                                             (let ((_%e142260142314%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%__stx148601148602%_))))
                                               (let ((_%tl142262142319%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e142260142314%_)))
                                                     (_%hd142261142317%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e142260142314%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd142261142317%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#ref
                                                            _%hd142261142317%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl142262142319%_))
                     (let ((_%e142263142322%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl142262142319%_))))
                       (let ((_%tl142265142327%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e142263142322%_)))
                             (_%hd142264142325%_
                              (let ()
                                (declare (not safe))
                                (##car _%e142263142322%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl142265142327%_))
                             (_%__kont148603148604%_)
                             (_%__kont148607148608%_))))
                     (_%__kont148607148608%_))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-eq? '%#quote _%hd142261142317%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl142262142319%_))
                         (let ((_%e142269142299%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl142262142319%_))))
                           (let ((_%tl142271142304%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e142269142299%_)))
                                 (_%hd142270142302%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e142269142299%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl142271142304%_))
                                 (_%__kont148605148606%_)
                                 (_%__kont148607148608%_))))
                         (_%__kont148607148608%_))
                     (_%__kont148607148608%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont148607148608%_))))
                                             (_%__kont148607148608%_)))))))
                             (if (pair? _%rest142233142241%_)
                                 (let ((_%hd142238142338%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%rest142233142241%_)))
                                       (_%tl142239142340%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest142233142241%_))))
                                   (let* ((_%e142343%_ _%hd142238142338%_)
                                          (_%rest142345%_ _%tl142239142340%_))
                                     (_%K142237142335%_
                                      _%rest142345%_
                                      _%e142343%_)))
                                 (_%else142235142249%_))))))))
                (_%__kont148653148654%_
                 (lambda ()
                   (gxc#generate-runtime-call% _%self142100%_ _%stx142101%_))))
            (let ((_%__match148692148693%_
                   (lambda (_%e142108142145%_
                            _%hd142109142148%_
                            _%tl142110142150%_
                            _%e142111142153%_
                            _%hd142112142156%_
                            _%tl142113142158%_
                            _%e142114142161%_
                            _%hd142115142164%_
                            _%tl142116142166%_
                            _%e142117142169%_
                            _%hd142118142172%_
                            _%tl142119142174%_
                            _%__splice148651148652%_
                            _%target142120142177%_
                            _%tl142122142179%_)
                     (letrec ((_%loop142123142182%_
                               (lambda (_%hd142121142185%_
                                        _%rand142127142187%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd142121142185%_))
                                     (let ((_%e142124142190%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd142121142185%_))))
                                       (let ((_%lp-tl142126142195%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e142124142190%_)))
                                             (_%lp-hd142125142193%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e142124142190%_))))
                                         (_%loop142123142182%_
                                          _%lp-tl142126142195%_
                                          (cons _%lp-hd142125142193%_
                                                _%rand142127142187%_))))
                                     (let ((_%rand142128142198%_
                                            (reverse _%rand142127142187%_)))
                                       (_%__kont148649148650%_
                                        _%rand142128142198%_
                                        _%hd142118142172%_))))))
                       (_%loop142123142182%_ _%target142120142177%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx148647148648%_))
                  (let ((_%e142108142145%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx148647148648%_))))
                    (let ((_%tl142110142150%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e142108142145%_)))
                          (_%hd142109142148%_
                           (let ()
                             (declare (not safe))
                             (##car _%e142108142145%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl142110142150%_))
                          (let ((_%e142111142153%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl142110142150%_))))
                            (let ((_%tl142113142158%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e142111142153%_)))
                                  (_%hd142112142156%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e142111142153%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd142112142156%_))
                                  (let ((_%e142114142161%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd142112142156%_))))
                                    (let ((_%tl142116142166%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e142114142161%_)))
                                          (_%hd142115142164%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e142114142161%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd142115142164%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd142115142164%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl142116142166%_))
                                                  (let ((_%e142117142169%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl142116142166%_))))
                                                    (let ((_%tl142119142174%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e142117142169%_)))
                                                          (_%hd142118142172%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e142117142169%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl142119142174%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl142113142158%_))
                      (let ((_%__splice148651148652%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl142113142158%_
                                '0))))
                        (let ((_%tl142122142179%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice148651148652%_ '1)))
                              (_%target142120142177%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice148651148652%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl142122142179%_))
                              (_%__match148692148693%_
                               _%e142108142145%_
                               _%hd142109142148%_
                               _%tl142110142150%_
                               _%e142111142153%_
                               _%hd142112142156%_
                               _%tl142113142158%_
                               _%e142114142161%_
                               _%hd142115142164%_
                               _%tl142116142166%_
                               _%e142117142169%_
                               _%hd142118142172%_
                               _%tl142119142174%_
                               _%__splice148651148652%_
                               _%target142120142177%_
                               _%tl142122142179%_)
                              (_%__kont148653148654%_))))
                      (_%__kont148653148654%_))
                  (_%__kont148653148654%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont148653148654%_))
                                              (_%__kont148653148654%_))
                                          (_%__kont148653148654%_))))
                                  (_%__kont148653148654%_))))
                          (_%__kont148653148654%_))))
                  (_%__kont148653148654%_)))))))
    (define gxc#generate-runtime-if%
      (lambda (_%self141912%_ _%stx141913%_)
        (letrec ((_%simplify141915%_
                  (lambda (_%code142000%_)
                    (let* ((_%code142001142019%_ _%code142000%_)
                           (_%else142003142027%_ (lambda () _%code142000%_))
                           (_%K142005142063%_
                            (lambda (_%expr142030%_ _%test142031%_)
                              (let* ((_%expr142032142040%_ _%expr142030%_)
                                     (_%else142034142048%_
                                      (lambda ()
                                        (cons 'and
                                              (cons _%test142031%_
                                                    (cons _%expr142030%_
                                                          '())))))
                                     (_%K142036142053%_
                                      (lambda (_%exprs142051%_)
                                        (cons 'and
                                              (cons _%test142031%_
                                                    _%exprs142051%_)))))
                                (if (pair? _%expr142032142040%_)
                                    (let ((_%hd142037142056%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%expr142032142040%_)))
                                          (_%tl142038142058%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%expr142032142040%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _%hd142037142056%_ 'and))
                                          (let ((_%exprs142061%_
                                                 _%tl142038142058%_))
                                            (_%K142036142053%_
                                             _%exprs142061%_))
                                          (_%else142034142048%_)))
                                    (_%else142034142048%_))))))
                      (if (pair? _%code142001142019%_)
                          (let ((_%hd142006142066%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%code142001142019%_)))
                                (_%tl142007142068%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%code142001142019%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##eq? _%hd142006142066%_ 'if))
                                (if (pair? _%tl142007142068%_)
                                    (let ((_%hd142008142071%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl142007142068%_)))
                                          (_%tl142009142073%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl142007142068%_))))
                                      (let ((_%test142076%_
                                             _%hd142008142071%_))
                                        (if (pair? _%tl142009142073%_)
                                            (let ((_%hd142010142078%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl142009142073%_)))
                                                  (_%tl142011142080%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl142009142073%_))))
                                              (let ((_%expr142083%_
                                                     _%hd142010142078%_))
                                                (if (pair? _%tl142011142080%_)
                                                    (let ((_%hd142012142085%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl142011142080%_)))
                                                          (_%tl142013142087%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl142011142080%_))))
                                                      (if (pair? _%hd142012142085%_)
                                                          (let ((_%hd142014142090%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%hd142012142085%_)))
                        (_%tl142015142092%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%hd142012142085%_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _%hd142014142090%_ 'quote))
                        (if (pair? _%tl142015142092%_)
                            (let ((_%hd142016142095%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%tl142015142092%_)))
                                  (_%tl142017142097%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%tl142015142092%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd142016142095%_ '#f))
                                  (if (null? _%tl142017142097%_)
                                      (if (null? _%tl142013142087%_)
                                          (_%K142005142063%_
                                           _%expr142083%_
                                           _%test142076%_)
                                          (_%else142003142027%_))
                                      (_%else142003142027%_))
                                  (_%else142003142027%_)))
                            (_%else142003142027%_))
                        (_%else142003142027%_)))
                  (_%else142003142027%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else142003142027%_))))
                                            (_%else142003142027%_))))
                                    (_%else142003142027%_))
                                (_%else142003142027%_)))
                          (_%else142003142027%_))))))
          (let* ((_%g141917141938%_
                  (lambda (_%g141918141935%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g141918141935%_))))
                 (_%g141916141997%_
                  (lambda (_%g141918141941%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g141918141941%_))
                        (let ((_%e141922141943%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g141918141941%_))))
                          (let ((_%hd141923141946%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141922141943%_)))
                                (_%tl141924141948%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141922141943%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl141924141948%_))
                                (let ((_%e141925141951%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl141924141948%_))))
                                  (let ((_%hd141926141954%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e141925141951%_)))
                                        (_%tl141927141956%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e141925141951%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl141927141956%_))
                                        (let ((_%e141928141959%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl141927141956%_))))
                                          (let ((_%hd141929141962%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e141928141959%_)))
                                                (_%tl141930141964%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e141928141959%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl141930141964%_))
                                                (let ((_%e141931141967%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl141930141964%_))))
                                                  (let ((_%hd141932141970%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e141931141967%_)))
                                                        (_%tl141933141972%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e141931141967%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl141933141972%_))
                                                        ((lambda (_%L141975%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L141976%_
                          _%L141977%_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#current-compile-boolean-context))
                       (_%simplify141915%_
                        (cons 'if
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _%self141912%_
                                       _%L141977%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self141912%_
                                             _%L141976%_))
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self141912%_
                                                   _%L141975%_))
                                                '())))))
                       (cons 'if
                             (cons (let ((__tmp149147
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self141912%_
                                               _%L141977%_)))))
                                     (declare (not safe))
                                     (__call-with-parameters
                                      __tmp149147
                                      gxc#current-compile-boolean-context
                                      '#t))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self141912%_
                                            _%L141976%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self141912%_
                                                  _%L141975%_))
                                               '()))))))
                 _%hd141932141970%_
                 _%hd141929141962%_
                 _%hd141926141954%_)
                (_%g141917141938%_ _%g141918141941%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g141917141938%_
                                                 _%g141918141941%_))))
                                        (_%g141917141938%_
                                         _%g141918141941%_))))
                                (_%g141917141938%_ _%g141918141941%_))))
                        (_%g141917141938%_ _%g141918141941%_)))))
            (_%g141916141997%_ _%stx141913%_)))))
    (define gxc#generate-runtime-ref%
      (lambda (_%self141860%_ _%stx141861%_)
        (let* ((_%g141863141876%_
                (lambda (_%g141864141873%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g141864141873%_))))
               (_%g141862141909%_
                (lambda (_%g141864141879%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g141864141879%_))
                      (let ((_%e141866141881%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g141864141879%_))))
                        (let ((_%hd141867141884%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141866141881%_)))
                              (_%tl141868141886%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141866141881%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl141868141886%_))
                              (let ((_%e141869141889%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl141868141886%_))))
                                (let ((_%hd141870141892%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141869141889%_)))
                                      (_%tl141871141894%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141869141889%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl141871141894%_))
                                      ((lambda (_%L141897%_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#generate-runtime-binding-id
                                            _%L141897%_)))
                                       _%hd141870141892%_)
                                      (_%g141863141876%_ _%g141864141879%_))))
                              (_%g141863141876%_ _%g141864141879%_))))
                      (_%g141863141876%_ _%g141864141879%_)))))
          (_%g141862141909%_ _%stx141861%_))))
    (define gxc#generate-runtime-setq%
      (lambda (_%self141792%_ _%stx141793%_)
        (let* ((_%g141795141812%_
                (lambda (_%g141796141809%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g141796141809%_))))
               (_%g141794141857%_
                (lambda (_%g141796141815%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g141796141815%_))
                      (let ((_%e141799141817%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g141796141815%_))))
                        (let ((_%hd141800141820%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141799141817%_)))
                              (_%tl141801141822%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141799141817%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl141801141822%_))
                              (let ((_%e141802141825%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl141801141822%_))))
                                (let ((_%hd141803141828%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141802141825%_)))
                                      (_%tl141804141830%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141802141825%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl141804141830%_))
                                      (let ((_%e141805141833%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl141804141830%_))))
                                        (let ((_%hd141806141836%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e141805141833%_)))
                                              (_%tl141807141838%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e141805141833%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl141807141838%_))
                                              ((lambda (_%L141841%_
                                                        _%L141842%_)
                                                 (cons 'set!
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#generate-runtime-binding-id _%L141842%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _%self141792%_ _%L141841%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd141806141836%_
                                               _%hd141803141828%_)
                                              (_%g141795141812%_
                                               _%g141796141815%_))))
                                      (_%g141795141812%_ _%g141796141815%_))))
                              (_%g141795141812%_ _%g141796141815%_))))
                      (_%g141795141812%_ _%g141796141815%_)))))
          (_%g141794141857%_ _%stx141793%_))))
    (define gxc#generate-runtime-struct-instancep%
      (lambda (_%self141603%_ _%stx141604%_)
        (let* ((_%g141606141623%_
                (lambda (_%g141607141620%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g141607141620%_))))
               (_%g141605141789%_
                (lambda (_%g141607141626%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g141607141626%_))
                      (let ((_%e141610141628%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g141607141626%_))))
                        (let ((_%hd141611141631%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141610141628%_)))
                              (_%tl141612141633%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141610141628%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl141612141633%_))
                              (let ((_%e141613141636%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl141612141633%_))))
                                (let ((_%hd141614141639%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141613141636%_)))
                                      (_%tl141615141641%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141613141636%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl141615141641%_))
                                      (let ((_%e141616141644%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl141615141641%_))))
                                        (let ((_%hd141617141647%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e141616141644%_)))
                                              (_%tl141618141649%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e141616141644%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl141618141649%_))
                                              ((lambda (_%L141652%_
                                                        _%L141653%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self141603%_ _%L141652%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _%self141603%_ _%L141653%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp141668%_ ((_%rest141671%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L141653%_ (cons _%L141652%_ '())))
                                (_%bind141673%_ '())
                                (_%args141674%_ '()))
               (let* ((_%rest141675141683%_ _%rest141671%_)
                      (_%else141677141691%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind141673%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-instance-of?
                                                       _%args141674%_)
                                                 '()))))))
                      (_%K141679141777%_
                       (lambda (_%rest141694%_ _%e141695%_)
                         (let* ((_%__stx148695148696%_ _%e141695%_)
                                (_%g141700141718%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx148695148696%_)))))
                           (let ((_%__kont148697148698%_
                                  (lambda ()
                                    (_%lp141668%_
                                     _%rest141694%_
                                     _%bind141673%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e141695%_))
                                           _%args141674%_))))
                                 (_%__kont148699148700%_
                                  (lambda ()
                                    (_%lp141668%_
                                     _%rest141694%_
                                     _%bind141673%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e141695%_))
                                           _%args141674%_))))
                                 (_%__kont148701148702%_
                                  (lambda ()
                                    (let ((_%tmp141725%_
                                           (let ((__tmp149148
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp149148))))
                                      (_%lp141668%_
                                       _%rest141694%_
                                       (cons (cons _%tmp141725%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e141695%_))
                                                         '()))
                                             _%bind141673%_)
                                       (cons _%tmp141725%_ _%args141674%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx148695148696%_))
                                 (let ((_%e141702141756%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx148695148696%_))))
                                   (let ((_%tl141704141761%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e141702141756%_)))
                                         (_%hd141703141759%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e141702141756%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd141703141759%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd141703141759%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl141704141761%_))
                                                 (let ((_%e141705141764%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl141704141761%_))))
                                                   (let ((_%tl141707141769%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e141705141764%_)))
                                                         (_%hd141706141767%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e141705141764%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl141707141769%_))
                                                         (_%__kont148697148698%_)
                                                         (_%__kont148701148702%_))))
                                                 (_%__kont148701148702%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd141703141759%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl141704141761%_))
                                                     (let ((_%e141711141741%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl141704141761%_))))
                                                       (let ((_%tl141713141746%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e141711141741%_)))
                     (_%hd141712141744%_
                      (let () (declare (not safe)) (##car _%e141711141741%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl141713141746%_))
                     (_%__kont148699148700%_)
                     (_%__kont148701148702%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont148701148702%_))
                                                 (_%__kont148701148702%_)))
                                         (_%__kont148701148702%_))))
                                 (_%__kont148701148702%_)))))))
                 (if (pair? _%rest141675141683%_)
                     (let ((_%hd141680141780%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest141675141683%_)))
                           (_%tl141681141782%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest141675141683%_))))
                       (let* ((_%e141785%_ _%hd141680141780%_)
                              (_%rest141787%_ _%tl141681141782%_))
                         (_%K141679141777%_ _%rest141787%_ _%e141785%_)))
                     (_%else141677141691%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd141617141647%_
                                               _%hd141614141639%_)
                                              (_%g141606141623%_
                                               _%g141607141626%_))))
                                      (_%g141606141623%_ _%g141607141626%_))))
                              (_%g141606141623%_ _%g141607141626%_))))
                      (_%g141606141623%_ _%g141607141626%_)))))
          (_%g141605141789%_ _%stx141604%_))))
    (define gxc#generate-runtime-struct-direct-instancep%
      (lambda (_%self141414%_ _%stx141415%_)
        (let* ((_%g141417141434%_
                (lambda (_%g141418141431%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g141418141431%_))))
               (_%g141416141600%_
                (lambda (_%g141418141437%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g141418141437%_))
                      (let ((_%e141421141439%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g141418141437%_))))
                        (let ((_%hd141422141442%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141421141439%_)))
                              (_%tl141423141444%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141421141439%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl141423141444%_))
                              (let ((_%e141424141447%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl141423141444%_))))
                                (let ((_%hd141425141450%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141424141447%_)))
                                      (_%tl141426141452%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141424141447%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl141426141452%_))
                                      (let ((_%e141427141455%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl141426141452%_))))
                                        (let ((_%hd141428141458%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e141427141455%_)))
                                              (_%tl141429141460%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e141427141455%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl141429141460%_))
                                              ((lambda (_%L141463%_
                                                        _%L141464%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-direct-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self141414%_ _%L141463%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _%self141414%_ _%L141464%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp141479%_ ((_%rest141482%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L141464%_ (cons _%L141463%_ '())))
                                (_%bind141484%_ '())
                                (_%args141485%_ '()))
               (let* ((_%rest141486141494%_ _%rest141482%_)
                      (_%else141488141502%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind141484%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-direct-instance-of?
                                                       _%args141485%_)
                                                 '()))))))
                      (_%K141490141588%_
                       (lambda (_%rest141505%_ _%e141506%_)
                         (let* ((_%__stx148741148742%_ _%e141506%_)
                                (_%g141511141529%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx148741148742%_)))))
                           (let ((_%__kont148743148744%_
                                  (lambda ()
                                    (_%lp141479%_
                                     _%rest141505%_
                                     _%bind141484%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e141506%_))
                                           _%args141485%_))))
                                 (_%__kont148745148746%_
                                  (lambda ()
                                    (_%lp141479%_
                                     _%rest141505%_
                                     _%bind141484%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e141506%_))
                                           _%args141485%_))))
                                 (_%__kont148747148748%_
                                  (lambda ()
                                    (let ((_%tmp141536%_
                                           (let ((__tmp149149
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp149149))))
                                      (_%lp141479%_
                                       _%rest141505%_
                                       (cons (cons _%tmp141536%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e141506%_))
                                                         '()))
                                             _%bind141484%_)
                                       (cons _%tmp141536%_ _%args141485%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx148741148742%_))
                                 (let ((_%e141513141567%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx148741148742%_))))
                                   (let ((_%tl141515141572%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e141513141567%_)))
                                         (_%hd141514141570%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e141513141567%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd141514141570%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd141514141570%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl141515141572%_))
                                                 (let ((_%e141516141575%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl141515141572%_))))
                                                   (let ((_%tl141518141580%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e141516141575%_)))
                                                         (_%hd141517141578%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e141516141575%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl141518141580%_))
                                                         (_%__kont148743148744%_)
                                                         (_%__kont148747148748%_))))
                                                 (_%__kont148747148748%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd141514141570%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl141515141572%_))
                                                     (let ((_%e141522141552%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl141515141572%_))))
                                                       (let ((_%tl141524141557%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e141522141552%_)))
                     (_%hd141523141555%_
                      (let () (declare (not safe)) (##car _%e141522141552%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl141524141557%_))
                     (_%__kont148745148746%_)
                     (_%__kont148747148748%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont148747148748%_))
                                                 (_%__kont148747148748%_)))
                                         (_%__kont148747148748%_))))
                                 (_%__kont148747148748%_)))))))
                 (if (pair? _%rest141486141494%_)
                     (let ((_%hd141491141591%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest141486141494%_)))
                           (_%tl141492141593%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest141486141494%_))))
                       (let* ((_%e141596%_ _%hd141491141591%_)
                              (_%rest141598%_ _%tl141492141593%_))
                         (_%K141490141588%_ _%rest141598%_ _%e141596%_)))
                     (_%else141488141502%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd141428141458%_
                                               _%hd141425141450%_)
                                              (_%g141417141434%_
                                               _%g141418141437%_))))
                                      (_%g141417141434%_ _%g141418141437%_))))
                              (_%g141417141434%_ _%g141418141437%_))))
                      (_%g141417141434%_ _%g141418141437%_)))))
          (_%g141416141600%_ _%stx141415%_))))
    (define gxc#generate-runtime-struct-ref%
      (lambda (_%self141330%_ _%stx141331%_)
        (let* ((_%g141333141354%_
                (lambda (_%g141334141351%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g141334141351%_))))
               (_%g141332141411%_
                (lambda (_%g141334141357%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g141334141357%_))
                      (let ((_%e141338141359%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g141334141357%_))))
                        (let ((_%hd141339141362%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141338141359%_)))
                              (_%tl141340141364%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141338141359%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl141340141364%_))
                              (let ((_%e141341141367%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl141340141364%_))))
                                (let ((_%hd141342141370%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141341141367%_)))
                                      (_%tl141343141372%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141341141367%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl141343141372%_))
                                      (let ((_%e141344141375%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl141343141372%_))))
                                        (let ((_%hd141345141378%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e141344141375%_)))
                                              (_%tl141346141380%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e141344141375%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl141346141380%_))
                                              (let ((_%e141347141383%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl141346141380%_))))
                                                (let ((_%hd141348141386%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e141347141383%_)))
                                                      (_%tl141349141388%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e141347141383%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl141349141388%_))
                                                      ((lambda (_%L141391%_
                                                                _%L141392%_
                                                                _%L141393%_)
                                                         (cons '##structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1 _%self141330%_ _%L141391%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self141330%_
                                      _%L141392%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self141330%_
                                            _%L141393%_))
                                         (cons ''#f '()))))))
               _%hd141348141386%_
               _%hd141345141378%_
               _%hd141342141370%_)
              (_%g141333141354%_ _%g141334141357%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g141333141354%_
                                               _%g141334141357%_))))
                                      (_%g141333141354%_ _%g141334141357%_))))
                              (_%g141333141354%_ _%g141334141357%_))))
                      (_%g141333141354%_ _%g141334141357%_)))))
          (_%g141332141411%_ _%stx141331%_))))
    (define gxc#generate-runtime-struct-setq%
      (lambda (_%self141230%_ _%stx141231%_)
        (let* ((_%g141233141258%_
                (lambda (_%g141234141255%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g141234141255%_))))
               (_%g141232141327%_
                (lambda (_%g141234141261%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g141234141261%_))
                      (let ((_%e141239141263%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g141234141261%_))))
                        (let ((_%hd141240141266%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141239141263%_)))
                              (_%tl141241141268%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141239141263%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl141241141268%_))
                              (let ((_%e141242141271%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl141241141268%_))))
                                (let ((_%hd141243141274%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141242141271%_)))
                                      (_%tl141244141276%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141242141271%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl141244141276%_))
                                      (let ((_%e141245141279%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl141244141276%_))))
                                        (let ((_%hd141246141282%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e141245141279%_)))
                                              (_%tl141247141284%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e141245141279%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl141247141284%_))
                                              (let ((_%e141248141287%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl141247141284%_))))
                                                (let ((_%hd141249141290%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e141248141287%_)))
                                                      (_%tl141250141292%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e141248141287%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl141250141292%_))
                                                      (let ((_%e141251141295%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl141250141292%_))))
                (let ((_%hd141252141298%_
                       (let () (declare (not safe)) (##car _%e141251141295%_)))
                      (_%tl141253141300%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e141251141295%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl141253141300%_))
                      ((lambda (_%L141303%_
                                _%L141304%_
                                _%L141305%_
                                _%L141306%_)
                         (cons '##structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self141230%_
                                        _%L141304%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self141230%_
                                              _%L141303%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self141230%_
                                                    _%L141305%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self141230%_
                                                          _%L141306%_))
                                                       (cons ''#f '())))))))
                       _%hd141252141298%_
                       _%hd141249141290%_
                       _%hd141246141282%_
                       _%hd141243141274%_)
                      (_%g141233141258%_ _%g141234141261%_))))
              (_%g141233141258%_ _%g141234141261%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g141233141258%_
                                               _%g141234141261%_))))
                                      (_%g141233141258%_ _%g141234141261%_))))
                              (_%g141233141258%_ _%g141234141261%_))))
                      (_%g141233141258%_ _%g141234141261%_)))))
          (_%g141232141327%_ _%stx141231%_))))
    (define gxc#generate-runtime-struct-direct-ref%
      (lambda (_%self141146%_ _%stx141147%_)
        (let* ((_%g141149141170%_
                (lambda (_%g141150141167%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g141150141167%_))))
               (_%g141148141227%_
                (lambda (_%g141150141173%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g141150141173%_))
                      (let ((_%e141154141175%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g141150141173%_))))
                        (let ((_%hd141155141178%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141154141175%_)))
                              (_%tl141156141180%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141154141175%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl141156141180%_))
                              (let ((_%e141157141183%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl141156141180%_))))
                                (let ((_%hd141158141186%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141157141183%_)))
                                      (_%tl141159141188%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141157141183%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl141159141188%_))
                                      (let ((_%e141160141191%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl141159141188%_))))
                                        (let ((_%hd141161141194%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e141160141191%_)))
                                              (_%tl141162141196%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e141160141191%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl141162141196%_))
                                              (let ((_%e141163141199%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl141162141196%_))))
                                                (let ((_%hd141164141202%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e141163141199%_)))
                                                      (_%tl141165141204%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e141163141199%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl141165141204%_))
                                                      ((lambda (_%L141207%_
                                                                _%L141208%_
                                                                _%L141209%_)
                                                         (cons '##direct-structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1 _%self141146%_ _%L141207%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self141146%_
                                      _%L141208%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self141146%_
                                            _%L141209%_))
                                         (cons ''#f '()))))))
               _%hd141164141202%_
               _%hd141161141194%_
               _%hd141158141186%_)
              (_%g141149141170%_ _%g141150141173%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g141149141170%_
                                               _%g141150141173%_))))
                                      (_%g141149141170%_ _%g141150141173%_))))
                              (_%g141149141170%_ _%g141150141173%_))))
                      (_%g141149141170%_ _%g141150141173%_)))))
          (_%g141148141227%_ _%stx141147%_))))
    (define gxc#generate-runtime-struct-direct-setq%
      (lambda (_%self141046%_ _%stx141047%_)
        (let* ((_%g141049141074%_
                (lambda (_%g141050141071%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g141050141071%_))))
               (_%g141048141143%_
                (lambda (_%g141050141077%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g141050141077%_))
                      (let ((_%e141055141079%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g141050141077%_))))
                        (let ((_%hd141056141082%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e141055141079%_)))
                              (_%tl141057141084%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e141055141079%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl141057141084%_))
                              (let ((_%e141058141087%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl141057141084%_))))
                                (let ((_%hd141059141090%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141058141087%_)))
                                      (_%tl141060141092%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141058141087%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl141060141092%_))
                                      (let ((_%e141061141095%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl141060141092%_))))
                                        (let ((_%hd141062141098%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e141061141095%_)))
                                              (_%tl141063141100%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e141061141095%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl141063141100%_))
                                              (let ((_%e141064141103%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl141063141100%_))))
                                                (let ((_%hd141065141106%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e141064141103%_)))
                                                      (_%tl141066141108%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e141064141103%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl141066141108%_))
                                                      (let ((_%e141067141111%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl141066141108%_))))
                (let ((_%hd141068141114%_
                       (let () (declare (not safe)) (##car _%e141067141111%_)))
                      (_%tl141069141116%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e141067141111%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl141069141116%_))
                      ((lambda (_%L141119%_
                                _%L141120%_
                                _%L141121%_
                                _%L141122%_)
                         (cons '##direct-structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self141046%_
                                        _%L141120%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self141046%_
                                              _%L141119%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self141046%_
                                                    _%L141121%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self141046%_
                                                          _%L141122%_))
                                                       (cons ''#f '())))))))
                       _%hd141068141114%_
                       _%hd141065141106%_
                       _%hd141062141098%_
                       _%hd141059141090%_)
                      (_%g141049141074%_ _%g141050141077%_))))
              (_%g141049141074%_ _%g141050141077%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g141049141074%_
                                               _%g141050141077%_))))
                                      (_%g141049141074%_ _%g141050141077%_))))
                              (_%g141049141074%_ _%g141050141077%_))))
                      (_%g141049141074%_ _%g141050141077%_)))))
          (_%g141048141143%_ _%stx141047%_))))
    (define gxc#generate-runtime-struct-unchecked-ref%
      (lambda (_%self140841%_ _%stx140842%_)
        (let* ((_%g140844140865%_
                (lambda (_%g140845140862%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g140845140862%_))))
               (_%g140843141043%_
                (lambda (_%g140845140868%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g140845140868%_))
                      (let ((_%e140849140870%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g140845140868%_))))
                        (let ((_%hd140850140873%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e140849140870%_)))
                              (_%tl140851140875%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e140849140870%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl140851140875%_))
                              (let ((_%e140852140878%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl140851140875%_))))
                                (let ((_%hd140853140881%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e140852140878%_)))
                                      (_%tl140854140883%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e140852140878%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl140854140883%_))
                                      (let ((_%e140855140886%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl140854140883%_))))
                                        (let ((_%hd140856140889%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e140855140886%_)))
                                              (_%tl140857140891%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e140855140886%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl140857140891%_))
                                              (let ((_%e140858140894%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl140857140891%_))))
                                                (let ((_%hd140859140897%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e140858140894%_)))
                                                      (_%tl140860140899%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e140858140894%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl140860140899%_))
                                                      ((lambda (_%L140902%_
                                                                _%L140903%_
                                                                _%L140904%_)
                                                         (if (gxc#current-compile-decls-unsafe?)
                                                             (cons '##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__1
                                    _%self140841%_
                                    _%L140902%_))
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self140841%_
                                          _%L140903%_))
                                       (cons ''#f (cons ''#f '())))))
                     (let _%lp140922%_ ((_%rest140925%_
                                         (cons _%L140903%_
                                               (cons _%L140902%_ '())))
                                        (_%bind140927%_ '())
                                        (_%args140928%_ '()))
                       (let* ((_%rest140929140937%_ _%rest140925%_)
                              (_%else140931140945%_
                               (lambda ()
                                 (cons 'let
                                       (cons _%bind140927%_
                                             (cons '(declare (not safe))
                                                   (cons (cons '##unchecked-structure-ref
                                                               (let ((__tmp149150
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons ''#f (cons ''#f '()))))
                         (declare (not safe))
                         (__foldr1 cons __tmp149150 _%args140928%_)))
                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%K140933141031%_
                               (lambda (_%rest140948%_ _%e140949%_)
                                 (let* ((_%__stx148787148788%_ _%e140949%_)
                                        (_%g140954140972%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx148787148788%_)))))
                                   (let ((_%__kont148789148790%_
                                          (lambda ()
                                            (_%lp140922%_
                                             _%rest140948%_
                                             _%bind140927%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e140949%_))
                                                   _%args140928%_))))
                                         (_%__kont148791148792%_
                                          (lambda ()
                                            (_%lp140922%_
                                             _%rest140948%_
                                             _%bind140927%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e140949%_))
                                                   _%args140928%_))))
                                         (_%__kont148793148794%_
                                          (lambda ()
                                            (let ((_%tmp140979%_
                                                   (let ((__tmp149151
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym
                                                             '__tmp))))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp149151))))
                                              (_%lp140922%_
                                               _%rest140948%_
                                               (cons (cons _%tmp140979%_
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__0 _%e140949%_))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind140927%_)
                                               (cons _%tmp140979%_
                                                     _%args140928%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx148787148788%_))
                                         (let ((_%e140956141010%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx148787148788%_))))
                                           (let ((_%tl140958141015%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e140956141010%_)))
                                                 (_%hd140957141013%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e140956141010%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd140957141013%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#ref
                                                        _%hd140957141013%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl140958141015%_))
                                                         (let ((_%e140959141018%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl140958141015%_))))
                   (let ((_%tl140961141023%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e140959141018%_)))
                         (_%hd140960141021%_
                          (let ()
                            (declare (not safe))
                            (##car _%e140959141018%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl140961141023%_))
                         (_%__kont148789148790%_)
                         (_%__kont148793148794%_))))
                 (_%__kont148793148794%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#quote
                                                            _%hd140957141013%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl140958141015%_))
                     (let ((_%e140965140995%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl140958141015%_))))
                       (let ((_%tl140967141000%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e140965140995%_)))
                             (_%hd140966140998%_
                              (let ()
                                (declare (not safe))
                                (##car _%e140965140995%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl140967141000%_))
                             (_%__kont148791148792%_)
                             (_%__kont148793148794%_))))
                     (_%__kont148793148794%_))
                 (_%__kont148793148794%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont148793148794%_))))
                                         (_%__kont148793148794%_)))))))
                         (if (pair? _%rest140929140937%_)
                             (let ((_%hd140934141034%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest140929140937%_)))
                                   (_%tl140935141036%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest140929140937%_))))
                               (let* ((_%e141039%_ _%hd140934141034%_)
                                      (_%rest141041%_ _%tl140935141036%_))
                                 (_%K140933141031%_
                                  _%rest141041%_
                                  _%e141039%_)))
                             (_%else140931140945%_))))))
               _%hd140859140897%_
               _%hd140856140889%_
               _%hd140853140881%_)
              (_%g140844140865%_ _%g140845140868%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g140844140865%_
                                               _%g140845140868%_))))
                                      (_%g140844140865%_ _%g140845140868%_))))
                              (_%g140844140865%_ _%g140845140868%_))))
                      (_%g140844140865%_ _%g140845140868%_)))))
          (_%g140843141043%_ _%stx140842%_))))
    (define gxc#generate-runtime-struct-unchecked-setq%
      (lambda (_%self140620%_ _%stx140621%_)
        (let* ((_%g140623140648%_
                (lambda (_%g140624140645%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g140624140645%_))))
               (_%g140622140838%_
                (lambda (_%g140624140651%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g140624140651%_))
                      (let ((_%e140629140653%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g140624140651%_))))
                        (let ((_%hd140630140656%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e140629140653%_)))
                              (_%tl140631140658%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e140629140653%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl140631140658%_))
                              (let ((_%e140632140661%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl140631140658%_))))
                                (let ((_%hd140633140664%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e140632140661%_)))
                                      (_%tl140634140666%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e140632140661%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl140634140666%_))
                                      (let ((_%e140635140669%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl140634140666%_))))
                                        (let ((_%hd140636140672%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e140635140669%_)))
                                              (_%tl140637140674%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e140635140669%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl140637140674%_))
                                              (let ((_%e140638140677%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl140637140674%_))))
                                                (let ((_%hd140639140680%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e140638140677%_)))
                                                      (_%tl140640140682%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e140638140677%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl140640140682%_))
                                                      (let ((_%e140641140685%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl140640140682%_))))
                (let ((_%hd140642140688%_
                       (let () (declare (not safe)) (##car _%e140641140685%_)))
                      (_%tl140643140690%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e140641140685%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl140643140690%_))
                      ((lambda (_%L140693%_
                                _%L140694%_
                                _%L140695%_
                                _%L140696%_)
                         (if (gxc#current-compile-decls-unsafe?)
                             (cons '##unchecked-structure-set!
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self140620%_
                                            _%L140694%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self140620%_
                                                  _%L140693%_))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self140620%_
                                                        _%L140695%_))
                                                     (cons ''#f
                                                           (cons ''#f '()))))))
                             (let _%lp140717%_ ((_%rest140720%_
                                                 (cons _%L140695%_
                                                       (cons _%L140693%_
                                                             (cons _%L140694%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%bind140722%_ '())
                                                (_%args140723%_ '()))
                               (let* ((_%rest140724140732%_ _%rest140720%_)
                                      (_%else140726140740%_
                                       (lambda ()
                                         (cons 'let
                                               (cons _%bind140722%_
                                                     (cons '(declare
                                                              (not safe))
                                                           (cons (cons '##unchecked-structure-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp149152 (cons ''#f (cons ''#f '()))))
                                 (declare (not safe))
                                 (__foldr1 cons __tmp149152 _%args140723%_)))
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%K140728140826%_
                                       (lambda (_%rest140743%_ _%e140744%_)
                                         (let* ((_%__stx148833148834%_
                                                 _%e140744%_)
                                                (_%g140749140767%_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%__stx148833148834%_)))))
                                           (let ((_%__kont148835148836%_
                                                  (lambda ()
                                                    (_%lp140717%_
                                                     _%rest140743%_
                                                     _%bind140722%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e140744%_))
                                                           _%args140723%_))))
                                                 (_%__kont148837148838%_
                                                  (lambda ()
                                                    (_%lp140717%_
                                                     _%rest140743%_
                                                     _%bind140722%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e140744%_))
                                                           _%args140723%_))))
                                                 (_%__kont148839148840%_
                                                  (lambda ()
                                                    (let ((_%tmp140774%_
                                                           (let ((__tmp149153
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__tmp))))
                     (declare (not safe))
                     (make-symbol__0 __tmp149153))))
              (_%lp140717%_
               _%rest140743%_
               (cons (cons _%tmp140774%_
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__0 _%e140744%_))
                                 '()))
                     _%bind140722%_)
               (cons _%tmp140774%_ _%args140723%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%__stx148833148834%_))
                                                 (let ((_%e140751140805%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%__stx148833148834%_))))
                                                   (let ((_%tl140753140810%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e140751140805%_)))
                                                         (_%hd140752140808%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e140751140805%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _%hd140752140808%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-eq? '%#ref _%hd140752140808%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl140753140810%_))
                         (let ((_%e140754140813%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl140753140810%_))))
                           (let ((_%tl140756140818%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e140754140813%_)))
                                 (_%hd140755140816%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e140754140813%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl140756140818%_))
                                 (_%__kont148835148836%_)
                                 (_%__kont148839148840%_))))
                         (_%__kont148839148840%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-eq? '%#quote _%hd140752140808%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%tl140753140810%_))
                             (let ((_%e140760140790%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%tl140753140810%_))))
                               (let ((_%tl140762140795%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e140760140790%_)))
                                     (_%hd140761140793%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e140760140790%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%tl140762140795%_))
                                     (_%__kont148837148838%_)
                                     (_%__kont148839148840%_))))
                             (_%__kont148839148840%_))
                         (_%__kont148839148840%_)))
                 (_%__kont148839148840%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont148839148840%_)))))))
                                 (if (pair? _%rest140724140732%_)
                                     (let ((_%hd140729140829%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%rest140724140732%_)))
                                           (_%tl140730140831%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%rest140724140732%_))))
                                       (let* ((_%e140834%_ _%hd140729140829%_)
                                              (_%rest140836%_
                                               _%tl140730140831%_))
                                         (_%K140728140826%_
                                          _%rest140836%_
                                          _%e140834%_)))
                                     (_%else140726140740%_))))))
                       _%hd140642140688%_
                       _%hd140639140680%_
                       _%hd140636140672%_
                       _%hd140633140664%_)
                      (_%g140623140648%_ _%g140624140651%_))))
              (_%g140623140648%_ _%g140624140651%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g140623140648%_
                                               _%g140624140651%_))))
                                      (_%g140623140648%_ _%g140624140651%_))))
                              (_%g140623140648%_ _%g140624140651%_))))
                      (_%g140623140648%_ _%g140624140651%_)))))
          (_%g140622140838%_ _%stx140621%_))))
    (define gxc#generate-runtime-loader-import%
      (lambda (_%self140459%_ _%stx140460%_)
        (letrec ((_%import-set-template140462%_
                  (lambda (_%in140565%_ _%phi140566%_)
                    (let ((_%iphi140568%_
                           (fx+ _%phi140566%_
                                (##direct-structure-ref
                                 _%in140565%_
                                 '2
                                 gx#import-set::t
                                 '#f)))
                          (_%imports140569%_
                           (##structure-ref
                            (##direct-structure-ref
                             _%in140565%_
                             '1
                             gx#import-set::t
                             '#f)
                            '8
                            gx#module-context::t
                            '#f)))
                      (let _%lp140571%_ ((_%rest140573%_ _%imports140569%_)
                                         (_%r140574%_ '()))
                        (let* ((_%rest140575140583%_ _%rest140573%_)
                               (_%else140577140591%_ (lambda () _%r140574%_))
                               (_%K140579140608%_
                                (lambda (_%rest140594%_ _%in140595%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%in140595%_
                                         'gx#module-context::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxzero? _%iphi140568%_))
                                          (_%lp140571%_
                                           _%rest140594%_
                                           (cons _%in140595%_ _%r140574%_))
                                          (_%lp140571%_
                                           _%rest140594%_
                                           _%r140574%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%in140595%_
                                             'gx#module-import::t))
                                          (let ((_%iphi140599%_
                                                 (fx+ _%phi140566%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%in140595%_
                                                         '3
                                                         '#f
                                                         '#f)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##fxzero? _%iphi140599%_))
                                                (_%lp140571%_
                                                 _%rest140594%_
                                                 (cons (##direct-structure-ref
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%in140595%_
                                                           '1
                                                           '#f
                                                           '#f))
                                                        '1
                                                        gx#module-export::t
                                                        '#f)
                                                       _%r140574%_))
                                                (_%lp140571%_
                                                 _%rest140594%_
                                                 _%r140574%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 _%in140595%_
                                                 'gx#import-set::t))
                                              (let ((_%xphi140602%_
                                                     (fx+ _%iphi140568%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%in140595%_
                                                             '2
                                                             '#f
                                                             '#f)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##fxzero?
                                                       _%xphi140602%_))
                                                    (_%lp140571%_
                                                     _%rest140594%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in140595%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           _%r140574%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##fxpositive?
                                                           _%xphi140602%_))
                                                        (_%lp140571%_
                                                         _%rest140594%_
                                                         (let ((__tmp149154
                                                                (_%import-set-template140462%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in140595%_
                         _%iphi140568%_)))
                   (declare (not safe))
                   (__foldl1 cons _%r140574%_ __tmp149154)))
                (_%lp140571%_ _%rest140594%_ _%r140574%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%lp140571%_
                                               _%rest140594%_
                                               _%r140574%_)))))))
                          (if (pair? _%rest140575140583%_)
                              (let ((_%hd140580140611%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest140575140583%_)))
                                    (_%tl140581140613%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest140575140583%_))))
                                (let* ((_%in140616%_ _%hd140580140611%_)
                                       (_%rest140618%_ _%tl140581140613%_))
                                  (_%K140579140608%_
                                   _%rest140618%_
                                   _%in140616%_)))
                              (_%else140577140591%_))))))))
          (let* ((_%g140464140474%_
                  (lambda (_%g140465140471%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g140465140471%_))))
                 (_%g140463140562%_
                  (lambda (_%g140465140477%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g140465140477%_))
                        (let ((_%e140467140479%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g140465140477%_))))
                          (let ((_%hd140468140482%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140467140479%_)))
                                (_%tl140469140484%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140467140479%_))))
                            ((lambda (_%L140487%_)
                               (let ((_%ht140498%_
                                      (let ()
                                        (declare (not safe))
                                        (make-hash-table-eq))))
                                 (let _%lp140500%_ ((_%rest140502%_
                                                     _%L140487%_)
                                                    (_%loads140503%_ '()))
                                   (letrec ((_%K140505%_
                                             (lambda (_%ctx140555%_
                                                      _%rest140556%_)
                                               (let ((_%id140558%_
                                                      (##structure-ref
                                                       _%ctx140555%_
                                                       '1
                                                       gx#expander-context::t
                                                       '#f)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (__hash-get
                                                        _%ht140498%_
                                                        _%id140558%_))
                                                     (_%lp140500%_
                                                      _%rest140556%_
                                                      _%loads140503%_)
                                                     (let ((_%rt140560%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#module-id->path-string
                                                               _%id140558%_))))
                                                       (let ()
                                                         (declare (not safe))
                                                         (__hash-put!
                                                          _%ht140498%_
                                                          _%id140558%_
                                                          _%rt140560%_))
                                                       (_%lp140500%_
                                                        _%rest140556%_
                                                        (cons _%rt140560%_
                                                              _%loads140503%_))))))))
                                     (let* ((_%rest140506140514%_
                                             _%rest140502%_)
                                            (_%else140508140526%_
                                             (lambda ()
                                               (cons 'begin
                                                     (let ((__tmp149156
                                                            (lambda (_%g140521140523%_)
                                                              (list 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g140521140523%_)))
                   (__tmp149155 (reverse _%loads140503%_)))
               (declare (not safe))
               (##map __tmp149156 __tmp149155)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%K140510140543%_
                                             (lambda (_%rest140529%_
                                                      _%in140530%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-instance-of?
                                                      _%in140530%_
                                                      'gx#module-context::t))
                                                   (_%K140505%_
                                                    _%in140530%_
                                                    _%rest140529%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          _%in140530%_
                                                          'gx#module-import::t))
                                                       (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%in140530%_
                               '3
                               '#f
                               '#f)))
                   (_%K140505%_
                    (##direct-structure-ref
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%in140530%_ '1 '#f '#f))
                     '1
                     gx#module-export::t
                     '#f)
                    _%rest140529%_)
                   (_%lp140500%_ _%rest140529%_ _%loads140503%_))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%in140530%_
                      'gx#import-set::t))
                   (let ((_%phi140535%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%in140530%_
                             '2
                             '#f
                             '#f))))
                     (if (fxzero? _%phi140535%_)
                         (_%K140505%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%in140530%_
                             '1
                             '#f
                             '#f))
                          _%rest140529%_)
                         (if (fxpositive? _%phi140535%_)
                             (let ((_%deps140539%_
                                    (_%import-set-template140462%_
                                     _%in140530%_
                                     '0)))
                               (_%lp140500%_
                                (let ()
                                  (declare (not safe))
                                  (__foldl1
                                   cons
                                   _%rest140529%_
                                   _%deps140539%_))
                                _%loads140503%_))
                             (_%lp140500%_ _%rest140529%_ _%loads140503%_))))
                   (let ()
                     (declare (not safe))
                     (gxc#raise-compile-error
                      '"Unexpected import"
                      _%stx140460%_
                      _%in140530%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (pair? _%rest140506140514%_)
                                           (let ((_%hd140511140546%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%rest140506140514%_)))
                                                 (_%tl140512140548%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%rest140506140514%_))))
                                             (let* ((_%in140551%_
                                                     _%hd140511140546%_)
                                                    (_%rest140553%_
                                                     _%tl140512140548%_))
                                               (_%K140510140543%_
                                                _%rest140553%_
                                                _%in140551%_)))
                                           (_%else140508140526%_)))))))
                             _%tl140469140484%_)))
                        (_%g140464140474%_ _%g140465140477%_)))))
            (_%g140463140562%_ _%stx140460%_)))))
    (define gxc#generate-runtime-quote-syntax%
      (lambda (_%self140272%_ _%stx140273%_)
        (letrec ((_%add-lift!140275%_
                  (lambda (_%expr140457%_)
                    (set-box!
                     (let () (declare (not safe)) (gxc#current-compile-lift))
                     (cons _%expr140457%_
                           (unbox (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-lift)))))))
                 (_%generate-syntax-quote140276%_
                  (lambda (_%id140454%_ _%marks140455%_)
                    (cons '##structure
                          (cons 'gx#syntax-quote::t
                                (cons (cons 'quote (cons _%id140454%_ '()))
                                      (cons '#f
                                            (cons '(gx#current-expander-context)
                                                  (cons _%marks140455%_
                                                        '()))))))))
                 (_%generate-simple140277%_
                  (lambda (_%stxq140449%_)
                    (let ((_%gid140451%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__% '#t)))
                          (_%qid140452%_
                           (gxc#generate-runtime-identifier _%stxq140449%_)))
                      (_%add-lift!140275%_
                       (cons 'define
                             (cons _%gid140451%_
                                   (cons (_%generate-syntax-quote140276%_
                                          _%qid140452%_
                                          ''())
                                         '()))))
                      (let ((__tmp149157
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp149157 _%stxq140449%_ _%gid140451%_))
                      _%gid140451%_)))
                 (_%generate-serialized140278%_
                  (lambda (_%stxq140439%_ _%marks140440%_)
                    (let* ((_%mark-refs140442%_
                            (map _%generate-mark140279%_ _%marks140440%_))
                           (_%gid140444%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%qid140446%_
                            (gxc#generate-runtime-identifier _%stxq140439%_)))
                      (_%add-lift!140275%_
                       (cons 'define
                             (cons _%gid140444%_
                                   (cons (_%generate-syntax-quote140276%_
                                          _%qid140446%_
                                          (cons 'list _%mark-refs140442%_))
                                         '()))))
                      (let ((__tmp149158
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp149158 _%stxq140439%_ _%gid140444%_))
                      _%gid140444%_)))
                 (_%generate-mark140279%_
                  (lambda (_%mark140424%_)
                    (let ((_%$e140426%_
                           (let ((__tmp149159
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-marks))))
                             (declare (not safe))
                             (hash-get __tmp149159 _%mark140424%_))))
                      (if _%$e140426%_
                          _%$e140426%_
                          (let* ((_%gid140430%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-temporary__% '#t)))
                                 (_%repr140432%_
                                  (_%serialize-mark140280%_ _%mark140424%_))
                                 (_%ctx140434%_
                                  (let ((__tmp149160
                                         (##structure-ref
                                          _%mark140424%_
                                          '2
                                          gx#expander-mark::t
                                          '#f)))
                                    (declare (not safe))
                                    (gx#core-context-top__1 __tmp149160)))
                                 (_%ctx-ref140436%_
                                  (if (eq? _%ctx140434%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-context)))
                                      '(gx#current-expander-context)
                                      (cons 'gx#import-module
                                            (cons (cons 'quote
                                                        (cons (_%context-ref140281%_
                                                               _%ctx140434%_)
                                                              '()))
                                                  '())))))
                            (let ((__tmp149161
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-marks))))
                              (declare (not safe))
                              (hash-put!
                               __tmp149161
                               _%mark140424%_
                               _%gid140430%_))
                            (_%add-lift!140275%_
                             (cons 'define
                                   (cons _%gid140430%_
                                         (cons (cons 'gx#core-deserialize-mark
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%repr140432%_ '()))
                   (cons _%ctx-ref140436%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            _%gid140430%_)))))
                 (_%serialize-mark140280%_
                  (lambda (_%mark140371%_)
                    (letrec ((_%quote-e140373%_
                              (lambda (_%sym140422%_)
                                (if (let ()
                                      (declare (not safe))
                                      (interned-symbol? _%sym140422%_))
                                    _%sym140422%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-gensym-reference__0
                                       _%sym140422%_))))))
                      (let* ((_%mark140374140383%_ _%mark140371%_)
                             (_%E140376140387%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%mark140374140383%_
                                         '((expander-mark
                                            subst
                                            ctx
                                            phi
                                            trace))))
                                '#!void))
                             (_%K140377140399%_
                              (lambda (_%trace140390%_
                                       _%phi140391%_
                                       _%ctx140392%_
                                       _%subst140393%_)
                                (let ((_%subs140395%_
                                       (if _%subst140393%_
                                           (let ()
                                             (declare (not safe))
                                             (hash->list _%subst140393%_))
                                           '())))
                                  (cons _%phi140391%_
                                        (map (lambda (_%pair140397%_)
                                               (cons (_%quote-e140373%_
                                                      (car _%pair140397%_))
                                                     (_%quote-e140373%_
                                                      (cdr _%pair140397%_))))
                                             _%subs140395%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%mark140374140383%_
                               'gx#expander-mark::t))
                            (let* ((_%e140378140402%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark140374140383%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%subst140405%_ _%e140378140402%_)
                                   (_%e140379140407%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark140374140383%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%ctx140410%_ _%e140379140407%_)
                                   (_%e140380140412%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark140374140383%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%phi140415%_ _%e140380140412%_)
                                   (_%e140381140417%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark140374140383%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%trace140420%_ _%e140381140417%_))
                              (_%K140377140399%_
                               _%trace140420%_
                               _%phi140415%_
                               _%ctx140410%_
                               _%subst140405%_))
                            (_%E140376140387%_))))))
                 (_%context-ref140281%_
                  (lambda (_%ctx140358%_)
                    (if (let ((__tmp149162
                               (##structure-ref
                                _%ctx140358%_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (declare (not safe))
                          (##structure-instance-of?
                           __tmp149162
                           'gx#module-context::t))
                        (let ((_%ctx-ref140360%_
                               (_%context-ref-nested140283%_ _%ctx140358%_))
                              (_%ctx-origin140361%_
                               (_%context-ref-origin140282%_ _%ctx140358%_))
                              (_%origin140362%_
                               (_%context-ref-origin140282%_
                                (let ()
                                  (declare (not safe))
                                  (gx#current-expander-context)))))
                          (if (eq? _%origin140362%_ _%ctx-origin140361%_)
                              (let ((_%ref140364%_
                                     (_%context-ref-nested140283%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context)))))
                                (let _%lp140366%_ ((_%ref140368%_
                                                    (cdr _%ref140364%_))
                                                   (_%ctx-ref140369%_
                                                    (cdr _%ctx-ref140360%_)))
                                  (if (and (pair? _%ref140368%_)
                                           (eq? (let ()
                                                  (declare (not safe))
                                                  (##car _%ref140368%_))
                                                (car _%ctx-ref140369%_)))
                                      (_%lp140366%_
                                       (cdr _%ref140368%_)
                                       (cdr _%ctx-ref140369%_))
                                      (cons '#f _%ctx-ref140369%_))))
                              _%ctx-ref140360%_))
                        (let ((__tmp149163
                               (##structure-ref
                                _%ctx140358%_
                                '1
                                gx#expander-context::t
                                '#f)))
                          (declare (not safe))
                          (make-symbol__1 '":" __tmp149163)))))
                 (_%context-ref-origin140282%_
                  (lambda (_%ctx140350%_)
                    (let _%lp140352%_ ((_%ctx140354%_ _%ctx140350%_))
                      (let ((_%super140356%_
                             (##structure-ref
                              _%ctx140354%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super140356%_
                               'gx#module-context::t))
                            (_%lp140352%_ _%super140356%_)
                            _%ctx140354%_)))))
                 (_%context-ref-nested140283%_
                  (lambda (_%ctx140341%_)
                    (let _%lp140343%_ ((_%ctx140345%_ _%ctx140341%_)
                                       (_%r140346%_ '()))
                      (let ((_%super140348%_
                             (##structure-ref
                              _%ctx140345%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super140348%_
                               'gx#module-context::t))
                            (_%lp140343%_
                             _%super140348%_
                             (cons (car (##structure-ref
                                         _%ctx140345%_
                                         '7
                                         gx#module-context::t
                                         '#f))
                                   _%r140346%_))
                            (cons (let ((__tmp149164
                                         (##structure-ref
                                          _%ctx140345%_
                                          '1
                                          gx#expander-context::t
                                          '#f)))
                                    (declare (not safe))
                                    (make-symbol__1 '":" __tmp149164))
                                  _%r140346%_)))))))
          (let* ((_%g140285140298%_
                  (lambda (_%g140286140295%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g140286140295%_))))
                 (_%g140284140338%_
                  (lambda (_%g140286140301%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g140286140301%_))
                        (let ((_%e140288140303%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g140286140301%_))))
                          (let ((_%hd140289140306%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140288140303%_)))
                                (_%tl140290140308%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140288140303%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl140290140308%_))
                                (let ((_%e140291140311%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl140290140308%_))))
                                  (let ((_%hd140292140314%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e140291140311%_)))
                                        (_%tl140293140316%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e140291140311%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl140293140316%_))
                                        ((lambda (_%L140319%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#identifier? _%L140319%_))
                                               (let ((_%$e140332%_
                                                      (let ((__tmp149165
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#current-compile-identifiers))))
                (declare (not safe))
                (hash-get __tmp149165 _%L140319%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e140332%_
                                                     _%$e140332%_
                                                     (let ((_%marks140336%_
                                                            (##direct-structure-ref
                                                             _%L140319%_
                                                             '4
                                                             gx#syntax-quote::t
                                                             '#f)))
                                                       (if (null? _%marks140336%_)
                                                           (_%generate-simple140277%_
                                                            _%L140319%_)
                                                           (_%generate-serialized140278%_
                                                            _%L140319%_
                                                            _%marks140336%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"Cannot quote non-identifier syntax"
                                                  _%L140319%_))))
                                         _%hd140292140314%_)
                                        (_%g140285140298%_
                                         _%g140286140301%_))))
                                (_%g140285140298%_ _%g140286140301%_))))
                        (_%g140285140298%_ _%g140286140301%_)))))
            (_%g140284140338%_ _%stx140273%_)))))
    (define gxc#generate-runtime-phi-define-runtime%
      (lambda (_%self140204%_ _%stx140205%_)
        (let* ((_%g140207140224%_
                (lambda (_%g140208140221%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g140208140221%_))))
               (_%g140206140269%_
                (lambda (_%g140208140227%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g140208140227%_))
                      (let ((_%e140211140229%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g140208140227%_))))
                        (let ((_%hd140212140232%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e140211140229%_)))
                              (_%tl140213140234%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e140211140229%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl140213140234%_))
                              (let ((_%e140214140237%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl140213140234%_))))
                                (let ((_%hd140215140240%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e140214140237%_)))
                                      (_%tl140216140242%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e140214140237%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl140216140242%_))
                                      (let ((_%e140217140245%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl140216140242%_))))
                                        (let ((_%hd140218140248%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e140217140245%_)))
                                              (_%tl140219140250%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e140217140245%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl140219140250%_))
                                              ((lambda (_%L140253%_
                                                        _%L140254%_)
                                                 (cons 'define
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%L140254%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _%self140204%_ _%L140253%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd140218140248%_
                                               _%hd140215140240%_)
                                              (_%g140207140224%_
                                               _%g140208140227%_))))
                                      (_%g140207140224%_ _%g140208140227%_))))
                              (_%g140207140224%_ _%g140208140227%_))))
                      (_%g140207140224%_ _%g140208140227%_)))))
          (_%g140206140269%_ _%stx140205%_))))
    (define gxc#generate-meta-begin%
      (lambda (_%self140153%_ _%stx140154%_)
        (let* ((_%g140156140166%_
                (lambda (_%g140157140163%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g140157140163%_))))
               (_%g140155140201%_
                (lambda (_%g140157140169%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g140157140169%_))
                      (let ((_%e140159140171%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g140157140169%_))))
                        (let ((_%hd140160140174%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e140159140171%_)))
                              (_%tl140161140176%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e140159140171%_))))
                          ((lambda (_%L140179%_)
                             (let* ((_%c-body140193%_
                                     (map (lambda (_%g140188140190%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self140153%_
                                               _%g140188140190%_)))
                                          _%L140179%_))
                                    (_%c-body140198%_
                                     (let ((__tmp149166
                                            (lambda (_%$obj140195%_)
                                              (not (eq? _%$obj140195%_
                                                        '#!void)))))
                                       (declare (not safe))
                                       (##filter
                                        __tmp149166
                                        _%c-body140193%_))))
                               (cons '%#begin _%c-body140198%_)))
                           _%tl140161140176%_)))
                      (_%g140156140166%_ _%g140157140169%_)))))
          (_%g140155140201%_ _%stx140154%_))))
    (define gxc#generate-meta-begin-syntax%
      (lambda (_%self140058%_ _%stx140059%_)
        (let* ((_%g140061140071%_
                (lambda (_%g140062140068%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g140062140068%_))))
               (_%g140060140150%_
                (lambda (_%g140062140074%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g140062140074%_))
                      (let ((_%e140064140076%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g140062140074%_))))
                        (let ((_%hd140065140079%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e140064140076%_)))
                              (_%tl140066140081%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e140064140076%_))))
                          ((lambda (_%L140084%_)
                             (let* ((_%phi140094%_
                                     (let ((__tmp149167
                                            (let ()
                                              (declare (not safe))
                                              (gx#current-expander-phi))))
                                       (declare (not safe))
                                       (##fx+ __tmp149167 '1)))
                                    (_%block140096%_
                                     (gxc#meta-state-begin-phi!
                                      (let ()
                                        (declare (not safe))
                                        (slot-ref__0 _%self140058%_ 'state))
                                      _%phi140094%_))
                                    (_%compiled140099%_
                                     (let ((__tmp149168
                                            (lambda ()
                                              (gxc#apply-generate-meta-phi__%
                                               '#f
                                               (let ()
                                                 (declare (not safe))
                                                 (slot-ref__0
                                                  _%self140058%_
                                                  'state))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#begin))
                                                     _%L140084%_)))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp149168
                                        gx#current-expander-phi
                                        _%phi140094%_)))
                                    (_%g140102140112%_
                                     (lambda (_%g140103140109%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g140103140109%_))))
                                    (_%g140101140147%_
                                     (lambda (_%g140103140115%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%g140103140115%_))
                                           (let ((_%e140105140117%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%g140103140115%_))))
                                             (let ((_%hd140106140120%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e140105140117%_)))
                                                   (_%tl140107140122%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e140105140117%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd140106140120%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#begin
                                                          _%hd140106140120%_))
                                                       ((lambda (_%L140125%_)
                                                          (let ((_%c-body140142%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (filter (lambda (_%$obj140139%_)
                                   (not (eq? _%$obj140139%_ '#!void)))
                                 _%L140125%_)))
                    (if _%block140096%_
                        (cons '%#begin-syntax
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'load-module '()))
                                                (cons (cons '%#quote
                                                            (cons _%block140096%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%c-body140142%_))
                        (if (null? _%c-body140142%_)
                            '#!void
                            (cons '%#begin-syntax _%c-body140142%_)))))
                _%tl140107140122%_)
               (_%g140102140112%_ _%g140103140115%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g140102140112%_
                                                    _%g140103140115%_))))
                                           (_%g140102140112%_
                                            _%g140103140115%_)))))
                               (_%g140101140147%_ _%compiled140099%_)))
                           _%tl140066140081%_)))
                      (_%g140061140071%_ _%g140062140074%_)))))
          (_%g140060140150%_ _%stx140059%_))))
    (define gxc#generate-meta-module%
      (lambda (_%self139989%_ _%stx139990%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self139989%_ 'state)))
        (let* ((_%g139992140006%_
                (lambda (_%g139993140003%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g139993140003%_))))
               (_%g139991140055%_
                (lambda (_%g139993140009%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g139993140009%_))
                      (let ((_%e139996140011%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g139993140009%_))))
                        (let ((_%hd139997140014%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e139996140011%_)))
                              (_%tl139998140016%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e139996140011%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl139998140016%_))
                              (let ((_%e139999140019%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl139998140016%_))))
                                (let ((_%hd140000140022%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e139999140019%_)))
                                      (_%tl140001140024%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e139999140019%_))))
                                  ((lambda (_%L140027%_ _%L140028%_)
                                     (let ((_%key140041%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#core-identifier-key
                                               _%L140028%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (interned-symbol? _%key140041%_))
                                           '#!void
                                           (let ()
                                             (declare (not safe))
                                             (gxc#raise-compile-error
                                              '"Cannot compile module with uninterned id"
                                              _%stx139990%_
                                              _%L140028%_
                                              _%key140041%_)))
                                       (let* ((_%ctx140043%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-local-e__0
                                                  _%L140028%_)))
                                              (_%code140046%_
                                               (let ((__tmp149169
                                                      (lambda ()
                                                        (let ((__tmp149170
                                                               (##structure-ref
                                                                _%ctx140043%_
                                                                '11
                                                                gx#module-context::t
                                                                '#f)))
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self139989%_
                                                           __tmp149170)))))
                                                 (declare (not safe))
                                                 (__call-with-parameters
                                                  __tmp149169
                                                  gx#current-expander-context
                                                  _%ctx140043%_)))
                                              (_%rt140048%_
                                               (let ((__tmp149171
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#current-compile-runtime-sections))))
                                                 (declare (not safe))
                                                 (hash-get
                                                  __tmp149171
                                                  _%ctx140043%_)))
                                              (_%loader140050%_
                                               (if _%rt140048%_
                                                   (cons (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons 'load-module '()))
                             (cons (cons '%#quote (cons _%rt140048%_ '()))
                                   '())))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                              (_%modid140052%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _%L140028%_))))
                                         (gxc#meta-state-end-phi!
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self139989%_
                                             'state)))
                                         (cons '%#module
                                               (cons _%modid140052%_
                                                     (cons _%code140046%_
                                                           _%loader140050%_))))))
                                   _%tl140001140024%_
                                   _%hd140000140022%_)))
                              (_%g139992140006%_ _%g139993140009%_))))
                      (_%g139992140006%_ _%g139993140009%_)))))
          (_%g139991140055%_ _%stx139990%_))))
    (define gxc#generate-meta-import-path
      (lambda (_%ctx139976%_ _%context-chain139977%_)
        (let _%lp139979%_ ((_%ctx139981%_ _%ctx139976%_) (_%path139982%_ '()))
          (let ((_%super139984%_
                 (##structure-ref _%ctx139981%_ '3 gx#phi-context::t '#f)))
            (if (memq _%super139984%_ _%context-chain139977%_)
                (cons '#f
                      (cons (car (##structure-ref
                                  _%ctx139981%_
                                  '7
                                  gx#module-context::t
                                  '#f))
                            _%path139982%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%super139984%_
                       'gx#module-context::t))
                    (_%lp139979%_
                     _%super139984%_
                     (cons (car (##structure-ref
                                 _%ctx139981%_
                                 '7
                                 gx#module-context::t
                                 '#f))
                           _%path139982%_))
                    (cons (let ((__tmp149172
                                 (##structure-ref
                                  _%ctx139981%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (make-symbol__1 '":" __tmp149172))
                          _%path139982%_)))))))
    (define gxc#current-context-chain
      (lambda ()
        (let _%lp139969%_ ((_%ctx139971%_
                            (let ()
                              (declare (not safe))
                              (gx#current-expander-context)))
                           (_%r139972%_ '()))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%ctx139971%_ 'gx#module-context::t))
              (_%lp139969%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%ctx139971%_ '3 '#f '#f))
               (cons _%ctx139971%_ _%r139972%_))
              _%r139972%_))))
    (define gxc#generate-meta-import%
      (lambda (_%self139732%_ _%stx139733%_)
        (letrec* ((_%context-chain139735%_ (gxc#current-context-chain))
                  (_%make-import-spec139736%_
                   (lambda (_%in139905%_)
                     (let* ((_%in139906139918%_ _%in139905%_)
                            (_%E139908139922%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%in139906139918%_
                                        '((module-import
                                           (module-export
                                            src-ctx
                                            src-key
                                            src-phi
                                            src-name)
                                           name
                                           phi))))
                               '#!void))
                            (_%K139909139932%_
                             (lambda (_%phi139925%_
                                      _%name139926%_
                                      _%src-name139927%_
                                      _%src-phi139928%_
                                      _%src-key139929%_
                                      _%src-ctx139930%_)
                               (cons _%phi139925%_
                                     (cons (gxc#generate-runtime-identifier-key
                                            _%name139926%_)
                                           (cons _%src-phi139928%_
                                                 (cons (gxc#generate-runtime-identifier-key
                                                        _%src-name139927%_)
                                                       '())))))))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              _%in139906139918%_
                              'gx#module-import::t))
                           (let ((_%e139910139935%_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%in139906139918%_
                                     '1
                                     '#f
                                     '#f))))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    _%e139910139935%_
                                    'gx#module-export::t))
                                 (let* ((_%e139913139938%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e139910139935%_
                                            '1
                                            '#f
                                            '#f)))
                                        (_%src-ctx139941%_ _%e139913139938%_)
                                        (_%e139914139943%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e139910139935%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%src-key139946%_ _%e139914139943%_)
                                        (_%e139915139948%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e139910139935%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%src-phi139951%_ _%e139915139948%_)
                                        (_%e139916139953%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e139910139935%_
                                            '4
                                            '#f
                                            '#f)))
                                        (_%src-name139956%_ _%e139916139953%_)
                                        (_%e139911139958%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in139906139918%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%name139961%_ _%e139911139958%_)
                                        (_%e139912139963%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in139906139918%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%phi139966%_ _%e139912139963%_))
                                   (_%K139909139932%_
                                    _%phi139966%_
                                    _%name139961%_
                                    _%src-name139956%_
                                    _%src-phi139951%_
                                    _%src-key139946%_
                                    _%src-ctx139941%_))
                                 (_%E139908139922%_)))
                           (_%E139908139922%_)))))
                  (_%make-import-path139737%_
                   (lambda (_%ctx139903%_)
                     (gxc#generate-meta-import-path
                      _%ctx139903%_
                      _%context-chain139735%_)))
                  (_%make-import-spec-in139738%_
                   (lambda (_%ctx139900%_ _%in139901%_)
                     (cons 'spec:
                           (cons (_%make-import-path139737%_ _%ctx139900%_)
                                 (reverse _%in139901%_))))))
          (gxc#meta-state-end-phi!
           (let () (declare (not safe)) (slot-ref__0 _%self139732%_ 'state)))
          (let* ((_%g139740139750%_
                  (lambda (_%g139741139747%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g139741139747%_))))
                 (_%g139739139897%_
                  (lambda (_%g139741139753%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g139741139753%_))
                        (let ((_%e139743139755%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g139741139753%_))))
                          (let ((_%hd139744139758%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e139743139755%_)))
                                (_%tl139745139760%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e139743139755%_))))
                            ((lambda (_%L139763%_)
                               (let _%lp139774%_ ((_%rest139776%_ _%L139763%_)
                                                  (_%current-src139777%_ '#f)
                                                  (_%current-in139778%_ '())
                                                  (_%r139779%_ '()))
                                 (let* ((_%rest139780139788%_ _%rest139776%_)
                                        (_%else139782139798%_
                                         (lambda ()
                                           (let ((_%r139796%_
                                                  (if _%current-src139777%_
                                                      (cons (_%make-import-spec-in139738%_
                                                             _%current-src139777%_
                                                             _%current-in139778%_)
                                                            _%r139779%_)
                                                      _%r139779%_)))
                                             (cons '%#import
                                                   (reverse _%r139796%_)))))
                                        (_%K139784139885%_
                                         (lambda (_%rest139801%_ _%in139802%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in139802%_
                                                  'gx#module-import::t))
                                               (let* ((_%in139804139811%_
                                                       _%in139802%_)
                                                      (_%E139806139815%_
                                                       (lambda ()
                                                         (let ()
                                                           (declare (not safe))
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%in139804139811%_
                          '((module-import (module-export src-ctx)))))
                 '#!void))
              (_%K139807139823%_
               (lambda (_%src-ctx139818%_)
                 (if (eq? _%current-src139777%_ _%src-ctx139818%_)
                     (_%lp139774%_
                      _%rest139801%_
                      _%current-src139777%_
                      (cons (_%make-import-spec139736%_ _%in139802%_)
                            _%current-in139778%_)
                      _%r139779%_)
                     (if _%current-src139777%_
                         (_%lp139774%_
                          _%rest139801%_
                          _%src-ctx139818%_
                          (cons (_%make-import-spec139736%_ _%in139802%_) '())
                          (cons (_%make-import-spec-in139738%_
                                 _%current-src139777%_
                                 _%current-in139778%_)
                                _%r139779%_))
                         (_%lp139774%_
                          _%rest139801%_
                          _%src-ctx139818%_
                          (cons (_%make-import-spec139736%_ _%in139802%_) '())
                          _%r139779%_)))))
              (_%e139808139826%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%in139804139811%_ '1 '#f '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%e139808139826%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e139809139829%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%e139808139826%_
                        '1
                        '#f
                        '#f)))
                    (_%src-ctx139832%_ _%e139809139829%_))
               (_%K139807139823%_ _%src-ctx139832%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E139806139815%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%in139802%_
                                                      'gx#import-set::t))
                                                   (let* ((_%phi139835%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in139802%_
                                                              '2
                                                              '#f
                                                              '#f)))
                                                          (_%src139837%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in139802%_
                                                              '1
                                                              '#f
                                                              '#f)))
                                                          (_%src-in139877%_
                                                           (let* ((_%g139838139847%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (_%make-import-path139737%_ _%src139837%_))
                          (_%E139841139851%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (error '"No clause matching"
                                      _%g139838139847%_
                                      '([path])
                                      '(path)))
                             '#!void)))
                     (let ((_%K139843139867%_
                            (lambda (_%path139865%_) _%path139865%_))
                           (_%K139842139857%_
                            (lambda (_%path139855%_)
                              (cons 'in: _%path139855%_))))
                       (if (pair? _%g139838139847%_)
                           (let ((_%tl139845139872%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%g139838139847%_)))
                                 (_%hd139844139870%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%g139838139847%_))))
                             (if (null? _%tl139845139872%_)
                                 (let ((_%path139875%_ _%hd139844139870%_))
                                   (_%K139843139867%_ _%path139875%_))
                                 (let ((_%path139860%_ _%g139838139847%_))
                                   (_%K139842139857%_ _%path139860%_))))
                           (let ((_%path139860%_ _%g139838139847%_))
                             (_%K139842139857%_ _%path139860%_))))))
                  (_%r139879%_
                   (if _%current-src139777%_
                       (cons (_%make-import-spec-in139738%_
                              _%current-src139777%_
                              _%current-in139778%_)
                             _%r139779%_)
                       _%r139779%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%lp139774%_
                                                      _%rest139801%_
                                                      '#f
                                                      '()
                                                      (cons (if (fxzero? _%phi139835%_)
                                                                _%src-in139877%_
                                                                (cons 'phi:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%phi139835%_
                                    (cons _%src-in139877%_ '()))))
                    _%r139879%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-instance-of?
                                                          _%in139802%_
                                                          'gx#module-context::t))
                                                       (let ((_%r139883%_
                                                              (if _%current-src139777%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (_%make-import-spec-in139738%_
                                 _%current-src139777%_
                                 _%current-in139778%_)
                                _%r139779%_)
                          _%r139779%_)))
                 (_%lp139774%_
                  _%rest139801%_
                  '#f
                  '()
                  (cons (cons 'runtime:
                              (_%make-import-path139737%_ _%in139802%_))
                        _%r139883%_)))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (pair? _%rest139780139788%_)
                                       (let ((_%hd139785139888%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest139780139788%_)))
                                             (_%tl139786139890%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest139780139788%_))))
                                         (let* ((_%in139893%_
                                                 _%hd139785139888%_)
                                                (_%rest139895%_
                                                 _%tl139786139890%_))
                                           (_%K139784139885%_
                                            _%rest139895%_
                                            _%in139893%_)))
                                       (_%else139782139798%_)))))
                             _%tl139745139760%_)))
                        (_%g139740139750%_ _%g139741139753%_)))))
            (_%g139739139897%_ _%stx139733%_)))))
    (define gxc#generate-meta-export%
      (lambda (_%self139542%_ _%stx139543%_)
        (letrec* ((_%context-chain139545%_ (gxc#current-context-chain))
                  (_%make-import-path139546%_
                   (lambda (_%ctx139730%_)
                     (gxc#generate-meta-import-path
                      _%ctx139730%_
                      _%context-chain139545%_))))
          (let* ((_%g139548139558%_
                  (lambda (_%g139549139555%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g139549139555%_))))
                 (_%g139547139727%_
                  (lambda (_%g139549139561%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g139549139561%_))
                        (let ((_%e139551139563%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g139549139561%_))))
                          (let ((_%hd139552139566%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e139551139563%_)))
                                (_%tl139553139568%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e139551139563%_))))
                            ((lambda (_%L139571%_)
                               (let _%lp139582%_ ((_%rest139584%_ _%L139571%_)
                                                  (_%r139585%_ '()))
                                 (let* ((_%rest139586139594%_ _%rest139584%_)
                                        (_%else139588139602%_
                                         (lambda ()
                                           (cons '%#export
                                                 (reverse _%r139585%_))))
                                        (_%K139590139715%_
                                         (lambda (_%rest139605%_ _%out139606%_)
                                           (let* ((_%out139607139620%_
                                                   _%out139606%_)
                                                  (_%E139610139624%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%out139607139620%_
                                                              '((module-export
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _
                         key
                         phi
                         name))
                      '((export-set src phi))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#!void)))
                                             (let ((_%K139614139694%_
                                                    (lambda (_%name139690%_
                                                             _%phi139691%_
                                                             _%key139692%_)
                                                      (_%lp139582%_
                                                       _%rest139605%_
                                                       (cons (cons 'spec:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%phi139691%_
                                 (cons (gxc#generate-runtime-identifier-key
                                        _%key139692%_)
                                       (cons (gxc#generate-runtime-identifier-key
                                              _%name139690%_)
                                             '()))))
                     _%r139585%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K139611139674%_
                                                    (lambda (_%phi139628%_
                                                             _%src139629%_)
                                                      (let* ((_%out139669%_
                                                              (if _%src139629%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'import:
                                (cons (let* ((_%g139630139639%_
                                              (_%make-import-path139546%_
                                               _%src139629%_))
                                             (_%E139633139643%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (error '"No clause matching"
                                                         _%g139630139639%_
                                                         '([path])
                                                         '(path)))
                                                '#!void)))
                                        (let ((_%K139635139659%_
                                               (lambda (_%path139657%_)
                                                 _%path139657%_))
                                              (_%K139634139649%_
                                               (lambda (_%path139647%_)
                                                 (cons 'in: _%path139647%_))))
                                          (if (pair? _%g139630139639%_)
                                              (let ((_%tl139637139664%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%g139630139639%_)))
                                                    (_%hd139636139662%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%g139630139639%_))))
                                                (if (null? _%tl139637139664%_)
                                                    (let ((_%path139667%_
                                                           _%hd139636139662%_))
                                                      (_%K139635139659%_
                                                       _%path139667%_))
                                                    (let ((_%path139652%_
                                                           _%g139630139639%_))
                                                      (_%K139634139649%_
                                                       _%path139652%_))))
                                              (let ((_%path139652%_
                                                     _%g139630139639%_))
                                                (_%K139634139649%_
                                                 _%path139652%_)))))
                                      '()))
                          '#t))
                     (_%out139671%_
                      (if (fxzero? _%phi139628%_)
                          _%out139669%_
                          (cons 'phi:
                                (cons _%phi139628%_
                                      (cons _%out139669%_ '()))))))
                (_%lp139582%_
                 _%rest139605%_
                 (cons _%out139671%_ _%r139585%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_%try-match139609139687%_
                                                      (lambda ()
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-direct-instance-of?
                                                               _%out139607139620%_
                                                               'gx#export-set::t))
                                                            (let* ((_%e139612139677%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out139607139620%_
                               '1
                               '#f
                               '#f)))
                           (_%e139613139682%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out139607139620%_
                               '2
                               '#f
                               '#f))))
                      (let ((_%src139680%_ _%e139612139677%_)
                            (_%phi139685%_ _%e139613139682%_))
                        (_%K139611139674%_ _%phi139685%_ _%src139680%_)))
                    (_%E139610139624%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%out139607139620%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e139615139697%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%out139607139620%_
                        '1
                        '#f
                        '#f)))
                    (_%e139616139700%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out139607139620%_
                        '2
                        '#f
                        '#f)))
                    (_%e139617139705%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out139607139620%_
                        '3
                        '#f
                        '#f)))
                    (_%e139618139710%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out139607139620%_
                        '4
                        '#f
                        '#f))))
               (let ((_%key139703%_ _%e139616139700%_)
                     (_%phi139708%_ _%e139617139705%_)
                     (_%name139713%_ _%e139618139710%_))
                 (_%K139614139694%_
                  _%name139713%_
                  _%phi139708%_
                  _%key139703%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%try-match139609139687%_))))))))
                                   (if (pair? _%rest139586139594%_)
                                       (let ((_%hd139591139718%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest139586139594%_)))
                                             (_%tl139592139720%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest139586139594%_))))
                                         (let* ((_%out139723%_
                                                 _%hd139591139718%_)
                                                (_%rest139725%_
                                                 _%tl139592139720%_))
                                           (_%K139590139715%_
                                            _%rest139725%_
                                            _%out139723%_)))
                                       (_%else139588139602%_)))))
                             _%tl139553139568%_)))
                        (_%g139548139558%_ _%g139549139561%_)))))
            (_%g139547139727%_ _%stx139543%_)))))
    (define gxc#generate-meta-provide%
      (lambda (_%self139503%_ _%stx139504%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self139503%_ 'state)))
        (let* ((_%g139506139516%_
                (lambda (_%g139507139513%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g139507139513%_))))
               (_%g139505139539%_
                (lambda (_%g139507139519%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g139507139519%_))
                      (let ((_%e139509139521%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g139507139519%_))))
                        (let ((_%hd139510139524%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e139509139521%_)))
                              (_%tl139511139526%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e139509139521%_))))
                          ((lambda (_%L139529%_)
                             (cons '%#provide
                                   (map gxc#generate-runtime-identifier
                                        _%L139529%_)))
                           _%tl139511139526%_)))
                      (_%g139506139516%_ _%g139507139519%_)))))
          (_%g139505139539%_ _%stx139504%_))))
    (define gxc#generate-meta-extern%
      (lambda (_%self139374%_ _%stx139375%_)
        (letrec ((_%generate1139377%_
                  (lambda (_%id139498%_ _%eid139499%_)
                    (let ((_%eid139501%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%eid139499%_))))
                      (if (let ()
                            (declare (not safe))
                            (interned-symbol? _%eid139501%_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"Cannot compile extern reference"
                             _%stx139375%_
                             _%eid139501%_)))
                      (cons (gxc#generate-runtime-identifier _%id139498%_)
                            (cons _%eid139501%_ '()))))))
          (let* ((_%g139379139407%_
                  (lambda (_%g139380139404%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g139380139404%_))))
                 (_%g139378139495%_
                  (lambda (_%g139380139410%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g139380139410%_))
                        (let ((_%e139383139412%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g139380139410%_))))
                          (let ((_%hd139384139415%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e139383139412%_)))
                                (_%tl139385139417%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e139383139412%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl139385139417%_))
                                (let ((_g149173_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl139385139417%_
                                          '0))))
                                  (begin
                                    (let ((_g149174_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g149173_)
                                                 (##vector-length _g149173_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g149174_ 2)))
                                          (error "Context expects 2 values"
                                                 _g149174_)))
                                    (let ((_%target139386139420%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g149173_ 0)))
                                          (_%tl139388139422%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g149173_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl139388139422%_))
                                          (letrec ((_%loop139389139425%_
                                                    (lambda (_%hd139387139428%_
                                                             _%eid139393139430%_
                                                             _%id139394139432%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd139387139428%_))
                                                          (let ((_%e139390139435%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd139387139428%_))))
                    (let ((_%lp-hd139391139438%_
                           (let ()
                             (declare (not safe))
                             (##car _%e139390139435%_)))
                          (_%lp-tl139392139440%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e139390139435%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd139391139438%_))
                          (let ((_%e139397139443%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd139391139438%_))))
                            (let ((_%hd139398139446%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e139397139443%_)))
                                  (_%tl139399139448%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e139397139443%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl139399139448%_))
                                  (let ((_%e139400139451%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl139399139448%_))))
                                    (let ((_%hd139401139454%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e139400139451%_)))
                                          (_%tl139402139456%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e139400139451%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl139402139456%_))
                                          (_%loop139389139425%_
                                           _%lp-tl139392139440%_
                                           (cons _%hd139401139454%_
                                                 _%eid139393139430%_)
                                           (cons _%hd139398139446%_
                                                 _%id139394139432%_))
                                          (_%g139379139407%_
                                           _%g139380139410%_))))
                                  (_%g139379139407%_ _%g139380139410%_))))
                          (_%g139379139407%_ _%g139380139410%_))))
                  (let ((_%eid139395139459%_ (reverse _%eid139393139430%_))
                        (_%id139396139461%_ (reverse _%id139394139432%_)))
                    ((lambda (_%L139464%_ _%L139465%_)
                       (cons '%#extern
                             (map _%generate1139377%_
                                  (let ((__tmp149175
                                         (lambda (_%g139480139483%_
                                                  _%g139481139485%_)
                                           (cons _%g139480139483%_
                                                 _%g139481139485%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp149175 '() _%L139465%_))
                                  (let ((__tmp149176
                                         (lambda (_%g139487139490%_
                                                  _%g139488139492%_)
                                           (cons _%g139487139490%_
                                                 _%g139488139492%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp149176 '() _%L139464%_)))))
                     _%eid139395139459%_
                     _%id139396139461%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop139389139425%_
                                             _%target139386139420%_
                                             '()
                                             '()))
                                          (_%g139379139407%_
                                           _%g139380139410%_)))))
                                (_%g139379139407%_ _%g139380139410%_))))
                        (_%g139379139407%_ _%g139380139410%_)))))
            (_%g139378139495%_ _%stx139375%_)))))
    (define gxc#generate-meta-define-values%
      (lambda (_%self139164%_ _%stx139165%_)
        (letrec ((_%generate1139167%_
                  (lambda (_%id139369%_)
                    (let ((_%eid139371%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%id139369%_)))
                          (_%ident139372%_
                           (gxc#generate-runtime-identifier _%id139369%_)))
                      (cons '%#define-runtime
                            (cons _%ident139372%_ (cons _%eid139371%_ '()))))))
                 (_%generate*139168%_
                  (lambda (_%all139337%_)
                    (let* ((_%all139338139346%_ _%all139337%_)
                           (_%else139340139354%_
                            (lambda () (cons '%#begin _%all139337%_)))
                           (_%K139342139359%_
                            (lambda (_%one139357%_) _%one139357%_)))
                      (if (pair? _%all139338139346%_)
                          (let ((_%hd139343139362%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all139338139346%_)))
                                (_%tl139344139364%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all139338139346%_))))
                            (let ((_%one139367%_ _%hd139343139362%_))
                              (if (null? _%tl139344139364%_)
                                  (_%K139342139359%_ _%one139367%_)
                                  (_%else139340139354%_))))
                          (_%else139340139354%_))))))
          (let* ((_%g139170139187%_
                  (lambda (_%g139171139184%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g139171139184%_))))
                 (_%g139169139334%_
                  (lambda (_%g139171139190%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g139171139190%_))
                        (let ((_%e139174139192%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g139171139190%_))))
                          (let ((_%hd139175139195%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e139174139192%_)))
                                (_%tl139176139197%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e139174139192%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl139176139197%_))
                                (let ((_%e139177139200%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl139176139197%_))))
                                  (let ((_%hd139178139203%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e139177139200%_)))
                                        (_%tl139179139205%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e139177139200%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl139179139205%_))
                                        (let ((_%e139180139208%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl139179139205%_))))
                                          (let ((_%hd139181139211%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e139180139208%_)))
                                                (_%tl139182139213%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e139180139208%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl139182139213%_))
                                                ((lambda (_%L139216%_
                                                          _%L139217%_)
                                                   (let _%lp139233%_ ((_%rest139235%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%L139217%_)
                              (_%r139236%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((_%__stx148912148913%_
                                                             _%rest139235%_)
                                                            (_%g139241139258%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%__stx148912148913%_)))))
               (let ((_%__kont148914148915%_
                      (lambda (_%L139321%_)
                        (_%lp139233%_ _%L139321%_ _%r139236%_)))
                     (_%__kont148916148917%_
                      (lambda (_%L139294%_ _%L139295%_)
                        (_%lp139233%_
                         _%L139294%_
                         (cons (_%generate1139167%_ _%L139295%_)
                               _%r139236%_))))
                     (_%__kont148918148919%_
                      (lambda (_%L139270%_)
                        (_%generate*139168%_
                         (let ((__tmp149177
                                (cons (_%generate1139167%_ _%L139270%_) '())))
                           (declare (not safe))
                           (__foldl1 cons __tmp149177 _%r139236%_)))))
                     (_%__kont148920148921%_
                      (lambda () (_%generate*139168%_ (reverse _%r139236%_)))))
                 (let ((_%g139239139281%_
                        (lambda ()
                          (let ((_%L139270%_ _%__stx148912148913%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L139270%_))
                                (_%__kont148918148919%_ _%L139270%_)
                                (_%__kont148920148921%_))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%__stx148912148913%_))
                       (let ((_%e139244139310%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%__stx148912148913%_))))
                         (let ((_%tl139246139315%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e139244139310%_)))
                               (_%hd139245139313%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e139244139310%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-datum? _%hd139245139313%_))
                               (let ((_%e139247139318%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd139245139313%_))))
                                 (if (equal? _%e139247139318%_ '#f)
                                     (_%__kont148914148915%_
                                      _%tl139246139315%_)
                                     (_%__kont148916148917%_
                                      _%tl139246139315%_
                                      _%hd139245139313%_)))
                               (_%__kont148916148917%_
                                _%tl139246139315%_
                                _%hd139245139313%_))))
                       (let () (declare (not safe)) (_%g139239139281%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd139181139211%_
                                                 _%hd139178139203%_)
                                                (_%g139170139187%_
                                                 _%g139171139190%_))))
                                        (_%g139170139187%_
                                         _%g139171139190%_))))
                                (_%g139170139187%_ _%g139171139190%_))))
                        (_%g139170139187%_ _%g139171139190%_)))))
            (_%g139169139334%_ _%stx139165%_)))))
    (define gxc#generate-meta-define-syntax%
      (lambda (_%self139061%_ _%stx139062%_)
        (let* ((_%g139064139081%_
                (lambda (_%g139065139078%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g139065139078%_))))
               (_%g139063139161%_
                (lambda (_%g139065139084%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g139065139084%_))
                      (let ((_%e139068139086%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g139065139084%_))))
                        (let ((_%hd139069139089%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e139068139086%_)))
                              (_%tl139070139091%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e139068139086%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl139070139091%_))
                              (let ((_%e139071139094%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl139070139091%_))))
                                (let ((_%hd139072139097%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e139071139094%_)))
                                      (_%tl139073139099%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e139071139094%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl139073139099%_))
                                      (let ((_%e139074139102%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl139073139099%_))))
                                        (let ((_%hd139075139105%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e139074139102%_)))
                                              (_%tl139076139107%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e139074139102%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl139076139107%_))
                                              ((lambda (_%L139110%_
                                                        _%L139111%_)
                                                 (let* ((_%eid139126%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#generate-runtime-binding-id
                                                            _%L139111%_)))
                                                        (_%phi139128%_
                                                         (let ((__tmp149178
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#current-expander-phi))))
                   (declare (not safe))
                   (##fx+ __tmp149178 '1)))
                (_%block139130%_
                 (gxc#meta-state-begin-phi!
                  (let ()
                    (declare (not safe))
                    (slot-ref__0 _%self139061%_ 'state))
                  _%phi139128%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%g139133139140%_
                                                           (lambda (_%g139134139137%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g139134139137%_))))
                  (_%g139132139158%_
                   (lambda (_%g139134139143%_)
                     ((lambda (_%L139145%_)
                        (gxc#meta-state-add-phi!
                         (let ()
                           (declare (not safe))
                           (slot-ref__0 _%self139061%_ 'state))
                         _%phi139128%_
                         (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#define-runtime))
                               (cons _%L139145%_ (cons _%L139110%_ '())))))
                      _%g139134139143%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g139132139158%_
                                                      _%eid139126%_))
                                                   (if _%block139130%_
                                                       (cons '%#begin
                                                             (cons (cons '%#begin-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons 'load-module
                                                               '()))
                                                   (cons (cons '%#quote
                                                               (cons _%block139130%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons '%#define-syntax
                                       (cons (gxc#generate-runtime-identifier
                                              _%L139111%_)
                                             (cons _%eid139126%_ '())))
                                 '())))
               (cons '%#define-syntax
                     (cons (gxc#generate-runtime-identifier _%L139111%_)
                           (cons _%eid139126%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd139075139105%_
                                               _%hd139072139097%_)
                                              (_%g139064139081%_
                                               _%g139065139084%_))))
                                      (_%g139064139081%_ _%g139065139084%_))))
                              (_%g139064139081%_ _%g139065139084%_))))
                      (_%g139064139081%_ _%g139065139084%_)))))
          (_%g139063139161%_ _%stx139062%_))))
    (define gxc#generate-meta-define-alias%
      (lambda (_%self138993%_ _%stx138994%_)
        (let* ((_%g138996139013%_
                (lambda (_%g138997139010%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138997139010%_))))
               (_%g138995139058%_
                (lambda (_%g138997139016%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138997139016%_))
                      (let ((_%e139000139018%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138997139016%_))))
                        (let ((_%hd139001139021%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e139000139018%_)))
                              (_%tl139002139023%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e139000139018%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl139002139023%_))
                              (let ((_%e139003139026%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl139002139023%_))))
                                (let ((_%hd139004139029%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e139003139026%_)))
                                      (_%tl139005139031%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e139003139026%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl139005139031%_))
                                      (let ((_%e139006139034%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl139005139031%_))))
                                        (let ((_%hd139007139037%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e139006139034%_)))
                                              (_%tl139008139039%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e139006139034%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl139008139039%_))
                                              ((lambda (_%L139042%_
                                                        _%L139043%_)
                                                 (cons '%#define-alias
                                                       (cons (gxc#generate-runtime-identifier
                                                              _%L139043%_)
                                                             (cons (gxc#generate-runtime-identifier
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%L139042%_)
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd139007139037%_
                                               _%hd139004139029%_)
                                              (_%g138996139013%_
                                               _%g138997139016%_))))
                                      (_%g138996139013%_ _%g138997139016%_))))
                              (_%g138996139013%_ _%g138997139016%_))))
                      (_%g138996139013%_ _%g138997139016%_)))))
          (_%g138995139058%_ _%stx138994%_))))
    (define gxc#generate-meta-phi-define-values%
      (lambda (_%self138990%_ _%stx138991%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self138990%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx138991%_)
        (gxc#generate-meta-define-values% _%self138990%_ _%stx138991%_)))
    (define gxc#generate-meta-phi-expr
      (lambda (_%self138987%_ _%stx138988%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self138987%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx138988%_)
        '#!void))
    (define gxc#meta-state::t
      (let ((__tmp149180 (list)) (__tmp149179 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state::t
         'meta-state
         __tmp149180
         '(src n open blocks)
         __tmp149179
         ':init!)))
    (define gxc#meta-state?
      (let () (declare (not safe)) (__make-class-predicate gxc#meta-state::t)))
    (define gxc#make-meta-state
      (lambda _%$args138984%_
        (apply make-instance gxc#meta-state::t _%$args138984%_)))
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
      (lambda (_%self138329138968%_ _%ctx138970%_)
        (let* ((_%self138972%_ _%self138329138968%_)
               (_%self138974%_ _%self138972%_))
          (if (let ((__tmp149181
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self138974%_))))
                (declare (not safe))
                (##fx< '4 __tmp149181))
              (begin
                (let ((__tmp149182
                       (let ((__tmp149183
                              (##structure-ref
                               _%ctx138970%_
                               '1
                               gx#expander-context::t
                               '#f)))
                         (declare (not safe))
                         (gxc#module-id->path-string __tmp149183))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self138974%_
                   __tmp149182
                   '1
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self138974%_ '1 '2 '#f '#f))
                (let ((__tmp149184
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self138974%_
                   __tmp149184
                   '3
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self138974%_ '() '4 '#f '#f))
                '#!void)
              (let ((__tmp149185
                     (let ()
                       (declare (not safe))
                       (##vector-length _%self138974%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self138974%_
                       '4
                       __tmp149185))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#meta-state::t ':init! gxc#meta-state:::init! '#f))
    (define gxc#meta-state-block::t
      (let ((__tmp149187 (list)) (__tmp149186 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state-block::t
         'meta-state-block
         __tmp149187
         '(ctx phi n code)
         __tmp149186
         '#f)))
    (define gxc#meta-state-block?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#meta-state-block::t)))
    (define gxc#make-meta-state-block
      (lambda _%$args138843%_
        (apply make-instance gxc#meta-state-block::t _%$args138843%_)))
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
      (lambda (_%state138802%_ _%phi138803%_)
        (let* ((_%state138804138812%_ _%state138802%_)
               (_%E138806138816%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%state138804138812%_
                           '((meta-state src n open))))
                  '#!void))
               (_%K138807138825%_
                (lambda (_%open138819%_ _%n138820%_ _%src138821%_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _%open138819%_ _%phi138803%_))
                      '#f
                      (let ((_%block-ref138823%_
                             (let ((__tmp149188 (number->string _%n138820%_)))
                               (declare (not safe))
                               (##string-append
                                _%src138821%_
                                '"~"
                                __tmp149188))))
                        (##structure-set!
                         _%state138802%_
                         (let () (declare (not safe)) (##fx+ _%n138820%_ '1))
                         '2
                         gxc#meta-state::t
                         '#f)
                        (let ((__tmp149189
                               (let ((__tmp149190
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context))))
                                 (declare (not safe))
                                 (##structure
                                  gxc#meta-state-block::t
                                  __tmp149190
                                  _%phi138803%_
                                  _%n138820%_
                                  '()))))
                          (declare (not safe))
                          (hash-put! _%open138819%_ _%phi138803%_ __tmp149189))
                        _%block-ref138823%_)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _%state138804138812%_
                 'gxc#meta-state::t))
              (let* ((_%e138808138828%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state138804138812%_
                         '1
                         '#f
                         '#f)))
                     (_%src138831%_ _%e138808138828%_)
                     (_%e138809138833%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state138804138812%_
                         '2
                         '#f
                         '#f)))
                     (_%n138836%_ _%e138809138833%_)
                     (_%e138810138838%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state138804138812%_
                         '3
                         '#f
                         '#f)))
                     (_%open138841%_ _%e138810138838%_))
                (_%K138807138825%_ _%open138841%_ _%n138836%_ _%src138831%_))
              (_%E138806138816%_)))))
    (define gxc#meta-state-add-phi!
      (lambda (_%state138796%_ _%phi138797%_ _%stx138798%_)
        (let ((_%block138800%_
               (let ((__tmp149191
                      (##structure-ref
                       _%state138796%_
                       '3
                       gxc#meta-state::t
                       '#f)))
                 (declare (not safe))
                 (hash-get __tmp149191 _%phi138797%_))))
          (##structure-set!
           _%block138800%_
           (cons _%stx138798%_
                 (##structure-ref
                  _%block138800%_
                  '4
                  gxc#meta-state-block::t
                  '#f))
           '4
           gxc#meta-state-block::t
           '#f))))
    (define gxc#meta-state-end-phi!
      (lambda (_%state138790%_)
        (##structure-set!
         _%state138790%_
         (let ((__tmp149194
                (lambda (_%_138792%_ _%block138793%_ _%r138794%_)
                  (cons _%block138793%_ _%r138794%_)))
               (__tmp149193
                (##structure-ref _%state138790%_ '4 gxc#meta-state::t '#f))
               (__tmp149192
                (##structure-ref _%state138790%_ '3 gxc#meta-state::t '#f)))
           (declare (not safe))
           (hash-fold __tmp149194 __tmp149193 __tmp149192))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _%state138790%_
         (let () (declare (not safe)) (make-hash-table-eq))
         '3
         gxc#meta-state::t
         '#f)))
    (define gxc#meta-state-end!
      (lambda (_%state138742%_)
        (gxc#meta-state-end-phi! _%state138742%_)
        (let ((__tmp149196
               (lambda (_%block138744%_ _%r138745%_)
                 (let* ((_%block138746138755%_ _%block138744%_)
                        (_%E138748138759%_
                         (lambda ()
                           (let ()
                             (declare (not safe))
                             (error '"No clause matching"
                                    _%block138746138755%_
                                    '((meta-state-block ctx phi n code))))
                           '#!void))
                        (_%K138749138767%_
                         (lambda (_%code138762%_
                                  _%n138763%_
                                  _%phi138764%_
                                  _%ctx138765%_)
                           (if (null? _%code138762%_)
                               _%r138745%_
                               (cons (cons _%ctx138765%_
                                           (cons _%phi138764%_
                                                 (cons _%n138763%_
                                                       (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (reverse _%code138762%_))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%r138745%_)))))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%block138746138755%_
                          'gxc#meta-state-block::t))
                       (let* ((_%e138750138770%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block138746138755%_
                                  '1
                                  '#f
                                  '#f)))
                              (_%ctx138773%_ _%e138750138770%_)
                              (_%e138751138775%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block138746138755%_
                                  '2
                                  '#f
                                  '#f)))
                              (_%phi138778%_ _%e138751138775%_)
                              (_%e138752138780%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block138746138755%_
                                  '3
                                  '#f
                                  '#f)))
                              (_%n138783%_ _%e138752138780%_)
                              (_%e138753138785%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block138746138755%_
                                  '4
                                  '#f
                                  '#f)))
                              (_%code138788%_ _%e138753138785%_))
                         (_%K138749138767%_
                          _%code138788%_
                          _%n138783%_
                          _%phi138778%_
                          _%ctx138773%_))
                       (_%E138748138759%_)))))
              (__tmp149195
               (##structure-ref _%state138742%_ '4 gxc#meta-state::t '#f)))
          (declare (not safe))
          (__foldl1 __tmp149196 '() __tmp149195))))
    (define gxc#collect-expression-refs
      (lambda (_%stx138738%_)
        (let ((_%ht138740%_
               (let () (declare (not safe)) (make-hash-table-eq))))
          (gxc#apply-collect-expression-refs__% '#f _%ht138740%_ _%stx138738%_)
          _%ht138740%_)))
    (define gxc#collect-refs-ref%
      (lambda (_%self138681%_ _%stx138682%_)
        (let* ((_%g138684138697%_
                (lambda (_%g138685138694%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138685138694%_))))
               (_%g138683138735%_
                (lambda (_%g138685138700%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138685138700%_))
                      (let ((_%e138687138702%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138685138700%_))))
                        (let ((_%hd138688138705%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138687138702%_)))
                              (_%tl138689138707%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138687138702%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138689138707%_))
                              (let ((_%e138690138710%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138689138707%_))))
                                (let ((_%hd138691138713%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138690138710%_)))
                                      (_%tl138692138715%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138690138710%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl138692138715%_))
                                      ((lambda (_%L138718%_)
                                         (let* ((_%bind138730%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#resolve-identifier__0
                                                    _%L138718%_)))
                                                (_%eid138732%_
                                                 (if _%bind138730%_
                                                     (##structure-ref
                                                      _%bind138730%_
                                                      '1
                                                      gx#binding::t
                                                      '#f)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%L138718%_))))
                                                (__tmp149197
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self138681%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-put!
                                            __tmp149197
                                            _%eid138732%_
                                            _%eid138732%_)))
                                       _%hd138691138713%_)
                                      (_%g138684138697%_ _%g138685138700%_))))
                              (_%g138684138697%_ _%g138685138700%_))))
                      (_%g138684138697%_ _%g138685138700%_)))))
          (_%g138683138735%_ _%stx138682%_))))
    (define gxc#collect-refs-setq%
      (lambda (_%self138608%_ _%stx138609%_)
        (let* ((_%g138611138628%_
                (lambda (_%g138612138625%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138612138625%_))))
               (_%g138610138678%_
                (lambda (_%g138612138631%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138612138631%_))
                      (let ((_%e138615138633%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138612138631%_))))
                        (let ((_%hd138616138636%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138615138633%_)))
                              (_%tl138617138638%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138615138633%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138617138638%_))
                              (let ((_%e138618138641%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138617138638%_))))
                                (let ((_%hd138619138644%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138618138641%_)))
                                      (_%tl138620138646%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138618138641%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl138620138646%_))
                                      (let ((_%e138621138649%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl138620138646%_))))
                                        (let ((_%hd138622138652%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e138621138649%_)))
                                              (_%tl138623138654%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e138621138649%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl138623138654%_))
                                              ((lambda (_%L138657%_
                                                        _%L138658%_)
                                                 (let* ((_%bind138673%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#resolve-identifier__0
                                                            _%L138658%_)))
                                                        (_%eid138675%_
                                                         (if _%bind138673%_
                                                             (##structure-ref
                                                              _%bind138673%_
                                                              '1
                                                              gx#binding::t
                                                              '#f)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%L138658%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp149198
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self138608%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp149198
                                                      _%eid138675%_
                                                      _%eid138675%_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self138608%_
                                                      _%L138657%_))))
                                               _%hd138622138652%_
                                               _%hd138619138644%_)
                                              (_%g138611138628%_
                                               _%g138612138631%_))))
                                      (_%g138611138628%_ _%g138612138631%_))))
                              (_%g138611138628%_ _%g138612138631%_))))
                      (_%g138611138628%_ _%g138612138631%_)))))
          (_%g138610138678%_ _%stx138609%_))))
    (define gxc#find-runtime-begin%
      (lambda (_%self138565%_ _%stx138566%_)
        (let* ((_%g138568138578%_
                (lambda (_%g138569138575%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138569138575%_))))
               (_%g138567138605%_
                (lambda (_%g138569138581%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138569138581%_))
                      (let ((_%e138571138583%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138569138581%_))))
                        (let ((_%hd138572138586%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138571138583%_)))
                              (_%tl138573138588%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138571138583%_))))
                          ((lambda (_%L138591%_)
                             (let ((__tmp149199
                                    (lambda (_%g138600138602%_)
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self138565%_
                                         _%g138600138602%_)))))
                               (declare (not safe))
                               (__ormap1 __tmp149199 _%L138591%_)))
                           _%tl138573138588%_)))
                      (_%g138568138578%_ _%g138569138581%_)))))
          (_%g138567138605%_ _%stx138566%_))))
    (define gxc#count-values-single%
      (lambda (_%self138562%_ _%stx138563%_) '1))
    (define gxc#count-values-call%
      (lambda (_%self138428%_ _%stx138429%_)
        (let* ((_%__stx148942148943%_ _%stx138429%_)
               (_%g138432138461%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx148942148943%_)))))
          (let ((_%__kont148944148945%_
                 (lambda (_%L138529%_ _%L138530%_)
                   (length (let ((__tmp149200
                                  (lambda (_%g138551138554%_ _%g138552138556%_)
                                    (cons _%g138551138554%_
                                          _%g138552138556%_))))
                             (declare (not safe))
                             (__foldr1 __tmp149200 '() _%L138529%_)))))
                (_%__kont148948148949%_ (lambda () '#f)))
            (let ((_%__match148987148988%_
                   (lambda (_%e138436138473%_
                            _%hd138437138476%_
                            _%tl138438138478%_
                            _%e138439138481%_
                            _%hd138440138484%_
                            _%tl138441138486%_
                            _%e138442138489%_
                            _%hd138443138492%_
                            _%tl138444138494%_
                            _%e138445138497%_
                            _%hd138446138500%_
                            _%tl138447138502%_
                            _%__splice148946148947%_
                            _%target138448138505%_
                            _%tl138450138507%_)
                     (letrec ((_%loop138451138510%_
                               (lambda (_%hd138449138513%_
                                        _%rand138455138515%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd138449138513%_))
                                     (let ((_%e138452138518%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd138449138513%_))))
                                       (let ((_%lp-tl138454138523%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e138452138518%_)))
                                             (_%lp-hd138453138521%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e138452138518%_))))
                                         (_%loop138451138510%_
                                          _%lp-tl138454138523%_
                                          (cons _%lp-hd138453138521%_
                                                _%rand138455138515%_))))
                                     (let ((_%rand138456138526%_
                                            (reverse _%rand138455138515%_)))
                                       (let ((_%L138529%_ _%rand138456138526%_)
                                             (_%L138530%_ _%hd138446138500%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L138530%_
                                                'values))
                                             (_%__kont148944148945%_
                                              _%L138529%_
                                              _%L138530%_)
                                             (_%__kont148948148949%_))))))))
                       (_%loop138451138510%_ _%target138448138505%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx148942148943%_))
                  (let ((_%e138436138473%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx148942148943%_))))
                    (let ((_%tl138438138478%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e138436138473%_)))
                          (_%hd138437138476%_
                           (let ()
                             (declare (not safe))
                             (##car _%e138436138473%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl138438138478%_))
                          (let ((_%e138439138481%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl138438138478%_))))
                            (let ((_%tl138441138486%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e138439138481%_)))
                                  (_%hd138440138484%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e138439138481%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd138440138484%_))
                                  (let ((_%e138442138489%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd138440138484%_))))
                                    (let ((_%tl138444138494%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e138442138489%_)))
                                          (_%hd138443138492%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e138442138489%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd138443138492%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd138443138492%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl138444138494%_))
                                                  (let ((_%e138445138497%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl138444138494%_))))
                                                    (let ((_%tl138447138502%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e138445138497%_)))
                                                          (_%hd138446138500%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e138445138497%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl138447138502%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl138441138486%_))
                      (let ((_%__splice148946148947%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl138441138486%_
                                '0))))
                        (let ((_%tl138450138507%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice148946148947%_ '1)))
                              (_%target138448138505%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice148946148947%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl138450138507%_))
                              (_%__match148987148988%_
                               _%e138436138473%_
                               _%hd138437138476%_
                               _%tl138438138478%_
                               _%e138439138481%_
                               _%hd138440138484%_
                               _%tl138441138486%_
                               _%e138442138489%_
                               _%hd138443138492%_
                               _%tl138444138494%_
                               _%e138445138497%_
                               _%hd138446138500%_
                               _%tl138447138502%_
                               _%__splice148946148947%_
                               _%target138448138505%_
                               _%tl138450138507%_)
                              (_%__kont148948148949%_))))
                      (_%__kont148948148949%_))
                  (_%__kont148948148949%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont148948148949%_))
                                              (_%__kont148948148949%_))
                                          (_%__kont148948148949%_))))
                                  (_%__kont148948148949%_))))
                          (_%__kont148948148949%_))))
                  (_%__kont148948148949%_)))))))
    (define gxc#count-values-if%
      (lambda (_%self138331%_ _%stx138332%_)
        (let* ((_%g138334138355%_
                (lambda (_%g138335138352%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138335138352%_))))
               (_%g138333138425%_
                (lambda (_%g138335138358%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138335138358%_))
                      (let ((_%e138339138360%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138335138358%_))))
                        (let ((_%hd138340138363%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138339138360%_)))
                              (_%tl138341138365%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138339138360%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138341138365%_))
                              (let ((_%e138342138368%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138341138365%_))))
                                (let ((_%hd138343138371%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138342138368%_)))
                                      (_%tl138344138373%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138342138368%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl138344138373%_))
                                      (let ((_%e138345138376%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl138344138373%_))))
                                        (let ((_%hd138346138379%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e138345138376%_)))
                                              (_%tl138347138381%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e138345138376%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl138347138381%_))
                                              (let ((_%e138348138384%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl138347138381%_))))
                                                (let ((_%hd138349138387%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e138348138384%_)))
                                                      (_%tl138350138389%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e138348138384%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl138350138389%_))
                                                      ((lambda (_%L138392%_
                                                                _%L138393%_
                                                                _%L138394%_)
                                                         (let ((_%c1138411138413%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1 _%self138331%_ _%L138393%_))))
                   (if _%c1138411138413%_
                       (let* ((_%c1138416%_ _%c1138411138413%_)
                              (_%c2138417138419%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self138331%_
                                  _%L138392%_))))
                         (if _%c2138417138419%_
                             (let ((_%c2138422%_ _%c2138417138419%_))
                               (if (fx= _%c1138416%_ _%c2138422%_)
                                   _%c1138416%_
                                   '#f))
                             '#f))
                       '#f)))
               _%hd138349138387%_
               _%hd138346138379%_
               _%hd138343138371%_)
              (_%g138334138355%_ _%g138335138358%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g138334138355%_
                                               _%g138335138358%_))))
                                      (_%g138334138355%_ _%g138335138358%_))))
                              (_%g138334138355%_ _%g138335138358%_))))
                      (_%g138334138355%_ _%g138335138358%_)))))
          (_%g138333138425%_ _%stx138332%_))))))
