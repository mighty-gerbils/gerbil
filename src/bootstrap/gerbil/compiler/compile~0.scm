(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/compile::timestamp 1712786280)
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
        (letrec ((_%hash-e145654%_
                  (lambda (_%id145656%_)
                    (symbol-hash
                     (let () (declare (not safe)) (gx#stx-e _%id145656%_))))))
          (let ()
            (declare (not safe))
            (make-hash-table__%
             '#f
             absent-value
             absent-value
             gx#bound-identifier=?
             _%hash-e145654%_
             absent-value
             absent-value
             absent-value
             absent-value)))))
    (define gxc#::collect-bindings::t
      (let ((__tmp147041 (list gxc#::void::t))
            (__tmp147040 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-bindings::t
         '::collect-bindings
         __tmp147041
         '()
         __tmp147040
         '#f)))
    (define gxc#::collect-bindings?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-bindings::t)))
    (define gxc#make-::collect-bindings
      (lambda _%$args145650%_
        (apply make-instance gxc#::collect-bindings::t _%$args145650%_)))
    (define gxc#::collect-bindings-bind-methods!
      (let ((__tmp147042
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
        (__make-promise __tmp147042)))
    (define gxc#apply-collect-bindings
      (lambda (_%stx145642%_)
        (force gxc#::collect-bindings-bind-methods!)
        (let* ((_%self145645%_
                (let ((__obj147016
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-bindings::t))))
                  __obj147016))
               (__tmp147043
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self145645%_ _%stx145642%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp147043
           gxc#current-compile-method
           _%self145645%_))))
    (define gxc#::lift-modules::t
      (let ((__tmp147045 (list gxc#::void::t))
            (__tmp147044 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::lift-modules::t
         '::lift-modules
         __tmp147045
         '(modules)
         __tmp147044
         '#f)))
    (define gxc#::lift-modules?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::lift-modules::t)))
    (define gxc#make-::lift-modules
      (lambda _%$args145639%_
        (apply make-instance gxc#::lift-modules::t _%$args145639%_)))
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
      (let ((__tmp147046
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
        (__make-promise __tmp147046)))
    (define gxc#apply-lift-modules__%
      (lambda (_%@@keywords145613%_ _%modules145610145614%_ _%stx145616%_)
        (let ((_%modules145619%_
               (if (eq? _%modules145610145614%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'modules:))
                   _%modules145610145614%_)))
          (force gxc#::lift-modules-bind-methods!)
          (let* ((_%self145621%_
                  (let ((__obj147018
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::lift-modules::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj147018
                       _%modules145619%_
                       '1
                       '#f
                       '#f))
                    __obj147018))
                 (__tmp147047
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self145621%_ _%stx145616%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp147047
             gxc#current-compile-method
             _%self145621%_)))))
    (define gxc#apply-lift-modules__@
      (lambda (_%@@keywords145628%_ . _%args145629%_)
        (apply gxc#apply-lift-modules__%
               _%@@keywords145628%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords145628%_
                  'modules:
                  absent-value))
               _%args145629%_)))
    (define gxc#apply-lift-modules
      (lambda _%args145611145635%_
        (apply keyword-dispatch
               '#(modules:)
               gxc#apply-lift-modules__@
               _%args145611145635%_)))
    (define gxc#::find-runtime-code::t
      (let ((__tmp147049 (list)) (__tmp147048 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-runtime-code::t
         '::find-runtime-code
         __tmp147049
         '()
         __tmp147048
         '#f)))
    (define gxc#::find-runtime-code?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-runtime-code::t)))
    (define gxc#make-::find-runtime-code
      (lambda _%$args145606%_
        (apply make-instance gxc#::find-runtime-code::t _%$args145606%_)))
    (define gxc#::find-runtime-code-bind-methods!
      (let ((__tmp147050
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
        (__make-promise __tmp147050)))
    (define gxc#apply-find-runtime-code
      (lambda (_%stx145598%_)
        (force gxc#::find-runtime-code-bind-methods!)
        (let* ((_%self145601%_
                (let ((__obj147020
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-runtime-code::t))))
                  __obj147020))
               (__tmp147051
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self145601%_ _%stx145598%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp147051
           gxc#current-compile-method
           _%self145601%_))))
    (define gxc#::find-lambda-expression::t
      (let ((__tmp147053 (list gxc#::false::t))
            (__tmp147052 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-lambda-expression::t
         '::find-lambda-expression
         __tmp147053
         '()
         __tmp147052
         '#f)))
    (define gxc#::find-lambda-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-lambda-expression::t)))
    (define gxc#make-::find-lambda-expression
      (lambda _%$args145595%_
        (apply make-instance gxc#::find-lambda-expression::t _%$args145595%_)))
    (define gxc#::find-lambda-expression-bind-methods!
      (let ((__tmp147054
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
        (__make-promise __tmp147054)))
    (define gxc#apply-find-lambda-expression
      (lambda (_%stx145587%_)
        (force gxc#::find-lambda-expression-bind-methods!)
        (let* ((_%self145590%_
                (let ((__obj147022
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-lambda-expression::t))))
                  __obj147022))
               (__tmp147055
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self145590%_ _%stx145587%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp147055
           gxc#current-compile-method
           _%self145590%_))))
    (define gxc#::count-values::t
      (let ((__tmp147057 (list gxc#::false-expression::t))
            (__tmp147056 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::count-values::t
         '::count-values
         __tmp147057
         '()
         __tmp147056
         '#f)))
    (define gxc#::count-values?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::count-values::t)))
    (define gxc#make-::count-values
      (lambda _%$args145584%_
        (apply make-instance gxc#::count-values::t _%$args145584%_)))
    (define gxc#::count-values-bind-methods!
      (let ((__tmp147058
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
        (__make-promise __tmp147058)))
    (define gxc#apply-count-values
      (lambda (_%stx145576%_)
        (force gxc#::count-values-bind-methods!)
        (let* ((_%self145579%_
                (let ((__obj147024
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::count-values::t))))
                  __obj147024))
               (__tmp147059
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self145579%_ _%stx145576%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp147059
           gxc#current-compile-method
           _%self145579%_))))
    (define gxc#::generate-runtime-empty::t
      (let ((__tmp147060 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-empty::t
         '::generate-runtime-empty
         __tmp147060
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime-empty?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-empty::t)))
    (define gxc#make-::generate-runtime-empty
      (lambda _%$args145573%_
        (apply make-instance gxc#::generate-runtime-empty::t _%$args145573%_)))
    (define gxc#::generate-runtime-empty-bind-methods!
      (let ((__tmp147061
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
        (__make-promise __tmp147061)))
    (define gxc#::generate-loader::t
      (let ((__tmp147063 (list gxc#::generate-runtime-empty::t))
            (__tmp147062 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-loader::t
         '::generate-loader
         __tmp147063
         '()
         __tmp147062
         '#f)))
    (define gxc#::generate-loader?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-loader::t)))
    (define gxc#make-::generate-loader
      (lambda _%$args145569%_
        (apply make-instance gxc#::generate-loader::t _%$args145569%_)))
    (define gxc#::generate-loader-bind-methods!
      (let ((__tmp147064
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
        (__make-promise __tmp147064)))
    (define gxc#apply-generate-loader
      (lambda (_%stx145561%_)
        (force gxc#::generate-loader-bind-methods!)
        (let* ((_%self145564%_
                (let ((__obj147027
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-loader::t))))
                  __obj147027))
               (__tmp147065
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self145564%_ _%stx145561%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp147065
           gxc#current-compile-method
           _%self145564%_))))
    (define gxc#::generate-runtime::t
      (let ((__tmp147066 (list gxc#::generate-runtime-empty::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime::t
         '::generate-runtime
         __tmp147066
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime::t)))
    (define gxc#make-::generate-runtime
      (lambda _%$args145558%_
        (apply make-instance gxc#::generate-runtime::t _%$args145558%_)))
    (define gxc#::generate-runtime-bind-methods!
      (let ((__tmp147067
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
        (__make-promise __tmp147067)))
    (define gxc#apply-generate-runtime
      (lambda (_%stx145550%_)
        (force gxc#::generate-runtime-bind-methods!)
        (let* ((_%self145553%_
                (let ((__obj147029
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime::t))))
                  __obj147029))
               (__tmp147068
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self145553%_ _%stx145550%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp147068
           gxc#current-compile-method
           _%self145553%_))))
    (define gxc#::generate-runtime-phi::t
      (let ((__tmp147070 (list gxc#::generate-runtime::t))
            (__tmp147069 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-phi::t
         '::generate-runtime-phi
         __tmp147070
         '()
         __tmp147069
         '#f)))
    (define gxc#::generate-runtime-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-phi::t)))
    (define gxc#make-::generate-runtime-phi
      (lambda _%$args145547%_
        (apply make-instance gxc#::generate-runtime-phi::t _%$args145547%_)))
    (define gxc#::generate-runtime-phi-bind-methods!
      (let ((__tmp147071
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
        (__make-promise __tmp147071)))
    (define gxc#apply-generate-runtime-phi
      (lambda (_%stx145539%_)
        (force gxc#::generate-runtime-phi-bind-methods!)
        (let* ((_%self145542%_
                (let ((__obj147031
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime-phi::t))))
                  __obj147031))
               (__tmp147072
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self145542%_ _%stx145539%_)))))
          (declare (not safe))
          (__call-with-parameters
           __tmp147072
           gxc#current-compile-method
           _%self145542%_))))
    (define gxc#::collect-expression-refs::t
      (let ((__tmp147073 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-expression-refs::t
         '::collect-expression-refs
         __tmp147073
         '(table)
         '()
         '#f)))
    (define gxc#::collect-expression-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-expression-refs::t)))
    (define gxc#make-::collect-expression-refs
      (lambda _%$args145536%_
        (apply make-instance
               gxc#::collect-expression-refs::t
               _%$args145536%_)))
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
      (let ((__tmp147074
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
        (__make-promise __tmp147074)))
    (define gxc#apply-collect-expression-refs__%
      (lambda (_%@@keywords145510%_ _%table145507145511%_ _%stx145513%_)
        (let ((_%table145516%_
               (if (eq? _%table145507145511%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table145507145511%_)))
          (force gxc#::collect-expression-refs-bind-methods!)
          (let* ((_%self145518%_
                  (let ((__obj147033
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#::collect-expression-refs::t
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj147033
                       _%table145516%_
                       '1
                       '#f
                       '#f))
                    __obj147033))
                 (__tmp147075
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self145518%_ _%stx145513%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp147075
             gxc#current-compile-method
             _%self145518%_)))))
    (define gxc#apply-collect-expression-refs__@
      (lambda (_%@@keywords145525%_ . _%args145526%_)
        (apply gxc#apply-collect-expression-refs__%
               _%@@keywords145525%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords145525%_
                  'table:
                  absent-value))
               _%args145526%_)))
    (define gxc#apply-collect-expression-refs
      (lambda _%args145508145532%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-expression-refs__@
               _%args145508145532%_)))
    (define gxc#::generate-meta::t
      (let ((__tmp147077 (list gxc#::void-expression::t))
            (__tmp147076 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta::t
         '::generate-meta
         __tmp147077
         '(state)
         __tmp147076
         '#f)))
    (define gxc#::generate-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta::t)))
    (define gxc#make-::generate-meta
      (lambda _%$args145503%_
        (apply make-instance gxc#::generate-meta::t _%$args145503%_)))
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
      (let ((__tmp147078
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
        (__make-promise __tmp147078)))
    (define gxc#apply-generate-meta__%
      (lambda (_%@@keywords145477%_ _%state145474145478%_ _%stx145480%_)
        (let ((_%state145483%_
               (if (eq? _%state145474145478%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state145474145478%_)))
          (force gxc#::generate-meta-bind-methods!)
          (let* ((_%self145485%_
                  (let ((__obj147035
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj147035
                       _%state145483%_
                       '1
                       '#f
                       '#f))
                    __obj147035))
                 (__tmp147079
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self145485%_ _%stx145480%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp147079
             gxc#current-compile-method
             _%self145485%_)))))
    (define gxc#apply-generate-meta__@
      (lambda (_%@@keywords145492%_ . _%args145493%_)
        (apply gxc#apply-generate-meta__%
               _%@@keywords145492%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords145492%_
                  'state:
                  absent-value))
               _%args145493%_)))
    (define gxc#apply-generate-meta
      (lambda _%args145475145499%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta__@
               _%args145475145499%_)))
    (define gxc#::generate-meta-phi::t
      (let ((__tmp147081 (list)) (__tmp147080 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta-phi::t
         '::generate-meta-phi
         __tmp147081
         '(state)
         __tmp147080
         '#f)))
    (define gxc#::generate-meta-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta-phi::t)))
    (define gxc#make-::generate-meta-phi
      (lambda _%$args145470%_
        (apply make-instance gxc#::generate-meta-phi::t _%$args145470%_)))
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
      (let ((__tmp147082
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
        (__make-promise __tmp147082)))
    (define gxc#apply-generate-meta-phi__%
      (lambda (_%@@keywords145444%_ _%state145441145445%_ _%stx145447%_)
        (let ((_%state145450%_
               (if (eq? _%state145441145445%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state145441145445%_)))
          (force gxc#::generate-meta-phi-bind-methods!)
          (let* ((_%self145452%_
                  (let ((__obj147037
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta-phi::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj147037
                       _%state145450%_
                       '1
                       '#f
                       '#f))
                    __obj147037))
                 (__tmp147083
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self145452%_ _%stx145447%_)))))
            (declare (not safe))
            (__call-with-parameters
             __tmp147083
             gxc#current-compile-method
             _%self145452%_)))))
    (define gxc#apply-generate-meta-phi__@
      (lambda (_%@@keywords145459%_ . _%args145460%_)
        (apply gxc#apply-generate-meta-phi__%
               _%@@keywords145459%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords145459%_
                  'state:
                  absent-value))
               _%args145460%_)))
    (define gxc#apply-generate-meta-phi
      (lambda _%args145442145466%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta-phi__@
               _%args145442145466%_)))
    (define gxc#collect-bindings-define-values%
      (lambda (_%self145370%_ _%stx145371%_)
        (let* ((_%g145373145390%_
                (lambda (_%g145374145387%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g145374145387%_))))
               (_%g145372145437%_
                (lambda (_%g145374145393%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g145374145393%_))
                      (let ((_%e145377145395%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g145374145393%_))))
                        (let ((_%hd145378145398%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145377145395%_)))
                              (_%tl145379145400%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145377145395%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl145379145400%_))
                              (let ((_%e145380145403%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl145379145400%_))))
                                (let ((_%hd145381145406%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145380145403%_)))
                                      (_%tl145382145408%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145380145403%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl145382145408%_))
                                      (let ((_%e145383145411%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl145382145408%_))))
                                        (let ((_%hd145384145414%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e145383145411%_)))
                                              (_%tl145385145416%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e145383145411%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl145385145416%_))
                                              ((lambda (_%L145419%_
                                                        _%L145420%_)
                                                 (let ((__tmp147084
                                                        (lambda (_%bind145435%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#identifier? _%bind145435%_))
                      (gxc#add-module-binding! _%bind145435%_ '#f)
                      '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#stx-for-each1
                                                    __tmp147084
                                                    _%L145420%_)))
                                               _%hd145384145414%_
                                               _%hd145381145406%_)
                                              (_%g145373145390%_
                                               _%g145374145393%_))))
                                      (_%g145373145390%_ _%g145374145393%_))))
                              (_%g145373145390%_ _%g145374145393%_))))
                      (_%g145373145390%_ _%g145374145393%_)))))
          (_%g145372145437%_ _%stx145371%_))))
    (define gxc#collect-bindings-define-syntax%
      (lambda (_%self145302%_ _%stx145303%_)
        (let* ((_%g145305145322%_
                (lambda (_%g145306145319%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g145306145319%_))))
               (_%g145304145367%_
                (lambda (_%g145306145325%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g145306145325%_))
                      (let ((_%e145309145327%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g145306145325%_))))
                        (let ((_%hd145310145330%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145309145327%_)))
                              (_%tl145311145332%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145309145327%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl145311145332%_))
                              (let ((_%e145312145335%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl145311145332%_))))
                                (let ((_%hd145313145338%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145312145335%_)))
                                      (_%tl145314145340%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145312145335%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl145314145340%_))
                                      (let ((_%e145315145343%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl145314145340%_))))
                                        (let ((_%hd145316145346%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e145315145343%_)))
                                              (_%tl145317145348%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e145315145343%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl145317145348%_))
                                              ((lambda (_%L145351%_
                                                        _%L145352%_)
                                                 (gxc#add-module-binding!
                                                  _%L145352%_
                                                  '#t))
                                               _%hd145316145346%_
                                               _%hd145313145338%_)
                                              (_%g145305145322%_
                                               _%g145306145325%_))))
                                      (_%g145305145322%_ _%g145306145325%_))))
                              (_%g145305145322%_ _%g145306145325%_))))
                      (_%g145305145322%_ _%g145306145325%_)))))
          (_%g145304145367%_ _%stx145303%_))))
    (define gxc#lift-modules-module%
      (lambda (_%self145244%_ _%stx145245%_)
        (let* ((_%g145247145261%_
                (lambda (_%g145248145258%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g145248145258%_))))
               (_%g145246145299%_
                (lambda (_%g145248145264%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g145248145264%_))
                      (let ((_%e145251145266%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g145248145264%_))))
                        (let ((_%hd145252145269%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e145251145266%_)))
                              (_%tl145253145271%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e145251145266%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl145253145271%_))
                              (let ((_%e145254145274%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl145253145271%_))))
                                (let ((_%hd145255145277%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e145254145274%_)))
                                      (_%tl145256145279%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e145254145274%_))))
                                  ((lambda (_%L145282%_ _%L145283%_)
                                     (let ((_%ctx145296%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-local-e__0
                                               _%L145283%_))))
                                       (set-box!
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self145244%_
                                           'modules))
                                        (cons _%ctx145296%_
                                              (unbox (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self145244%_
                                                        'modules)))))
                                       (let ((__tmp147085
                                              (lambda ()
                                                (let ((__tmp147086
                                                       (##structure-ref
                                                        _%ctx145296%_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self145244%_
                                                   __tmp147086)))))
                                         (declare (not safe))
                                         (__call-with-parameters
                                          __tmp147085
                                          gx#current-expander-context
                                          _%ctx145296%_))))
                                   _%tl145256145279%_
                                   _%hd145255145277%_)))
                              (_%g145247145261%_ _%g145248145264%_))))
                      (_%g145247145261%_ _%g145248145264%_)))))
          (_%g145246145299%_ _%stx145245%_))))
    (define gxc#current-compile-decls-unsafe?
      (lambda ()
        (let ((_%decls145197145199%_
               (let () (declare (not safe)) (gxc#current-compile-decls))))
          (if _%decls145197145199%_
              (let ((_%decls145202%_ _%decls145197145199%_))
                (let _%lp145204%_ ((_%rest145206%_ _%decls145202%_))
                  (let* ((_%rest145207145215%_ _%rest145206%_)
                         (_%else145209145223%_ (lambda () '#f))
                         (_%K145211145232%_
                          (lambda (_%decls145226%_ _%decl145227%_)
                            (if (equal? _%decl145227%_ '(not safe))
                                '#t
                                (if (equal? _%decl145227%_ '(safe))
                                    '#f
                                    (_%lp145204%_ _%decls145226%_))))))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%rest145207145215%_))
                        (let ((_%hd145212145235%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest145207145215%_)))
                              (_%tl145213145237%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest145207145215%_))))
                          (let* ((_%decl145240%_ _%hd145212145235%_)
                                 (_%decls145242%_ _%tl145213145237%_))
                            (_%K145211145232%_
                             _%decls145242%_
                             _%decl145240%_)))
                        (_%else145209145223%_)))))
              '#f))))
    (define gxc#add-module-binding!
      (lambda (_%id145191%_ _%syntax?145192%_)
        (let ((_%eid145194%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id145191%_))
                '1
                gx#binding::t
                '#f))
              (_%ht145195%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-symbol-table))
                '2
                gxc#symbol-table::t
                '#f)))
          (if (let () (declare (not safe)) (interned-symbol? _%eid145194%_))
              '#!void
              (let ((__tmp147087
                     (let ((__tmp147088
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__0
                               _%eid145194%_))))
                       (declare (not safe))
                       (gx#make-binding-id__1 __tmp147088 _%syntax?145192%_))))
                (declare (not safe))
                (hash-put! _%ht145195%_ _%eid145194%_ __tmp147087))))))
    (define gxc#generate-runtime-identifier
      (lambda (_%id145189%_)
        (gxc#generate-runtime-identifier-key
         (let () (declare (not safe)) (gx#core-identifier-key _%id145189%_)))))
    (define gxc#generate-runtime-identifier-key
      (lambda (_%key145144%_)
        (if (let () (declare (not safe)) (interned-symbol? _%key145144%_))
            _%key145144%_
            (if (uninterned-symbol? _%key145144%_)
                (let ()
                  (declare (not safe))
                  (gxc#generate-runtime-gensym-reference__0 _%key145144%_))
                (let* ((_%key145148145155%_ _%key145144%_)
                       (_%E145150145159%_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (error '"No clause matching"
                                   _%key145148145155%_
                                   '([eid . mark])))
                          '#!void))
                       (_%K145151145177%_
                        (lambda (_%mark145162%_ _%eid145163%_)
                          (let ((_%$e145165%_
                                 (##structure-ref
                                  _%mark145162%_
                                  '1
                                  gx#expander-mark::t
                                  '#f)))
                            (if _%$e145165%_
                                ((lambda (_%ht145168%_)
                                   (let ((_%$e145170%_
                                          (let ()
                                            (declare (not safe))
                                            (hash-get
                                             _%ht145168%_
                                             _%eid145163%_))))
                                     (if _%$e145170%_
                                         ((lambda (_%id145173%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (interned-symbol?
                                                   _%id145173%_))
                                                _%id145173%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _%id145173%_))))
                                          _%$e145170%_)
                                         (gxc#generate-runtime-identifier-key
                                          _%eid145163%_))))
                                 _%$e145165%_)
                                (gxc#generate-runtime-identifier-key
                                 _%eid145163%_))))))
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%key145148145155%_))
                      (let ((_%hd145152145180%_
                             (let ()
                               (declare (not safe))
                               (##car _%key145148145155%_)))
                            (_%tl145153145182%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%key145148145155%_))))
                        (let* ((_%eid145185%_ _%hd145152145180%_)
                               (_%mark145187%_ _%tl145153145182%_))
                          (_%K145151145177%_ _%mark145187%_ _%eid145185%_)))
                      (_%E145150145159%_)))))))
    (define gxc#generate-runtime-empty
      (lambda (_%self145141%_ _%stx145142%_) '(begin)))
    (define gxc#generate-runtime-begin%
      (lambda (_%self144988%_ _%stx144989%_)
        (letrec ((_%simplify144991%_
                  (lambda (_%body145039%_)
                    (let _%lp145041%_ ((_%rest145043%_ _%body145039%_)
                                       (_%r145044%_ '()))
                      (let* ((_%rest145045145053%_ _%rest145043%_)
                             (_%else145047145061%_
                              (lambda () (reverse _%r145044%_)))
                             (_%K145049145129%_
                              (lambda (_%rest145064%_ _%hd145065%_)
                                (let* ((_%hd145066145082%_ _%hd145065%_)
                                       (_%else145070145090%_
                                        (lambda ()
                                          (_%lp145041%_
                                           _%rest145064%_
                                           (cons _%hd145065%_ _%r145044%_)))))
                                  (let ((_%K145078145119%_
                                         (lambda (_%exprs145117%_)
                                           (_%lp145041%_
                                            (let ()
                                              (declare (not safe))
                                              (__foldr1
                                               cons
                                               _%rest145064%_
                                               _%exprs145117%_))
                                            _%r145044%_)))
                                        (_%K145073145103%_
                                         (lambda ()
                                           (if (null? _%rest145064%_)
                                               (_%lp145041%_
                                                _%rest145064%_
                                                (cons _%hd145065%_
                                                      _%r145044%_))
                                               (_%lp145041%_
                                                _%rest145064%_
                                                _%r145044%_))))
                                        (_%K145072145095%_
                                         (lambda ()
                                           (if (null? _%rest145064%_)
                                               (_%lp145041%_
                                                _%rest145064%_
                                                (cons _%hd145065%_
                                                      _%r145044%_))
                                               (_%lp145041%_
                                                _%rest145064%_
                                                _%r145044%_)))))
                                    (let ((_%try-match145069145098%_
                                           (lambda ()
                                             (if (symbol? _%hd145066145082%_)
                                                 (_%K145072145095%_)
                                                 (_%else145070145090%_)))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%hd145066145082%_))
                                          (let ((_%tl145080145124%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd145066145082%_)))
                                                (_%hd145079145122%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd145066145082%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd145079145122%_
                                                         'begin))
                                                (let ((_%exprs145127%_
                                                       _%tl145080145124%_))
                                                  (_%K145078145119%_
                                                   _%exprs145127%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd145079145122%_
                                                             'quote))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##pair? _%tl145080145124%_))
                                                        (let ((_%tl145077145111%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%tl145080145124%_))))
                  (if (let ()
                        (declare (not safe))
                        (##null? _%tl145077145111%_))
                      (_%K145073145103%_)
                      (_%try-match145069145098%_)))
                (_%try-match145069145098%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%try-match145069145098%_))))
                                          (_%try-match145069145098%_))))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest145045145053%_))
                            (let ((_%hd145050145132%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest145045145053%_)))
                                  (_%tl145051145134%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest145045145053%_))))
                              (let* ((_%hd145137%_ _%hd145050145132%_)
                                     (_%rest145139%_ _%tl145051145134%_))
                                (_%K145049145129%_
                                 _%rest145139%_
                                 _%hd145137%_)))
                            (_%else145047145061%_)))))))
          (let* ((_%g144993145003%_
                  (lambda (_%g144994145000%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g144994145000%_))))
                 (_%g144992145036%_
                  (lambda (_%g144994145006%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g144994145006%_))
                        (let ((_%e144996145008%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g144994145006%_))))
                          (let ((_%hd144997145011%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e144996145008%_)))
                                (_%tl144998145013%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e144996145008%_))))
                            ((lambda (_%L145016%_)
                               (let* ((_%body145031%_
                                       (map (lambda (_%g145026145028%_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%self144988%_
                                                 _%g145026145028%_)))
                                            _%L145016%_))
                                      (_%body145033%_
                                       (_%simplify144991%_ _%body145031%_)))
                                 (if (let ((__tmp147089
                                            (length _%body145033%_)))
                                       (declare (not safe))
                                       (##fx= __tmp147089 '1))
                                     (car _%body145033%_)
                                     (cons 'begin _%body145033%_))))
                             _%tl144998145013%_)))
                        (_%g144993145003%_ _%g144994145006%_)))))
            (_%g144992145036%_ _%stx144989%_)))))
    (define gxc#generate-runtime-begin-foreign%
      (lambda (_%self144949%_ _%stx144950%_)
        (let* ((_%g144952144962%_
                (lambda (_%g144953144959%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g144953144959%_))))
               (_%g144951144985%_
                (lambda (_%g144953144965%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g144953144965%_))
                      (let ((_%e144955144967%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g144953144965%_))))
                        (let ((_%hd144956144970%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e144955144967%_)))
                              (_%tl144957144972%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e144955144967%_))))
                          ((lambda (_%L144975%_)
                             (cons 'begin
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax->datum _%L144975%_))))
                           _%tl144957144972%_)))
                      (_%g144952144962%_ _%g144953144965%_)))))
          (_%g144951144985%_ _%stx144950%_))))
    (define gxc#generate-runtime-begin-annotation%
      (lambda (_%self144713%_ _%stx144714%_)
        (let* ((_%__stx145679145680%_ _%stx144714%_)
               (_%g144718144770%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx145679145680%_)))))
          (let ((_%__kont145681145682%_
                 (lambda (_%L144931%_ _%L144932%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self144713%_ _%L144931%_))))
                (_%__kont145683145684%_
                 (lambda (_%L144879%_ _%L144880%_ _%L144881%_)
                   (if (let ((__tmp147090
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%L144881%_))))
                         (declare (not safe))
                         (##memq __tmp147090 '(@inline)))
                       '(begin)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self144713%_ _%L144879%_)))))
                (_%__kont145687145688%_
                 (lambda (_%L144799%_ _%L144800%_)
                   (let ((_%decls144815%_ (map gx#syntax->datum _%L144800%_)))
                     (let ((__tmp147093
                            (lambda ()
                              (cons 'begin
                                    (cons (cons 'declare _%decls144815%_)
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self144713%_
                                                   _%L144799%_))
                                                '())))))
                           (__tmp147091
                            (let ((__tmp147092
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-decls))))
                              (declare (not safe))
                              (__foldr1 cons __tmp147092 _%decls144815%_))))
                       (declare (not safe))
                       (__call-with-parameters
                        __tmp147093
                        gxc#current-compile-decls
                        __tmp147091))))))
            (let* ((_%__match145734145735%_
                    (lambda (_%e144734144823%_
                             _%hd144735144826%_
                             _%tl144736144828%_
                             _%e144737144831%_
                             _%hd144738144834%_
                             _%tl144739144836%_
                             _%e144740144839%_
                             _%hd144741144842%_
                             _%tl144742144844%_
                             _%__splice145685145686%_
                             _%target144743144847%_
                             _%tl144745144849%_)
                      (letrec ((_%loop144746144852%_
                                (lambda (_%hd144744144855%_
                                         _%param144750144857%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd144744144855%_))
                                      (let ((_%e144747144860%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd144744144855%_))))
                                        (let ((_%lp-tl144749144865%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e144747144860%_)))
                                              (_%lp-hd144748144863%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e144747144860%_))))
                                          (_%loop144746144852%_
                                           _%lp-tl144749144865%_
                                           (cons _%lp-hd144748144863%_
                                                 _%param144750144857%_))))
                                      (let ((_%param144751144868%_
                                             (reverse _%param144750144857%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl144739144836%_))
                                            (let ((_%e144752144871%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl144739144836%_))))
                                              (let ((_%tl144754144876%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e144752144871%_)))
                                                    (_%hd144753144874%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e144752144871%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl144754144876%_))
                                                    (let ((_%L144879%_
                                                           _%hd144753144874%_)
                                                          (_%L144880%_
                                                           _%param144751144868%_)
                                                          (_%L144881%_
                                                           _%hd144741144842%_))
                                                      (if (and (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier? _%L144881%_))
                       (not (let ((__tmp147094
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L144881%_))))
                              (declare (not safe))
                              (##memq __tmp147094 gxc#gambit-annotations))))
                  (_%__kont145683145684%_ _%L144879%_ _%L144880%_ _%L144881%_)
                  (_%__kont145687145688%_
                   _%hd144753144874%_
                   _%hd144738144834%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g144718144770%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g144718144770%_))))))))
                        (_%loop144746144852%_ _%target144743144847%_ '()))))
                   (_%__match145708145709%_
                    (lambda (_%e144722144907%_
                             _%hd144723144910%_
                             _%tl144724144912%_
                             _%e144725144915%_
                             _%hd144726144918%_
                             _%tl144727144920%_
                             _%e144728144923%_
                             _%hd144729144926%_
                             _%tl144730144928%_)
                      (let ((_%L144931%_ _%hd144729144926%_)
                            (_%L144932%_ _%hd144726144918%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%L144932%_))
                            (_%__kont145681145682%_ _%L144931%_ _%L144932%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd144726144918%_))
                                (let ((_%e144740144839%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd144726144918%_))))
                                  (let ((_%tl144742144844%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e144740144839%_)))
                                        (_%hd144741144842%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e144740144839%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl144742144844%_))
                                        (let ((_%__splice145685145686%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl144742144844%_
                                                  '0))))
                                          (let ((_%tl144745144849%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice145685145686%_
                                                    '1)))
                                                (_%target144743144847%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice145685145686%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl144745144849%_))
                                                (_%__match145734145735%_
                                                 _%e144722144907%_
                                                 _%hd144723144910%_
                                                 _%tl144724144912%_
                                                 _%e144725144915%_
                                                 _%hd144726144918%_
                                                 _%tl144727144920%_
                                                 _%e144740144839%_
                                                 _%hd144741144842%_
                                                 _%tl144742144844%_
                                                 _%__splice145685145686%_
                                                 _%target144743144847%_
                                                 _%tl144745144849%_)
                                                (_%__kont145687145688%_
                                                 _%hd144729144926%_
                                                 _%hd144726144918%_))))
                                        (_%__kont145687145688%_
                                         _%hd144729144926%_
                                         _%hd144726144918%_))))
                                (_%__kont145687145688%_
                                 _%hd144729144926%_
                                 _%hd144726144918%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx145679145680%_))
                  (let ((_%e144722144907%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx145679145680%_))))
                    (let ((_%tl144724144912%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e144722144907%_)))
                          (_%hd144723144910%_
                           (let ()
                             (declare (not safe))
                             (##car _%e144722144907%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl144724144912%_))
                          (let ((_%e144725144915%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl144724144912%_))))
                            (let ((_%tl144727144920%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e144725144915%_)))
                                  (_%hd144726144918%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e144725144915%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl144727144920%_))
                                  (let ((_%e144728144923%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl144727144920%_))))
                                    (let ((_%tl144730144928%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e144728144923%_)))
                                          (_%hd144729144926%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e144728144923%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl144730144928%_))
                                          (_%__match145708145709%_
                                           _%e144722144907%_
                                           _%hd144723144910%_
                                           _%tl144724144912%_
                                           _%e144725144915%_
                                           _%hd144726144918%_
                                           _%tl144727144920%_
                                           _%e144728144923%_
                                           _%hd144729144926%_
                                           _%tl144730144928%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd144726144918%_))
                                              (let ((_%e144740144839%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd144726144918%_))))
                                                (let ((_%tl144742144844%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e144740144839%_)))
                                                      (_%hd144741144842%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e144740144839%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl144742144844%_))
                                                      (let ((_%__splice145685145686%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl144742144844%_ '0))))
                (let ((_%tl144745144849%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice145685145686%_ '1)))
                      (_%target144743144847%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice145685145686%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl144745144849%_))
                      (_%__match145734145735%_
                       _%e144722144907%_
                       _%hd144723144910%_
                       _%tl144724144912%_
                       _%e144725144915%_
                       _%hd144726144918%_
                       _%tl144727144920%_
                       _%e144740144839%_
                       _%hd144741144842%_
                       _%tl144742144844%_
                       _%__splice145685145686%_
                       _%target144743144847%_
                       _%tl144745144849%_)
                      (let () (declare (not safe)) (_%g144718144770%_)))))
              (let () (declare (not safe)) (_%g144718144770%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g144718144770%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd144726144918%_))
                                      (let ((_%e144740144839%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd144726144918%_))))
                                        (let ((_%tl144742144844%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e144740144839%_)))
                                              (_%hd144741144842%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e144740144839%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl144742144844%_))
                                              (let ((_%__splice145685145686%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl144742144844%_
                                                        '0))))
                                                (let ((_%tl144745144849%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice145685145686%_
                                                          '1)))
                                                      (_%target144743144847%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice145685145686%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl144745144849%_))
                                                      (_%__match145734145735%_
                                                       _%e144722144907%_
                                                       _%hd144723144910%_
                                                       _%tl144724144912%_
                                                       _%e144725144915%_
                                                       _%hd144726144918%_
                                                       _%tl144727144920%_
                                                       _%e144740144839%_
                                                       _%hd144741144842%_
                                                       _%tl144742144844%_
                                                       _%__splice145685145686%_
                                                       _%target144743144847%_
                                                       _%tl144745144849%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g144718144770%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g144718144770%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g144718144770%_))))))
                          (let () (declare (not safe)) (_%g144718144770%_)))))
                  (let () (declare (not safe)) (_%g144718144770%_))))))))
    (define gxc#generate-runtime-declare%
      (lambda (_%self144672%_ _%stx144673%_)
        (let* ((_%g144675144685%_
                (lambda (_%g144676144682%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g144676144682%_))))
               (_%g144674144710%_
                (lambda (_%g144676144688%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g144676144688%_))
                      (let ((_%e144678144690%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g144676144688%_))))
                        (let ((_%hd144679144693%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e144678144690%_)))
                              (_%tl144680144695%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e144678144690%_))))
                          ((lambda (_%L144698%_)
                             (let ((_%decls144708%_
                                    (map gx#syntax->datum _%L144698%_)))
                               (let ((__tmp147095
                                      (let ((__tmp147096
                                             (let ()
                                               (declare (not safe))
                                               (gxc#current-compile-decls))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp147096
                                         _%decls144708%_))))
                                 (declare (not safe))
                                 (gxc#current-compile-decls __tmp147095))
                               (cons 'declare _%decls144708%_)))
                           _%tl144680144695%_)))
                      (_%g144675144685%_ _%g144676144688%_)))))
          (_%g144674144710%_ _%stx144673%_))))
    (define gxc#generate-runtime-define-values%
      (lambda (_%self144418%_ _%stx144419%_)
        (let* ((_%g144421144438%_
                (lambda (_%g144422144435%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g144422144435%_))))
               (_%g144420144669%_
                (lambda (_%g144422144441%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g144422144441%_))
                      (let ((_%e144425144443%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g144422144441%_))))
                        (let ((_%hd144426144446%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e144425144443%_)))
                              (_%tl144427144448%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e144425144443%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl144427144448%_))
                              (let ((_%e144428144451%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl144427144448%_))))
                                (let ((_%hd144429144454%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e144428144451%_)))
                                      (_%tl144430144456%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e144428144451%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl144430144456%_))
                                      (let ((_%e144431144459%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl144430144456%_))))
                                        (let ((_%hd144432144462%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e144431144459%_)))
                                              (_%tl144433144464%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e144431144459%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl144433144464%_))
                                              ((lambda (_%L144467%_
                                                        _%L144468%_)
                                                 (let* ((_%__stx145787145788%_
                                                         _%L144468%_)
                                                        (_%g144485144499%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx145787145788%_)))))
                                                   (let ((_%__kont145789145790%_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _%self144418%_
                                                               _%L144467%_))))
                                                         (_%__kont145791145792%_
                                                          (lambda (_%L144631%_)
                                                            (let ((_%eid144640%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%L144631%_))))
                      (let ((_%lambda-expr144641144643%_
                             (gxc#apply-find-lambda-expression _%L144467%_)))
                        (if _%lambda-expr144641144643%_
                            (let* ((_%lambda-expr144646%_
                                    _%lambda-expr144641144643%_)
                                   (__tmp147097
                                    (let ()
                                      (declare (not safe))
                                      (gxc#current-compile-runtime-names))))
                              (declare (not safe))
                              (hash-put!
                               __tmp147097
                               _%lambda-expr144646%_
                               _%eid144640%_))
                            '#f))
                      (cons 'define
                            (cons _%eid144640%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__1
                                           _%self144418%_
                                           _%L144467%_))
                                        '()))))))
                 (_%__kont145793145794%_
                  (lambda ()
                    (let* ((_%tmp144506%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%body144615%_
                            (let _%lp144508%_ ((_%rest144510%_ _%L144468%_)
                                               (_%k144511%_ '0)
                                               (_%r144512%_ '()))
                              (let* ((_%__stx145757145758%_ _%rest144510%_)
                                     (_%g144517144534%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx145757145758%_)))))
                                (let ((_%__kont145759145760%_
                                       (lambda (_%L144602%_)
                                         (_%lp144508%_
                                          _%L144602%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k144511%_ '1))
                                          _%r144512%_)))
                                      (_%__kont145761145762%_
                                       (lambda (_%L144575%_ _%L144576%_)
                                         (_%lp144508%_
                                          _%L144575%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k144511%_ '1))
                                          (cons (cons 'define
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#generate-runtime-binding-id
                                                               _%L144576%_))
                                                            (cons (gxc#generate-runtime-values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tmp144506%_
                           _%k144511%_
                           _%L144575%_)
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%r144512%_))))
                                      (_%__kont145763145764%_
                                       (lambda (_%L144546%_)
                                         (let ((__tmp147098
                                                (cons (cons 'define
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#generate-runtime-binding-id _%L144546%_))
                          (cons (gxc#generate-runtime-values->list
                                 _%tmp144506%_
                                 _%k144511%_)
                                '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (__foldl1
                                            cons
                                            __tmp147098
                                            _%r144512%_))))
                                      (_%__kont145765145766%_
                                       (lambda () (reverse _%r144512%_))))
                                  (let ((_%g144515144562%_
                                         (lambda ()
                                           (let ((_%L144546%_
                                                  _%__stx145757145758%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%L144546%_))
                                                 (_%__kont145763145764%_
                                                  _%L144546%_)
                                                 (_%__kont145765145766%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx145757145758%_))
                                        (let ((_%e144520144591%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx145757145758%_))))
                                          (let ((_%tl144522144596%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e144520144591%_)))
                                                (_%hd144521144594%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e144520144591%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd144521144594%_))
                                                (let ((_%e144523144599%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd144521144594%_))))
                                                  (if (equal? _%e144523144599%_
                                                              '#f)
                                                      (_%__kont145759145760%_
                                                       _%tl144522144596%_)
                                                      (_%__kont145761145762%_
                                                       _%tl144522144596%_
                                                       _%hd144521144594%_)))
                                                (_%__kont145761145762%_
                                                 _%tl144522144596%_
                                                 _%hd144521144594%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g144515144562%_)))))))))
                      (cons 'begin
                            (cons (cons 'define
                                        (cons _%tmp144506%_
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self144418%_
                                                       _%L144467%_))
                                                    '())))
                                  (cons (gxc#generate-runtime-check-values
                                         _%tmp144506%_
                                         _%L144468%_
                                         _%L144467%_)
                                        _%body144615%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx145787145788%_))
                                                         (let ((_%e144487144653%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx145787145788%_))))
                   (let ((_%tl144489144658%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e144487144653%_)))
                         (_%hd144488144656%_
                          (let ()
                            (declare (not safe))
                            (##car _%e144487144653%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-datum? _%hd144488144656%_))
                         (let ((_%e144490144661%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd144488144656%_))))
                           (if (equal? _%e144490144661%_ '#f)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl144489144658%_))
                                   (_%__kont145789145790%_)
                                   (_%__kont145793145794%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl144489144658%_))
                                   (_%__kont145791145792%_ _%hd144488144656%_)
                                   (_%__kont145793145794%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl144489144658%_))
                             (_%__kont145791145792%_ _%hd144488144656%_)
                             (_%__kont145793145794%_)))))
                 (_%__kont145793145794%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd144432144462%_
                                               _%hd144429144454%_)
                                              (_%g144421144438%_
                                               _%g144422144441%_))))
                                      (_%g144421144438%_ _%g144422144441%_))))
                              (_%g144421144438%_ _%g144422144441%_))))
                      (_%g144421144438%_ _%g144422144441%_)))))
          (_%g144420144669%_ _%stx144419%_))))
    (define gxc#generate-runtime-check-values
      (lambda (_%vals144393%_ _%hd144394%_ _%expr144395%_)
        (let ((_%$e144397%_ (gxc#apply-count-values _%expr144395%_)))
          (if _%$e144397%_
              ((lambda (_%count144400%_)
                 (let ((_%len144402%_
                        (let ()
                          (declare (not safe))
                          (gx#stx-length _%hd144394%_)))
                       (_%cmp144403%_
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-list? _%hd144394%_))
                            fx=
                            fx>=)))
                   (if (or (let ()
                             (declare (not safe))
                             (##fx= _%len144402%_ '0))
                           (_%cmp144403%_ _%count144400%_ _%len144402%_))
                       '#!void
                       (let ()
                         (declare (not safe))
                         (gxc#raise-compile-error
                          '"Value count mismatch"
                          _%expr144395%_
                          _%hd144394%_)))))
               _%$e144397%_)
              (let* ((_%len144409%_
                      (let ()
                        (declare (not safe))
                        (gx#stx-length _%hd144394%_)))
                     (_%cmp144411%_
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-list? _%hd144394%_))
                          '##fx=
                          '##fx>=))
                     (_%errmsg144413%_
                      (let ((__tmp147100
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-list? _%hd144394%_))
                                 '"Context expects "
                                 '"Context expects at least "))
                            (__tmp147099 (number->string _%len144409%_)))
                        (declare (not safe))
                        (##string-append __tmp147100 __tmp147099 '" values")))
                     (_%count144415%_
                      (let ()
                        (declare (not safe))
                        (gxc#generate-runtime-temporary__0))))
                (if (and (not (let ()
                                (declare (not safe))
                                (gx#stx-list? _%hd144394%_)))
                         (let ()
                           (declare (not safe))
                           (##fx= _%len144409%_ '0)))
                    '#!void
                    (cons 'let
                          (cons (cons (cons _%count144415%_
                                            (cons (gxc#generate-runtime-values-count
                                                   _%vals144393%_)
                                                  '()))
                                      '())
                                (cons (cons 'if
                                            (cons (cons 'not
                                                        (cons (if (gxc#current-compile-decls-unsafe?)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%cmp144411%_
                                (cons _%count144415%_
                                      (cons _%len144409%_ '())))
                          (cons 'let
                                (cons '()
                                      (cons '(declare (not safe))
                                            (cons (cons _%cmp144411%_
                                                        (cons _%count144415%_
                                                              (cons _%len144409%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons 'error
                                                              (cons _%errmsg144413%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%count144415%_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))))))))
    (define gxc#generate-runtime-values-count
      (lambda (_%var144388%_)
        (letrec ((_%generate-inline144390%_
                  (lambda ()
                    (cons 'if
                          (cons (cons '##values? (cons _%var144388%_ '()))
                                (cons (cons '##vector-length
                                            (cons _%var144388%_ '()))
                                      (cons '1 '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline144390%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline144390%_) '()))))))))
    (define gxc#generate-runtime-values-ref
      (lambda (_%var144381%_ _%i144382%_ _%rest144383%_)
        (letrec ((_%generate-inline144385%_
                  (lambda ()
                    (if (and (let ()
                               (declare (not safe))
                               (##fx= _%i144382%_ '0))
                             (not (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%rest144383%_))))
                        (cons 'if
                              (cons (cons '##values? (cons _%var144381%_ '()))
                                    (cons (cons '##vector-ref
                                                (cons _%var144381%_
                                                      (cons '0 '())))
                                          (cons _%var144381%_ '()))))
                        (cons '##vector-ref
                              (cons _%var144381%_ (cons _%i144382%_ '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline144385%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline144385%_) '()))))))))
    (define gxc#generate-runtime-values->list
      (lambda (_%var144375%_ _%i144376%_)
        (if (let () (declare (not safe)) (##fx= _%i144376%_ '0))
            (if (gxc#current-compile-decls-unsafe?)
                (cons 'if
                      (cons (cons '##values? (cons _%var144375%_ '()))
                            (cons (cons '##vector->list
                                        (cons _%var144375%_ '()))
                                  (cons (cons 'list (cons _%var144375%_ '()))
                                        '()))))
                (cons 'let
                      (cons '()
                            (cons '(declare (not safe))
                                  (cons (cons 'if
                                              (cons (cons '##values?
                                                          (cons _%var144375%_
                                                                '()))
                                                    (cons (cons '##vector->list
                                                                (cons _%var144375%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons 'list (cons _%var144375%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
            (if (let () (declare (not safe)) (##fx= _%i144376%_ '1))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons 'if
                          (cons (cons '##values? (cons _%var144375%_ '()))
                                (cons (cons '##cdr
                                            (cons (cons '##vector->list
                                                        (cons _%var144375%_
                                                              '()))
                                                  '()))
                                      (cons ''() '()))))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons 'if
                                                  (cons (cons '##values?
                                                              (cons _%var144375%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '##cdr
                            (cons (cons '##vector->list
                                        (cons _%var144375%_ '()))
                                  '()))
                      (cons ''() '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons '##list-tail
                          (cons (cons '##vector->list (cons _%var144375%_ '()))
                                (cons _%i144376%_ '())))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons '##list-tail
                                                  (cons (cons '##vector->list
                                                              (cons _%var144375%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _%i144376%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))))))
    (define gxc#generate-runtime-lambda%
      (lambda (_%self144307%_ _%stx144308%_)
        (let* ((_%g144310144327%_
                (lambda (_%g144311144324%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g144311144324%_))))
               (_%g144309144372%_
                (lambda (_%g144311144330%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g144311144330%_))
                      (let ((_%e144314144332%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g144311144330%_))))
                        (let ((_%hd144315144335%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e144314144332%_)))
                              (_%tl144316144337%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e144314144332%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl144316144337%_))
                              (let ((_%e144317144340%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl144316144337%_))))
                                (let ((_%hd144318144343%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e144317144340%_)))
                                      (_%tl144319144345%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e144317144340%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl144319144345%_))
                                      (let ((_%e144320144348%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl144319144345%_))))
                                        (let ((_%hd144321144351%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e144320144348%_)))
                                              (_%tl144322144353%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e144320144348%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl144322144353%_))
                                              ((lambda (_%L144356%_
                                                        _%L144357%_)
                                                 (gxc#generate-runtime-lambda-form
                                                  _%self144307%_
                                                  _%L144357%_
                                                  _%L144356%_))
                                               _%hd144321144351%_
                                               _%hd144318144343%_)
                                              (_%g144310144327%_
                                               _%g144311144330%_))))
                                      (_%g144310144327%_ _%g144311144330%_))))
                              (_%g144310144327%_ _%g144311144330%_))))
                      (_%g144310144327%_ _%g144311144330%_)))))
          (_%g144309144372%_ _%stx144308%_))))
    (define gxc#generate-runtime-lambda-form
      (lambda (_%self144266%_ _%hd144267%_ _%body144268%_)
        (let* ((_%hd144270%_ (gxc#generate-runtime-lambda-head _%hd144267%_))
               (_%body144272%_
                (let ()
                  (declare (not safe))
                  (gxc#compile-e__1 _%self144266%_ _%body144268%_)))
               (_%body144304%_
                (let* ((_%body144273144281%_ _%body144272%_)
                       (_%else144275144289%_
                        (lambda () (cons _%body144272%_ '())))
                       (_%K144277144294%_
                        (lambda (_%exprs144292%_) _%exprs144292%_)))
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%body144273144281%_))
                      (let ((_%hd144278144297%_
                             (let ()
                               (declare (not safe))
                               (##car _%body144273144281%_)))
                            (_%tl144279144299%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%body144273144281%_))))
                        (if (let ()
                              (declare (not safe))
                              (##eq? _%hd144278144297%_ 'begin))
                            (let ((_%exprs144302%_ _%tl144279144299%_))
                              (_%K144277144294%_ _%exprs144302%_))
                            (_%else144275144289%_)))
                      (_%else144275144289%_)))))
          (cons 'lambda (cons _%hd144270%_ _%body144304%_)))))
    (define gxc#generate-runtime-lambda-head
      (lambda (_%hd144264%_)
        (let ()
          (declare (not safe))
          (gx#stx-map1 gxc#generate-runtime-binding-id* _%hd144264%_))))
    (define gxc#generate-runtime-case-lambda%
      (lambda (_%self142803%_ _%stx142804%_)
        (letrec ((_%dispatch-case?142806%_
                  (lambda (_%hd143494%_ _%body143495%_)
                    (let* ((_%form143497%_
                            (cons _%hd143494%_ (cons _%body143495%_ '())))
                           (_%__stx145819145820%_ _%form143497%_)
                           (_%g143502143659%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx145819145820%_)))))
                      (let ((_%__kont145821145822%_
                             (lambda (_%L144184%_ _%L144185%_ _%L144186%_)
                               '#t))
                            (_%__kont145827145828%_
                             (lambda (_%L143972%_
                                      _%L143973%_
                                      _%L143974%_
                                      _%L143975%_
                                      _%L143976%_
                                      _%L143977%_)
                               '#t))
                            (_%__kont145833145834%_
                             (lambda (_%L143767%_
                                      _%L143768%_
                                      _%L143769%_
                                      _%L143770%_)
                               '#t))
                            (_%__kont145835145836%_ (lambda () '#f)))
                        (let* ((_%__match145960145961%_
                                (lambda (_%e143619143671%_
                                         _%hd143620143674%_
                                         _%tl143621143676%_
                                         _%e143622143679%_
                                         _%hd143623143682%_
                                         _%tl143624143684%_
                                         _%e143625143687%_
                                         _%hd143626143690%_
                                         _%tl143627143692%_
                                         _%e143628143695%_
                                         _%hd143629143698%_
                                         _%tl143630143700%_
                                         _%e143631143703%_
                                         _%hd143632143706%_
                                         _%tl143633143708%_
                                         _%e143634143711%_
                                         _%hd143635143714%_
                                         _%tl143636143716%_
                                         _%e143637143719%_
                                         _%hd143638143722%_
                                         _%tl143639143724%_
                                         _%e143640143727%_
                                         _%hd143641143730%_
                                         _%tl143642143732%_
                                         _%e143643143735%_
                                         _%hd143644143738%_
                                         _%tl143645143740%_
                                         _%e143646143743%_
                                         _%hd143647143746%_
                                         _%tl143648143748%_
                                         _%e143649143751%_
                                         _%hd143650143754%_
                                         _%tl143651143756%_
                                         _%e143652143759%_
                                         _%hd143653143762%_
                                         _%tl143654143764%_)
                                  (let ((_%L143767%_ _%hd143653143762%_)
                                        (_%L143768%_ _%hd143644143738%_)
                                        (_%L143769%_ _%hd143635143714%_)
                                        (_%L143770%_ _%hd143620143674%_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (gx#identifier? _%L143770%_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#runtime-identifier=?
                                                _%L143769%_
                                                'apply))
                                             (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L143770%_
                                                _%L143767%_))
                                             (not (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%L143768%_
                                                     _%L143770%_))))
                                        (_%__kont145833145834%_
                                         _%L143767%_
                                         _%L143768%_
                                         _%L143769%_
                                         _%L143770%_)
                                        (_%__kont145835145836%_)))))
                               (_%__match145932145933%_
                                (lambda (_%e143619143671%_
                                         _%hd143620143674%_
                                         _%tl143621143676%_
                                         _%e143622143679%_
                                         _%hd143623143682%_
                                         _%tl143624143684%_
                                         _%e143625143687%_
                                         _%hd143626143690%_
                                         _%tl143627143692%_
                                         _%e143628143695%_
                                         _%hd143629143698%_
                                         _%tl143630143700%_
                                         _%e143631143703%_
                                         _%hd143632143706%_
                                         _%tl143633143708%_
                                         _%e143634143711%_
                                         _%hd143635143714%_
                                         _%tl143636143716%_
                                         _%e143637143719%_
                                         _%hd143638143722%_
                                         _%tl143639143724%_
                                         _%e143640143727%_
                                         _%hd143641143730%_
                                         _%tl143642143732%_
                                         _%e143643143735%_
                                         _%hd143644143738%_
                                         _%tl143645143740%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl143639143724%_))
                                      (let ((_%e143646143743%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl143639143724%_))))
                                        (let ((_%tl143648143748%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e143646143743%_)))
                                              (_%hd143647143746%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e143646143743%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd143647143746%_))
                                              (let ((_%e143649143751%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd143647143746%_))))
                                                (let ((_%tl143651143756%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e143649143751%_)))
                                                      (_%hd143650143754%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e143649143751%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd143650143754%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _%hd143650143754%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl143651143756%_))
                      (let ((_%e143652143759%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl143651143756%_))))
                        (let ((_%tl143654143764%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143652143759%_)))
                              (_%hd143653143762%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143652143759%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl143654143764%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl143648143748%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl143624143684%_))
                                      (_%__match145960145961%_
                                       _%e143619143671%_
                                       _%hd143620143674%_
                                       _%tl143621143676%_
                                       _%e143622143679%_
                                       _%hd143623143682%_
                                       _%tl143624143684%_
                                       _%e143625143687%_
                                       _%hd143626143690%_
                                       _%tl143627143692%_
                                       _%e143628143695%_
                                       _%hd143629143698%_
                                       _%tl143630143700%_
                                       _%e143631143703%_
                                       _%hd143632143706%_
                                       _%tl143633143708%_
                                       _%e143634143711%_
                                       _%hd143635143714%_
                                       _%tl143636143716%_
                                       _%e143637143719%_
                                       _%hd143638143722%_
                                       _%tl143639143724%_
                                       _%e143640143727%_
                                       _%hd143641143730%_
                                       _%tl143642143732%_
                                       _%e143643143735%_
                                       _%hd143644143738%_
                                       _%tl143645143740%_
                                       _%e143646143743%_
                                       _%hd143647143746%_
                                       _%tl143648143748%_
                                       _%e143649143751%_
                                       _%hd143650143754%_
                                       _%tl143651143756%_
                                       _%e143652143759%_
                                       _%hd143653143762%_
                                       _%tl143654143764%_)
                                      (_%__kont145835145836%_))
                                  (_%__kont145835145836%_))
                              (_%__kont145835145836%_))))
                      (_%__kont145835145836%_))
                  (_%__kont145835145836%_))
              (_%__kont145835145836%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont145835145836%_))))
                                      (_%__kont145835145836%_))))
                               (_%__match145862145863%_
                                (lambda (_%e143555143812%_
                                         _%hd143556143815%_
                                         _%tl143557143817%_
                                         _%__splice145829145830%_
                                         _%target143558143820%_
                                         _%tl143560143822%_)
                                  (letrec ((_%loop143561143825%_
                                            (lambda (_%hd143559143828%_
                                                     _%arg143565143830%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd143559143828%_))
                                                  (let ((_%e143562143833%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd143559143828%_))))
                                                    (let ((_%lp-tl143564143838%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e143562143833%_)))
                                                          (_%lp-hd143563143836%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e143562143833%_))))
                                                      (_%loop143561143825%_
                                                       _%lp-tl143564143838%_
                                                       (cons _%lp-hd143563143836%_
                                                             _%arg143565143830%_))))
                                                  (let ((_%arg143566143841%_
                                                         (reverse _%arg143565143830%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl143557143817%_))
                                                        (let ((_%e143567143844%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl143557143817%_))))
                  (let ((_%tl143569143849%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e143567143844%_)))
                        (_%hd143568143847%_
                         (let ()
                           (declare (not safe))
                           (##car _%e143567143844%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd143568143847%_))
                        (let ((_%e143570143852%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd143568143847%_))))
                          (let ((_%tl143572143857%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e143570143852%_)))
                                (_%hd143571143855%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e143570143852%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd143571143855%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd143571143855%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl143572143857%_))
                                        (let ((_%e143573143860%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl143572143857%_))))
                                          (let ((_%tl143575143865%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e143573143860%_)))
                                                (_%hd143574143863%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e143573143860%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd143574143863%_))
                                                (let ((_%e143576143868%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd143574143863%_))))
                                                  (let ((_%tl143578143873%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e143576143868%_)))
                                                        (_%hd143577143871%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e143576143868%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd143577143871%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd143577143871%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl143578143873%_))
                        (let ((_%e143579143876%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl143578143873%_))))
                          (let ((_%tl143581143881%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e143579143876%_)))
                                (_%hd143580143879%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e143579143876%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl143581143881%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl143575143865%_))
                                    (let ((_%e143582143884%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl143575143865%_))))
                                      (let ((_%tl143584143889%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e143582143884%_)))
                                            (_%hd143583143887%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e143582143884%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd143583143887%_))
                                            (let ((_%e143585143892%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd143583143887%_))))
                                              (let ((_%tl143587143897%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e143585143892%_)))
                                                    (_%hd143586143895%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e143585143892%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd143586143895%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd143586143895%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl143587143897%_))
                                                            (let ((_%e143588143900%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl143587143897%_))))
                      (let ((_%tl143590143905%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e143588143900%_)))
                            (_%hd143589143903%_
                             (let ()
                               (declare (not safe))
                               (##car _%e143588143900%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl143590143905%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl143584143889%_))
                                (if (let ((__tmp147101
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-length
                                              _%tl143584143889%_))))
                                      (declare (not safe))
                                      (##fx>= __tmp147101 '1))
                                    (let ((_%__splice145831145832%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl143584143889%_
                                              '1))))
                                      (let ((_%tl143593143910%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice145831145832%_
                                                '1)))
                                            (_%target143591143908%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice145831145832%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl143593143910%_))
                                            (let ((_%e143600143913%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl143593143910%_))))
                                              (let ((_%tl143602143918%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e143600143913%_)))
                                                    (_%hd143601143916%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e143600143913%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd143601143916%_))
                                                    (let ((_%e143603143921%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd143601143916%_))))
                                                      (let ((_%tl143605143926%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e143603143921%_)))
                    (_%hd143604143924%_
                     (let () (declare (not safe)) (##car _%e143603143921%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd143604143924%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _%hd143604143924%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl143605143926%_))
                            (let ((_%e143606143929%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl143605143926%_))))
                              (let ((_%tl143608143934%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e143606143929%_)))
                                    (_%hd143607143932%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e143606143929%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl143608143934%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl143602143918%_))
                                        (letrec ((_%loop143594143937%_
                                                  (lambda (_%hd143592143940%_
                                                           _%xarg143598143942%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd143592143940%_))
                                                        (let ((_%e143595143945%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd143592143940%_))))
                  (let ((_%lp-tl143597143950%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e143595143945%_)))
                        (_%lp-hd143596143948%_
                         (let ()
                           (declare (not safe))
                           (##car _%e143595143945%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd143596143948%_))
                        (let ((_%e143609143953%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd143596143948%_))))
                          (let ((_%tl143611143958%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e143609143953%_)))
                                (_%hd143610143956%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e143609143953%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd143610143956%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _%hd143610143956%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl143611143958%_))
                                        (let ((_%e143612143961%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl143611143958%_))))
                                          (let ((_%tl143614143966%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e143612143961%_)))
                                                (_%hd143613143964%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e143612143961%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl143614143966%_))
                                                (_%loop143594143937%_
                                                 _%lp-tl143597143950%_
                                                 (cons _%hd143613143964%_
                                                       _%xarg143598143942%_))
                                                (_%__match145932145933%_
                                                 _%e143555143812%_
                                                 _%hd143556143815%_
                                                 _%tl143557143817%_
                                                 _%e143567143844%_
                                                 _%hd143568143847%_
                                                 _%tl143569143849%_
                                                 _%e143570143852%_
                                                 _%hd143571143855%_
                                                 _%tl143572143857%_
                                                 _%e143573143860%_
                                                 _%hd143574143863%_
                                                 _%tl143575143865%_
                                                 _%e143576143868%_
                                                 _%hd143577143871%_
                                                 _%tl143578143873%_
                                                 _%e143579143876%_
                                                 _%hd143580143879%_
                                                 _%tl143581143881%_
                                                 _%e143582143884%_
                                                 _%hd143583143887%_
                                                 _%tl143584143889%_
                                                 _%e143585143892%_
                                                 _%hd143586143895%_
                                                 _%tl143587143897%_
                                                 _%e143588143900%_
                                                 _%hd143589143903%_
                                                 _%tl143590143905%_))))
                                        (_%__match145932145933%_
                                         _%e143555143812%_
                                         _%hd143556143815%_
                                         _%tl143557143817%_
                                         _%e143567143844%_
                                         _%hd143568143847%_
                                         _%tl143569143849%_
                                         _%e143570143852%_
                                         _%hd143571143855%_
                                         _%tl143572143857%_
                                         _%e143573143860%_
                                         _%hd143574143863%_
                                         _%tl143575143865%_
                                         _%e143576143868%_
                                         _%hd143577143871%_
                                         _%tl143578143873%_
                                         _%e143579143876%_
                                         _%hd143580143879%_
                                         _%tl143581143881%_
                                         _%e143582143884%_
                                         _%hd143583143887%_
                                         _%tl143584143889%_
                                         _%e143585143892%_
                                         _%hd143586143895%_
                                         _%tl143587143897%_
                                         _%e143588143900%_
                                         _%hd143589143903%_
                                         _%tl143590143905%_))
                                    (_%__match145932145933%_
                                     _%e143555143812%_
                                     _%hd143556143815%_
                                     _%tl143557143817%_
                                     _%e143567143844%_
                                     _%hd143568143847%_
                                     _%tl143569143849%_
                                     _%e143570143852%_
                                     _%hd143571143855%_
                                     _%tl143572143857%_
                                     _%e143573143860%_
                                     _%hd143574143863%_
                                     _%tl143575143865%_
                                     _%e143576143868%_
                                     _%hd143577143871%_
                                     _%tl143578143873%_
                                     _%e143579143876%_
                                     _%hd143580143879%_
                                     _%tl143581143881%_
                                     _%e143582143884%_
                                     _%hd143583143887%_
                                     _%tl143584143889%_
                                     _%e143585143892%_
                                     _%hd143586143895%_
                                     _%tl143587143897%_
                                     _%e143588143900%_
                                     _%hd143589143903%_
                                     _%tl143590143905%_))
                                (_%__match145932145933%_
                                 _%e143555143812%_
                                 _%hd143556143815%_
                                 _%tl143557143817%_
                                 _%e143567143844%_
                                 _%hd143568143847%_
                                 _%tl143569143849%_
                                 _%e143570143852%_
                                 _%hd143571143855%_
                                 _%tl143572143857%_
                                 _%e143573143860%_
                                 _%hd143574143863%_
                                 _%tl143575143865%_
                                 _%e143576143868%_
                                 _%hd143577143871%_
                                 _%tl143578143873%_
                                 _%e143579143876%_
                                 _%hd143580143879%_
                                 _%tl143581143881%_
                                 _%e143582143884%_
                                 _%hd143583143887%_
                                 _%tl143584143889%_
                                 _%e143585143892%_
                                 _%hd143586143895%_
                                 _%tl143587143897%_
                                 _%e143588143900%_
                                 _%hd143589143903%_
                                 _%tl143590143905%_))))
                        (_%__match145932145933%_
                         _%e143555143812%_
                         _%hd143556143815%_
                         _%tl143557143817%_
                         _%e143567143844%_
                         _%hd143568143847%_
                         _%tl143569143849%_
                         _%e143570143852%_
                         _%hd143571143855%_
                         _%tl143572143857%_
                         _%e143573143860%_
                         _%hd143574143863%_
                         _%tl143575143865%_
                         _%e143576143868%_
                         _%hd143577143871%_
                         _%tl143578143873%_
                         _%e143579143876%_
                         _%hd143580143879%_
                         _%tl143581143881%_
                         _%e143582143884%_
                         _%hd143583143887%_
                         _%tl143584143889%_
                         _%e143585143892%_
                         _%hd143586143895%_
                         _%tl143587143897%_
                         _%e143588143900%_
                         _%hd143589143903%_
                         _%tl143590143905%_))))
                (let ((_%xarg143599143969%_ (reverse _%xarg143598143942%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl143569143849%_))
                      (let ((_%L143972%_ _%hd143607143932%_)
                            (_%L143973%_ _%xarg143599143969%_)
                            (_%L143974%_ _%hd143589143903%_)
                            (_%L143975%_ _%hd143580143879%_)
                            (_%L143976%_ _%tl143560143822%_)
                            (_%L143977%_ _%arg143566143841%_))
                        (if (and (let ((__tmp147102
                                        (let ((__tmp147103
                                               (lambda (_%g144020144023%_
                                                        _%g144021144025%_)
                                                 (cons _%g144020144023%_
                                                       _%g144021144025%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp147103
                                           '()
                                           _%L143977%_))))
                                   (declare (not safe))
                                   (gx#identifier-list? __tmp147102))
                                 (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L143976%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _%L143975%_
                                    'apply))
                                 (let ((__tmp147106
                                        (length (let ((__tmp147107
                                                       (lambda (_%g144027144030%_
                                                                _%g144028144032%_)
                                                         (cons _%g144027144030%_
                                                               _%g144028144032%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp147107
                                                   '()
                                                   _%L143977%_))))
                                       (__tmp147104
                                        (length (let ((__tmp147105
                                                       (lambda (_%g144034144037%_
                                                                _%g144035144039%_)
                                                         (cons _%g144034144037%_
                                                               _%g144035144039%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp147105
                                                   '()
                                                   _%L143973%_)))))
                                   (declare (not safe))
                                   (##fx= __tmp147106 __tmp147104))
                                 (let ((__tmp147110
                                        (let ((__tmp147111
                                               (lambda (_%g144041144044%_
                                                        _%g144042144046%_)
                                                 (cons _%g144041144044%_
                                                       _%g144042144046%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp147111
                                           '()
                                           _%L143977%_)))
                                       (__tmp147108
                                        (let ((__tmp147109
                                               (lambda (_%g144048144051%_
                                                        _%g144049144053%_)
                                                 (cons _%g144048144051%_
                                                       _%g144049144053%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp147109
                                           '()
                                           _%L143973%_))))
                                   (declare (not safe))
                                   (__andmap2
                                    gx#free-identifier=?
                                    __tmp147110
                                    __tmp147108))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L143976%_
                                    _%L143972%_))
                                 (not (let ((__tmp147115
                                             (lambda (_%g144055144057%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#free-identifier=?
                                                  _%g144055144057%_
                                                  _%L143974%_))))
                                            (__tmp147112
                                             (let ((__tmp147114
                                                    (lambda (_%g144059144062%_
                                                             _%g144060144064%_)
                                                      (cons _%g144059144062%_
                                                            _%g144060144064%_)))
                                                   (__tmp147113
                                                    (cons _%L143976%_ '())))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp147114
                                                __tmp147113
                                                _%L143977%_))))
                                        (declare (not safe))
                                        (__find __tmp147115 __tmp147112))))
                            (_%__kont145827145828%_
                             _%L143972%_
                             _%L143973%_
                             _%L143974%_
                             _%L143975%_
                             _%L143976%_
                             _%L143977%_)
                            (_%__match145932145933%_
                             _%e143555143812%_
                             _%hd143556143815%_
                             _%tl143557143817%_
                             _%e143567143844%_
                             _%hd143568143847%_
                             _%tl143569143849%_
                             _%e143570143852%_
                             _%hd143571143855%_
                             _%tl143572143857%_
                             _%e143573143860%_
                             _%hd143574143863%_
                             _%tl143575143865%_
                             _%e143576143868%_
                             _%hd143577143871%_
                             _%tl143578143873%_
                             _%e143579143876%_
                             _%hd143580143879%_
                             _%tl143581143881%_
                             _%e143582143884%_
                             _%hd143583143887%_
                             _%tl143584143889%_
                             _%e143585143892%_
                             _%hd143586143895%_
                             _%tl143587143897%_
                             _%e143588143900%_
                             _%hd143589143903%_
                             _%tl143590143905%_)))
                      (_%__match145932145933%_
                       _%e143555143812%_
                       _%hd143556143815%_
                       _%tl143557143817%_
                       _%e143567143844%_
                       _%hd143568143847%_
                       _%tl143569143849%_
                       _%e143570143852%_
                       _%hd143571143855%_
                       _%tl143572143857%_
                       _%e143573143860%_
                       _%hd143574143863%_
                       _%tl143575143865%_
                       _%e143576143868%_
                       _%hd143577143871%_
                       _%tl143578143873%_
                       _%e143579143876%_
                       _%hd143580143879%_
                       _%tl143581143881%_
                       _%e143582143884%_
                       _%hd143583143887%_
                       _%tl143584143889%_
                       _%e143585143892%_
                       _%hd143586143895%_
                       _%tl143587143897%_
                       _%e143588143900%_
                       _%hd143589143903%_
                       _%tl143590143905%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop143594143937%_
                                           _%target143591143908%_
                                           '()))
                                        (_%__match145932145933%_
                                         _%e143555143812%_
                                         _%hd143556143815%_
                                         _%tl143557143817%_
                                         _%e143567143844%_
                                         _%hd143568143847%_
                                         _%tl143569143849%_
                                         _%e143570143852%_
                                         _%hd143571143855%_
                                         _%tl143572143857%_
                                         _%e143573143860%_
                                         _%hd143574143863%_
                                         _%tl143575143865%_
                                         _%e143576143868%_
                                         _%hd143577143871%_
                                         _%tl143578143873%_
                                         _%e143579143876%_
                                         _%hd143580143879%_
                                         _%tl143581143881%_
                                         _%e143582143884%_
                                         _%hd143583143887%_
                                         _%tl143584143889%_
                                         _%e143585143892%_
                                         _%hd143586143895%_
                                         _%tl143587143897%_
                                         _%e143588143900%_
                                         _%hd143589143903%_
                                         _%tl143590143905%_))
                                    (_%__match145932145933%_
                                     _%e143555143812%_
                                     _%hd143556143815%_
                                     _%tl143557143817%_
                                     _%e143567143844%_
                                     _%hd143568143847%_
                                     _%tl143569143849%_
                                     _%e143570143852%_
                                     _%hd143571143855%_
                                     _%tl143572143857%_
                                     _%e143573143860%_
                                     _%hd143574143863%_
                                     _%tl143575143865%_
                                     _%e143576143868%_
                                     _%hd143577143871%_
                                     _%tl143578143873%_
                                     _%e143579143876%_
                                     _%hd143580143879%_
                                     _%tl143581143881%_
                                     _%e143582143884%_
                                     _%hd143583143887%_
                                     _%tl143584143889%_
                                     _%e143585143892%_
                                     _%hd143586143895%_
                                     _%tl143587143897%_
                                     _%e143588143900%_
                                     _%hd143589143903%_
                                     _%tl143590143905%_))))
                            (_%__match145932145933%_
                             _%e143555143812%_
                             _%hd143556143815%_
                             _%tl143557143817%_
                             _%e143567143844%_
                             _%hd143568143847%_
                             _%tl143569143849%_
                             _%e143570143852%_
                             _%hd143571143855%_
                             _%tl143572143857%_
                             _%e143573143860%_
                             _%hd143574143863%_
                             _%tl143575143865%_
                             _%e143576143868%_
                             _%hd143577143871%_
                             _%tl143578143873%_
                             _%e143579143876%_
                             _%hd143580143879%_
                             _%tl143581143881%_
                             _%e143582143884%_
                             _%hd143583143887%_
                             _%tl143584143889%_
                             _%e143585143892%_
                             _%hd143586143895%_
                             _%tl143587143897%_
                             _%e143588143900%_
                             _%hd143589143903%_
                             _%tl143590143905%_))
                        (_%__match145932145933%_
                         _%e143555143812%_
                         _%hd143556143815%_
                         _%tl143557143817%_
                         _%e143567143844%_
                         _%hd143568143847%_
                         _%tl143569143849%_
                         _%e143570143852%_
                         _%hd143571143855%_
                         _%tl143572143857%_
                         _%e143573143860%_
                         _%hd143574143863%_
                         _%tl143575143865%_
                         _%e143576143868%_
                         _%hd143577143871%_
                         _%tl143578143873%_
                         _%e143579143876%_
                         _%hd143580143879%_
                         _%tl143581143881%_
                         _%e143582143884%_
                         _%hd143583143887%_
                         _%tl143584143889%_
                         _%e143585143892%_
                         _%hd143586143895%_
                         _%tl143587143897%_
                         _%e143588143900%_
                         _%hd143589143903%_
                         _%tl143590143905%_))
                    (_%__match145932145933%_
                     _%e143555143812%_
                     _%hd143556143815%_
                     _%tl143557143817%_
                     _%e143567143844%_
                     _%hd143568143847%_
                     _%tl143569143849%_
                     _%e143570143852%_
                     _%hd143571143855%_
                     _%tl143572143857%_
                     _%e143573143860%_
                     _%hd143574143863%_
                     _%tl143575143865%_
                     _%e143576143868%_
                     _%hd143577143871%_
                     _%tl143578143873%_
                     _%e143579143876%_
                     _%hd143580143879%_
                     _%tl143581143881%_
                     _%e143582143884%_
                     _%hd143583143887%_
                     _%tl143584143889%_
                     _%e143585143892%_
                     _%hd143586143895%_
                     _%tl143587143897%_
                     _%e143588143900%_
                     _%hd143589143903%_
                     _%tl143590143905%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match145932145933%_
                                                     _%e143555143812%_
                                                     _%hd143556143815%_
                                                     _%tl143557143817%_
                                                     _%e143567143844%_
                                                     _%hd143568143847%_
                                                     _%tl143569143849%_
                                                     _%e143570143852%_
                                                     _%hd143571143855%_
                                                     _%tl143572143857%_
                                                     _%e143573143860%_
                                                     _%hd143574143863%_
                                                     _%tl143575143865%_
                                                     _%e143576143868%_
                                                     _%hd143577143871%_
                                                     _%tl143578143873%_
                                                     _%e143579143876%_
                                                     _%hd143580143879%_
                                                     _%tl143581143881%_
                                                     _%e143582143884%_
                                                     _%hd143583143887%_
                                                     _%tl143584143889%_
                                                     _%e143585143892%_
                                                     _%hd143586143895%_
                                                     _%tl143587143897%_
                                                     _%e143588143900%_
                                                     _%hd143589143903%_
                                                     _%tl143590143905%_))))
                                            (_%__match145932145933%_
                                             _%e143555143812%_
                                             _%hd143556143815%_
                                             _%tl143557143817%_
                                             _%e143567143844%_
                                             _%hd143568143847%_
                                             _%tl143569143849%_
                                             _%e143570143852%_
                                             _%hd143571143855%_
                                             _%tl143572143857%_
                                             _%e143573143860%_
                                             _%hd143574143863%_
                                             _%tl143575143865%_
                                             _%e143576143868%_
                                             _%hd143577143871%_
                                             _%tl143578143873%_
                                             _%e143579143876%_
                                             _%hd143580143879%_
                                             _%tl143581143881%_
                                             _%e143582143884%_
                                             _%hd143583143887%_
                                             _%tl143584143889%_
                                             _%e143585143892%_
                                             _%hd143586143895%_
                                             _%tl143587143897%_
                                             _%e143588143900%_
                                             _%hd143589143903%_
                                             _%tl143590143905%_))))
                                    (_%__match145932145933%_
                                     _%e143555143812%_
                                     _%hd143556143815%_
                                     _%tl143557143817%_
                                     _%e143567143844%_
                                     _%hd143568143847%_
                                     _%tl143569143849%_
                                     _%e143570143852%_
                                     _%hd143571143855%_
                                     _%tl143572143857%_
                                     _%e143573143860%_
                                     _%hd143574143863%_
                                     _%tl143575143865%_
                                     _%e143576143868%_
                                     _%hd143577143871%_
                                     _%tl143578143873%_
                                     _%e143579143876%_
                                     _%hd143580143879%_
                                     _%tl143581143881%_
                                     _%e143582143884%_
                                     _%hd143583143887%_
                                     _%tl143584143889%_
                                     _%e143585143892%_
                                     _%hd143586143895%_
                                     _%tl143587143897%_
                                     _%e143588143900%_
                                     _%hd143589143903%_
                                     _%tl143590143905%_))
                                (_%__match145932145933%_
                                 _%e143555143812%_
                                 _%hd143556143815%_
                                 _%tl143557143817%_
                                 _%e143567143844%_
                                 _%hd143568143847%_
                                 _%tl143569143849%_
                                 _%e143570143852%_
                                 _%hd143571143855%_
                                 _%tl143572143857%_
                                 _%e143573143860%_
                                 _%hd143574143863%_
                                 _%tl143575143865%_
                                 _%e143576143868%_
                                 _%hd143577143871%_
                                 _%tl143578143873%_
                                 _%e143579143876%_
                                 _%hd143580143879%_
                                 _%tl143581143881%_
                                 _%e143582143884%_
                                 _%hd143583143887%_
                                 _%tl143584143889%_
                                 _%e143585143892%_
                                 _%hd143586143895%_
                                 _%tl143587143897%_
                                 _%e143588143900%_
                                 _%hd143589143903%_
                                 _%tl143590143905%_))
                            (_%__kont145835145836%_))))
                    (_%__kont145835145836%_))
                (_%__kont145835145836%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont145835145836%_))))
                                            (_%__kont145835145836%_))))
                                    (_%__kont145835145836%_))
                                (_%__kont145835145836%_))))
                        (_%__kont145835145836%_))
                    (_%__kont145835145836%_))
                (_%__kont145835145836%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont145835145836%_))))
                                        (_%__kont145835145836%_))
                                    (_%__kont145835145836%_))
                                (_%__kont145835145836%_))))
                        (_%__kont145835145836%_))))
                (_%__kont145835145836%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop143561143825%_
                                     _%target143558143820%_
                                     '()))))
                               (_%__match145850145851%_
                                (lambda (_%e143507144072%_
                                         _%hd143508144075%_
                                         _%tl143509144077%_
                                         _%__splice145823145824%_
                                         _%target143510144080%_
                                         _%tl143512144082%_)
                                  (letrec ((_%loop143513144085%_
                                            (lambda (_%hd143511144088%_
                                                     _%arg143517144090%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd143511144088%_))
                                                  (let ((_%e143514144093%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd143511144088%_))))
                                                    (let ((_%lp-tl143516144098%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e143514144093%_)))
                                                          (_%lp-hd143515144096%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e143514144093%_))))
                                                      (_%loop143513144085%_
                                                       _%lp-tl143516144098%_
                                                       (cons _%lp-hd143515144096%_
                                                             _%arg143517144090%_))))
                                                  (let ((_%arg143518144101%_
                                                         (reverse _%arg143517144090%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl143509144077%_))
                                                        (let ((_%e143519144104%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl143509144077%_))))
                  (let ((_%tl143521144109%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e143519144104%_)))
                        (_%hd143520144107%_
                         (let ()
                           (declare (not safe))
                           (##car _%e143519144104%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd143520144107%_))
                        (let ((_%e143522144112%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd143520144107%_))))
                          (let ((_%tl143524144117%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e143522144112%_)))
                                (_%hd143523144115%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e143522144112%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd143523144115%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd143523144115%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl143524144117%_))
                                        (let ((_%e143525144120%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl143524144117%_))))
                                          (let ((_%tl143527144125%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e143525144120%_)))
                                                (_%hd143526144123%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e143525144120%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd143526144123%_))
                                                (let ((_%e143528144128%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd143526144123%_))))
                                                  (let ((_%tl143530144133%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e143528144128%_)))
                                                        (_%hd143529144131%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e143528144128%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd143529144131%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd143529144131%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl143530144133%_))
                        (let ((_%e143531144136%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl143530144133%_))))
                          (let ((_%tl143533144141%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e143531144136%_)))
                                (_%hd143532144139%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e143531144136%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl143533144141%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl143527144125%_))
                                    (let ((_%__splice145825145826%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl143527144125%_
                                              '0))))
                                      (let ((_%tl143536144146%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice145825145826%_
                                                '1)))
                                            (_%target143534144144%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice145825145826%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl143536144146%_))
                                            (letrec ((_%loop143537144149%_
                                                      (lambda (_%hd143535144152%_
                                                               _%xarg143541144154%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd143535144152%_))
                                                            (let ((_%e143538144157%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd143535144152%_))))
                      (let ((_%lp-tl143540144162%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e143538144157%_)))
                            (_%lp-hd143539144160%_
                             (let ()
                               (declare (not safe))
                               (##car _%e143538144157%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd143539144160%_))
                            (let ((_%e143543144165%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd143539144160%_))))
                              (let ((_%tl143545144170%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e143543144165%_)))
                                    (_%hd143544144168%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e143543144165%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd143544144168%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd143544144168%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl143545144170%_))
                                            (let ((_%e143546144173%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl143545144170%_))))
                                              (let ((_%tl143548144178%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e143546144173%_)))
                                                    (_%hd143547144176%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e143546144173%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl143548144178%_))
                                                    (_%loop143537144149%_
                                                     _%lp-tl143540144162%_
                                                     (cons _%hd143547144176%_
                                                           _%xarg143541144154%_))
                                                    (_%__match145862145863%_
                                                     _%e143507144072%_
                                                     _%hd143508144075%_
                                                     _%tl143509144077%_
                                                     _%__splice145823145824%_
                                                     _%target143510144080%_
                                                     _%tl143512144082%_))))
                                            (_%__match145862145863%_
                                             _%e143507144072%_
                                             _%hd143508144075%_
                                             _%tl143509144077%_
                                             _%__splice145823145824%_
                                             _%target143510144080%_
                                             _%tl143512144082%_))
                                        (_%__match145862145863%_
                                         _%e143507144072%_
                                         _%hd143508144075%_
                                         _%tl143509144077%_
                                         _%__splice145823145824%_
                                         _%target143510144080%_
                                         _%tl143512144082%_))
                                    (_%__match145862145863%_
                                     _%e143507144072%_
                                     _%hd143508144075%_
                                     _%tl143509144077%_
                                     _%__splice145823145824%_
                                     _%target143510144080%_
                                     _%tl143512144082%_))))
                            (_%__match145862145863%_
                             _%e143507144072%_
                             _%hd143508144075%_
                             _%tl143509144077%_
                             _%__splice145823145824%_
                             _%target143510144080%_
                             _%tl143512144082%_))))
                    (let ((_%xarg143542144181%_
                           (reverse _%xarg143541144154%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl143521144109%_))
                          (let ((_%L144184%_ _%xarg143542144181%_)
                                (_%L144185%_ _%hd143532144139%_)
                                (_%L144186%_ _%arg143518144101%_))
                            (if (and (let ((__tmp147116
                                            (let ((__tmp147117
                                                   (lambda (_%g144214144217%_
                                                            _%g144215144219%_)
                                                     (cons _%g144214144217%_
                                                           _%g144215144219%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp147117
                                               '()
                                               _%L144186%_))))
                                       (declare (not safe))
                                       (gx#identifier-list? __tmp147116))
                                     (let ((__tmp147120
                                            (length (let ((__tmp147121
                                                           (lambda (_%g144221144224%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g144222144226%_)
                     (cons _%g144221144224%_ _%g144222144226%_))))
              (declare (not safe))
              (__foldr1 __tmp147121 '() _%L144186%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (__tmp147118
                                            (length (let ((__tmp147119
                                                           (lambda (_%g144228144231%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g144229144233%_)
                     (cons _%g144228144231%_ _%g144229144233%_))))
              (declare (not safe))
              (__foldr1 __tmp147119 '() _%L144184%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp147120 __tmp147118))
                                     (let ((__tmp147124
                                            (let ((__tmp147125
                                                   (lambda (_%g144235144238%_
                                                            _%g144236144240%_)
                                                     (cons _%g144235144238%_
                                                           _%g144236144240%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp147125
                                               '()
                                               _%L144186%_)))
                                           (__tmp147122
                                            (let ((__tmp147123
                                                   (lambda (_%g144242144245%_
                                                            _%g144243144247%_)
                                                     (cons _%g144242144245%_
                                                           _%g144243144247%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp147123
                                               '()
                                               _%L144184%_))))
                                       (declare (not safe))
                                       (__andmap2
                                        gx#free-identifier=?
                                        __tmp147124
                                        __tmp147122))
                                     (not (let ((__tmp147128
                                                 (lambda (_%g144249144251%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g144249144251%_
                                                      _%L144185%_))))
                                                (__tmp147126
                                                 (let ((__tmp147127
                                                        (lambda (_%g144253144256%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g144254144258%_)
                  (cons _%g144253144256%_ _%g144254144258%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp147127
                                                    '()
                                                    _%L144186%_))))
                                            (declare (not safe))
                                            (__find __tmp147128 __tmp147126))))
                                (_%__kont145821145822%_
                                 _%L144184%_
                                 _%L144185%_
                                 _%L144186%_)
                                (_%__match145862145863%_
                                 _%e143507144072%_
                                 _%hd143508144075%_
                                 _%tl143509144077%_
                                 _%__splice145823145824%_
                                 _%target143510144080%_
                                 _%tl143512144082%_)))
                          (_%__match145862145863%_
                           _%e143507144072%_
                           _%hd143508144075%_
                           _%tl143509144077%_
                           _%__splice145823145824%_
                           _%target143510144080%_
                           _%tl143512144082%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop143537144149%_
                                               _%target143534144144%_
                                               '()))
                                            (_%__match145862145863%_
                                             _%e143507144072%_
                                             _%hd143508144075%_
                                             _%tl143509144077%_
                                             _%__splice145823145824%_
                                             _%target143510144080%_
                                             _%tl143512144082%_))))
                                    (_%__match145862145863%_
                                     _%e143507144072%_
                                     _%hd143508144075%_
                                     _%tl143509144077%_
                                     _%__splice145823145824%_
                                     _%target143510144080%_
                                     _%tl143512144082%_))
                                (_%__match145862145863%_
                                 _%e143507144072%_
                                 _%hd143508144075%_
                                 _%tl143509144077%_
                                 _%__splice145823145824%_
                                 _%target143510144080%_
                                 _%tl143512144082%_))))
                        (_%__match145862145863%_
                         _%e143507144072%_
                         _%hd143508144075%_
                         _%tl143509144077%_
                         _%__splice145823145824%_
                         _%target143510144080%_
                         _%tl143512144082%_))
                    (_%__match145862145863%_
                     _%e143507144072%_
                     _%hd143508144075%_
                     _%tl143509144077%_
                     _%__splice145823145824%_
                     _%target143510144080%_
                     _%tl143512144082%_))
                (_%__match145862145863%_
                 _%e143507144072%_
                 _%hd143508144075%_
                 _%tl143509144077%_
                 _%__splice145823145824%_
                 _%target143510144080%_
                 _%tl143512144082%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match145862145863%_
                                                 _%e143507144072%_
                                                 _%hd143508144075%_
                                                 _%tl143509144077%_
                                                 _%__splice145823145824%_
                                                 _%target143510144080%_
                                                 _%tl143512144082%_))))
                                        (_%__match145862145863%_
                                         _%e143507144072%_
                                         _%hd143508144075%_
                                         _%tl143509144077%_
                                         _%__splice145823145824%_
                                         _%target143510144080%_
                                         _%tl143512144082%_))
                                    (_%__match145862145863%_
                                     _%e143507144072%_
                                     _%hd143508144075%_
                                     _%tl143509144077%_
                                     _%__splice145823145824%_
                                     _%target143510144080%_
                                     _%tl143512144082%_))
                                (_%__match145862145863%_
                                 _%e143507144072%_
                                 _%hd143508144075%_
                                 _%tl143509144077%_
                                 _%__splice145823145824%_
                                 _%target143510144080%_
                                 _%tl143512144082%_))))
                        (_%__match145862145863%_
                         _%e143507144072%_
                         _%hd143508144075%_
                         _%tl143509144077%_
                         _%__splice145823145824%_
                         _%target143510144080%_
                         _%tl143512144082%_))))
                (_%__match145862145863%_
                 _%e143507144072%_
                 _%hd143508144075%_
                 _%tl143509144077%_
                 _%__splice145823145824%_
                 _%target143510144080%_
                 _%tl143512144082%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop143513144085%_
                                     _%target143510144080%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx145819145820%_))
                              (let ((_%e143507144072%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx145819145820%_))))
                                (let ((_%tl143509144077%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e143507144072%_)))
                                      (_%hd143508144075%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e143507144072%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd143508144075%_))
                                      (let ((_%__splice145823145824%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd143508144075%_
                                                '0))))
                                        (let ((_%tl143512144082%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice145823145824%_
                                                  '1)))
                                              (_%target143510144080%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice145823145824%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl143512144082%_))
                                              (_%__match145850145851%_
                                               _%e143507144072%_
                                               _%hd143508144075%_
                                               _%tl143509144077%_
                                               _%__splice145823145824%_
                                               _%target143510144080%_
                                               _%tl143512144082%_)
                                              (_%__match145862145863%_
                                               _%e143507144072%_
                                               _%hd143508144075%_
                                               _%tl143509144077%_
                                               _%__splice145823145824%_
                                               _%target143510144080%_
                                               _%tl143512144082%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl143509144077%_))
                                          (let ((_%e143622143679%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl143509144077%_))))
                                            (let ((_%tl143624143684%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e143622143679%_)))
                                                  (_%hd143623143682%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e143622143679%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd143623143682%_))
                                                  (let ((_%e143625143687%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd143623143682%_))))
                                                    (let ((_%tl143627143692%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e143625143687%_)))
                                                          (_%hd143626143690%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e143625143687%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd143626143690%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd143626143690%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl143627143692%_))
                          (let ((_%e143628143695%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl143627143692%_))))
                            (let ((_%tl143630143700%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e143628143695%_)))
                                  (_%hd143629143698%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e143628143695%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd143629143698%_))
                                  (let ((_%e143631143703%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd143629143698%_))))
                                    (let ((_%tl143633143708%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e143631143703%_)))
                                          (_%hd143632143706%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e143631143703%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd143632143706%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd143632143706%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl143633143708%_))
                                                  (let ((_%e143634143711%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl143633143708%_))))
                                                    (let ((_%tl143636143716%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e143634143711%_)))
                                                          (_%hd143635143714%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e143634143711%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl143636143716%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl143630143700%_))
                      (let ((_%e143637143719%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl143630143700%_))))
                        (let ((_%tl143639143724%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143637143719%_)))
                              (_%hd143638143722%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143637143719%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd143638143722%_))
                              (let ((_%e143640143727%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd143638143722%_))))
                                (let ((_%tl143642143732%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e143640143727%_)))
                                      (_%hd143641143730%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e143640143727%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd143641143730%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd143641143730%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl143642143732%_))
                                              (let ((_%e143643143735%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl143642143732%_))))
                                                (let ((_%tl143645143740%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e143643143735%_)))
                                                      (_%hd143644143738%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e143643143735%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl143645143740%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl143639143724%_))
                                                          (let ((_%e143646143743%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl143639143724%_))))
                    (let ((_%tl143648143748%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e143646143743%_)))
                          (_%hd143647143746%_
                           (let ()
                             (declare (not safe))
                             (##car _%e143646143743%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd143647143746%_))
                          (let ((_%e143649143751%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd143647143746%_))))
                            (let ((_%tl143651143756%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e143649143751%_)))
                                  (_%hd143650143754%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e143649143751%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd143650143754%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _%hd143650143754%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl143651143756%_))
                                          (let ((_%e143652143759%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl143651143756%_))))
                                            (let ((_%tl143654143764%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e143652143759%_)))
                                                  (_%hd143653143762%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e143652143759%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl143654143764%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl143648143748%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl143624143684%_))
                                                          (_%__match145960145961%_
                                                           _%e143507144072%_
                                                           _%hd143508144075%_
                                                           _%tl143509144077%_
                                                           _%e143622143679%_
                                                           _%hd143623143682%_
                                                           _%tl143624143684%_
                                                           _%e143625143687%_
                                                           _%hd143626143690%_
                                                           _%tl143627143692%_
                                                           _%e143628143695%_
                                                           _%hd143629143698%_
                                                           _%tl143630143700%_
                                                           _%e143631143703%_
                                                           _%hd143632143706%_
                                                           _%tl143633143708%_
                                                           _%e143634143711%_
                                                           _%hd143635143714%_
                                                           _%tl143636143716%_
                                                           _%e143637143719%_
                                                           _%hd143638143722%_
                                                           _%tl143639143724%_
                                                           _%e143640143727%_
                                                           _%hd143641143730%_
                                                           _%tl143642143732%_
                                                           _%e143643143735%_
                                                           _%hd143644143738%_
                                                           _%tl143645143740%_
                                                           _%e143646143743%_
                                                           _%hd143647143746%_
                                                           _%tl143648143748%_
                                                           _%e143649143751%_
                                                           _%hd143650143754%_
                                                           _%tl143651143756%_
                                                           _%e143652143759%_
                                                           _%hd143653143762%_
                                                           _%tl143654143764%_)
                                                          (_%__kont145835145836%_))
                                                      (_%__kont145835145836%_))
                                                  (_%__kont145835145836%_))))
                                          (_%__kont145835145836%_))
                                      (_%__kont145835145836%_))
                                  (_%__kont145835145836%_))))
                          (_%__kont145835145836%_))))
                  (_%__kont145835145836%_))
              (_%__kont145835145836%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont145835145836%_))
                                          (_%__kont145835145836%_))
                                      (_%__kont145835145836%_))))
                              (_%__kont145835145836%_))))
                      (_%__kont145835145836%_))
                  (_%__kont145835145836%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont145835145836%_))
                                              (_%__kont145835145836%_))
                                          (_%__kont145835145836%_))))
                                  (_%__kont145835145836%_))))
                          (_%__kont145835145836%_))
                      (_%__kont145835145836%_))
                  (_%__kont145835145836%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont145835145836%_))))
                                          (_%__kont145835145836%_)))))
                              (_%__kont145835145836%_)))))))
                 (_%dispatch-case-e142807%_
                  (lambda (_%hd142958%_ _%body142959%_)
                    (let* ((_%form142961%_
                            (cons _%hd142958%_ (cons _%body142959%_ '())))
                           (_%__stx145963145964%_ _%form142961%_)
                           (_%g142965143089%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx145963145964%_)))))
                      (let ((_%__kont145965145966%_
                             (lambda (_%L143460%_ _%L143461%_ _%L143462%_)
                               (let ((__tmp147129
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L143461%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self142803%_
                                  __tmp147129))))
                            (_%__kont145971145972%_
                             (lambda (_%L143308%_
                                      _%L143309%_
                                      _%L143310%_
                                      _%L143311%_)
                               (let ((__tmp147130
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L143308%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self142803%_
                                  __tmp147130))))
                            (_%__kont145975145976%_
                             (lambda (_%L143174%_ _%L143175%_ _%L143176%_)
                               (let ((__tmp147131
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L143174%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self142803%_
                                  __tmp147131)))))
                        (let* ((_%__match146072146073%_
                                (lambda (_%e143055143094%_
                                         _%hd143056143097%_
                                         _%tl143057143099%_
                                         _%e143058143102%_
                                         _%hd143059143105%_
                                         _%tl143060143107%_
                                         _%e143061143110%_
                                         _%hd143062143113%_
                                         _%tl143063143115%_
                                         _%e143064143118%_
                                         _%hd143065143121%_
                                         _%tl143066143123%_
                                         _%e143067143126%_
                                         _%hd143068143129%_
                                         _%tl143069143131%_
                                         _%e143070143134%_
                                         _%hd143071143137%_
                                         _%tl143072143139%_
                                         _%e143073143142%_
                                         _%hd143074143145%_
                                         _%tl143075143147%_
                                         _%e143076143150%_
                                         _%hd143077143153%_
                                         _%tl143078143155%_
                                         _%e143079143158%_
                                         _%hd143080143161%_
                                         _%tl143081143163%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl143075143147%_))
                                      (let ((_%e143082143166%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl143075143147%_))))
                                        (let ((_%tl143084143171%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e143082143166%_)))
                                              (_%hd143083143169%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e143082143166%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl143084143171%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl143060143107%_))
                                                  (_%__kont145975145976%_
                                                   _%hd143080143161%_
                                                   _%hd143071143137%_
                                                   _%hd143056143097%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g142965143089%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g142965143089%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g142965143089%_)))))
                               (_%__match146002146003%_
                                (lambda (_%e143016143212%_
                                         _%hd143017143215%_
                                         _%tl143018143217%_
                                         _%__splice145973145974%_
                                         _%target143019143220%_
                                         _%tl143021143222%_)
                                  (letrec ((_%loop143022143225%_
                                            (lambda (_%hd143020143228%_
                                                     _%arg143026143230%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd143020143228%_))
                                                  (let ((_%e143023143233%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd143020143228%_))))
                                                    (let ((_%lp-tl143025143238%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e143023143233%_)))
                                                          (_%lp-hd143024143236%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e143023143233%_))))
                                                      (_%loop143022143225%_
                                                       _%lp-tl143025143238%_
                                                       (cons _%lp-hd143024143236%_
                                                             _%arg143026143230%_))))
                                                  (let ((_%arg143027143241%_
                                                         (reverse _%arg143026143230%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl143018143217%_))
                                                        (let ((_%e143028143244%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl143018143217%_))))
                  (let ((_%tl143030143249%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e143028143244%_)))
                        (_%hd143029143247%_
                         (let ()
                           (declare (not safe))
                           (##car _%e143028143244%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd143029143247%_))
                        (let ((_%e143031143252%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd143029143247%_))))
                          (let ((_%tl143033143257%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e143031143252%_)))
                                (_%hd143032143255%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e143031143252%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd143032143255%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd143032143255%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl143033143257%_))
                                        (let ((_%e143034143260%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl143033143257%_))))
                                          (let ((_%tl143036143265%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e143034143260%_)))
                                                (_%hd143035143263%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e143034143260%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd143035143263%_))
                                                (let ((_%e143037143268%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd143035143263%_))))
                                                  (let ((_%tl143039143273%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e143037143268%_)))
                                                        (_%hd143038143271%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e143037143268%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd143038143271%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd143038143271%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl143039143273%_))
                        (let ((_%e143040143276%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl143039143273%_))))
                          (let ((_%tl143042143281%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e143040143276%_)))
                                (_%hd143041143279%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e143040143276%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl143042143281%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl143036143265%_))
                                    (let ((_%e143043143284%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl143036143265%_))))
                                      (let ((_%tl143045143289%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e143043143284%_)))
                                            (_%hd143044143287%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e143043143284%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd143044143287%_))
                                            (let ((_%e143046143292%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd143044143287%_))))
                                              (let ((_%tl143048143297%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e143046143292%_)))
                                                    (_%hd143047143295%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e143046143292%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd143047143295%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd143047143295%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl143048143297%_))
                                                            (let ((_%e143049143300%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl143048143297%_))))
                      (let ((_%tl143051143305%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e143049143300%_)))
                            (_%hd143050143303%_
                             (let ()
                               (declare (not safe))
                               (##car _%e143049143300%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl143051143305%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl143030143249%_))
                                (_%__kont145971145972%_
                                 _%hd143050143303%_
                                 _%hd143041143279%_
                                 _%tl143021143222%_
                                 _%arg143027143241%_)
                                (_%__match146072146073%_
                                 _%e143016143212%_
                                 _%hd143017143215%_
                                 _%tl143018143217%_
                                 _%e143028143244%_
                                 _%hd143029143247%_
                                 _%tl143030143249%_
                                 _%e143031143252%_
                                 _%hd143032143255%_
                                 _%tl143033143257%_
                                 _%e143034143260%_
                                 _%hd143035143263%_
                                 _%tl143036143265%_
                                 _%e143037143268%_
                                 _%hd143038143271%_
                                 _%tl143039143273%_
                                 _%e143040143276%_
                                 _%hd143041143279%_
                                 _%tl143042143281%_
                                 _%e143043143284%_
                                 _%hd143044143287%_
                                 _%tl143045143289%_
                                 _%e143046143292%_
                                 _%hd143047143295%_
                                 _%tl143048143297%_
                                 _%e143049143300%_
                                 _%hd143050143303%_
                                 _%tl143051143305%_))
                            (let ()
                              (declare (not safe))
                              (_%g142965143089%_)))))
                    (let () (declare (not safe)) (_%g142965143089%_)))
                (let () (declare (not safe)) (_%g142965143089%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g142965143089%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g142965143089%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g142965143089%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g142965143089%_)))))
                        (let () (declare (not safe)) (_%g142965143089%_)))
                    (let () (declare (not safe)) (_%g142965143089%_)))
                (let () (declare (not safe)) (_%g142965143089%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g142965143089%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g142965143089%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g142965143089%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g142965143089%_)))))
                        (let () (declare (not safe)) (_%g142965143089%_)))))
                (let () (declare (not safe)) (_%g142965143089%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop143022143225%_
                                     _%target143019143220%_
                                     '()))))
                               (_%__match145990145991%_
                                (lambda (_%e142970143348%_
                                         _%hd142971143351%_
                                         _%tl142972143353%_
                                         _%__splice145967145968%_
                                         _%target142973143356%_
                                         _%tl142975143358%_)
                                  (letrec ((_%loop142976143361%_
                                            (lambda (_%hd142974143364%_
                                                     _%arg142980143366%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd142974143364%_))
                                                  (let ((_%e142977143369%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd142974143364%_))))
                                                    (let ((_%lp-tl142979143374%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e142977143369%_)))
                                                          (_%lp-hd142978143372%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e142977143369%_))))
                                                      (_%loop142976143361%_
                                                       _%lp-tl142979143374%_
                                                       (cons _%lp-hd142978143372%_
                                                             _%arg142980143366%_))))
                                                  (let ((_%arg142981143377%_
                                                         (reverse _%arg142980143366%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl142972143353%_))
                                                        (let ((_%e142982143380%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl142972143353%_))))
                  (let ((_%tl142984143385%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e142982143380%_)))
                        (_%hd142983143383%_
                         (let ()
                           (declare (not safe))
                           (##car _%e142982143380%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd142983143383%_))
                        (let ((_%e142985143388%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd142983143383%_))))
                          (let ((_%tl142987143393%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e142985143388%_)))
                                (_%hd142986143391%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e142985143388%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd142986143391%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd142986143391%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl142987143393%_))
                                        (let ((_%e142988143396%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl142987143393%_))))
                                          (let ((_%tl142990143401%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e142988143396%_)))
                                                (_%hd142989143399%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e142988143396%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd142989143399%_))
                                                (let ((_%e142991143404%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd142989143399%_))))
                                                  (let ((_%tl142993143409%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e142991143404%_)))
                                                        (_%hd142992143407%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e142991143404%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd142992143407%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd142992143407%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl142993143409%_))
                        (let ((_%e142994143412%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl142993143409%_))))
                          (let ((_%tl142996143417%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e142994143412%_)))
                                (_%hd142995143415%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e142994143412%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl142996143417%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl142990143401%_))
                                    (let ((_%__splice145969145970%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _%tl142990143401%_
                                              '0))))
                                      (let ((_%tl142999143422%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice145969145970%_
                                                '1)))
                                            (_%target142997143420%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice145969145970%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl142999143422%_))
                                            (letrec ((_%loop143000143425%_
                                                      (lambda (_%hd142998143428%_
                                                               _%xarg143004143430%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd142998143428%_))
                                                            (let ((_%e143001143433%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd142998143428%_))))
                      (let ((_%lp-tl143003143438%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e143001143433%_)))
                            (_%lp-hd143002143436%_
                             (let ()
                               (declare (not safe))
                               (##car _%e143001143433%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd143002143436%_))
                            (let ((_%e143006143441%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd143002143436%_))))
                              (let ((_%tl143008143446%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e143006143441%_)))
                                    (_%hd143007143444%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e143006143441%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd143007143444%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd143007143444%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl143008143446%_))
                                            (let ((_%e143009143449%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl143008143446%_))))
                                              (let ((_%tl143011143454%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e143009143449%_)))
                                                    (_%hd143010143452%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e143009143449%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl143011143454%_))
                                                    (_%loop143000143425%_
                                                     _%lp-tl143003143438%_
                                                     (cons _%hd143010143452%_
                                                           _%xarg143004143430%_))
                                                    (_%__match146002146003%_
                                                     _%e142970143348%_
                                                     _%hd142971143351%_
                                                     _%tl142972143353%_
                                                     _%__splice145967145968%_
                                                     _%target142973143356%_
                                                     _%tl142975143358%_))))
                                            (_%__match146002146003%_
                                             _%e142970143348%_
                                             _%hd142971143351%_
                                             _%tl142972143353%_
                                             _%__splice145967145968%_
                                             _%target142973143356%_
                                             _%tl142975143358%_))
                                        (_%__match146002146003%_
                                         _%e142970143348%_
                                         _%hd142971143351%_
                                         _%tl142972143353%_
                                         _%__splice145967145968%_
                                         _%target142973143356%_
                                         _%tl142975143358%_))
                                    (_%__match146002146003%_
                                     _%e142970143348%_
                                     _%hd142971143351%_
                                     _%tl142972143353%_
                                     _%__splice145967145968%_
                                     _%target142973143356%_
                                     _%tl142975143358%_))))
                            (_%__match146002146003%_
                             _%e142970143348%_
                             _%hd142971143351%_
                             _%tl142972143353%_
                             _%__splice145967145968%_
                             _%target142973143356%_
                             _%tl142975143358%_))))
                    (let ((_%xarg143005143457%_
                           (reverse _%xarg143004143430%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl142984143385%_))
                          (_%__kont145965145966%_
                           _%xarg143005143457%_
                           _%hd142995143415%_
                           _%arg142981143377%_)
                          (_%__match146002146003%_
                           _%e142970143348%_
                           _%hd142971143351%_
                           _%tl142972143353%_
                           _%__splice145967145968%_
                           _%target142973143356%_
                           _%tl142975143358%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop143000143425%_
                                               _%target142997143420%_
                                               '()))
                                            (_%__match146002146003%_
                                             _%e142970143348%_
                                             _%hd142971143351%_
                                             _%tl142972143353%_
                                             _%__splice145967145968%_
                                             _%target142973143356%_
                                             _%tl142975143358%_))))
                                    (_%__match146002146003%_
                                     _%e142970143348%_
                                     _%hd142971143351%_
                                     _%tl142972143353%_
                                     _%__splice145967145968%_
                                     _%target142973143356%_
                                     _%tl142975143358%_))
                                (_%__match146002146003%_
                                 _%e142970143348%_
                                 _%hd142971143351%_
                                 _%tl142972143353%_
                                 _%__splice145967145968%_
                                 _%target142973143356%_
                                 _%tl142975143358%_))))
                        (_%__match146002146003%_
                         _%e142970143348%_
                         _%hd142971143351%_
                         _%tl142972143353%_
                         _%__splice145967145968%_
                         _%target142973143356%_
                         _%tl142975143358%_))
                    (_%__match146002146003%_
                     _%e142970143348%_
                     _%hd142971143351%_
                     _%tl142972143353%_
                     _%__splice145967145968%_
                     _%target142973143356%_
                     _%tl142975143358%_))
                (_%__match146002146003%_
                 _%e142970143348%_
                 _%hd142971143351%_
                 _%tl142972143353%_
                 _%__splice145967145968%_
                 _%target142973143356%_
                 _%tl142975143358%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match146002146003%_
                                                 _%e142970143348%_
                                                 _%hd142971143351%_
                                                 _%tl142972143353%_
                                                 _%__splice145967145968%_
                                                 _%target142973143356%_
                                                 _%tl142975143358%_))))
                                        (_%__match146002146003%_
                                         _%e142970143348%_
                                         _%hd142971143351%_
                                         _%tl142972143353%_
                                         _%__splice145967145968%_
                                         _%target142973143356%_
                                         _%tl142975143358%_))
                                    (_%__match146002146003%_
                                     _%e142970143348%_
                                     _%hd142971143351%_
                                     _%tl142972143353%_
                                     _%__splice145967145968%_
                                     _%target142973143356%_
                                     _%tl142975143358%_))
                                (_%__match146002146003%_
                                 _%e142970143348%_
                                 _%hd142971143351%_
                                 _%tl142972143353%_
                                 _%__splice145967145968%_
                                 _%target142973143356%_
                                 _%tl142975143358%_))))
                        (_%__match146002146003%_
                         _%e142970143348%_
                         _%hd142971143351%_
                         _%tl142972143353%_
                         _%__splice145967145968%_
                         _%target142973143356%_
                         _%tl142975143358%_))))
                (_%__match146002146003%_
                 _%e142970143348%_
                 _%hd142971143351%_
                 _%tl142972143353%_
                 _%__splice145967145968%_
                 _%target142973143356%_
                 _%tl142975143358%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop142976143361%_
                                     _%target142973143356%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx145963145964%_))
                              (let ((_%e142970143348%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx145963145964%_))))
                                (let ((_%tl142972143353%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142970143348%_)))
                                      (_%hd142971143351%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142970143348%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd142971143351%_))
                                      (let ((_%__splice145967145968%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%hd142971143351%_
                                                '0))))
                                        (let ((_%tl142975143358%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice145967145968%_
                                                  '1)))
                                              (_%target142973143356%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice145967145968%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl142975143358%_))
                                              (_%__match145990145991%_
                                               _%e142970143348%_
                                               _%hd142971143351%_
                                               _%tl142972143353%_
                                               _%__splice145967145968%_
                                               _%target142973143356%_
                                               _%tl142975143358%_)
                                              (_%__match146002146003%_
                                               _%e142970143348%_
                                               _%hd142971143351%_
                                               _%tl142972143353%_
                                               _%__splice145967145968%_
                                               _%target142973143356%_
                                               _%tl142975143358%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl142972143353%_))
                                          (let ((_%e143058143102%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl142972143353%_))))
                                            (let ((_%tl143060143107%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e143058143102%_)))
                                                  (_%hd143059143105%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e143058143102%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd143059143105%_))
                                                  (let ((_%e143061143110%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd143059143105%_))))
                                                    (let ((_%tl143063143115%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e143061143110%_)))
                                                          (_%hd143062143113%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e143061143110%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd143062143113%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd143062143113%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl143063143115%_))
                          (let ((_%e143064143118%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl143063143115%_))))
                            (let ((_%tl143066143123%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e143064143118%_)))
                                  (_%hd143065143121%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e143064143118%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd143065143121%_))
                                  (let ((_%e143067143126%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd143065143121%_))))
                                    (let ((_%tl143069143131%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e143067143126%_)))
                                          (_%hd143068143129%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e143067143126%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd143068143129%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd143068143129%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl143069143131%_))
                                                  (let ((_%e143070143134%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl143069143131%_))))
                                                    (let ((_%tl143072143139%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e143070143134%_)))
                                                          (_%hd143071143137%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e143070143134%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl143072143139%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl143066143123%_))
                      (let ((_%e143073143142%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl143066143123%_))))
                        (let ((_%tl143075143147%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e143073143142%_)))
                              (_%hd143074143145%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e143073143142%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd143074143145%_))
                              (let ((_%e143076143150%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd143074143145%_))))
                                (let ((_%tl143078143155%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e143076143150%_)))
                                      (_%hd143077143153%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e143076143150%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd143077143153%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd143077143153%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl143078143155%_))
                                              (let ((_%e143079143158%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl143078143155%_))))
                                                (let ((_%tl143081143163%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e143079143158%_)))
                                                      (_%hd143080143161%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e143079143158%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl143081143163%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl143075143147%_))
                                                          (let ((_%e143082143166%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl143075143147%_))))
                    (let ((_%tl143084143171%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e143082143166%_)))
                          (_%hd143083143169%_
                           (let ()
                             (declare (not safe))
                             (##car _%e143082143166%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl143084143171%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl143060143107%_))
                              (_%__kont145975145976%_
                               _%hd143080143161%_
                               _%hd143071143137%_
                               _%hd142971143351%_)
                              (let ()
                                (declare (not safe))
                                (_%g142965143089%_)))
                          (let () (declare (not safe)) (_%g142965143089%_)))))
                  (let () (declare (not safe)) (_%g142965143089%_)))
              (let () (declare (not safe)) (_%g142965143089%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g142965143089%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g142965143089%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g142965143089%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g142965143089%_)))))
                      (let () (declare (not safe)) (_%g142965143089%_)))
                  (let () (declare (not safe)) (_%g142965143089%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g142965143089%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g142965143089%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g142965143089%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g142965143089%_)))))
                          (let () (declare (not safe)) (_%g142965143089%_)))
                      (let () (declare (not safe)) (_%g142965143089%_)))
                  (let () (declare (not safe)) (_%g142965143089%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g142965143089%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g142965143089%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g142965143089%_))))))))
                 (_%generate1142808%_
                  (lambda (_%args142943%_
                           _%arglen142944%_
                           _%hd142945%_
                           _%body142946%_)
                    (let* ((_%len142948%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-length _%hd142945%_)))
                           (_%condition142953%_
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _%hd142945%_))
                                (if (gxc#current-compile-decls-unsafe?)
                                    (cons '##fx=
                                          (cons _%arglen142944%_
                                                (cons _%len142948%_ '())))
                                    (cons 'let
                                          (cons '()
                                                (cons '(declare (not safe))
                                                      (cons (cons '##fx=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%arglen142944%_ (cons _%len142948%_ '())))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (if (> _%len142948%_ '0)
                                    (if (gxc#current-compile-decls-unsafe?)
                                        (cons '##fx>=
                                              (cons _%arglen142944%_
                                                    (cons _%len142948%_ '())))
                                        (cons 'let
                                              (cons '()
                                                    (cons '(declare (not safe))
                                                          (cons (cons '##fx>=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%arglen142944%_ (cons _%len142948%_ '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '#t)))
                           (_%dispatch142955%_
                            (if (_%dispatch-case?142806%_
                                 _%hd142945%_
                                 _%body142946%_)
                                (_%dispatch-case-e142807%_
                                 _%hd142945%_
                                 _%body142946%_)
                                (gxc#generate-runtime-lambda-form
                                 _%self142803%_
                                 _%hd142945%_
                                 _%body142946%_))))
                      (cons _%condition142953%_
                            (cons (cons 'apply
                                        (cons _%dispatch142955%_
                                              (cons _%args142943%_ '())))
                                  '()))))))
          (let* ((_%g142810142838%_
                  (lambda (_%g142811142835%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g142811142835%_))))
                 (_%g142809142940%_
                  (lambda (_%g142811142841%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g142811142841%_))
                        (let ((_%e142814142843%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g142811142841%_))))
                          (let ((_%hd142815142846%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e142814142843%_)))
                                (_%tl142816142848%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e142814142843%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl142816142848%_))
                                (let ((_g147132_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl142816142848%_
                                          '0))))
                                  (begin
                                    (let ((_g147133_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g147132_)
                                                 (##vector-length _g147132_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g147133_ 2)))
                                          (error "Context expects 2 values"
                                                 _g147133_)))
                                    (let ((_%target142817142851%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g147132_ 0)))
                                          (_%tl142819142853%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g147132_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl142819142853%_))
                                          (letrec ((_%loop142820142856%_
                                                    (lambda (_%hd142818142859%_
                                                             _%body142824142861%_
                                                             _%hd142825142863%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd142818142859%_))
                                                          (let ((_%e142821142866%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd142818142859%_))))
                    (let ((_%lp-hd142822142869%_
                           (let ()
                             (declare (not safe))
                             (##car _%e142821142866%_)))
                          (_%lp-tl142823142871%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e142821142866%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd142822142869%_))
                          (let ((_%e142828142874%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd142822142869%_))))
                            (let ((_%hd142829142877%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e142828142874%_)))
                                  (_%tl142830142879%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e142828142874%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl142830142879%_))
                                  (let ((_%e142831142882%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl142830142879%_))))
                                    (let ((_%hd142832142885%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e142831142882%_)))
                                          (_%tl142833142887%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e142831142882%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl142833142887%_))
                                          (_%loop142820142856%_
                                           _%lp-tl142823142871%_
                                           (cons _%hd142832142885%_
                                                 _%body142824142861%_)
                                           (cons _%hd142829142877%_
                                                 _%hd142825142863%_))
                                          (_%g142810142838%_
                                           _%g142811142841%_))))
                                  (_%g142810142838%_ _%g142811142841%_))))
                          (_%g142810142838%_ _%g142811142841%_))))
                  (let ((_%body142826142890%_ (reverse _%body142824142861%_))
                        (_%hd142827142892%_ (reverse _%hd142825142863%_)))
                    ((lambda (_%L142895%_ _%L142896%_)
                       (let ((_%args142915%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%arglen142916%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%name142917%_
                              (let ((_%$e142912%_
                                     (let ((__tmp147134
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-runtime-names))))
                                       (declare (not safe))
                                       (hash-get __tmp147134 _%stx142804%_))))
                                (if _%$e142912%_
                                    _%$e142912%_
                                    ''case-lambda-dispatch))))
                         (cons 'lambda
                               (cons _%args142915%_
                                     (cons (cons 'let
                                                 (cons (cons (cons _%arglen142916%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (gxc#current-compile-decls-unsafe?)
                                     (cons '##length (cons _%args142915%_ '()))
                                     (cons 'let
                                           (cons '()
                                                 (cons '(declare (not safe))
                                                       (cons (cons '##length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%args142915%_ '()))
                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 '()))
                     '())
               (cons (cons 'cond
                           (let ((__tmp147138
                                  (cons (cons 'else
                                              (cons (cons '##raise-wrong-number-of-arguments-exception
                                                          (cons _%name142917%_
                                                                (cons _%args142915%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '()))
                                 (__tmp147135
                                  (map (lambda (_%g142918142921%_
                                                _%g142919142923%_)
                                         (_%generate1142808%_
                                          _%args142915%_
                                          _%arglen142916%_
                                          _%g142918142921%_
                                          _%g142919142923%_))
                                       (let ((__tmp147136
                                              (lambda (_%g142925142928%_
                                                       _%g142926142930%_)
                                                (cons _%g142925142928%_
                                                      _%g142926142930%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp147136
                                          '()
                                          _%L142896%_))
                                       (let ((__tmp147137
                                              (lambda (_%g142932142935%_
                                                       _%g142933142937%_)
                                                (cons _%g142932142935%_
                                                      _%g142933142937%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp147137
                                          '()
                                          _%L142895%_)))))
                             (declare (not safe))
                             (__foldr1 cons __tmp147138 __tmp147135)))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))
                     _%body142826142890%_
                     _%hd142827142892%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop142820142856%_
                                             _%target142817142851%_
                                             '()
                                             '()))
                                          (_%g142810142838%_
                                           _%g142811142841%_)))))
                                (_%g142810142838%_ _%g142811142841%_))))
                        (_%g142810142838%_ _%g142811142841%_)))))
            (_%g142809142940%_ _%stx142804%_)))))
    (define gxc#generate-runtime-let-values%__%
      (lambda (_%self142040%_ _%stx142041%_ _%compiled-body?142042%_)
        (letrec ((_%generate-simple142044%_
                  (lambda (_%hd142788%_ _%body142789%_)
                    (_%coalesce-boolean142045%_
                     (_%simplify-let142046%_
                      (gxc#generate-runtime-simple-let
                       _%self142040%_
                       'let
                       _%hd142788%_
                       _%body142789%_
                       _%compiled-body?142042%_)))))
                 (_%coalesce-boolean142045%_
                  (lambda (_%code142649%_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-boolean-context))
                        (let* ((_%code142650142676%_ _%code142649%_)
                               (_%else142652142684%_
                                (lambda () _%code142649%_))
                               (_%K142654142721%_
                                (lambda (_%expr2142687%_
                                         _%expr1142688%_
                                         _%id142689%_)
                                  (let* ((_%expr2142690142698%_
                                          _%expr2142687%_)
                                         (_%else142692142706%_
                                          (lambda ()
                                            (cons 'or
                                                  (cons _%expr1142688%_
                                                        (cons _%expr2142687%_
                                                              '())))))
                                         (_%K142694142711%_
                                          (lambda (_%exprs142709%_)
                                            (cons 'or
                                                  (cons _%expr1142688%_
                                                        _%exprs142709%_)))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%expr2142690142698%_))
                                        (let ((_%hd142695142714%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%expr2142690142698%_)))
                                              (_%tl142696142716%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%expr2142690142698%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd142695142714%_ 'or))
                                              (let ((_%exprs142719%_
                                                     _%tl142696142716%_))
                                                (_%K142694142711%_
                                                 _%exprs142719%_))
                                              (_%else142692142706%_)))
                                        (_%else142692142706%_))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%code142650142676%_))
                              (let ((_%hd142655142724%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%code142650142676%_)))
                                    (_%tl142656142726%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%code142650142676%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%hd142655142724%_ 'let))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%tl142656142726%_))
                                        (let ((_%hd142657142729%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%tl142656142726%_)))
                                              (_%tl142658142731%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%tl142656142726%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _%hd142657142729%_))
                                              (let ((_%hd142669142734%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%hd142657142729%_)))
                                                    (_%tl142670142736%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%hd142657142729%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _%hd142669142734%_))
                                                    (let ((_%hd142671142739%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%hd142669142734%_)))
                                                          (_%tl142672142741%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%hd142669142734%_))))
                                                      (let ((_%id142744%_
                                                             _%hd142671142739%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##pair? _%tl142672142741%_))
                                                            (let ((_%hd142673142746%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##car _%tl142672142741%_)))
                          (_%tl142674142748%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl142672142741%_))))
                      (let ((_%expr1142751%_ _%hd142673142746%_))
                        (if (let ()
                              (declare (not safe))
                              (##null? _%tl142674142748%_))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _%tl142670142736%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%tl142658142731%_))
                                    (let ((_%hd142659142753%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl142658142731%_)))
                                          (_%tl142660142755%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl142658142731%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%hd142659142753%_))
                                          (let ((_%hd142661142758%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd142659142753%_)))
                                                (_%tl142662142760%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd142659142753%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd142661142758%_
                                                         'if))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _%tl142662142760%_))
                                                    (let ((_%hd142663142763%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl142662142760%_)))
                                                          (_%tl142664142765%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl142662142760%_))))
                                                      (if ((lambda (_%g142767142769%_)
                                                             (eq? _%g142767142769%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id142744%_))
                   _%hd142663142763%_)
                  (if (let ()
                        (declare (not safe))
                        (##pair? _%tl142664142765%_))
                      (let ((_%hd142665142772%_
                             (let ()
                               (declare (not safe))
                               (##car _%tl142664142765%_)))
                            (_%tl142666142774%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%tl142664142765%_))))
                        (if ((lambda (_%g142776142778%_)
                               (eq? _%g142776142778%_ _%id142744%_))
                             _%hd142665142772%_)
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl142666142774%_))
                                (let ((_%hd142667142781%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl142666142774%_)))
                                      (_%tl142668142783%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl142666142774%_))))
                                  (let ((_%expr2142786%_ _%hd142667142781%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _%tl142668142783%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##null? _%tl142660142755%_))
                                            (_%K142654142721%_
                                             _%expr2142786%_
                                             _%expr1142751%_
                                             _%id142744%_)
                                            (_%else142652142684%_))
                                        (_%else142652142684%_))))
                                (_%else142652142684%_))
                            (_%else142652142684%_)))
                      (_%else142652142684%_))
                  (_%else142652142684%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else142652142684%_))
                                                (_%else142652142684%_)))
                                          (_%else142652142684%_)))
                                    (_%else142652142684%_))
                                (_%else142652142684%_))
                            (_%else142652142684%_))))
                    (_%else142652142684%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else142652142684%_)))
                                              (_%else142652142684%_)))
                                        (_%else142652142684%_))
                                    (_%else142652142684%_)))
                              (_%else142652142684%_)))
                        _%code142649%_)))
                 (_%simplify-let142046%_
                  (lambda (_%code142348%_)
                    (let* ((_%code142349142421%_ _%code142348%_)
                           (_%else142354142429%_ (lambda () _%code142348%_)))
                      (let ((_%K142413142629%_
                             (lambda (_%expr142627%_) _%expr142627%_))
                            (_%K142396142575%_
                             (lambda (_%body142571%_
                                      _%expr142572%_
                                      _%id142573%_)
                               (cons 'let
                                     (cons (cons (cons _%id142573%_
                                                       (cons _%expr142572%_
                                                             '()))
                                                 '())
                                           _%body142571%_))))
                            (_%K142373142499%_
                             (lambda (_%body142493%_
                                      _%expr2142494%_
                                      _%id2142495%_
                                      _%expr1142496%_
                                      _%id1142497%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1142497%_
                                                       (cons _%expr1142496%_
                                                             '()))
                                                 (cons (cons _%id2142495%_
                                                             (cons _%expr2142494%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body142493%_))))
                            (_%K142356142438%_
                             (lambda (_%body142433%_
                                      _%bind142434%_
                                      _%expr1142435%_
                                      _%id1142436%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1142436%_
                                                       (cons _%expr1142435%_
                                                             '()))
                                                 _%bind142434%_)
                                           _%body142433%_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%code142349142421%_))
                            (let ((_%tl142415142634%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%code142349142421%_)))
                                  (_%hd142414142632%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%code142349142421%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd142414142632%_ 'let))
                                  (if (let ()
                                        (declare (not safe))
                                        (##pair? _%tl142415142634%_))
                                      (let ((_%tl142417142639%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%tl142415142634%_)))
                                            (_%hd142416142637%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%tl142415142634%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (##null? _%hd142416142637%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%tl142417142639%_))
                                                (let ((_%tl142419142644%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%tl142417142639%_)))
                                                      (_%hd142418142642%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%tl142417142639%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##null? _%tl142419142644%_))
                                                      (let ((_%expr142647%_
                                                             _%hd142418142642%_))
                                                        (_%K142413142629%_
                                                         _%expr142647%_))
                                                      (_%else142354142429%_)))
                                                (_%else142354142429%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%hd142416142637%_))
                                                (let ((_%tl142408142590%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd142416142637%_)))
                                                      (_%hd142407142588%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd142416142637%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _%hd142407142588%_))
                                                      (let ((_%tl142410142595%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%hd142407142588%_)))
                    (_%hd142409142593%_
                     (let () (declare (not safe)) (##car _%hd142407142588%_))))
                (if (let () (declare (not safe)) (##pair? _%tl142410142595%_))
                    (let ((_%tl142412142602%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl142410142595%_)))
                          (_%hd142411142600%_
                           (let ()
                             (declare (not safe))
                             (##car _%tl142410142595%_))))
                      (if (let ()
                            (declare (not safe))
                            (##null? _%tl142412142602%_))
                          (if (let ()
                                (declare (not safe))
                                (##null? _%tl142408142590%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##pair? _%tl142417142639%_))
                                  (let ((_%tl142402142609%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl142417142639%_)))
                                        (_%hd142401142607%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl142417142639%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (##pair? _%hd142401142607%_))
                                        (let ((_%tl142404142614%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%hd142401142607%_)))
                                              (_%hd142403142612%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%hd142401142607%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd142403142612%_
                                                       'let))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##pair? _%tl142404142614%_))
                                                  (let ((_%tl142406142619%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl142404142614%_)))
                                                        (_%hd142405142617%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl142404142614%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##null? _%hd142405142617%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##null? _%tl142402142609%_))
                                                            (let ((_%id142598%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%hd142409142593%_)
                          (_%expr142605%_ _%hd142411142600%_)
                          (_%body142622%_ _%tl142406142619%_))
                      (_%K142396142575%_
                       _%body142622%_
                       _%expr142605%_
                       _%id142598%_))
                    (_%else142354142429%_))
                (if (let () (declare (not safe)) (##pair? _%hd142405142617%_))
                    (let ((_%tl142385142548%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%hd142405142617%_)))
                          (_%hd142384142546%_
                           (let ()
                             (declare (not safe))
                             (##car _%hd142405142617%_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%hd142384142546%_))
                          (let ((_%tl142387142553%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd142384142546%_)))
                                (_%hd142386142551%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd142384142546%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%tl142387142553%_))
                                (let ((_%tl142389142560%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl142387142553%_)))
                                      (_%hd142388142558%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl142387142553%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _%tl142389142560%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl142385142548%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (##null? _%tl142402142609%_))
                                              (let ((_%id1142522%_
                                                     _%hd142409142593%_)
                                                    (_%expr1142529%_
                                                     _%hd142411142600%_)
                                                    (_%id2142556%_
                                                     _%hd142386142551%_)
                                                    (_%expr2142563%_
                                                     _%hd142388142558%_)
                                                    (_%body142565%_
                                                     _%tl142406142619%_))
                                                (_%K142373142499%_
                                                 _%body142565%_
                                                 _%expr2142563%_
                                                 _%id2142556%_
                                                 _%expr1142529%_
                                                 _%id1142522%_))
                                              (_%else142354142429%_))
                                          (_%else142354142429%_))
                                      (_%else142354142429%_)))
                                (_%else142354142429%_)))
                          (_%else142354142429%_)))
                    (_%else142354142429%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else142354142429%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##eq? _%hd142403142612%_
                                                           'let*))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##pair? _%tl142404142614%_))
                                                      (let ((_%tl142366142482%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%tl142404142614%_)))
                    (_%hd142365142480%_
                     (let () (declare (not safe)) (##car _%tl142404142614%_))))
                (if (let () (declare (not safe)) (##null? _%tl142402142609%_))
                    (let ((_%id1142461%_ _%hd142409142593%_)
                          (_%expr1142468%_ _%hd142411142600%_)
                          (_%bind142485%_ _%hd142365142480%_)
                          (_%body142487%_ _%tl142366142482%_))
                      (_%K142356142438%_
                       _%body142487%_
                       _%bind142485%_
                       _%expr1142468%_
                       _%id1142461%_))
                    (_%else142354142429%_)))
              (_%else142354142429%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else142354142429%_))))
                                        (_%else142354142429%_)))
                                  (_%else142354142429%_))
                              (_%else142354142429%_))
                          (_%else142354142429%_)))
                    (_%else142354142429%_)))
              (_%else142354142429%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else142354142429%_))))
                                      (_%else142354142429%_))
                                  (_%else142354142429%_)))
                            (_%else142354142429%_))))))
                 (_%generate-values142047%_
                  (lambda (_%hd142161%_ _%body142162%_)
                    (let _%lp142164%_ ((_%rest142166%_ _%hd142161%_)
                                       (_%bind142167%_ '())
                                       (_%check142168%_ '())
                                       (_%post142169%_ '()))
                      (let* ((_%__stx146292146293%_ _%rest142166%_)
                             (_%g142172142183%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx146292146293%_)))))
                        (let ((_%__kont146294146295%_
                               (lambda (_%L142210%_ _%L142211%_)
                                 (let* ((_%__stx146248146249%_ _%L142211%_)
                                        (_%g142226142251%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx146248146249%_)))))
                                   (let ((_%__kont146250146251%_
                                          (lambda (_%L142324%_ _%L142325%_)
                                            (let ((_%eid142339%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%L142325%_)))
                                                  (_%expr142340%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self142040%_
                                                      _%L142324%_))))
                                              (_%lp142164%_
                                               _%L142210%_
                                               (cons (cons _%eid142339%_
                                                           (cons _%expr142340%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind142167%_)
                                               _%check142168%_
                                               _%post142169%_))))
                                         (_%__kont146252146253%_
                                          (lambda (_%L142272%_ _%L142273%_)
                                            (let* ((_%vals142286%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values142288%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals142286%_
                                                     _%L142273%_
                                                     _%L142272%_))
                                                   (_%refs142290%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals142286%_
                                                     _%L142273%_))
                                                   (_%expr142292%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self142040%_
                                                       _%L142272%_))))
                                              (_%lp142164%_
                                               _%L142210%_
                                               (cons (cons _%vals142286%_
                                                           (cons _%expr142292%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind142167%_)
                                               (cons _%check-values142288%_
                                                     _%check142168%_)
                                               (cons _%refs142290%_
                                                     _%post142169%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx146248146249%_))
                                         (let ((_%e142230142300%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx146248146249%_))))
                                           (let ((_%tl142232142305%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e142230142300%_)))
                                                 (_%hd142231142303%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e142230142300%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd142231142303%_))
                                                 (let ((_%e142233142308%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd142231142303%_))))
                                                   (let ((_%tl142235142313%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e142233142308%_)))
                                                         (_%hd142234142311%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e142233142308%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl142235142313%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl142232142305%_))
                     (let ((_%e142236142316%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl142232142305%_))))
                       (let ((_%tl142238142321%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e142236142316%_)))
                             (_%hd142237142319%_
                              (let ()
                                (declare (not safe))
                                (##car _%e142236142316%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl142238142321%_))
                             (_%__kont146250146251%_
                              _%hd142237142319%_
                              _%hd142234142311%_)
                             (let ()
                               (declare (not safe))
                               (_%g142226142251%_)))))
                     (let () (declare (not safe)) (_%g142226142251%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl142232142305%_))
                     (let ((_%e142244142264%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl142232142305%_))))
                       (let ((_%tl142246142269%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e142244142264%_)))
                             (_%hd142245142267%_
                              (let ()
                                (declare (not safe))
                                (##car _%e142244142264%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl142246142269%_))
                             (_%__kont146252146253%_
                              _%hd142245142267%_
                              _%hd142231142303%_)
                             (let ()
                               (declare (not safe))
                               (_%g142226142251%_)))))
                     (let () (declare (not safe)) (_%g142226142251%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl142232142305%_))
                                                     (let ((_%e142244142264%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl142232142305%_))))
                                                       (let ((_%tl142246142269%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e142244142264%_)))
                     (_%hd142245142267%_
                      (let () (declare (not safe)) (##car _%e142244142264%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl142246142269%_))
                     (_%__kont146252146253%_
                      _%hd142245142267%_
                      _%hd142231142303%_)
                     (let () (declare (not safe)) (_%g142226142251%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g142226142251%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g142226142251%_)))))))
                              (_%__kont146296146297%_
                               (lambda ()
                                 (let* ((_%body142190%_
                                         (if _%compiled-body?142042%_
                                             _%body142162%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self142040%_
                                                _%body142162%_))))
                                        (_%body142192%_
                                         (_%generate-values-post142048%_
                                          _%post142169%_
                                          _%body142190%_))
                                        (_%body142194%_
                                         (_%generate-values-check142049%_
                                          _%check142168%_
                                          _%body142192%_)))
                                   (cons 'let
                                         (cons (reverse _%bind142167%_)
                                               (cons _%body142194%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx146292146293%_))
                              (let ((_%e142176142202%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx146292146293%_))))
                                (let ((_%tl142178142207%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e142176142202%_)))
                                      (_%hd142177142205%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e142176142202%_))))
                                  (_%__kont146294146295%_
                                   _%tl142178142207%_
                                   _%hd142177142205%_)))
                              (_%__kont146296146297%_)))))))
                 (_%generate-values-post142048%_
                  (lambda (_%post142120%_ _%body142121%_)
                    (let _%lp142123%_ ((_%rest142125%_ _%post142120%_)
                                       (_%body142126%_ _%body142121%_))
                      (let* ((_%rest142127142135%_ _%rest142125%_)
                             (_%else142129142143%_ (lambda () _%body142126%_))
                             (_%K142131142149%_
                              (lambda (_%rest142146%_ _%bind142147%_)
                                (_%lp142123%_
                                 _%rest142146%_
                                 (cons 'let
                                       (cons _%bind142147%_
                                             (cons _%body142126%_ '())))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest142127142135%_))
                            (let ((_%hd142132142152%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest142127142135%_)))
                                  (_%tl142133142154%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest142127142135%_))))
                              (let* ((_%bind142157%_ _%hd142132142152%_)
                                     (_%rest142159%_ _%tl142133142154%_))
                                (_%K142131142149%_
                                 _%rest142159%_
                                 _%bind142157%_)))
                            (_%else142129142143%_))))))
                 (_%generate-values-check142049%_
                  (lambda (_%check142117%_ _%body142118%_)
                    (cons 'begin
                          (let ((__tmp147140 (cons _%body142118%_ '()))
                                (__tmp147139 (reverse _%check142117%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp147140 __tmp147139))))))
          (let* ((_%g142051142068%_
                  (lambda (_%g142052142065%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g142052142065%_))))
                 (_%g142050142114%_
                  (lambda (_%g142052142071%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g142052142071%_))
                        (let ((_%e142055142073%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g142052142071%_))))
                          (let ((_%hd142056142076%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e142055142073%_)))
                                (_%tl142057142078%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e142055142073%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl142057142078%_))
                                (let ((_%e142058142081%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl142057142078%_))))
                                  (let ((_%hd142059142084%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e142058142081%_)))
                                        (_%tl142060142086%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e142058142081%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl142060142086%_))
                                        (let ((_%e142061142089%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl142060142086%_))))
                                          (let ((_%hd142062142092%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e142061142089%_)))
                                                (_%tl142063142094%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e142061142089%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl142063142094%_))
                                                ((lambda (_%L142097%_
                                                          _%L142098%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%L142098%_)
                                                       (_%generate-simple142044%_
                                                        _%L142098%_
                                                        _%L142097%_)
                                                       (_%generate-values142047%_
                                                        _%L142098%_
                                                        _%L142097%_)))
                                                 _%hd142062142092%_
                                                 _%hd142059142084%_)
                                                (_%g142051142068%_
                                                 _%g142052142071%_))))
                                        (_%g142051142068%_
                                         _%g142052142071%_))))
                                (_%g142051142068%_ _%g142052142071%_))))
                        (_%g142051142068%_ _%g142052142071%_)))))
            (_%g142050142114%_ _%stx142041%_)))))
    (define gxc#generate-runtime-let-values%__0
      (lambda (_%self142794%_ _%stx142795%_)
        (let ((_%compiled-body?142797%_ '#f))
          (gxc#generate-runtime-let-values%__%
           _%self142794%_
           _%stx142795%_
           _%compiled-body?142797%_))))
    (define gxc#generate-runtime-let-values%
      (lambda _g147142_
        (let ((_g147141_ (let () (declare (not safe)) (##length _g147142_))))
          (cond ((let () (declare (not safe)) (##fx= _g147141_ 2))
                 (apply gxc#generate-runtime-let-values%__0 _g147142_))
                ((let () (declare (not safe)) (##fx= _g147141_ 3))
                 (apply gxc#generate-runtime-let-values%__% _g147142_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-let-values%
                  _g147142_))))))
    (define gxc#generate-runtime-let-values-bind
      (lambda (_%vals141934%_ _%hd141935%_)
        (let _%lp141937%_ ((_%rest141939%_ _%hd141935%_)
                           (_%k141940%_ '0)
                           (_%r141941%_ '()))
          (let* ((_%__stx146306146307%_ _%rest141939%_)
                 (_%g141946141963%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx146306146307%_)))))
            (let ((_%__kont146308146309%_
                   (lambda (_%L142026%_)
                     (_%lp141937%_
                      _%L142026%_
                      (let () (declare (not safe)) (##fx+ _%k141940%_ '1))
                      _%r141941%_)))
                  (_%__kont146310146311%_
                   (lambda (_%L141999%_ _%L142000%_)
                     (_%lp141937%_
                      _%L141999%_
                      (let () (declare (not safe)) (##fx+ _%k141940%_ '1))
                      (cons (cons (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-binding-id
                                     _%L142000%_))
                                  (cons (gxc#generate-runtime-values-ref
                                         _%vals141934%_
                                         _%k141940%_
                                         _%L141999%_)
                                        '()))
                            _%r141941%_))))
                  (_%__kont146312146313%_
                   (lambda (_%L141975%_)
                     (let ((__tmp147143
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-binding-id
                                           _%L141975%_))
                                        (cons (gxc#generate-runtime-values->list
                                               _%vals141934%_
                                               _%k141940%_)
                                              '()))
                                  '())))
                       (declare (not safe))
                       (__foldl1 cons __tmp147143 _%r141941%_))))
                  (_%__kont146314146315%_ (lambda () (reverse _%r141941%_))))
              (let ((_%g141944141986%_
                     (lambda ()
                       (let ((_%L141975%_ _%__stx146306146307%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%L141975%_))
                             (_%__kont146312146313%_ _%L141975%_)
                             (_%__kont146314146315%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx146306146307%_))
                    (let ((_%e141949142015%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx146306146307%_))))
                      (let ((_%tl141951142020%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e141949142015%_)))
                            (_%hd141950142018%_
                             (let ()
                               (declare (not safe))
                               (##car _%e141949142015%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _%hd141950142018%_))
                            (let ((_%e141952142023%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd141950142018%_))))
                              (if (equal? _%e141952142023%_ '#f)
                                  (_%__kont146308146309%_ _%tl141951142020%_)
                                  (_%__kont146310146311%_
                                   _%tl141951142020%_
                                   _%hd141950142018%_)))
                            (_%__kont146310146311%_
                             _%tl141951142020%_
                             _%hd141950142018%_))))
                    (let () (declare (not safe)) (_%g141944141986%_)))))))))
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_%self141613%_ _%stx141614%_ _%compiled-body?141615%_)
        (letrec ((_%generate-simple141617%_
                  (lambda (_%hd141919%_ _%body141920%_)
                    (gxc#generate-runtime-simple-let
                     _%self141613%_
                     'letrec
                     _%hd141919%_
                     _%body141920%_
                     _%compiled-body?141615%_)))
                 (_%generate-values141618%_
                  (lambda (_%hd141698%_ _%body141699%_)
                    (let _%lp141701%_ ((_%rest141703%_ _%hd141698%_)
                                       (_%bind141704%_ '())
                                       (_%check141705%_ '())
                                       (_%post141706%_ '()))
                      (let* ((_%__stx146380146381%_ _%rest141703%_)
                             (_%g141709141720%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx146380146381%_)))))
                        (let ((_%__kont146382146383%_
                               (lambda (_%L141747%_ _%L141748%_)
                                 (let* ((_%__stx146336146337%_ _%L141748%_)
                                        (_%g141763141788%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx146336146337%_)))))
                                   (let ((_%__kont146338146339%_
                                          (lambda (_%L141895%_ _%L141896%_)
                                            (let ((_%eid141910%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%L141896%_)))
                                                  (_%expr141911%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self141613%_
                                                      _%L141895%_))))
                                              (_%lp141701%_
                                               _%L141747%_
                                               (cons (cons _%eid141910%_
                                                           (cons _%expr141911%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind141704%_)
                                               _%check141705%_
                                               _%post141706%_))))
                                         (_%__kont146340146341%_
                                          (lambda (_%L141809%_ _%L141810%_)
                                            (let* ((_%vals141823%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values141825%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals141823%_
                                                     _%L141810%_
                                                     _%L141809%_))
                                                   (_%refs141827%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals141823%_
                                                     _%L141810%_))
                                                   (_%expr141829%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self141613%_
                                                       _%L141809%_))))
                                              (_%lp141701%_
                                               _%L141747%_
                                               (let ((__tmp147145
                                                      (cons (cons _%vals141823%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr141829%_ '()))
                    _%bind141704%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp147144
                                                      (map (lambda (_%e141831141833%_)
                                                             (let* ((_%g141835141844%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%e141831141833%_)
                            (_%E141837141848%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%g141835141844%_
                                        '([eid _])))
                               '#!void))
                            (_%K141838141853%_
                             (lambda (_%eid141851%_)
                               (cons _%eid141851%_ (cons '#!void '())))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _%g141835141844%_))
                           (let ((_%hd141839141856%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%g141835141844%_)))
                                 (_%tl141840141858%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%g141835141844%_))))
                             (let ((_%eid141861%_ _%hd141839141856%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##pair? _%tl141840141858%_))
                                   (let ((_%tl141842141863%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%tl141840141858%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (##null? _%tl141842141863%_))
                                         (_%K141838141853%_ _%eid141861%_)
                                         (_%E141837141848%_)))
                                   (_%E141837141848%_))))
                           (_%E141837141848%_))))
                   _%refs141827%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (__foldl1
                                                  cons
                                                  __tmp147145
                                                  __tmp147144))
                                               (cons _%check-values141825%_
                                                     _%check141705%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (__foldl1
                                                  cons
                                                  _%refs141827%_
                                                  _%post141706%_)))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx146336146337%_))
                                         (let ((_%e141767141871%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx146336146337%_))))
                                           (let ((_%tl141769141876%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e141767141871%_)))
                                                 (_%hd141768141874%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e141767141871%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd141768141874%_))
                                                 (let ((_%e141770141879%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd141768141874%_))))
                                                   (let ((_%tl141772141884%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e141770141879%_)))
                                                         (_%hd141771141882%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e141770141879%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl141772141884%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl141769141876%_))
                     (let ((_%e141773141887%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl141769141876%_))))
                       (let ((_%tl141775141892%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e141773141887%_)))
                             (_%hd141774141890%_
                              (let ()
                                (declare (not safe))
                                (##car _%e141773141887%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl141775141892%_))
                             (_%__kont146338146339%_
                              _%hd141774141890%_
                              _%hd141771141882%_)
                             (let ()
                               (declare (not safe))
                               (_%g141763141788%_)))))
                     (let () (declare (not safe)) (_%g141763141788%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl141769141876%_))
                     (let ((_%e141781141801%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl141769141876%_))))
                       (let ((_%tl141783141806%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e141781141801%_)))
                             (_%hd141782141804%_
                              (let ()
                                (declare (not safe))
                                (##car _%e141781141801%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl141783141806%_))
                             (_%__kont146340146341%_
                              _%hd141782141804%_
                              _%hd141768141874%_)
                             (let ()
                               (declare (not safe))
                               (_%g141763141788%_)))))
                     (let () (declare (not safe)) (_%g141763141788%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl141769141876%_))
                                                     (let ((_%e141781141801%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl141769141876%_))))
                                                       (let ((_%tl141783141806%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e141781141801%_)))
                     (_%hd141782141804%_
                      (let () (declare (not safe)) (##car _%e141781141801%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl141783141806%_))
                     (_%__kont146340146341%_
                      _%hd141782141804%_
                      _%hd141768141874%_)
                     (let () (declare (not safe)) (_%g141763141788%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g141763141788%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g141763141788%_)))))))
                              (_%__kont146384146385%_
                               (lambda ()
                                 (let* ((_%body141727%_
                                         (if _%compiled-body?141615%_
                                             _%body141699%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self141613%_
                                                _%body141699%_))))
                                        (_%body141729%_
                                         (_%generate-values-post141620%_
                                          _%post141706%_
                                          _%body141727%_))
                                        (_%body141731%_
                                         (_%generate-values-check141619%_
                                          _%check141705%_
                                          _%body141729%_)))
                                   (cons 'letrec
                                         (cons (reverse _%bind141704%_)
                                               (cons _%body141731%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx146380146381%_))
                              (let ((_%e141713141739%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx146380146381%_))))
                                (let ((_%tl141715141744%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e141713141739%_)))
                                      (_%hd141714141742%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e141713141739%_))))
                                  (_%__kont146382146383%_
                                   _%tl141715141744%_
                                   _%hd141714141742%_)))
                              (_%__kont146384146385%_)))))))
                 (_%generate-values-check141619%_
                  (lambda (_%check141695%_ _%body141696%_)
                    (cons 'begin
                          (let ((__tmp147147 (cons _%body141696%_ '()))
                                (__tmp147146 (reverse _%check141695%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp147147 __tmp147146)))))
                 (_%generate-values-post141620%_
                  (lambda (_%post141688%_ _%body141689%_)
                    (cons 'begin
                          (let ((__tmp147151 (cons _%body141689%_ '()))
                                (__tmp147148
                                 (let ((__tmp147150
                                        (lambda (_%g141690141692%_)
                                          (cons 'set! _%g141690141692%_)))
                                       (__tmp147149 (reverse _%post141688%_)))
                                   (declare (not safe))
                                   (##map __tmp147150 __tmp147149))))
                            (declare (not safe))
                            (__foldr1 cons __tmp147151 __tmp147148))))))
          (let* ((_%g141622141639%_
                  (lambda (_%g141623141636%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g141623141636%_))))
                 (_%g141621141685%_
                  (lambda (_%g141623141642%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g141623141642%_))
                        (let ((_%e141626141644%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g141623141642%_))))
                          (let ((_%hd141627141647%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141626141644%_)))
                                (_%tl141628141649%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141626141644%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl141628141649%_))
                                (let ((_%e141629141652%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl141628141649%_))))
                                  (let ((_%hd141630141655%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e141629141652%_)))
                                        (_%tl141631141657%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e141629141652%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl141631141657%_))
                                        (let ((_%e141632141660%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl141631141657%_))))
                                          (let ((_%hd141633141663%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e141632141660%_)))
                                                (_%tl141634141665%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e141632141660%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl141634141665%_))
                                                ((lambda (_%L141668%_
                                                          _%L141669%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%L141669%_)
                                                       (_%generate-simple141617%_
                                                        _%L141669%_
                                                        _%L141668%_)
                                                       (_%generate-values141618%_
                                                        _%L141669%_
                                                        _%L141668%_)))
                                                 _%hd141633141663%_
                                                 _%hd141630141655%_)
                                                (_%g141622141639%_
                                                 _%g141623141642%_))))
                                        (_%g141622141639%_
                                         _%g141623141642%_))))
                                (_%g141622141639%_ _%g141623141642%_))))
                        (_%g141622141639%_ _%g141623141642%_)))))
            (_%g141621141685%_ _%stx141614%_)))))
    (define gxc#generate-runtime-letrec-values%__0
      (lambda (_%self141925%_ _%stx141926%_)
        (let ((_%compiled-body?141928%_ '#f))
          (gxc#generate-runtime-letrec-values%__%
           _%self141925%_
           _%stx141926%_
           _%compiled-body?141928%_))))
    (define gxc#generate-runtime-letrec-values%
      (lambda _g147153_
        (let ((_g147152_ (let () (declare (not safe)) (##length _g147153_))))
          (cond ((let () (declare (not safe)) (##fx= _g147152_ 2))
                 (apply gxc#generate-runtime-letrec-values%__0 _g147153_))
                ((let () (declare (not safe)) (##fx= _g147152_ 3))
                 (apply gxc#generate-runtime-letrec-values%__% _g147153_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-letrec-values%
                  _g147153_))))))
    (define gxc#generate-runtime-letrec*-values%
      (lambda (_%self141194%_ _%stx141195%_)
        (letrec ((_%generate-values141197%_
                  (lambda (_%hd141440%_ _%body141441%_)
                    (let _%lp141443%_ ((_%rest141445%_ _%hd141440%_)
                                       (_%bind141446%_ '()))
                      (let* ((_%rest141447141455%_ _%rest141445%_)
                             (_%else141449141466%_
                              (lambda ()
                                (let ((_%bind141463%_ (reverse _%bind141446%_))
                                      (_%body141464%_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self141194%_
                                          _%body141441%_))))
                                  (cons 'letrec*
                                        (cons _%bind141463%_
                                              (cons _%body141464%_ '()))))))
                             (_%K141451141600%_
                              (lambda (_%rest141469%_ _%hd-bind141470%_)
                                (let* ((_%__stx146394146395%_
                                        _%hd-bind141470%_)
                                       (_%g141473141498%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx146394146395%_)))))
                                  (let ((_%__kont146396146397%_
                                         (lambda (_%L141579%_ _%L141580%_)
                                           (let ((_%eid141594%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-binding-id*
                                                     _%L141580%_)))
                                                 (_%expr141595%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self141194%_
                                                     _%L141579%_))))
                                             (_%lp141443%_
                                              _%rest141469%_
                                              (cons (cons _%eid141594%_
                                                          (cons _%expr141595%_
                                                                '()))
                                                    _%bind141446%_)))))
                                        (_%__kont146398146399%_
                                         (lambda (_%L141519%_ _%L141520%_)
                                           (let* ((_%vals141539%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%tmp141541%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%check-values141543%_
                                                   (gxc#generate-runtime-check-values
                                                    _%tmp141541%_
                                                    _%L141520%_
                                                    _%L141519%_))
                                                  (_%refs141545%_
                                                   (gxc#generate-runtime-let-values-bind
                                                    _%vals141539%_
                                                    _%L141520%_))
                                                  (_%expr141547%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self141194%_
                                                      _%L141519%_))))
                                             (_%lp141443%_
                                              _%rest141469%_
                                              (let ((__tmp147154
                                                     (cons (cons _%vals141539%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'let
                                     (cons (cons (cons _%tmp141541%_
                                                       (cons _%expr141547%_
                                                             '()))
                                                 '())
                                           (cons _%check-values141543%_
                                                 (cons _%tmp141541%_ '()))))
                               '()))
                   _%bind141446%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 __tmp147154
                                                 _%refs141545%_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx146394146395%_))
                                        (let ((_%e141477141555%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx146394146395%_))))
                                          (let ((_%tl141479141560%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e141477141555%_)))
                                                (_%hd141478141558%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e141477141555%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd141478141558%_))
                                                (let ((_%e141480141563%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd141478141558%_))))
                                                  (let ((_%tl141482141568%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e141480141563%_)))
                                                        (_%hd141481141566%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e141480141563%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl141482141568%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl141479141560%_))
                                                            (let ((_%e141483141571%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl141479141560%_))))
                      (let ((_%tl141485141576%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e141483141571%_)))
                            (_%hd141484141574%_
                             (let ()
                               (declare (not safe))
                               (##car _%e141483141571%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl141485141576%_))
                            (_%__kont146396146397%_
                             _%hd141484141574%_
                             _%hd141481141566%_)
                            (let ()
                              (declare (not safe))
                              (_%g141473141498%_)))))
                    (let () (declare (not safe)) (_%g141473141498%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl141479141560%_))
                    (let ((_%e141491141511%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl141479141560%_))))
                      (let ((_%tl141493141516%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e141491141511%_)))
                            (_%hd141492141514%_
                             (let ()
                               (declare (not safe))
                               (##car _%e141491141511%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl141493141516%_))
                            (_%__kont146398146399%_
                             _%hd141492141514%_
                             _%hd141478141558%_)
                            (let ()
                              (declare (not safe))
                              (_%g141473141498%_)))))
                    (let () (declare (not safe)) (_%g141473141498%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl141479141560%_))
                                                    (let ((_%e141491141511%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl141479141560%_))))
                                                      (let ((_%tl141493141516%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e141491141511%_)))
                    (_%hd141492141514%_
                     (let () (declare (not safe)) (##car _%e141491141511%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl141493141516%_))
                    (_%__kont146398146399%_
                     _%hd141492141514%_
                     _%hd141478141558%_)
                    (let () (declare (not safe)) (_%g141473141498%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g141473141498%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g141473141498%_))))))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest141447141455%_))
                            (let ((_%hd141452141603%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest141447141455%_)))
                                  (_%tl141453141605%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest141447141455%_))))
                              (let* ((_%hd-bind141608%_ _%hd141452141603%_)
                                     (_%rest141610%_ _%tl141453141605%_))
                                (_%K141451141600%_
                                 _%rest141610%_
                                 _%hd-bind141608%_)))
                            (_%else141449141466%_))))))
                 (_%generate-letrec?141198%_
                  (lambda (_%hd141330%_)
                    (let _%lp141332%_ ((_%rest141334%_ _%hd141330%_))
                      (let* ((_%rest141335141343%_ _%rest141334%_)
                             (_%else141337141351%_ (lambda () '#t))
                             (_%K141339141428%_
                              (lambda (_%rest141354%_ _%hd-bind141355%_)
                                (let* ((_%g141357141374%_
                                        (lambda (_%g141358141371%_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g141358141371%_))))
                                       (_%g141356141425%_
                                        (lambda (_%g141358141377%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%g141358141377%_))
                                              (let ((_%e141361141379%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%g141358141377%_))))
                                                (let ((_%hd141362141382%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e141361141379%_)))
                                                      (_%tl141363141384%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e141361141379%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd141362141382%_))
                                                      (let ((_%e141364141387%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd141362141382%_))))
                (let ((_%hd141365141390%_
                       (let () (declare (not safe)) (##car _%e141364141387%_)))
                      (_%tl141366141392%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e141364141387%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl141366141392%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl141363141384%_))
                          (let ((_%e141367141395%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl141363141384%_))))
                            (let ((_%hd141368141398%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e141367141395%_)))
                                  (_%tl141369141400%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e141367141395%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl141369141400%_))
                                  ((lambda (_%L141403%_ _%L141404%_)
                                     (if (_%is-lambda-expr?141199%_
                                          _%L141403%_)
                                         (_%lp141332%_ _%rest141354%_)
                                         '#f))
                                   _%hd141368141398%_
                                   _%hd141365141390%_)
                                  (_%g141357141374%_ _%g141358141377%_))))
                          (_%g141357141374%_ _%g141358141377%_))
                      (_%g141357141374%_ _%g141358141377%_))))
              (_%g141357141374%_ _%g141358141377%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g141357141374%_
                                               _%g141358141377%_)))))
                                  (_%g141356141425%_ _%hd-bind141355%_)))))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%rest141335141343%_))
                            (let ((_%hd141340141431%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest141335141343%_)))
                                  (_%tl141341141433%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest141335141343%_))))
                              (let* ((_%hd-bind141436%_ _%hd141340141431%_)
                                     (_%rest141438%_ _%tl141341141433%_))
                                (_%K141339141428%_
                                 _%rest141438%_
                                 _%hd-bind141436%_)))
                            (_%else141337141351%_))))))
                 (_%is-lambda-expr?141199%_
                  (lambda (_%expr141267%_)
                    (let* ((_%__stx146438146439%_ _%expr141267%_)
                           (_%g141270141284%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx146438146439%_)))))
                      (let ((_%__kont146440146441%_
                             (lambda (_%L141312%_ _%L141313%_) '#t))
                            (_%__kont146442146443%_ (lambda () '#f)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%__stx146438146439%_))
                            (let ((_%e141274141296%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%__stx146438146439%_))))
                              (let ((_%tl141276141301%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e141274141296%_)))
                                    (_%hd141275141299%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e141274141296%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd141275141299%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd141275141299%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl141276141301%_))
                                            (let ((_%e141277141304%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl141276141301%_))))
                                              (let ((_%tl141279141309%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e141277141304%_)))
                                                    (_%hd141278141307%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e141277141304%_))))
                                                (_%__kont146440146441%_
                                                 _%tl141279141309%_
                                                 _%hd141278141307%_)))
                                            (_%__kont146442146443%_))
                                        (_%__kont146442146443%_))
                                    (_%__kont146442146443%_))))
                            (_%__kont146442146443%_)))))))
          (let* ((_%g141201141218%_
                  (lambda (_%g141202141215%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g141202141215%_))))
                 (_%g141200141264%_
                  (lambda (_%g141202141221%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g141202141221%_))
                        (let ((_%e141205141223%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g141202141221%_))))
                          (let ((_%hd141206141226%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e141205141223%_)))
                                (_%tl141207141228%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e141205141223%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl141207141228%_))
                                (let ((_%e141208141231%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl141207141228%_))))
                                  (let ((_%hd141209141234%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e141208141231%_)))
                                        (_%tl141210141236%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e141208141231%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl141210141236%_))
                                        (let ((_%e141211141239%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl141210141236%_))))
                                          (let ((_%hd141212141242%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e141211141239%_)))
                                                (_%tl141213141244%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e141211141239%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl141213141244%_))
                                                ((lambda (_%L141247%_
                                                          _%L141248%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%L141248%_)
                                                       (if (_%generate-letrec?141198%_
                                                            _%L141248%_)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self141194%_
                                                            'letrec
                                                            _%L141248%_
                                                            _%L141247%_
                                                            '#f)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self141194%_
                                                            'letrec*
                                                            _%L141248%_
                                                            _%L141247%_
                                                            '#f))
                                                       (_%generate-values141197%_
                                                        _%L141248%_
                                                        _%L141247%_)))
                                                 _%hd141212141242%_
                                                 _%hd141209141234%_)
                                                (_%g141201141218%_
                                                 _%g141202141221%_))))
                                        (_%g141201141218%_
                                         _%g141202141221%_))))
                                (_%g141201141218%_ _%g141202141221%_))))
                        (_%g141201141218%_ _%g141202141221%_)))))
            (_%g141200141264%_ _%stx141195%_)))))
    (define gxc#generate-runtime-simple-let?
      (lambda (_%hd141131%_)
        (let _%lp141133%_ ((_%rest141135%_ _%hd141131%_))
          (let* ((_%rest141136141152%_ _%rest141135%_)
                 (_%else141139141160%_ (lambda () '#f)))
            (let ((_%K141142141173%_
                   (lambda (_%rest141171%_) (_%lp141133%_ _%rest141171%_)))
                  (_%K141141141165%_ (lambda () '#t)))
              (let ((_%try-match141138141168%_
                     (lambda ()
                       (if (let ()
                             (declare (not safe))
                             (##null? _%rest141136141152%_))
                           (_%K141141141165%_)
                           (_%else141139141160%_)))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest141136141152%_))
                    (let ((_%tl141144141178%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest141136141152%_)))
                          (_%hd141143141176%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest141136141152%_))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%hd141143141176%_))
                          (let ((_%tl141146141183%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd141143141176%_)))
                                (_%hd141145141181%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd141143141176%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%hd141145141181%_))
                                (let ((_%tl141150141186%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd141145141181%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _%tl141150141186%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tl141146141183%_))
                                          (let ((_%tl141148141189%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl141146141183%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##null? _%tl141148141189%_))
                                                (let ((_%rest141192%_
                                                       _%tl141144141178%_))
                                                  (_%lp141133%_
                                                   _%rest141192%_))
                                                (_%else141139141160%_)))
                                          (_%else141139141160%_))
                                      (_%else141139141160%_)))
                                (_%else141139141160%_)))
                          (_%else141139141160%_)))
                    (_%try-match141138141168%_))))))))
    (define gxc#generate-runtime-simple-let
      (lambda (_%self141042%_
               _%form141043%_
               _%hd141044%_
               _%body141045%_
               _%compiled-body?141046%_)
        (letrec ((_%generate1141048%_
                  (lambda (_%bind141087%_)
                    (let* ((_%bind141088141099%_ _%bind141087%_)
                           (_%E141090141103%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%bind141088141099%_
                                       '([[id] expr])))
                              '#!void))
                           (_%K141091141109%_
                            (lambda (_%expr141106%_ _%id141107%_)
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-binding-id*
                                       _%id141107%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self141042%_
                                             _%expr141106%_))
                                          '())))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%bind141088141099%_))
                          (let ((_%hd141092141112%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%bind141088141099%_)))
                                (_%tl141093141114%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%bind141088141099%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%hd141092141112%_))
                                (let ((_%hd141096141117%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd141092141112%_)))
                                      (_%tl141097141119%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd141092141112%_))))
                                  (let ((_%id141122%_ _%hd141096141117%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _%tl141097141119%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _%tl141093141114%_))
                                            (let ((_%hd141094141124%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl141093141114%_)))
                                                  (_%tl141095141126%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl141093141114%_))))
                                              (let ((_%expr141129%_
                                                     _%hd141094141124%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##null? _%tl141095141126%_))
                                                    (_%K141091141109%_
                                                     _%expr141129%_
                                                     _%id141122%_)
                                                    (_%E141090141103%_))))
                                            (_%E141090141103%_))
                                        (_%E141090141103%_))))
                                (_%E141090141103%_)))
                          (_%E141090141103%_))))))
          (let* ((_%bind141050%_ (map _%generate1141048%_ _%hd141044%_))
                 (_%body141052%_
                  (if _%compiled-body?141046%_
                      _%body141045%_
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self141042%_ _%body141045%_))))
                 (_%body141084%_
                  (let* ((_%body141053141061%_ _%body141052%_)
                         (_%else141055141069%_
                          (lambda () (cons _%body141052%_ '())))
                         (_%K141057141074%_
                          (lambda (_%exprs141072%_) _%exprs141072%_)))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%body141053141061%_))
                        (let ((_%hd141058141077%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%body141053141061%_)))
                              (_%tl141059141079%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%body141053141061%_))))
                          (if (let ()
                                (declare (not safe))
                                (##eq? _%hd141058141077%_ 'begin))
                              (let ((_%exprs141082%_ _%tl141059141079%_))
                                (_%K141057141074%_ _%exprs141082%_))
                              (_%else141055141069%_)))
                        (_%else141055141069%_)))))
            (cons _%form141043%_ (cons _%bind141050%_ _%body141084%_))))))
    (define gxc#generate-runtime-quote%
      (lambda (_%self140942%_ _%stx140943%_)
        (letrec ((_%generate1140945%_
                  (lambda (_%datum140997%_)
                    (if (or (null? _%datum140997%_)
                            (let ()
                              (declare (not safe))
                              (interned-symbol? _%datum140997%_))
                            (let ()
                              (declare (not safe))
                              (gx#self-quoting? _%datum140997%_))
                            (eof-object? _%datum140997%_))
                        _%datum140997%_
                        (if (uninterned-symbol? _%datum140997%_)
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__%
                               _%datum140997%_
                               '#t))
                            (if (pair? _%datum140997%_)
                                (cons (_%generate1140945%_
                                       (car _%datum140997%_))
                                      (_%generate1140945%_
                                       (cdr _%datum140997%_)))
                                (if (box? _%datum140997%_)
                                    (box (_%generate1140945%_
                                          (unbox _%datum140997%_)))
                                    (if (vector? _%datum140997%_)
                                        (vector-map
                                         _%generate1140945%_
                                         _%datum140997%_)
                                        (if (or (s8vector? _%datum140997%_)
                                                (u8vector? _%datum140997%_)
                                                (s16vector? _%datum140997%_)
                                                (u16vector? _%datum140997%_)
                                                (s32vector? _%datum140997%_)
                                                (u32vector? _%datum140997%_)
                                                (s64vector? _%datum140997%_)
                                                (u64vector? _%datum140997%_)
                                                (f32vector? _%datum140997%_)
                                                (f64vector? _%datum140997%_))
                                            _%datum140997%_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot compile non-primitive quote"
                                               _%stx140943%_)))))))))))
          (let* ((_%g140947140960%_
                  (lambda (_%g140948140957%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g140948140957%_))))
                 (_%g140946140994%_
                  (lambda (_%g140948140963%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g140948140963%_))
                        (let ((_%e140950140965%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g140948140963%_))))
                          (let ((_%hd140951140968%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140950140965%_)))
                                (_%tl140952140970%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140950140965%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl140952140970%_))
                                (let ((_%e140953140973%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl140952140970%_))))
                                  (let ((_%hd140954140976%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e140953140973%_)))
                                        (_%tl140955140978%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e140953140973%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl140955140978%_))
                                        ((lambda (_%L140981%_)
                                           (cons 'quote
                                                 (cons (_%generate1140945%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%L140981%_)))
                                                       '())))
                                         _%hd140954140976%_)
                                        (_%g140947140960%_
                                         _%g140948140963%_))))
                                (_%g140947140960%_ _%g140948140963%_))))
                        (_%g140947140960%_ _%g140948140963%_)))))
            (_%g140946140994%_ _%stx140943%_)))))
    (define gxc#generate-runtime-call%
      (lambda (_%self140383%_ _%stx140384%_)
        (letrec ((_%compile-call140386%_
                  (lambda (_%rator140675%_ _%rands140676%_)
                    (let ((_%rator140682%_
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self140383%_
                              _%rator140675%_)))
                          (_%rands140683%_
                           (map (lambda (_%g140677140679%_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%self140383%_
                                     _%g140677140679%_)))
                                _%rands140676%_)))
                      (let* ((_%__stx146485146486%_ _%rator140682%_)
                             (_%g140686140738%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx146485146486%_)))))
                        (let ((_%__kont146487146488%_
                               (lambda (_%L140862%_
                                        _%L140863%_
                                        _%L140864%_
                                        _%L140865%_)
                                 (if (let ((__tmp147157
                                            (let ()
                                              (declare (not safe))
                                              (##length _%rands140683%_)))
                                           (__tmp147155
                                            (length (let ((__tmp147156
                                                           (lambda (_%g140901140904%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g140902140906%_)
                     (cons _%g140901140904%_ _%g140902140906%_))))
              (declare (not safe))
              (__foldr1 __tmp147156 '() _%L140864%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp147157 __tmp147155))
                                     (let* ((_%id140909%_ _%L140865%_)
                                            (_%args140918%_
                                             (let ((__tmp147158
                                                    (lambda (_%g140910140913%_
                                                             _%g140911140915%_)
                                                      (cons _%g140910140913%_
                                                            _%g140911140915%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp147158
                                                '()
                                                _%L140864%_)))
                                            (_%body140927%_
                                             (let ((__tmp147159
                                                    (lambda (_%g140919140922%_
                                                             _%g140920140924%_)
                                                      (cons _%g140919140922%_
                                                            _%g140920140924%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp147159
                                                '()
                                                _%L140863%_)))
                                            (_%init140929%_
                                             (map list
                                                  _%args140918%_
                                                  _%rands140683%_)))
                                       (cons 'let
                                             (cons _%id140909%_
                                                   (cons _%init140929%_
                                                         _%body140927%_))))
                                     (let ((__tmp147160
                                            (let ((__tmp147161
                                                   (lambda (_%g140931140934%_
                                                            _%g140932140936%_)
                                                     (cons _%g140931140934%_
                                                           _%g140932140936%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp147161
                                               '()
                                               _%L140864%_))))
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Illegal loop application; arity mismatch"
                                        _%stx140384%_
                                        __tmp147160
                                        _%rands140683%_)))))
                              (_%__kont146493146494%_
                               (lambda ()
                                 (cons _%rator140682%_ _%rands140683%_))))
                          (let ((_%__match146552146553%_
                                 (lambda (_%e140692140750%_
                                          _%hd140693140753%_
                                          _%tl140694140755%_
                                          _%e140695140758%_
                                          _%hd140696140761%_
                                          _%tl140697140763%_
                                          _%e140698140766%_
                                          _%hd140699140769%_
                                          _%tl140700140771%_
                                          _%e140701140774%_
                                          _%hd140702140777%_
                                          _%tl140703140779%_
                                          _%e140704140782%_
                                          _%hd140705140785%_
                                          _%tl140706140787%_
                                          _%e140707140790%_
                                          _%hd140708140793%_
                                          _%tl140709140795%_
                                          _%e140710140798%_
                                          _%hd140711140801%_
                                          _%tl140712140803%_
                                          _%__splice146489146490%_
                                          _%target140713140806%_
                                          _%tl140715140808%_)
                                   (letrec ((_%loop140716140811%_
                                             (lambda (_%hd140714140814%_
                                                      _%arg140720140816%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%hd140714140814%_))
                                                   (let ((_%e140717140819%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%hd140714140814%_))))
                                                     (let ((_%lp-tl140719140824%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e140717140819%_)))
                                                           (_%lp-hd140718140822%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e140717140819%_))))
                                                       (_%loop140716140811%_
                                                        _%lp-tl140719140824%_
                                                        (cons _%lp-hd140718140822%_
                                                              _%arg140720140816%_))))
                                                   (let ((_%arg140721140827%_
                                                          (reverse _%arg140720140816%_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _%tl140712140803%_))
                                                         (let ((_%__splice146491146492%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice _%tl140712140803%_ '0))))
                   (let ((_%tl140724140832%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice146491146492%_ '1)))
                         (_%target140722140830%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice146491146492%_ '0))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl140724140832%_))
                         (letrec ((_%loop140725140835%_
                                   (lambda (_%hd140723140838%_
                                            _%body140729140840%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd140723140838%_))
                                         (let ((_%e140726140843%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd140723140838%_))))
                                           (let ((_%lp-tl140728140848%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e140726140843%_)))
                                                 (_%lp-hd140727140846%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e140726140843%_))))
                                             (_%loop140725140835%_
                                              _%lp-tl140728140848%_
                                              (cons _%lp-hd140727140846%_
                                                    _%body140729140840%_))))
                                         (let ((_%body140730140851%_
                                                (reverse _%body140729140840%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%tl140706140787%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl140700140771%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl140697140763%_))
                                                       (let ((_%e140731140854%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl140697140763%_))))
                 (let ((_%tl140733140859%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e140731140854%_)))
                       (_%hd140732140857%_
                        (let ()
                          (declare (not safe))
                          (##car _%e140731140854%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl140733140859%_))
                       (let ((_%L140862%_ _%hd140732140857%_)
                             (_%L140863%_ _%body140730140851%_)
                             (_%L140864%_ _%arg140721140827%_)
                             (_%L140865%_ _%hd140702140777%_))
                         (if (eq? _%L140865%_ _%L140862%_)
                             (_%__kont146487146488%_
                              _%L140862%_
                              _%L140863%_
                              _%L140864%_
                              _%L140865%_)
                             (_%__kont146493146494%_)))
                       (_%__kont146493146494%_))))
               (_%__kont146493146494%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont146493146494%_))
                                               (_%__kont146493146494%_)))))))
                           (_%loop140725140835%_ _%target140722140830%_ '()))
                         (_%__kont146493146494%_))))
                 (_%__kont146493146494%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%loop140716140811%_
                                      _%target140713140806%_
                                      '())))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx146485146486%_))
                                (let ((_%e140692140750%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx146485146486%_))))
                                  (let ((_%tl140694140755%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e140692140750%_)))
                                        (_%hd140693140753%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e140692140750%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd140693140753%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               'letrec
                                               _%hd140693140753%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl140694140755%_))
                                                (let ((_%e140695140758%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl140694140755%_))))
                                                  (let ((_%tl140697140763%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e140695140758%_)))
                                                        (_%hd140696140761%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e140695140758%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd140696140761%_))
                                                        (let ((_%e140698140766%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd140696140761%_))))
                  (let ((_%tl140700140771%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e140698140766%_)))
                        (_%hd140699140769%_
                         (let ()
                           (declare (not safe))
                           (##car _%e140698140766%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd140699140769%_))
                        (let ((_%e140701140774%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd140699140769%_))))
                          (let ((_%tl140703140779%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140701140774%_)))
                                (_%hd140702140777%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140701140774%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl140703140779%_))
                                (let ((_%e140704140782%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl140703140779%_))))
                                  (let ((_%tl140706140787%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e140704140782%_)))
                                        (_%hd140705140785%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e140704140782%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd140705140785%_))
                                        (let ((_%e140707140790%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd140705140785%_))))
                                          (let ((_%tl140709140795%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e140707140790%_)))
                                                (_%hd140708140793%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e140707140790%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd140708140793%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       'lambda
                                                       _%hd140708140793%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl140709140795%_))
                                                        (let ((_%e140710140798%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl140709140795%_))))
                  (let ((_%tl140712140803%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e140710140798%_)))
                        (_%hd140711140801%_
                         (let ()
                           (declare (not safe))
                           (##car _%e140710140798%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%hd140711140801%_))
                        (let ((_%__splice146489146490%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%hd140711140801%_
                                  '0))))
                          (let ((_%tl140715140808%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice146489146490%_ '1)))
                                (_%target140713140806%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _%__splice146489146490%_
                                    '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl140715140808%_))
                                (_%__match146552146553%_
                                 _%e140692140750%_
                                 _%hd140693140753%_
                                 _%tl140694140755%_
                                 _%e140695140758%_
                                 _%hd140696140761%_
                                 _%tl140697140763%_
                                 _%e140698140766%_
                                 _%hd140699140769%_
                                 _%tl140700140771%_
                                 _%e140701140774%_
                                 _%hd140702140777%_
                                 _%tl140703140779%_
                                 _%e140704140782%_
                                 _%hd140705140785%_
                                 _%tl140706140787%_
                                 _%e140707140790%_
                                 _%hd140708140793%_
                                 _%tl140709140795%_
                                 _%e140710140798%_
                                 _%hd140711140801%_
                                 _%tl140712140803%_
                                 _%__splice146489146490%_
                                 _%target140713140806%_
                                 _%tl140715140808%_)
                                (_%__kont146493146494%_))))
                        (_%__kont146493146494%_))))
                (_%__kont146493146494%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont146493146494%_))
                                                (_%__kont146493146494%_))))
                                        (_%__kont146493146494%_))))
                                (_%__kont146493146494%_))))
                        (_%__kont146493146494%_))))
                (_%__kont146493146494%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont146493146494%_))
                                            (_%__kont146493146494%_))
                                        (_%__kont146493146494%_))))
                                (_%__kont146493146494%_)))))))))
          (let* ((_%g140388140411%_
                  (lambda (_%g140389140408%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g140389140408%_))))
                 (_%g140387140672%_
                  (lambda (_%g140389140414%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g140389140414%_))
                        (let ((_%e140392140416%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g140389140414%_))))
                          (let ((_%hd140393140419%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e140392140416%_)))
                                (_%tl140394140421%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e140392140416%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl140394140421%_))
                                (let ((_%e140395140424%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl140394140421%_))))
                                  (let ((_%hd140396140427%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e140395140424%_)))
                                        (_%tl140397140429%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e140395140424%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl140397140429%_))
                                        (let ((_g147162_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl140397140429%_
                                                  '0))))
                                          (begin
                                            (let ((_g147163_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g147162_)
                                                         (##vector-length
                                                          _g147162_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g147163_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g147163_)))
                                            (let ((_%target140398140432%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g147162_
                                                      0)))
                                                  (_%tl140400140434%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g147162_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl140400140434%_))
                                                  (letrec ((_%loop140401140437%_
                                                            (lambda (_%hd140399140440%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%rand140405140442%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd140399140440%_))
                          (let ((_%e140402140445%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd140399140440%_))))
                            (let ((_%lp-hd140403140448%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e140402140445%_)))
                                  (_%lp-tl140404140450%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e140402140445%_))))
                              (_%loop140401140437%_
                               _%lp-tl140404140450%_
                               (cons _%lp-hd140403140448%_
                                     _%rand140405140442%_))))
                          (let ((_%rand140406140453%_
                                 (reverse _%rand140405140442%_)))
                            ((lambda (_%L140456%_ _%L140457%_)
                               (if (gxc#current-compile-decls-unsafe?)
                                   (_%compile-call140386%_
                                    _%L140457%_
                                    (let ((__tmp147164
                                           (lambda (_%g140474140477%_
                                                    _%g140475140479%_)
                                             (cons _%g140474140477%_
                                                   _%g140475140479%_))))
                                      (declare (not safe))
                                      (__foldr1 __tmp147164 '() _%L140456%_)))
                                   (let* ((_%__stx146601146602%_ _%L140457%_)
                                          (_%g140483140495%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%__stx146601146602%_)))))
                                     (let ((_%__kont146603146604%_
                                            (lambda ()
                                              (let ((_%f140532%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self140383%_
                                                        _%L140457%_))))
                                                (if (and (let ((__tmp147165
                                                                (symbol->string
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%f140532%_)))
                   (declare (not safe))
                   (##string-prefix? '"##" __tmp147165))
                 (not (let ()
                        (declare (not safe))
                        (##memq _%f140532%_ gxc#checked-primitives))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let _%lp140534%_ ((_%rest140537%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (reverse (let ((__tmp147167
                                                (lambda (_%g140654140657%_
                                                         _%g140655140659%_)
                                                  (cons _%g140654140657%_
                                                        _%g140655140659%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            __tmp147167
                                            '()
                                            _%L140456%_))))
                               (_%bind140539%_ '())
                               (_%args140540%_ '()))
              (let* ((_%rest140541140549%_ _%rest140537%_)
                     (_%else140543140557%_
                      (lambda ()
                        (cons 'let
                              (cons _%bind140539%_
                                    (cons '(declare (not safe))
                                          (cons (cons _%f140532%_
                                                      _%args140540%_)
                                                '()))))))
                     (_%K140545140643%_
                      (lambda (_%rest140560%_ _%e140561%_)
                        (let* ((_%__stx146555146556%_ _%e140561%_)
                               (_%g140566140584%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%__stx146555146556%_)))))
                          (let ((_%__kont146557146558%_
                                 (lambda ()
                                   (_%lp140534%_
                                    _%rest140560%_
                                    _%bind140539%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e140561%_))
                                          _%args140540%_))))
                                (_%__kont146559146560%_
                                 (lambda ()
                                   (_%lp140534%_
                                    _%rest140560%_
                                    _%bind140539%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e140561%_))
                                          _%args140540%_))))
                                (_%__kont146561146562%_
                                 (lambda ()
                                   (let ((_%tmp140591%_
                                          (let ((__tmp147166
                                                 (let ()
                                                   (declare (not safe))
                                                   (##gensym '__tmp))))
                                            (declare (not safe))
                                            (make-symbol__0 __tmp147166))))
                                     (_%lp140534%_
                                      _%rest140560%_
                                      (cons (cons _%tmp140591%_
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__0
                                                           _%e140561%_))
                                                        '()))
                                            _%bind140539%_)
                                      (cons _%tmp140591%_ _%args140540%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx146555146556%_))
                                (let ((_%e140568140622%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx146555146556%_))))
                                  (let ((_%tl140570140627%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e140568140622%_)))
                                        (_%hd140569140625%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e140568140622%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd140569140625%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd140569140625%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl140570140627%_))
                                                (let ((_%e140571140630%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl140570140627%_))))
                                                  (let ((_%tl140573140635%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e140571140630%_)))
                                                        (_%hd140572140633%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e140571140630%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl140573140635%_))
                                                        (_%__kont146557146558%_)
                                                        (_%__kont146561146562%_))))
                                                (_%__kont146561146562%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#quote
                                                   _%hd140569140625%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl140570140627%_))
                                                    (let ((_%e140577140607%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl140570140627%_))))
                                                      (let ((_%tl140579140612%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e140577140607%_)))
                    (_%hd140578140610%_
                     (let () (declare (not safe)) (##car _%e140577140607%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl140579140612%_))
                    (_%__kont146559146560%_)
                    (_%__kont146561146562%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont146561146562%_))
                                                (_%__kont146561146562%_)))
                                        (_%__kont146561146562%_))))
                                (_%__kont146561146562%_)))))))
                (if (let ()
                      (declare (not safe))
                      (##pair? _%rest140541140549%_))
                    (let ((_%hd140546140646%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest140541140549%_)))
                          (_%tl140547140648%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest140541140549%_))))
                      (let* ((_%e140651%_ _%hd140546140646%_)
                             (_%rest140653%_ _%tl140547140648%_))
                        (_%K140545140643%_ _%rest140653%_ _%e140651%_)))
                    (_%else140543140557%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%compile-call140386%_
                                                     _%L140457%_
                                                     (let ((__tmp147168
                                                            (lambda (_%g140661140664%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g140662140666%_)
                      (cons _%g140661140664%_ _%g140662140666%_))))
               (declare (not safe))
               (__foldr1 __tmp147168 '() _%L140456%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%__kont146605146606%_
                                            (lambda ()
                                              (_%compile-call140386%_
                                               _%L140457%_
                                               (let ((__tmp147169
                                                      (lambda (_%g140501140504%_
                                                               _%g140502140506%_)
                                                        (cons _%g140501140504%_
                                                              _%g140502140506%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp147169
                                                  '()
                                                  _%L140456%_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%__stx146601146602%_))
                                           (let ((_%e140485140514%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%__stx146601146602%_))))
                                             (let ((_%tl140487140519%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e140485140514%_)))
                                                   (_%hd140486140517%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e140485140514%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd140486140517%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#ref
                                                          _%hd140486140517%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl140487140519%_))
                                                           (let ((_%e140488140522%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl140487140519%_))))
                     (let ((_%tl140490140527%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e140488140522%_)))
                           (_%hd140489140525%_
                            (let ()
                              (declare (not safe))
                              (##car _%e140488140522%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl140490140527%_))
                           (_%__kont146603146604%_)
                           (_%__kont146605146606%_))))
                   (_%__kont146605146606%_))
               (_%__kont146605146606%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont146605146606%_))))
                                           (_%__kont146605146606%_))))))
                             _%rand140406140453%_
                             _%hd140396140427%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop140401140437%_
                                                     _%target140398140432%_
                                                     '()))
                                                  (_%g140388140411%_
                                                   _%g140389140414%_)))))
                                        (_%g140388140411%_
                                         _%g140389140414%_))))
                                (_%g140388140411%_ _%g140389140414%_))))
                        (_%g140388140411%_ _%g140389140414%_)))))
            (_%g140387140672%_ _%stx140384%_)))))
    (define gxc#generate-runtime-call-unchecked%
      (lambda (_%self140126%_ _%stx140127%_)
        (let* ((_%__stx146673146674%_ _%stx140127%_)
               (_%g140130140159%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx146673146674%_)))))
          (let ((_%__kont146675146676%_
                 (lambda (_%L140227%_ _%L140228%_)
                   (if (gxc#current-compile-decls-unsafe?)
                       (gxc#generate-runtime-call%
                        _%self140126%_
                        _%stx140127%_)
                       (let ((_%f140250%_
                              (let ((__tmp147170
                                     (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f '%#ref))
                                           (cons _%L140228%_ '()))))
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self140126%_
                                 __tmp147170))))
                         (let _%lp140252%_ ((_%rest140255%_
                                             (reverse (let ((__tmp147172
                                                             (lambda (_%g140372140375%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g140373140377%_)
                       (cons _%g140372140375%_ _%g140373140377%_))))
                (declare (not safe))
                (__foldr1 __tmp147172 '() _%L140227%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%bind140257%_ '())
                                            (_%args140258%_ '()))
                           (let* ((_%rest140259140267%_ _%rest140255%_)
                                  (_%else140261140275%_
                                   (lambda ()
                                     (cons 'let
                                           (cons _%bind140257%_
                                                 (cons '(declare (not safe))
                                                       (cons (cons _%f140250%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%args140258%_)
                     '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%K140263140361%_
                                   (lambda (_%rest140278%_ _%e140279%_)
                                     (let* ((_%__stx146627146628%_ _%e140279%_)
                                            (_%g140284140302%_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%__stx146627146628%_)))))
                                       (let ((_%__kont146629146630%_
                                              (lambda ()
                                                (_%lp140252%_
                                                 _%rest140278%_
                                                 _%bind140257%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e140279%_))
                                                       _%args140258%_))))
                                             (_%__kont146631146632%_
                                              (lambda ()
                                                (_%lp140252%_
                                                 _%rest140278%_
                                                 _%bind140257%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e140279%_))
                                                       _%args140258%_))))
                                             (_%__kont146633146634%_
                                              (lambda ()
                                                (let ((_%tmp140309%_
                                                       (let ((__tmp147171
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##gensym '__tmp))))
                 (declare (not safe))
                 (make-symbol__0 __tmp147171))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%lp140252%_
                                                   _%rest140278%_
                                                   (cons (cons _%tmp140309%_
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__0 _%e140279%_))
                             '()))
                 _%bind140257%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _%tmp140309%_
                                                         _%args140258%_))))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%__stx146627146628%_))
                                             (let ((_%e140286140340%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%__stx146627146628%_))))
                                               (let ((_%tl140288140345%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e140286140340%_)))
                                                     (_%hd140287140343%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e140286140340%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd140287140343%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#ref
                                                            _%hd140287140343%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl140288140345%_))
                     (let ((_%e140289140348%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl140288140345%_))))
                       (let ((_%tl140291140353%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e140289140348%_)))
                             (_%hd140290140351%_
                              (let ()
                                (declare (not safe))
                                (##car _%e140289140348%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl140291140353%_))
                             (_%__kont146629146630%_)
                             (_%__kont146633146634%_))))
                     (_%__kont146633146634%_))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-eq? '%#quote _%hd140287140343%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl140288140345%_))
                         (let ((_%e140295140325%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl140288140345%_))))
                           (let ((_%tl140297140330%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e140295140325%_)))
                                 (_%hd140296140328%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e140295140325%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl140297140330%_))
                                 (_%__kont146631146632%_)
                                 (_%__kont146633146634%_))))
                         (_%__kont146633146634%_))
                     (_%__kont146633146634%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont146633146634%_))))
                                             (_%__kont146633146634%_)))))))
                             (if (let ()
                                   (declare (not safe))
                                   (##pair? _%rest140259140267%_))
                                 (let ((_%hd140264140364%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%rest140259140267%_)))
                                       (_%tl140265140366%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest140259140267%_))))
                                   (let* ((_%e140369%_ _%hd140264140364%_)
                                          (_%rest140371%_ _%tl140265140366%_))
                                     (_%K140263140361%_
                                      _%rest140371%_
                                      _%e140369%_)))
                                 (_%else140261140275%_))))))))
                (_%__kont146679146680%_
                 (lambda ()
                   (gxc#generate-runtime-call% _%self140126%_ _%stx140127%_))))
            (let ((_%__match146718146719%_
                   (lambda (_%e140134140171%_
                            _%hd140135140174%_
                            _%tl140136140176%_
                            _%e140137140179%_
                            _%hd140138140182%_
                            _%tl140139140184%_
                            _%e140140140187%_
                            _%hd140141140190%_
                            _%tl140142140192%_
                            _%e140143140195%_
                            _%hd140144140198%_
                            _%tl140145140200%_
                            _%__splice146677146678%_
                            _%target140146140203%_
                            _%tl140148140205%_)
                     (letrec ((_%loop140149140208%_
                               (lambda (_%hd140147140211%_
                                        _%rand140153140213%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd140147140211%_))
                                     (let ((_%e140150140216%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd140147140211%_))))
                                       (let ((_%lp-tl140152140221%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e140150140216%_)))
                                             (_%lp-hd140151140219%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e140150140216%_))))
                                         (_%loop140149140208%_
                                          _%lp-tl140152140221%_
                                          (cons _%lp-hd140151140219%_
                                                _%rand140153140213%_))))
                                     (let ((_%rand140154140224%_
                                            (reverse _%rand140153140213%_)))
                                       (_%__kont146675146676%_
                                        _%rand140154140224%_
                                        _%hd140144140198%_))))))
                       (_%loop140149140208%_ _%target140146140203%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx146673146674%_))
                  (let ((_%e140134140171%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx146673146674%_))))
                    (let ((_%tl140136140176%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e140134140171%_)))
                          (_%hd140135140174%_
                           (let ()
                             (declare (not safe))
                             (##car _%e140134140171%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl140136140176%_))
                          (let ((_%e140137140179%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl140136140176%_))))
                            (let ((_%tl140139140184%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e140137140179%_)))
                                  (_%hd140138140182%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e140137140179%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd140138140182%_))
                                  (let ((_%e140140140187%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd140138140182%_))))
                                    (let ((_%tl140142140192%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e140140140187%_)))
                                          (_%hd140141140190%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e140140140187%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd140141140190%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd140141140190%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl140142140192%_))
                                                  (let ((_%e140143140195%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl140142140192%_))))
                                                    (let ((_%tl140145140200%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e140143140195%_)))
                                                          (_%hd140144140198%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e140143140195%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl140145140200%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl140139140184%_))
                      (let ((_%__splice146677146678%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl140139140184%_
                                '0))))
                        (let ((_%tl140148140205%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice146677146678%_ '1)))
                              (_%target140146140203%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice146677146678%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl140148140205%_))
                              (_%__match146718146719%_
                               _%e140134140171%_
                               _%hd140135140174%_
                               _%tl140136140176%_
                               _%e140137140179%_
                               _%hd140138140182%_
                               _%tl140139140184%_
                               _%e140140140187%_
                               _%hd140141140190%_
                               _%tl140142140192%_
                               _%e140143140195%_
                               _%hd140144140198%_
                               _%tl140145140200%_
                               _%__splice146677146678%_
                               _%target140146140203%_
                               _%tl140148140205%_)
                              (_%__kont146679146680%_))))
                      (_%__kont146679146680%_))
                  (_%__kont146679146680%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont146679146680%_))
                                              (_%__kont146679146680%_))
                                          (_%__kont146679146680%_))))
                                  (_%__kont146679146680%_))))
                          (_%__kont146679146680%_))))
                  (_%__kont146679146680%_)))))))
    (define gxc#generate-runtime-if%
      (lambda (_%self139938%_ _%stx139939%_)
        (letrec ((_%simplify139941%_
                  (lambda (_%code140026%_)
                    (let* ((_%code140027140045%_ _%code140026%_)
                           (_%else140029140053%_ (lambda () _%code140026%_))
                           (_%K140031140089%_
                            (lambda (_%expr140056%_ _%test140057%_)
                              (let* ((_%expr140058140066%_ _%expr140056%_)
                                     (_%else140060140074%_
                                      (lambda ()
                                        (cons 'and
                                              (cons _%test140057%_
                                                    (cons _%expr140056%_
                                                          '())))))
                                     (_%K140062140079%_
                                      (lambda (_%exprs140077%_)
                                        (cons 'and
                                              (cons _%test140057%_
                                                    _%exprs140077%_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%expr140058140066%_))
                                    (let ((_%hd140063140082%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%expr140058140066%_)))
                                          (_%tl140064140084%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%expr140058140066%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _%hd140063140082%_ 'and))
                                          (let ((_%exprs140087%_
                                                 _%tl140064140084%_))
                                            (_%K140062140079%_
                                             _%exprs140087%_))
                                          (_%else140060140074%_)))
                                    (_%else140060140074%_))))))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%code140027140045%_))
                          (let ((_%hd140032140092%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%code140027140045%_)))
                                (_%tl140033140094%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%code140027140045%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##eq? _%hd140032140092%_ 'if))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%tl140033140094%_))
                                    (let ((_%hd140034140097%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl140033140094%_)))
                                          (_%tl140035140099%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl140033140094%_))))
                                      (let ((_%test140102%_
                                             _%hd140034140097%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##pair? _%tl140035140099%_))
                                            (let ((_%hd140036140104%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl140035140099%_)))
                                                  (_%tl140037140106%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl140035140099%_))))
                                              (let ((_%expr140109%_
                                                     _%hd140036140104%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _%tl140037140106%_))
                                                    (let ((_%hd140038140111%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl140037140106%_)))
                                                          (_%tl140039140113%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl140037140106%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##pair? _%hd140038140111%_))
                                                          (let ((_%hd140040140116%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%hd140038140111%_)))
                        (_%tl140041140118%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%hd140038140111%_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _%hd140040140116%_ 'quote))
                        (if (let ()
                              (declare (not safe))
                              (##pair? _%tl140041140118%_))
                            (let ((_%hd140042140121%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%tl140041140118%_)))
                                  (_%tl140043140123%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%tl140041140118%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd140042140121%_ '#f))
                                  (if (let ()
                                        (declare (not safe))
                                        (##null? _%tl140043140123%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl140039140113%_))
                                          (_%K140031140089%_
                                           _%expr140109%_
                                           _%test140102%_)
                                          (_%else140029140053%_))
                                      (_%else140029140053%_))
                                  (_%else140029140053%_)))
                            (_%else140029140053%_))
                        (_%else140029140053%_)))
                  (_%else140029140053%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else140029140053%_))))
                                            (_%else140029140053%_))))
                                    (_%else140029140053%_))
                                (_%else140029140053%_)))
                          (_%else140029140053%_))))))
          (let* ((_%g139943139964%_
                  (lambda (_%g139944139961%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g139944139961%_))))
                 (_%g139942140023%_
                  (lambda (_%g139944139967%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g139944139967%_))
                        (let ((_%e139948139969%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g139944139967%_))))
                          (let ((_%hd139949139972%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e139948139969%_)))
                                (_%tl139950139974%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e139948139969%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl139950139974%_))
                                (let ((_%e139951139977%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl139950139974%_))))
                                  (let ((_%hd139952139980%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e139951139977%_)))
                                        (_%tl139953139982%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e139951139977%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl139953139982%_))
                                        (let ((_%e139954139985%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl139953139982%_))))
                                          (let ((_%hd139955139988%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e139954139985%_)))
                                                (_%tl139956139990%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e139954139985%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl139956139990%_))
                                                (let ((_%e139957139993%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl139956139990%_))))
                                                  (let ((_%hd139958139996%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e139957139993%_)))
                                                        (_%tl139959139998%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e139957139993%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl139959139998%_))
                                                        ((lambda (_%L140001%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L140002%_
                          _%L140003%_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#current-compile-boolean-context))
                       (_%simplify139941%_
                        (cons 'if
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _%self139938%_
                                       _%L140003%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self139938%_
                                             _%L140002%_))
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self139938%_
                                                   _%L140001%_))
                                                '())))))
                       (cons 'if
                             (cons (let ((__tmp147173
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self139938%_
                                               _%L140003%_)))))
                                     (declare (not safe))
                                     (__call-with-parameters
                                      __tmp147173
                                      gxc#current-compile-boolean-context
                                      '#t))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self139938%_
                                            _%L140002%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self139938%_
                                                  _%L140001%_))
                                               '()))))))
                 _%hd139958139996%_
                 _%hd139955139988%_
                 _%hd139952139980%_)
                (_%g139943139964%_ _%g139944139967%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g139943139964%_
                                                 _%g139944139967%_))))
                                        (_%g139943139964%_
                                         _%g139944139967%_))))
                                (_%g139943139964%_ _%g139944139967%_))))
                        (_%g139943139964%_ _%g139944139967%_)))))
            (_%g139942140023%_ _%stx139939%_)))))
    (define gxc#generate-runtime-ref%
      (lambda (_%self139886%_ _%stx139887%_)
        (let* ((_%g139889139902%_
                (lambda (_%g139890139899%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g139890139899%_))))
               (_%g139888139935%_
                (lambda (_%g139890139905%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g139890139905%_))
                      (let ((_%e139892139907%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g139890139905%_))))
                        (let ((_%hd139893139910%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e139892139907%_)))
                              (_%tl139894139912%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e139892139907%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl139894139912%_))
                              (let ((_%e139895139915%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl139894139912%_))))
                                (let ((_%hd139896139918%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e139895139915%_)))
                                      (_%tl139897139920%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e139895139915%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl139897139920%_))
                                      ((lambda (_%L139923%_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#generate-runtime-binding-id
                                            _%L139923%_)))
                                       _%hd139896139918%_)
                                      (_%g139889139902%_ _%g139890139905%_))))
                              (_%g139889139902%_ _%g139890139905%_))))
                      (_%g139889139902%_ _%g139890139905%_)))))
          (_%g139888139935%_ _%stx139887%_))))
    (define gxc#generate-runtime-setq%
      (lambda (_%self139818%_ _%stx139819%_)
        (let* ((_%g139821139838%_
                (lambda (_%g139822139835%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g139822139835%_))))
               (_%g139820139883%_
                (lambda (_%g139822139841%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g139822139841%_))
                      (let ((_%e139825139843%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g139822139841%_))))
                        (let ((_%hd139826139846%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e139825139843%_)))
                              (_%tl139827139848%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e139825139843%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl139827139848%_))
                              (let ((_%e139828139851%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl139827139848%_))))
                                (let ((_%hd139829139854%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e139828139851%_)))
                                      (_%tl139830139856%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e139828139851%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl139830139856%_))
                                      (let ((_%e139831139859%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl139830139856%_))))
                                        (let ((_%hd139832139862%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e139831139859%_)))
                                              (_%tl139833139864%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e139831139859%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl139833139864%_))
                                              ((lambda (_%L139867%_
                                                        _%L139868%_)
                                                 (cons 'set!
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#generate-runtime-binding-id _%L139868%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _%self139818%_ _%L139867%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd139832139862%_
                                               _%hd139829139854%_)
                                              (_%g139821139838%_
                                               _%g139822139841%_))))
                                      (_%g139821139838%_ _%g139822139841%_))))
                              (_%g139821139838%_ _%g139822139841%_))))
                      (_%g139821139838%_ _%g139822139841%_)))))
          (_%g139820139883%_ _%stx139819%_))))
    (define gxc#generate-runtime-struct-instancep%
      (lambda (_%self139629%_ _%stx139630%_)
        (let* ((_%g139632139649%_
                (lambda (_%g139633139646%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g139633139646%_))))
               (_%g139631139815%_
                (lambda (_%g139633139652%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g139633139652%_))
                      (let ((_%e139636139654%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g139633139652%_))))
                        (let ((_%hd139637139657%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e139636139654%_)))
                              (_%tl139638139659%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e139636139654%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl139638139659%_))
                              (let ((_%e139639139662%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl139638139659%_))))
                                (let ((_%hd139640139665%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e139639139662%_)))
                                      (_%tl139641139667%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e139639139662%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl139641139667%_))
                                      (let ((_%e139642139670%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl139641139667%_))))
                                        (let ((_%hd139643139673%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e139642139670%_)))
                                              (_%tl139644139675%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e139642139670%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl139644139675%_))
                                              ((lambda (_%L139678%_
                                                        _%L139679%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self139629%_ _%L139678%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _%self139629%_ _%L139679%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp139694%_ ((_%rest139697%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L139679%_ (cons _%L139678%_ '())))
                                (_%bind139699%_ '())
                                (_%args139700%_ '()))
               (let* ((_%rest139701139709%_ _%rest139697%_)
                      (_%else139703139717%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind139699%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-instance-of?
                                                       _%args139700%_)
                                                 '()))))))
                      (_%K139705139803%_
                       (lambda (_%rest139720%_ _%e139721%_)
                         (let* ((_%__stx146721146722%_ _%e139721%_)
                                (_%g139726139744%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx146721146722%_)))))
                           (let ((_%__kont146723146724%_
                                  (lambda ()
                                    (_%lp139694%_
                                     _%rest139720%_
                                     _%bind139699%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e139721%_))
                                           _%args139700%_))))
                                 (_%__kont146725146726%_
                                  (lambda ()
                                    (_%lp139694%_
                                     _%rest139720%_
                                     _%bind139699%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e139721%_))
                                           _%args139700%_))))
                                 (_%__kont146727146728%_
                                  (lambda ()
                                    (let ((_%tmp139751%_
                                           (let ((__tmp147174
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp147174))))
                                      (_%lp139694%_
                                       _%rest139720%_
                                       (cons (cons _%tmp139751%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e139721%_))
                                                         '()))
                                             _%bind139699%_)
                                       (cons _%tmp139751%_ _%args139700%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx146721146722%_))
                                 (let ((_%e139728139782%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx146721146722%_))))
                                   (let ((_%tl139730139787%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e139728139782%_)))
                                         (_%hd139729139785%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e139728139782%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd139729139785%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd139729139785%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl139730139787%_))
                                                 (let ((_%e139731139790%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl139730139787%_))))
                                                   (let ((_%tl139733139795%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e139731139790%_)))
                                                         (_%hd139732139793%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e139731139790%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl139733139795%_))
                                                         (_%__kont146723146724%_)
                                                         (_%__kont146727146728%_))))
                                                 (_%__kont146727146728%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd139729139785%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl139730139787%_))
                                                     (let ((_%e139737139767%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl139730139787%_))))
                                                       (let ((_%tl139739139772%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e139737139767%_)))
                     (_%hd139738139770%_
                      (let () (declare (not safe)) (##car _%e139737139767%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl139739139772%_))
                     (_%__kont146725146726%_)
                     (_%__kont146727146728%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont146727146728%_))
                                                 (_%__kont146727146728%_)))
                                         (_%__kont146727146728%_))))
                                 (_%__kont146727146728%_)))))))
                 (if (let ()
                       (declare (not safe))
                       (##pair? _%rest139701139709%_))
                     (let ((_%hd139706139806%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest139701139709%_)))
                           (_%tl139707139808%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest139701139709%_))))
                       (let* ((_%e139811%_ _%hd139706139806%_)
                              (_%rest139813%_ _%tl139707139808%_))
                         (_%K139705139803%_ _%rest139813%_ _%e139811%_)))
                     (_%else139703139717%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd139643139673%_
                                               _%hd139640139665%_)
                                              (_%g139632139649%_
                                               _%g139633139652%_))))
                                      (_%g139632139649%_ _%g139633139652%_))))
                              (_%g139632139649%_ _%g139633139652%_))))
                      (_%g139632139649%_ _%g139633139652%_)))))
          (_%g139631139815%_ _%stx139630%_))))
    (define gxc#generate-runtime-struct-direct-instancep%
      (lambda (_%self139440%_ _%stx139441%_)
        (let* ((_%g139443139460%_
                (lambda (_%g139444139457%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g139444139457%_))))
               (_%g139442139626%_
                (lambda (_%g139444139463%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g139444139463%_))
                      (let ((_%e139447139465%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g139444139463%_))))
                        (let ((_%hd139448139468%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e139447139465%_)))
                              (_%tl139449139470%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e139447139465%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl139449139470%_))
                              (let ((_%e139450139473%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl139449139470%_))))
                                (let ((_%hd139451139476%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e139450139473%_)))
                                      (_%tl139452139478%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e139450139473%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl139452139478%_))
                                      (let ((_%e139453139481%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl139452139478%_))))
                                        (let ((_%hd139454139484%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e139453139481%_)))
                                              (_%tl139455139486%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e139453139481%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl139455139486%_))
                                              ((lambda (_%L139489%_
                                                        _%L139490%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-direct-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self139440%_ _%L139489%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _%self139440%_ _%L139490%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp139505%_ ((_%rest139508%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L139490%_ (cons _%L139489%_ '())))
                                (_%bind139510%_ '())
                                (_%args139511%_ '()))
               (let* ((_%rest139512139520%_ _%rest139508%_)
                      (_%else139514139528%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind139510%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-direct-instance-of?
                                                       _%args139511%_)
                                                 '()))))))
                      (_%K139516139614%_
                       (lambda (_%rest139531%_ _%e139532%_)
                         (let* ((_%__stx146767146768%_ _%e139532%_)
                                (_%g139537139555%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx146767146768%_)))))
                           (let ((_%__kont146769146770%_
                                  (lambda ()
                                    (_%lp139505%_
                                     _%rest139531%_
                                     _%bind139510%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e139532%_))
                                           _%args139511%_))))
                                 (_%__kont146771146772%_
                                  (lambda ()
                                    (_%lp139505%_
                                     _%rest139531%_
                                     _%bind139510%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e139532%_))
                                           _%args139511%_))))
                                 (_%__kont146773146774%_
                                  (lambda ()
                                    (let ((_%tmp139562%_
                                           (let ((__tmp147175
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp147175))))
                                      (_%lp139505%_
                                       _%rest139531%_
                                       (cons (cons _%tmp139562%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e139532%_))
                                                         '()))
                                             _%bind139510%_)
                                       (cons _%tmp139562%_ _%args139511%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx146767146768%_))
                                 (let ((_%e139539139593%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx146767146768%_))))
                                   (let ((_%tl139541139598%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e139539139593%_)))
                                         (_%hd139540139596%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e139539139593%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd139540139596%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd139540139596%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl139541139598%_))
                                                 (let ((_%e139542139601%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl139541139598%_))))
                                                   (let ((_%tl139544139606%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e139542139601%_)))
                                                         (_%hd139543139604%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e139542139601%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl139544139606%_))
                                                         (_%__kont146769146770%_)
                                                         (_%__kont146773146774%_))))
                                                 (_%__kont146773146774%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd139540139596%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl139541139598%_))
                                                     (let ((_%e139548139578%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl139541139598%_))))
                                                       (let ((_%tl139550139583%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e139548139578%_)))
                     (_%hd139549139581%_
                      (let () (declare (not safe)) (##car _%e139548139578%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl139550139583%_))
                     (_%__kont146771146772%_)
                     (_%__kont146773146774%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont146773146774%_))
                                                 (_%__kont146773146774%_)))
                                         (_%__kont146773146774%_))))
                                 (_%__kont146773146774%_)))))))
                 (if (let ()
                       (declare (not safe))
                       (##pair? _%rest139512139520%_))
                     (let ((_%hd139517139617%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest139512139520%_)))
                           (_%tl139518139619%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest139512139520%_))))
                       (let* ((_%e139622%_ _%hd139517139617%_)
                              (_%rest139624%_ _%tl139518139619%_))
                         (_%K139516139614%_ _%rest139624%_ _%e139622%_)))
                     (_%else139514139528%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd139454139484%_
                                               _%hd139451139476%_)
                                              (_%g139443139460%_
                                               _%g139444139463%_))))
                                      (_%g139443139460%_ _%g139444139463%_))))
                              (_%g139443139460%_ _%g139444139463%_))))
                      (_%g139443139460%_ _%g139444139463%_)))))
          (_%g139442139626%_ _%stx139441%_))))
    (define gxc#generate-runtime-struct-ref%
      (lambda (_%self139356%_ _%stx139357%_)
        (let* ((_%g139359139380%_
                (lambda (_%g139360139377%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g139360139377%_))))
               (_%g139358139437%_
                (lambda (_%g139360139383%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g139360139383%_))
                      (let ((_%e139364139385%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g139360139383%_))))
                        (let ((_%hd139365139388%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e139364139385%_)))
                              (_%tl139366139390%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e139364139385%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl139366139390%_))
                              (let ((_%e139367139393%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl139366139390%_))))
                                (let ((_%hd139368139396%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e139367139393%_)))
                                      (_%tl139369139398%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e139367139393%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl139369139398%_))
                                      (let ((_%e139370139401%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl139369139398%_))))
                                        (let ((_%hd139371139404%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e139370139401%_)))
                                              (_%tl139372139406%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e139370139401%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl139372139406%_))
                                              (let ((_%e139373139409%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl139372139406%_))))
                                                (let ((_%hd139374139412%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e139373139409%_)))
                                                      (_%tl139375139414%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e139373139409%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl139375139414%_))
                                                      ((lambda (_%L139417%_
                                                                _%L139418%_
                                                                _%L139419%_)
                                                         (cons '##structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1 _%self139356%_ _%L139417%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self139356%_
                                      _%L139418%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self139356%_
                                            _%L139419%_))
                                         (cons ''#f '()))))))
               _%hd139374139412%_
               _%hd139371139404%_
               _%hd139368139396%_)
              (_%g139359139380%_ _%g139360139383%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g139359139380%_
                                               _%g139360139383%_))))
                                      (_%g139359139380%_ _%g139360139383%_))))
                              (_%g139359139380%_ _%g139360139383%_))))
                      (_%g139359139380%_ _%g139360139383%_)))))
          (_%g139358139437%_ _%stx139357%_))))
    (define gxc#generate-runtime-struct-setq%
      (lambda (_%self139256%_ _%stx139257%_)
        (let* ((_%g139259139284%_
                (lambda (_%g139260139281%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g139260139281%_))))
               (_%g139258139353%_
                (lambda (_%g139260139287%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g139260139287%_))
                      (let ((_%e139265139289%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g139260139287%_))))
                        (let ((_%hd139266139292%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e139265139289%_)))
                              (_%tl139267139294%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e139265139289%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl139267139294%_))
                              (let ((_%e139268139297%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl139267139294%_))))
                                (let ((_%hd139269139300%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e139268139297%_)))
                                      (_%tl139270139302%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e139268139297%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl139270139302%_))
                                      (let ((_%e139271139305%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl139270139302%_))))
                                        (let ((_%hd139272139308%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e139271139305%_)))
                                              (_%tl139273139310%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e139271139305%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl139273139310%_))
                                              (let ((_%e139274139313%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl139273139310%_))))
                                                (let ((_%hd139275139316%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e139274139313%_)))
                                                      (_%tl139276139318%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e139274139313%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl139276139318%_))
                                                      (let ((_%e139277139321%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl139276139318%_))))
                (let ((_%hd139278139324%_
                       (let () (declare (not safe)) (##car _%e139277139321%_)))
                      (_%tl139279139326%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e139277139321%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl139279139326%_))
                      ((lambda (_%L139329%_
                                _%L139330%_
                                _%L139331%_
                                _%L139332%_)
                         (cons '##structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self139256%_
                                        _%L139330%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self139256%_
                                              _%L139329%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self139256%_
                                                    _%L139331%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self139256%_
                                                          _%L139332%_))
                                                       (cons ''#f '())))))))
                       _%hd139278139324%_
                       _%hd139275139316%_
                       _%hd139272139308%_
                       _%hd139269139300%_)
                      (_%g139259139284%_ _%g139260139287%_))))
              (_%g139259139284%_ _%g139260139287%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g139259139284%_
                                               _%g139260139287%_))))
                                      (_%g139259139284%_ _%g139260139287%_))))
                              (_%g139259139284%_ _%g139260139287%_))))
                      (_%g139259139284%_ _%g139260139287%_)))))
          (_%g139258139353%_ _%stx139257%_))))
    (define gxc#generate-runtime-struct-direct-ref%
      (lambda (_%self139172%_ _%stx139173%_)
        (let* ((_%g139175139196%_
                (lambda (_%g139176139193%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g139176139193%_))))
               (_%g139174139253%_
                (lambda (_%g139176139199%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g139176139199%_))
                      (let ((_%e139180139201%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g139176139199%_))))
                        (let ((_%hd139181139204%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e139180139201%_)))
                              (_%tl139182139206%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e139180139201%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl139182139206%_))
                              (let ((_%e139183139209%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl139182139206%_))))
                                (let ((_%hd139184139212%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e139183139209%_)))
                                      (_%tl139185139214%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e139183139209%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl139185139214%_))
                                      (let ((_%e139186139217%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl139185139214%_))))
                                        (let ((_%hd139187139220%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e139186139217%_)))
                                              (_%tl139188139222%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e139186139217%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl139188139222%_))
                                              (let ((_%e139189139225%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl139188139222%_))))
                                                (let ((_%hd139190139228%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e139189139225%_)))
                                                      (_%tl139191139230%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e139189139225%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl139191139230%_))
                                                      ((lambda (_%L139233%_
                                                                _%L139234%_
                                                                _%L139235%_)
                                                         (cons '##direct-structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1 _%self139172%_ _%L139233%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self139172%_
                                      _%L139234%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self139172%_
                                            _%L139235%_))
                                         (cons ''#f '()))))))
               _%hd139190139228%_
               _%hd139187139220%_
               _%hd139184139212%_)
              (_%g139175139196%_ _%g139176139199%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g139175139196%_
                                               _%g139176139199%_))))
                                      (_%g139175139196%_ _%g139176139199%_))))
                              (_%g139175139196%_ _%g139176139199%_))))
                      (_%g139175139196%_ _%g139176139199%_)))))
          (_%g139174139253%_ _%stx139173%_))))
    (define gxc#generate-runtime-struct-direct-setq%
      (lambda (_%self139072%_ _%stx139073%_)
        (let* ((_%g139075139100%_
                (lambda (_%g139076139097%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g139076139097%_))))
               (_%g139074139169%_
                (lambda (_%g139076139103%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g139076139103%_))
                      (let ((_%e139081139105%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g139076139103%_))))
                        (let ((_%hd139082139108%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e139081139105%_)))
                              (_%tl139083139110%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e139081139105%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl139083139110%_))
                              (let ((_%e139084139113%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl139083139110%_))))
                                (let ((_%hd139085139116%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e139084139113%_)))
                                      (_%tl139086139118%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e139084139113%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl139086139118%_))
                                      (let ((_%e139087139121%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl139086139118%_))))
                                        (let ((_%hd139088139124%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e139087139121%_)))
                                              (_%tl139089139126%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e139087139121%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl139089139126%_))
                                              (let ((_%e139090139129%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl139089139126%_))))
                                                (let ((_%hd139091139132%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e139090139129%_)))
                                                      (_%tl139092139134%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e139090139129%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl139092139134%_))
                                                      (let ((_%e139093139137%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl139092139134%_))))
                (let ((_%hd139094139140%_
                       (let () (declare (not safe)) (##car _%e139093139137%_)))
                      (_%tl139095139142%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e139093139137%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl139095139142%_))
                      ((lambda (_%L139145%_
                                _%L139146%_
                                _%L139147%_
                                _%L139148%_)
                         (cons '##direct-structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self139072%_
                                        _%L139146%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self139072%_
                                              _%L139145%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self139072%_
                                                    _%L139147%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self139072%_
                                                          _%L139148%_))
                                                       (cons ''#f '())))))))
                       _%hd139094139140%_
                       _%hd139091139132%_
                       _%hd139088139124%_
                       _%hd139085139116%_)
                      (_%g139075139100%_ _%g139076139103%_))))
              (_%g139075139100%_ _%g139076139103%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g139075139100%_
                                               _%g139076139103%_))))
                                      (_%g139075139100%_ _%g139076139103%_))))
                              (_%g139075139100%_ _%g139076139103%_))))
                      (_%g139075139100%_ _%g139076139103%_)))))
          (_%g139074139169%_ _%stx139073%_))))
    (define gxc#generate-runtime-struct-unchecked-ref%
      (lambda (_%self138867%_ _%stx138868%_)
        (let* ((_%g138870138891%_
                (lambda (_%g138871138888%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138871138888%_))))
               (_%g138869139069%_
                (lambda (_%g138871138894%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138871138894%_))
                      (let ((_%e138875138896%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138871138894%_))))
                        (let ((_%hd138876138899%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138875138896%_)))
                              (_%tl138877138901%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138875138896%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138877138901%_))
                              (let ((_%e138878138904%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138877138901%_))))
                                (let ((_%hd138879138907%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138878138904%_)))
                                      (_%tl138880138909%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138878138904%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl138880138909%_))
                                      (let ((_%e138881138912%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl138880138909%_))))
                                        (let ((_%hd138882138915%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e138881138912%_)))
                                              (_%tl138883138917%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e138881138912%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl138883138917%_))
                                              (let ((_%e138884138920%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl138883138917%_))))
                                                (let ((_%hd138885138923%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e138884138920%_)))
                                                      (_%tl138886138925%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e138884138920%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl138886138925%_))
                                                      ((lambda (_%L138928%_
                                                                _%L138929%_
                                                                _%L138930%_)
                                                         (if (gxc#current-compile-decls-unsafe?)
                                                             (cons '##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__1
                                    _%self138867%_
                                    _%L138928%_))
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self138867%_
                                          _%L138929%_))
                                       (cons ''#f (cons ''#f '())))))
                     (let _%lp138948%_ ((_%rest138951%_
                                         (cons _%L138929%_
                                               (cons _%L138928%_ '())))
                                        (_%bind138953%_ '())
                                        (_%args138954%_ '()))
                       (let* ((_%rest138955138963%_ _%rest138951%_)
                              (_%else138957138971%_
                               (lambda ()
                                 (cons 'let
                                       (cons _%bind138953%_
                                             (cons '(declare (not safe))
                                                   (cons (cons '##unchecked-structure-ref
                                                               (let ((__tmp147176
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons ''#f (cons ''#f '()))))
                         (declare (not safe))
                         (__foldr1 cons __tmp147176 _%args138954%_)))
                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%K138959139057%_
                               (lambda (_%rest138974%_ _%e138975%_)
                                 (let* ((_%__stx146813146814%_ _%e138975%_)
                                        (_%g138980138998%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx146813146814%_)))))
                                   (let ((_%__kont146815146816%_
                                          (lambda ()
                                            (_%lp138948%_
                                             _%rest138974%_
                                             _%bind138953%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e138975%_))
                                                   _%args138954%_))))
                                         (_%__kont146817146818%_
                                          (lambda ()
                                            (_%lp138948%_
                                             _%rest138974%_
                                             _%bind138953%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e138975%_))
                                                   _%args138954%_))))
                                         (_%__kont146819146820%_
                                          (lambda ()
                                            (let ((_%tmp139005%_
                                                   (let ((__tmp147177
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym
                                                             '__tmp))))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp147177))))
                                              (_%lp138948%_
                                               _%rest138974%_
                                               (cons (cons _%tmp139005%_
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__0 _%e138975%_))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind138953%_)
                                               (cons _%tmp139005%_
                                                     _%args138954%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx146813146814%_))
                                         (let ((_%e138982139036%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx146813146814%_))))
                                           (let ((_%tl138984139041%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e138982139036%_)))
                                                 (_%hd138983139039%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e138982139036%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd138983139039%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#ref
                                                        _%hd138983139039%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl138984139041%_))
                                                         (let ((_%e138985139044%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl138984139041%_))))
                   (let ((_%tl138987139049%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e138985139044%_)))
                         (_%hd138986139047%_
                          (let ()
                            (declare (not safe))
                            (##car _%e138985139044%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl138987139049%_))
                         (_%__kont146815146816%_)
                         (_%__kont146819146820%_))))
                 (_%__kont146819146820%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#quote
                                                            _%hd138983139039%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl138984139041%_))
                     (let ((_%e138991139021%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl138984139041%_))))
                       (let ((_%tl138993139026%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e138991139021%_)))
                             (_%hd138992139024%_
                              (let ()
                                (declare (not safe))
                                (##car _%e138991139021%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl138993139026%_))
                             (_%__kont146817146818%_)
                             (_%__kont146819146820%_))))
                     (_%__kont146819146820%_))
                 (_%__kont146819146820%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont146819146820%_))))
                                         (_%__kont146819146820%_)))))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%rest138955138963%_))
                             (let ((_%hd138960139060%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest138955138963%_)))
                                   (_%tl138961139062%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest138955138963%_))))
                               (let* ((_%e139065%_ _%hd138960139060%_)
                                      (_%rest139067%_ _%tl138961139062%_))
                                 (_%K138959139057%_
                                  _%rest139067%_
                                  _%e139065%_)))
                             (_%else138957138971%_))))))
               _%hd138885138923%_
               _%hd138882138915%_
               _%hd138879138907%_)
              (_%g138870138891%_ _%g138871138894%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g138870138891%_
                                               _%g138871138894%_))))
                                      (_%g138870138891%_ _%g138871138894%_))))
                              (_%g138870138891%_ _%g138871138894%_))))
                      (_%g138870138891%_ _%g138871138894%_)))))
          (_%g138869139069%_ _%stx138868%_))))
    (define gxc#generate-runtime-struct-unchecked-setq%
      (lambda (_%self138646%_ _%stx138647%_)
        (let* ((_%g138649138674%_
                (lambda (_%g138650138671%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138650138671%_))))
               (_%g138648138864%_
                (lambda (_%g138650138677%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138650138677%_))
                      (let ((_%e138655138679%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138650138677%_))))
                        (let ((_%hd138656138682%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138655138679%_)))
                              (_%tl138657138684%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138655138679%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138657138684%_))
                              (let ((_%e138658138687%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138657138684%_))))
                                (let ((_%hd138659138690%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138658138687%_)))
                                      (_%tl138660138692%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138658138687%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl138660138692%_))
                                      (let ((_%e138661138695%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl138660138692%_))))
                                        (let ((_%hd138662138698%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e138661138695%_)))
                                              (_%tl138663138700%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e138661138695%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl138663138700%_))
                                              (let ((_%e138664138703%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl138663138700%_))))
                                                (let ((_%hd138665138706%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e138664138703%_)))
                                                      (_%tl138666138708%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e138664138703%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl138666138708%_))
                                                      (let ((_%e138667138711%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl138666138708%_))))
                (let ((_%hd138668138714%_
                       (let () (declare (not safe)) (##car _%e138667138711%_)))
                      (_%tl138669138716%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e138667138711%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl138669138716%_))
                      ((lambda (_%L138719%_
                                _%L138720%_
                                _%L138721%_
                                _%L138722%_)
                         (if (gxc#current-compile-decls-unsafe?)
                             (cons '##unchecked-structure-set!
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self138646%_
                                            _%L138720%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self138646%_
                                                  _%L138719%_))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self138646%_
                                                        _%L138721%_))
                                                     (cons ''#f
                                                           (cons ''#f '()))))))
                             (let _%lp138743%_ ((_%rest138746%_
                                                 (cons _%L138721%_
                                                       (cons _%L138719%_
                                                             (cons _%L138720%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%bind138748%_ '())
                                                (_%args138749%_ '()))
                               (let* ((_%rest138750138758%_ _%rest138746%_)
                                      (_%else138752138766%_
                                       (lambda ()
                                         (cons 'let
                                               (cons _%bind138748%_
                                                     (cons '(declare
                                                              (not safe))
                                                           (cons (cons '##unchecked-structure-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp147178 (cons ''#f (cons ''#f '()))))
                                 (declare (not safe))
                                 (__foldr1 cons __tmp147178 _%args138749%_)))
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%K138754138852%_
                                       (lambda (_%rest138769%_ _%e138770%_)
                                         (let* ((_%__stx146859146860%_
                                                 _%e138770%_)
                                                (_%g138775138793%_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%__stx146859146860%_)))))
                                           (let ((_%__kont146861146862%_
                                                  (lambda ()
                                                    (_%lp138743%_
                                                     _%rest138769%_
                                                     _%bind138748%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e138770%_))
                                                           _%args138749%_))))
                                                 (_%__kont146863146864%_
                                                  (lambda ()
                                                    (_%lp138743%_
                                                     _%rest138769%_
                                                     _%bind138748%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e138770%_))
                                                           _%args138749%_))))
                                                 (_%__kont146865146866%_
                                                  (lambda ()
                                                    (let ((_%tmp138800%_
                                                           (let ((__tmp147179
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__tmp))))
                     (declare (not safe))
                     (make-symbol__0 __tmp147179))))
              (_%lp138743%_
               _%rest138769%_
               (cons (cons _%tmp138800%_
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__0 _%e138770%_))
                                 '()))
                     _%bind138748%_)
               (cons _%tmp138800%_ _%args138749%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%__stx146859146860%_))
                                                 (let ((_%e138777138831%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%__stx146859146860%_))))
                                                   (let ((_%tl138779138836%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e138777138831%_)))
                                                         (_%hd138778138834%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e138777138831%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _%hd138778138834%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-eq? '%#ref _%hd138778138834%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl138779138836%_))
                         (let ((_%e138780138839%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl138779138836%_))))
                           (let ((_%tl138782138844%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e138780138839%_)))
                                 (_%hd138781138842%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e138780138839%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl138782138844%_))
                                 (_%__kont146861146862%_)
                                 (_%__kont146865146866%_))))
                         (_%__kont146865146866%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-eq? '%#quote _%hd138778138834%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%tl138779138836%_))
                             (let ((_%e138786138816%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%tl138779138836%_))))
                               (let ((_%tl138788138821%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e138786138816%_)))
                                     (_%hd138787138819%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e138786138816%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%tl138788138821%_))
                                     (_%__kont146863146864%_)
                                     (_%__kont146865146866%_))))
                             (_%__kont146865146866%_))
                         (_%__kont146865146866%_)))
                 (_%__kont146865146866%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont146865146866%_)))))))
                                 (if (let ()
                                       (declare (not safe))
                                       (##pair? _%rest138750138758%_))
                                     (let ((_%hd138755138855%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%rest138750138758%_)))
                                           (_%tl138756138857%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%rest138750138758%_))))
                                       (let* ((_%e138860%_ _%hd138755138855%_)
                                              (_%rest138862%_
                                               _%tl138756138857%_))
                                         (_%K138754138852%_
                                          _%rest138862%_
                                          _%e138860%_)))
                                     (_%else138752138766%_))))))
                       _%hd138668138714%_
                       _%hd138665138706%_
                       _%hd138662138698%_
                       _%hd138659138690%_)
                      (_%g138649138674%_ _%g138650138677%_))))
              (_%g138649138674%_ _%g138650138677%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g138649138674%_
                                               _%g138650138677%_))))
                                      (_%g138649138674%_ _%g138650138677%_))))
                              (_%g138649138674%_ _%g138650138677%_))))
                      (_%g138649138674%_ _%g138650138677%_)))))
          (_%g138648138864%_ _%stx138647%_))))
    (define gxc#generate-runtime-loader-import%
      (lambda (_%self138485%_ _%stx138486%_)
        (letrec ((_%import-set-template138488%_
                  (lambda (_%in138591%_ _%phi138592%_)
                    (let ((_%iphi138594%_
                           (fx+ _%phi138592%_
                                (##direct-structure-ref
                                 _%in138591%_
                                 '2
                                 gx#import-set::t
                                 '#f)))
                          (_%imports138595%_
                           (##structure-ref
                            (##direct-structure-ref
                             _%in138591%_
                             '1
                             gx#import-set::t
                             '#f)
                            '8
                            gx#module-context::t
                            '#f)))
                      (let _%lp138597%_ ((_%rest138599%_ _%imports138595%_)
                                         (_%r138600%_ '()))
                        (let* ((_%rest138601138609%_ _%rest138599%_)
                               (_%else138603138617%_ (lambda () _%r138600%_))
                               (_%K138605138634%_
                                (lambda (_%rest138620%_ _%in138621%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%in138621%_
                                         'gx#module-context::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxzero? _%iphi138594%_))
                                          (_%lp138597%_
                                           _%rest138620%_
                                           (cons _%in138621%_ _%r138600%_))
                                          (_%lp138597%_
                                           _%rest138620%_
                                           _%r138600%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%in138621%_
                                             'gx#module-import::t))
                                          (let ((_%iphi138625%_
                                                 (fx+ _%phi138592%_
                                                      (##direct-structure-ref
                                                       _%in138621%_
                                                       '3
                                                       gx#module-import::t
                                                       '#f))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##fxzero? _%iphi138625%_))
                                                (_%lp138597%_
                                                 _%rest138620%_
                                                 (cons (##direct-structure-ref
                                                        (##direct-structure-ref
                                                         _%in138621%_
                                                         '1
                                                         gx#module-import::t
                                                         '#f)
                                                        '1
                                                        gx#module-export::t
                                                        '#f)
                                                       _%r138600%_))
                                                (_%lp138597%_
                                                 _%rest138620%_
                                                 _%r138600%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 _%in138621%_
                                                 'gx#import-set::t))
                                              (let ((_%xphi138628%_
                                                     (fx+ _%iphi138594%_
                                                          (##direct-structure-ref
                                                           _%in138621%_
                                                           '2
                                                           gx#import-set::t
                                                           '#f))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##fxzero?
                                                       _%xphi138628%_))
                                                    (_%lp138597%_
                                                     _%rest138620%_
                                                     (cons (##direct-structure-ref
                                                            _%in138621%_
                                                            '1
                                                            gx#import-set::t
                                                            '#f)
                                                           _%r138600%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##fxpositive?
                                                           _%xphi138628%_))
                                                        (_%lp138597%_
                                                         _%rest138620%_
                                                         (let ((__tmp147180
                                                                (_%import-set-template138488%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in138621%_
                         _%iphi138594%_)))
                   (declare (not safe))
                   (__foldl1 cons _%r138600%_ __tmp147180)))
                (_%lp138597%_ _%rest138620%_ _%r138600%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%lp138597%_
                                               _%rest138620%_
                                               _%r138600%_)))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest138601138609%_))
                              (let ((_%hd138606138637%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest138601138609%_)))
                                    (_%tl138607138639%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest138601138609%_))))
                                (let* ((_%in138642%_ _%hd138606138637%_)
                                       (_%rest138644%_ _%tl138607138639%_))
                                  (_%K138605138634%_
                                   _%rest138644%_
                                   _%in138642%_)))
                              (_%else138603138617%_))))))))
          (let* ((_%g138490138500%_
                  (lambda (_%g138491138497%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g138491138497%_))))
                 (_%g138489138588%_
                  (lambda (_%g138491138503%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g138491138503%_))
                        (let ((_%e138493138505%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g138491138503%_))))
                          (let ((_%hd138494138508%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e138493138505%_)))
                                (_%tl138495138510%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e138493138505%_))))
                            ((lambda (_%L138513%_)
                               (let ((_%ht138524%_
                                      (let ()
                                        (declare (not safe))
                                        (make-hash-table-eq))))
                                 (let _%lp138526%_ ((_%rest138528%_
                                                     _%L138513%_)
                                                    (_%loads138529%_ '()))
                                   (letrec ((_%K138531%_
                                             (lambda (_%ctx138581%_
                                                      _%rest138582%_)
                                               (let ((_%id138584%_
                                                      (##structure-ref
                                                       _%ctx138581%_
                                                       '1
                                                       gx#expander-context::t
                                                       '#f)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (hash-get
                                                        _%ht138524%_
                                                        _%id138584%_))
                                                     (_%lp138526%_
                                                      _%rest138582%_
                                                      _%loads138529%_)
                                                     (let ((_%rt138586%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#module-id->path-string
                                                               _%id138584%_))))
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _%ht138524%_
                                                          _%id138584%_
                                                          _%rt138586%_))
                                                       (_%lp138526%_
                                                        _%rest138582%_
                                                        (cons _%rt138586%_
                                                              _%loads138529%_))))))))
                                     (let* ((_%rest138532138540%_
                                             _%rest138528%_)
                                            (_%else138534138552%_
                                             (lambda ()
                                               (cons 'begin
                                                     (let ((__tmp147182
                                                            (lambda (_%g138547138549%_)
                                                              (list 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g138547138549%_)))
                   (__tmp147181 (reverse _%loads138529%_)))
               (declare (not safe))
               (##map __tmp147182 __tmp147181)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%K138536138569%_
                                             (lambda (_%rest138555%_
                                                      _%in138556%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-instance-of?
                                                      _%in138556%_
                                                      'gx#module-context::t))
                                                   (_%K138531%_
                                                    _%in138556%_
                                                    _%rest138555%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          _%in138556%_
                                                          'gx#module-import::t))
                                                       (if (fxzero? (##direct-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%in138556%_
                             '3
                             gx#module-import::t
                             '#f))
                   (_%K138531%_
                    (##direct-structure-ref
                     (##direct-structure-ref
                      _%in138556%_
                      '1
                      gx#module-import::t
                      '#f)
                     '1
                     gx#module-export::t
                     '#f)
                    _%rest138555%_)
                   (_%lp138526%_ _%rest138555%_ _%loads138529%_))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%in138556%_
                      'gx#import-set::t))
                   (let ((_%phi138561%_
                          (##direct-structure-ref
                           _%in138556%_
                           '2
                           gx#import-set::t
                           '#f)))
                     (if (fxzero? _%phi138561%_)
                         (_%K138531%_
                          (##direct-structure-ref
                           _%in138556%_
                           '1
                           gx#import-set::t
                           '#f)
                          _%rest138555%_)
                         (if (fxpositive? _%phi138561%_)
                             (let ((_%deps138565%_
                                    (_%import-set-template138488%_
                                     _%in138556%_
                                     '0)))
                               (_%lp138526%_
                                (let ()
                                  (declare (not safe))
                                  (__foldl1
                                   cons
                                   _%rest138555%_
                                   _%deps138565%_))
                                _%loads138529%_))
                             (_%lp138526%_ _%rest138555%_ _%loads138529%_))))
                   (let ()
                     (declare (not safe))
                     (gxc#raise-compile-error
                      '"Unexpected import"
                      _%stx138486%_
                      _%in138556%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (let ()
                                             (declare (not safe))
                                             (##pair? _%rest138532138540%_))
                                           (let ((_%hd138537138572%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%rest138532138540%_)))
                                                 (_%tl138538138574%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%rest138532138540%_))))
                                             (let* ((_%in138577%_
                                                     _%hd138537138572%_)
                                                    (_%rest138579%_
                                                     _%tl138538138574%_))
                                               (_%K138536138569%_
                                                _%rest138579%_
                                                _%in138577%_)))
                                           (_%else138534138552%_)))))))
                             _%tl138495138510%_)))
                        (_%g138490138500%_ _%g138491138503%_)))))
            (_%g138489138588%_ _%stx138486%_)))))
    (define gxc#generate-runtime-quote-syntax%
      (lambda (_%self138298%_ _%stx138299%_)
        (letrec ((_%add-lift!138301%_
                  (lambda (_%expr138483%_)
                    (set-box!
                     (let () (declare (not safe)) (gxc#current-compile-lift))
                     (cons _%expr138483%_
                           (unbox (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-lift)))))))
                 (_%generate-syntax-quote138302%_
                  (lambda (_%id138480%_ _%marks138481%_)
                    (cons '##structure
                          (cons 'gx#syntax-quote::t
                                (cons (cons 'quote (cons _%id138480%_ '()))
                                      (cons '#f
                                            (cons '(gx#current-expander-context)
                                                  (cons _%marks138481%_
                                                        '()))))))))
                 (_%generate-simple138303%_
                  (lambda (_%stxq138475%_)
                    (let ((_%gid138477%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__% '#t)))
                          (_%qid138478%_
                           (gxc#generate-runtime-identifier _%stxq138475%_)))
                      (_%add-lift!138301%_
                       (cons 'define
                             (cons _%gid138477%_
                                   (cons (_%generate-syntax-quote138302%_
                                          _%qid138478%_
                                          ''())
                                         '()))))
                      (let ((__tmp147183
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp147183 _%stxq138475%_ _%gid138477%_))
                      _%gid138477%_)))
                 (_%generate-serialized138304%_
                  (lambda (_%stxq138465%_ _%marks138466%_)
                    (let* ((_%mark-refs138468%_
                            (map _%generate-mark138305%_ _%marks138466%_))
                           (_%gid138470%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%qid138472%_
                            (gxc#generate-runtime-identifier _%stxq138465%_)))
                      (_%add-lift!138301%_
                       (cons 'define
                             (cons _%gid138470%_
                                   (cons (_%generate-syntax-quote138302%_
                                          _%qid138472%_
                                          (cons 'list _%mark-refs138468%_))
                                         '()))))
                      (let ((__tmp147184
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp147184 _%stxq138465%_ _%gid138470%_))
                      _%gid138470%_)))
                 (_%generate-mark138305%_
                  (lambda (_%mark138450%_)
                    (let ((_%$e138452%_
                           (let ((__tmp147185
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-marks))))
                             (declare (not safe))
                             (hash-get __tmp147185 _%mark138450%_))))
                      (if _%$e138452%_
                          (values _%$e138452%_)
                          (let* ((_%gid138456%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-temporary__% '#t)))
                                 (_%repr138458%_
                                  (_%serialize-mark138306%_ _%mark138450%_))
                                 (_%ctx138460%_
                                  (let ((__tmp147186
                                         (##structure-ref
                                          _%mark138450%_
                                          '2
                                          gx#expander-mark::t
                                          '#f)))
                                    (declare (not safe))
                                    (gx#core-context-top__1 __tmp147186)))
                                 (_%ctx-ref138462%_
                                  (if (eq? _%ctx138460%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-context)))
                                      '(gx#current-expander-context)
                                      (cons 'gx#import-module
                                            (cons (cons 'quote
                                                        (cons (_%context-ref138307%_
                                                               _%ctx138460%_)
                                                              '()))
                                                  '())))))
                            (let ((__tmp147187
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-marks))))
                              (declare (not safe))
                              (hash-put!
                               __tmp147187
                               _%mark138450%_
                               _%gid138456%_))
                            (_%add-lift!138301%_
                             (cons 'define
                                   (cons _%gid138456%_
                                         (cons (cons 'gx#core-deserialize-mark
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%repr138458%_ '()))
                   (cons _%ctx-ref138462%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            _%gid138456%_)))))
                 (_%serialize-mark138306%_
                  (lambda (_%mark138397%_)
                    (letrec ((_%quote-e138399%_
                              (lambda (_%sym138448%_)
                                (if (let ()
                                      (declare (not safe))
                                      (interned-symbol? _%sym138448%_))
                                    _%sym138448%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-gensym-reference__0
                                       _%sym138448%_))))))
                      (let* ((_%mark138400138409%_ _%mark138397%_)
                             (_%E138402138413%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%mark138400138409%_
                                         '((expander-mark
                                            subst
                                            ctx
                                            phi
                                            trace))))
                                '#!void))
                             (_%K138403138425%_
                              (lambda (_%trace138416%_
                                       _%phi138417%_
                                       _%ctx138418%_
                                       _%subst138419%_)
                                (let ((_%subs138421%_
                                       (if _%subst138419%_
                                           (let ()
                                             (declare (not safe))
                                             (hash->list _%subst138419%_))
                                           '())))
                                  (cons _%phi138417%_
                                        (map (lambda (_%pair138423%_)
                                               (cons (_%quote-e138399%_
                                                      (car _%pair138423%_))
                                                     (_%quote-e138399%_
                                                      (cdr _%pair138423%_))))
                                             _%subs138421%_))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%mark138400138409%_
                               'gx#expander-mark::t))
                            (let* ((_%e138404138428%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark138400138409%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%subst138431%_ _%e138404138428%_)
                                   (_%e138405138433%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark138400138409%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%ctx138436%_ _%e138405138433%_)
                                   (_%e138406138438%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark138400138409%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%phi138441%_ _%e138406138438%_)
                                   (_%e138407138443%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark138400138409%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%trace138446%_ _%e138407138443%_))
                              (_%K138403138425%_
                               _%trace138446%_
                               _%phi138441%_
                               _%ctx138436%_
                               _%subst138431%_))
                            (_%E138402138413%_))))))
                 (_%context-ref138307%_
                  (lambda (_%ctx138384%_)
                    (if (let ((__tmp147188
                               (##structure-ref
                                _%ctx138384%_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (declare (not safe))
                          (##structure-instance-of?
                           __tmp147188
                           'gx#module-context::t))
                        (let ((_%ctx-ref138386%_
                               (_%context-ref-nested138309%_ _%ctx138384%_))
                              (_%ctx-origin138387%_
                               (_%context-ref-origin138308%_ _%ctx138384%_))
                              (_%origin138388%_
                               (_%context-ref-origin138308%_
                                (let ()
                                  (declare (not safe))
                                  (gx#current-expander-context)))))
                          (if (eq? _%origin138388%_ _%ctx-origin138387%_)
                              (let ((_%ref138390%_
                                     (_%context-ref-nested138309%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context)))))
                                (let _%lp138392%_ ((_%ref138394%_
                                                    (cdr _%ref138390%_))
                                                   (_%ctx-ref138395%_
                                                    (cdr _%ctx-ref138386%_)))
                                  (if (and (pair? _%ref138394%_)
                                           (eq? (car _%ref138394%_)
                                                (car _%ctx-ref138395%_)))
                                      (_%lp138392%_
                                       (cdr _%ref138394%_)
                                       (cdr _%ctx-ref138395%_))
                                      (cons '#f _%ctx-ref138395%_))))
                              _%ctx-ref138386%_))
                        (let ((__tmp147189
                               (##structure-ref
                                _%ctx138384%_
                                '1
                                gx#expander-context::t
                                '#f)))
                          (declare (not safe))
                          (make-symbol__1 '":" __tmp147189)))))
                 (_%context-ref-origin138308%_
                  (lambda (_%ctx138376%_)
                    (let _%lp138378%_ ((_%ctx138380%_ _%ctx138376%_))
                      (let ((_%super138382%_
                             (##structure-ref
                              _%ctx138380%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super138382%_
                               'gx#module-context::t))
                            (_%lp138378%_ _%super138382%_)
                            _%ctx138380%_)))))
                 (_%context-ref-nested138309%_
                  (lambda (_%ctx138367%_)
                    (let _%lp138369%_ ((_%ctx138371%_ _%ctx138367%_)
                                       (_%r138372%_ '()))
                      (let ((_%super138374%_
                             (##structure-ref
                              _%ctx138371%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super138374%_
                               'gx#module-context::t))
                            (_%lp138369%_
                             _%super138374%_
                             (cons (car (##structure-ref
                                         _%ctx138371%_
                                         '7
                                         gx#module-context::t
                                         '#f))
                                   _%r138372%_))
                            (cons (let ((__tmp147190
                                         (##structure-ref
                                          _%ctx138371%_
                                          '1
                                          gx#expander-context::t
                                          '#f)))
                                    (declare (not safe))
                                    (make-symbol__1 '":" __tmp147190))
                                  _%r138372%_)))))))
          (let* ((_%g138311138324%_
                  (lambda (_%g138312138321%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g138312138321%_))))
                 (_%g138310138364%_
                  (lambda (_%g138312138327%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g138312138327%_))
                        (let ((_%e138314138329%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g138312138327%_))))
                          (let ((_%hd138315138332%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e138314138329%_)))
                                (_%tl138316138334%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e138314138329%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl138316138334%_))
                                (let ((_%e138317138337%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl138316138334%_))))
                                  (let ((_%hd138318138340%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e138317138337%_)))
                                        (_%tl138319138342%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e138317138337%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl138319138342%_))
                                        ((lambda (_%L138345%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#identifier? _%L138345%_))
                                               (let ((_%$e138358%_
                                                      (let ((__tmp147191
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#current-compile-identifiers))))
                (declare (not safe))
                (hash-get __tmp147191 _%L138345%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e138358%_
                                                     (values _%$e138358%_)
                                                     (let ((_%marks138362%_
                                                            (##direct-structure-ref
                                                             _%L138345%_
                                                             '4
                                                             gx#syntax-quote::t
                                                             '#f)))
                                                       (if (null? _%marks138362%_)
                                                           (_%generate-simple138303%_
                                                            _%L138345%_)
                                                           (_%generate-serialized138304%_
                                                            _%L138345%_
                                                            _%marks138362%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"Cannot quote non-identifier syntax"
                                                  _%L138345%_))))
                                         _%hd138318138340%_)
                                        (_%g138311138324%_
                                         _%g138312138327%_))))
                                (_%g138311138324%_ _%g138312138327%_))))
                        (_%g138311138324%_ _%g138312138327%_)))))
            (_%g138310138364%_ _%stx138299%_)))))
    (define gxc#generate-runtime-phi-define-runtime%
      (lambda (_%self138230%_ _%stx138231%_)
        (let* ((_%g138233138250%_
                (lambda (_%g138234138247%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138234138247%_))))
               (_%g138232138295%_
                (lambda (_%g138234138253%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138234138253%_))
                      (let ((_%e138237138255%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138234138253%_))))
                        (let ((_%hd138238138258%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138237138255%_)))
                              (_%tl138239138260%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138237138255%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138239138260%_))
                              (let ((_%e138240138263%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138239138260%_))))
                                (let ((_%hd138241138266%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138240138263%_)))
                                      (_%tl138242138268%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138240138263%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl138242138268%_))
                                      (let ((_%e138243138271%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl138242138268%_))))
                                        (let ((_%hd138244138274%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e138243138271%_)))
                                              (_%tl138245138276%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e138243138271%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl138245138276%_))
                                              ((lambda (_%L138279%_
                                                        _%L138280%_)
                                                 (cons 'define
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%L138280%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _%self138230%_ _%L138279%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd138244138274%_
                                               _%hd138241138266%_)
                                              (_%g138233138250%_
                                               _%g138234138253%_))))
                                      (_%g138233138250%_ _%g138234138253%_))))
                              (_%g138233138250%_ _%g138234138253%_))))
                      (_%g138233138250%_ _%g138234138253%_)))))
          (_%g138232138295%_ _%stx138231%_))))
    (define gxc#generate-meta-begin%
      (lambda (_%self138179%_ _%stx138180%_)
        (let* ((_%g138182138192%_
                (lambda (_%g138183138189%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138183138189%_))))
               (_%g138181138227%_
                (lambda (_%g138183138195%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138183138195%_))
                      (let ((_%e138185138197%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138183138195%_))))
                        (let ((_%hd138186138200%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138185138197%_)))
                              (_%tl138187138202%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138185138197%_))))
                          ((lambda (_%L138205%_)
                             (let* ((_%c-body138219%_
                                     (map (lambda (_%g138214138216%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self138179%_
                                               _%g138214138216%_)))
                                          _%L138205%_))
                                    (_%c-body138224%_
                                     (let ((__tmp147192
                                            (lambda (_%$obj138221%_)
                                              (not (eq? _%$obj138221%_
                                                        '#!void)))))
                                       (declare (not safe))
                                       (##filter
                                        __tmp147192
                                        _%c-body138219%_))))
                               (cons '%#begin _%c-body138224%_)))
                           _%tl138187138202%_)))
                      (_%g138182138192%_ _%g138183138195%_)))))
          (_%g138181138227%_ _%stx138180%_))))
    (define gxc#generate-meta-begin-syntax%
      (lambda (_%self138084%_ _%stx138085%_)
        (let* ((_%g138087138097%_
                (lambda (_%g138088138094%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138088138094%_))))
               (_%g138086138176%_
                (lambda (_%g138088138100%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138088138100%_))
                      (let ((_%e138090138102%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138088138100%_))))
                        (let ((_%hd138091138105%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138090138102%_)))
                              (_%tl138092138107%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138090138102%_))))
                          ((lambda (_%L138110%_)
                             (let* ((_%phi138120%_
                                     (let ((__tmp147193
                                            (let ()
                                              (declare (not safe))
                                              (gx#current-expander-phi))))
                                       (declare (not safe))
                                       (##fx+ __tmp147193 '1)))
                                    (_%block138122%_
                                     (gxc#meta-state-begin-phi!
                                      (let ()
                                        (declare (not safe))
                                        (slot-ref__0 _%self138084%_ 'state))
                                      _%phi138120%_))
                                    (_%compiled138125%_
                                     (let ((__tmp147194
                                            (lambda ()
                                              (gxc#apply-generate-meta-phi__%
                                               '#f
                                               (let ()
                                                 (declare (not safe))
                                                 (slot-ref__0
                                                  _%self138084%_
                                                  'state))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#begin))
                                                     _%L138110%_)))))
                                       (declare (not safe))
                                       (__call-with-parameters
                                        __tmp147194
                                        gx#current-expander-phi
                                        _%phi138120%_)))
                                    (_%g138128138138%_
                                     (lambda (_%g138129138135%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g138129138135%_))))
                                    (_%g138127138173%_
                                     (lambda (_%g138129138141%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%g138129138141%_))
                                           (let ((_%e138131138143%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%g138129138141%_))))
                                             (let ((_%hd138132138146%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e138131138143%_)))
                                                   (_%tl138133138148%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e138131138143%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd138132138146%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#begin
                                                          _%hd138132138146%_))
                                                       ((lambda (_%L138151%_)
                                                          (let ((_%c-body138168%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (filter (lambda (_%$obj138165%_)
                                   (not (eq? _%$obj138165%_ '#!void)))
                                 _%L138151%_)))
                    (if _%block138122%_
                        (cons '%#begin-syntax
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'load-module '()))
                                                (cons (cons '%#quote
                                                            (cons _%block138122%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%c-body138168%_))
                        (if (null? _%c-body138168%_)
                            '#!void
                            (cons '%#begin-syntax _%c-body138168%_)))))
                _%tl138133138148%_)
               (_%g138128138138%_ _%g138129138141%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g138128138138%_
                                                    _%g138129138141%_))))
                                           (_%g138128138138%_
                                            _%g138129138141%_)))))
                               (_%g138127138173%_ _%compiled138125%_)))
                           _%tl138092138107%_)))
                      (_%g138087138097%_ _%g138088138100%_)))))
          (_%g138086138176%_ _%stx138085%_))))
    (define gxc#generate-meta-module%
      (lambda (_%self138015%_ _%stx138016%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self138015%_ 'state)))
        (let* ((_%g138018138032%_
                (lambda (_%g138019138029%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g138019138029%_))))
               (_%g138017138081%_
                (lambda (_%g138019138035%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g138019138035%_))
                      (let ((_%e138022138037%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g138019138035%_))))
                        (let ((_%hd138023138040%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e138022138037%_)))
                              (_%tl138024138042%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e138022138037%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl138024138042%_))
                              (let ((_%e138025138045%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl138024138042%_))))
                                (let ((_%hd138026138048%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e138025138045%_)))
                                      (_%tl138027138050%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e138025138045%_))))
                                  ((lambda (_%L138053%_ _%L138054%_)
                                     (let ((_%key138067%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#core-identifier-key
                                               _%L138054%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (interned-symbol? _%key138067%_))
                                           '#!void
                                           (let ()
                                             (declare (not safe))
                                             (gxc#raise-compile-error
                                              '"Cannot compile module with uninterned id"
                                              _%stx138016%_
                                              _%L138054%_
                                              _%key138067%_)))
                                       (let* ((_%ctx138069%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-local-e__0
                                                  _%L138054%_)))
                                              (_%code138072%_
                                               (let ((__tmp147195
                                                      (lambda ()
                                                        (let ((__tmp147196
                                                               (##structure-ref
                                                                _%ctx138069%_
                                                                '11
                                                                gx#module-context::t
                                                                '#f)))
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self138015%_
                                                           __tmp147196)))))
                                                 (declare (not safe))
                                                 (__call-with-parameters
                                                  __tmp147195
                                                  gx#current-expander-context
                                                  _%ctx138069%_)))
                                              (_%rt138074%_
                                               (let ((__tmp147197
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#current-compile-runtime-sections))))
                                                 (declare (not safe))
                                                 (hash-get
                                                  __tmp147197
                                                  _%ctx138069%_)))
                                              (_%loader138076%_
                                               (if _%rt138074%_
                                                   (cons (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons 'load-module '()))
                             (cons (cons '%#quote (cons _%rt138074%_ '()))
                                   '())))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                              (_%modid138078%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _%L138054%_))))
                                         (gxc#meta-state-end-phi!
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self138015%_
                                             'state)))
                                         (cons '%#module
                                               (cons _%modid138078%_
                                                     (cons _%code138072%_
                                                           _%loader138076%_))))))
                                   _%tl138027138050%_
                                   _%hd138026138048%_)))
                              (_%g138018138032%_ _%g138019138035%_))))
                      (_%g138018138032%_ _%g138019138035%_)))))
          (_%g138017138081%_ _%stx138016%_))))
    (define gxc#generate-meta-import-path
      (lambda (_%ctx138002%_ _%context-chain138003%_)
        (let _%lp138005%_ ((_%ctx138007%_ _%ctx138002%_) (_%path138008%_ '()))
          (let ((_%super138010%_
                 (##structure-ref _%ctx138007%_ '3 gx#phi-context::t '#f)))
            (if (memq _%super138010%_ _%context-chain138003%_)
                (cons '#f
                      (cons (car (##structure-ref
                                  _%ctx138007%_
                                  '7
                                  gx#module-context::t
                                  '#f))
                            _%path138008%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%super138010%_
                       'gx#module-context::t))
                    (_%lp138005%_
                     _%super138010%_
                     (cons (car (##structure-ref
                                 _%ctx138007%_
                                 '7
                                 gx#module-context::t
                                 '#f))
                           _%path138008%_))
                    (cons (let ((__tmp147198
                                 (##structure-ref
                                  _%ctx138007%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (make-symbol__1 '":" __tmp147198))
                          _%path138008%_)))))))
    (define gxc#current-context-chain
      (lambda ()
        (let _%lp137995%_ ((_%ctx137997%_
                            (let ()
                              (declare (not safe))
                              (gx#current-expander-context)))
                           (_%r137998%_ '()))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%ctx137997%_ 'gx#module-context::t))
              (_%lp137995%_
               (##structure-ref _%ctx137997%_ '3 gx#phi-context::t '#f)
               (cons _%ctx137997%_ _%r137998%_))
              _%r137998%_))))
    (define gxc#generate-meta-import%
      (lambda (_%self137758%_ _%stx137759%_)
        (letrec* ((_%context-chain137761%_ (gxc#current-context-chain))
                  (_%make-import-spec137762%_
                   (lambda (_%in137931%_)
                     (let* ((_%in137932137944%_ _%in137931%_)
                            (_%E137934137948%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%in137932137944%_
                                        '((module-import
                                           (module-export
                                            src-ctx
                                            src-key
                                            src-phi
                                            src-name)
                                           name
                                           phi))))
                               '#!void))
                            (_%K137935137958%_
                             (lambda (_%phi137951%_
                                      _%name137952%_
                                      _%src-name137953%_
                                      _%src-phi137954%_
                                      _%src-key137955%_
                                      _%src-ctx137956%_)
                               (cons _%phi137951%_
                                     (cons (gxc#generate-runtime-identifier-key
                                            _%name137952%_)
                                           (cons _%src-phi137954%_
                                                 (cons (gxc#generate-runtime-identifier-key
                                                        _%src-name137953%_)
                                                       '())))))))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              _%in137932137944%_
                              'gx#module-import::t))
                           (let ((_%e137936137961%_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%in137932137944%_
                                     '1
                                     '#f
                                     '#f))))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    _%e137936137961%_
                                    'gx#module-export::t))
                                 (let* ((_%e137939137964%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e137936137961%_
                                            '1
                                            '#f
                                            '#f)))
                                        (_%src-ctx137967%_ _%e137939137964%_)
                                        (_%e137940137969%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e137936137961%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%src-key137972%_ _%e137940137969%_)
                                        (_%e137941137974%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e137936137961%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%src-phi137977%_ _%e137941137974%_)
                                        (_%e137942137979%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e137936137961%_
                                            '4
                                            '#f
                                            '#f)))
                                        (_%src-name137982%_ _%e137942137979%_)
                                        (_%e137937137984%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in137932137944%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%name137987%_ _%e137937137984%_)
                                        (_%e137938137989%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in137932137944%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%phi137992%_ _%e137938137989%_))
                                   (_%K137935137958%_
                                    _%phi137992%_
                                    _%name137987%_
                                    _%src-name137982%_
                                    _%src-phi137977%_
                                    _%src-key137972%_
                                    _%src-ctx137967%_))
                                 (_%E137934137948%_)))
                           (_%E137934137948%_)))))
                  (_%make-import-path137763%_
                   (lambda (_%ctx137929%_)
                     (gxc#generate-meta-import-path
                      _%ctx137929%_
                      _%context-chain137761%_)))
                  (_%make-import-spec-in137764%_
                   (lambda (_%ctx137926%_ _%in137927%_)
                     (cons 'spec:
                           (cons (_%make-import-path137763%_ _%ctx137926%_)
                                 (reverse _%in137927%_))))))
          (gxc#meta-state-end-phi!
           (let () (declare (not safe)) (slot-ref__0 _%self137758%_ 'state)))
          (let* ((_%g137766137776%_
                  (lambda (_%g137767137773%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g137767137773%_))))
                 (_%g137765137923%_
                  (lambda (_%g137767137779%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g137767137779%_))
                        (let ((_%e137769137781%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g137767137779%_))))
                          (let ((_%hd137770137784%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e137769137781%_)))
                                (_%tl137771137786%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e137769137781%_))))
                            ((lambda (_%L137789%_)
                               (let _%lp137800%_ ((_%rest137802%_ _%L137789%_)
                                                  (_%current-src137803%_ '#f)
                                                  (_%current-in137804%_ '())
                                                  (_%r137805%_ '()))
                                 (let* ((_%rest137806137814%_ _%rest137802%_)
                                        (_%else137808137824%_
                                         (lambda ()
                                           (let ((_%r137822%_
                                                  (if _%current-src137803%_
                                                      (cons (_%make-import-spec-in137764%_
                                                             _%current-src137803%_
                                                             _%current-in137804%_)
                                                            _%r137805%_)
                                                      _%r137805%_)))
                                             (cons '%#import
                                                   (reverse _%r137822%_)))))
                                        (_%K137810137911%_
                                         (lambda (_%rest137827%_ _%in137828%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in137828%_
                                                  'gx#module-import::t))
                                               (let* ((_%in137830137837%_
                                                       _%in137828%_)
                                                      (_%E137832137841%_
                                                       (lambda ()
                                                         (let ()
                                                           (declare (not safe))
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%in137830137837%_
                          '((module-import (module-export src-ctx)))))
                 '#!void))
              (_%K137833137849%_
               (lambda (_%src-ctx137844%_)
                 (if (eq? _%current-src137803%_ _%src-ctx137844%_)
                     (_%lp137800%_
                      _%rest137827%_
                      _%current-src137803%_
                      (cons (_%make-import-spec137762%_ _%in137828%_)
                            _%current-in137804%_)
                      _%r137805%_)
                     (if _%current-src137803%_
                         (_%lp137800%_
                          _%rest137827%_
                          _%src-ctx137844%_
                          (cons (_%make-import-spec137762%_ _%in137828%_) '())
                          (cons (_%make-import-spec-in137764%_
                                 _%current-src137803%_
                                 _%current-in137804%_)
                                _%r137805%_))
                         (_%lp137800%_
                          _%rest137827%_
                          _%src-ctx137844%_
                          (cons (_%make-import-spec137762%_ _%in137828%_) '())
                          _%r137805%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%in137830137837%_
                                                        'gx#module-import::t))
                                                     (let ((_%e137834137852%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%in137830137837%_
                                                               '1
                                                               '#f
                                                               '#f))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (##structure-direct-instance-of?
                                                              _%e137834137852%_
                                                              'gx#module-export::t))
                                                           (let* ((_%e137835137855%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%e137834137852%_
                              '1
                              '#f
                              '#f)))
                          (_%src-ctx137858%_ _%e137835137855%_))
                     (_%K137833137849%_ _%src-ctx137858%_))
                   (_%E137832137841%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E137832137841%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%in137828%_
                                                      'gx#import-set::t))
                                                   (let* ((_%phi137861%_
                                                           (##direct-structure-ref
                                                            _%in137828%_
                                                            '2
                                                            gx#import-set::t
                                                            '#f))
                                                          (_%src137863%_
                                                           (##direct-structure-ref
                                                            _%in137828%_
                                                            '1
                                                            gx#import-set::t
                                                            '#f))
                                                          (_%src-in137903%_
                                                           (let* ((_%g137864137873%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (_%make-import-path137763%_ _%src137863%_))
                          (_%E137867137877%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (error '"No clause matching"
                                      _%g137864137873%_
                                      '([path])
                                      '(path)))
                             '#!void)))
                     (let ((_%K137869137893%_
                            (lambda (_%path137891%_) _%path137891%_))
                           (_%K137868137883%_
                            (lambda (_%path137881%_)
                              (cons 'in: _%path137881%_))))
                       (if (let ()
                             (declare (not safe))
                             (##pair? _%g137864137873%_))
                           (let ((_%tl137871137898%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%g137864137873%_)))
                                 (_%hd137870137896%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%g137864137873%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (##null? _%tl137871137898%_))
                                 (let ((_%path137901%_ _%hd137870137896%_))
                                   (_%K137869137893%_ _%path137901%_))
                                 (let ((_%path137886%_ _%g137864137873%_))
                                   (_%K137868137883%_ _%path137886%_))))
                           (let ((_%path137886%_ _%g137864137873%_))
                             (_%K137868137883%_ _%path137886%_))))))
                  (_%r137905%_
                   (if _%current-src137803%_
                       (cons (_%make-import-spec-in137764%_
                              _%current-src137803%_
                              _%current-in137804%_)
                             _%r137805%_)
                       _%r137805%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%lp137800%_
                                                      _%rest137827%_
                                                      '#f
                                                      '()
                                                      (cons (if (fxzero? _%phi137861%_)
                                                                _%src-in137903%_
                                                                (cons 'phi:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%phi137861%_
                                    (cons _%src-in137903%_ '()))))
                    _%r137905%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-instance-of?
                                                          _%in137828%_
                                                          'gx#module-context::t))
                                                       (let ((_%r137909%_
                                                              (if _%current-src137803%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (_%make-import-spec-in137764%_
                                 _%current-src137803%_
                                 _%current-in137804%_)
                                _%r137805%_)
                          _%r137805%_)))
                 (_%lp137800%_
                  _%rest137827%_
                  '#f
                  '()
                  (cons (cons 'runtime:
                              (_%make-import-path137763%_ _%in137828%_))
                        _%r137909%_)))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _%rest137806137814%_))
                                       (let ((_%hd137811137914%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest137806137814%_)))
                                             (_%tl137812137916%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest137806137814%_))))
                                         (let* ((_%in137919%_
                                                 _%hd137811137914%_)
                                                (_%rest137921%_
                                                 _%tl137812137916%_))
                                           (_%K137810137911%_
                                            _%rest137921%_
                                            _%in137919%_)))
                                       (_%else137808137824%_)))))
                             _%tl137771137786%_)))
                        (_%g137766137776%_ _%g137767137779%_)))))
            (_%g137765137923%_ _%stx137759%_)))))
    (define gxc#generate-meta-export%
      (lambda (_%self137568%_ _%stx137569%_)
        (letrec* ((_%context-chain137571%_ (gxc#current-context-chain))
                  (_%make-import-path137572%_
                   (lambda (_%ctx137756%_)
                     (gxc#generate-meta-import-path
                      _%ctx137756%_
                      _%context-chain137571%_))))
          (let* ((_%g137574137584%_
                  (lambda (_%g137575137581%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g137575137581%_))))
                 (_%g137573137753%_
                  (lambda (_%g137575137587%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g137575137587%_))
                        (let ((_%e137577137589%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g137575137587%_))))
                          (let ((_%hd137578137592%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e137577137589%_)))
                                (_%tl137579137594%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e137577137589%_))))
                            ((lambda (_%L137597%_)
                               (let _%lp137608%_ ((_%rest137610%_ _%L137597%_)
                                                  (_%r137611%_ '()))
                                 (let* ((_%rest137612137620%_ _%rest137610%_)
                                        (_%else137614137628%_
                                         (lambda ()
                                           (cons '%#export
                                                 (reverse _%r137611%_))))
                                        (_%K137616137741%_
                                         (lambda (_%rest137631%_ _%out137632%_)
                                           (let* ((_%out137633137646%_
                                                   _%out137632%_)
                                                  (_%E137636137650%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%out137633137646%_
                                                              '((module-export
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _
                         key
                         phi
                         name))
                      '((export-set src phi))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#!void)))
                                             (let ((_%K137640137720%_
                                                    (lambda (_%name137716%_
                                                             _%phi137717%_
                                                             _%key137718%_)
                                                      (_%lp137608%_
                                                       _%rest137631%_
                                                       (cons (cons 'spec:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%phi137717%_
                                 (cons (gxc#generate-runtime-identifier-key
                                        _%key137718%_)
                                       (cons (gxc#generate-runtime-identifier-key
                                              _%name137716%_)
                                             '()))))
                     _%r137611%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K137637137700%_
                                                    (lambda (_%phi137654%_
                                                             _%src137655%_)
                                                      (let* ((_%out137695%_
                                                              (if _%src137655%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'import:
                                (cons (let* ((_%g137656137665%_
                                              (_%make-import-path137572%_
                                               _%src137655%_))
                                             (_%E137659137669%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (error '"No clause matching"
                                                         _%g137656137665%_
                                                         '([path])
                                                         '(path)))
                                                '#!void)))
                                        (let ((_%K137661137685%_
                                               (lambda (_%path137683%_)
                                                 _%path137683%_))
                                              (_%K137660137675%_
                                               (lambda (_%path137673%_)
                                                 (cons 'in: _%path137673%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##pair? _%g137656137665%_))
                                              (let ((_%tl137663137690%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%g137656137665%_)))
                                                    (_%hd137662137688%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%g137656137665%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##null? _%tl137663137690%_))
                                                    (let ((_%path137693%_
                                                           _%hd137662137688%_))
                                                      (_%K137661137685%_
                                                       _%path137693%_))
                                                    (let ((_%path137678%_
                                                           _%g137656137665%_))
                                                      (_%K137660137675%_
                                                       _%path137678%_))))
                                              (let ((_%path137678%_
                                                     _%g137656137665%_))
                                                (_%K137660137675%_
                                                 _%path137678%_)))))
                                      '()))
                          '#t))
                     (_%out137697%_
                      (if (fxzero? _%phi137654%_)
                          _%out137695%_
                          (cons 'phi:
                                (cons _%phi137654%_
                                      (cons _%out137695%_ '()))))))
                (_%lp137608%_
                 _%rest137631%_
                 (cons _%out137697%_ _%r137611%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_%try-match137635137713%_
                                                      (lambda ()
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-direct-instance-of?
                                                               _%out137633137646%_
                                                               'gx#export-set::t))
                                                            (let* ((_%e137638137703%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out137633137646%_
                               '1
                               '#f
                               '#f)))
                           (_%e137639137708%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out137633137646%_
                               '2
                               '#f
                               '#f))))
                      (let ((_%src137706%_ _%e137638137703%_)
                            (_%phi137711%_ _%e137639137708%_))
                        (_%K137637137700%_ _%phi137711%_ _%src137706%_)))
                    (_%E137636137650%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%out137633137646%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e137641137723%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%out137633137646%_
                        '1
                        '#f
                        '#f)))
                    (_%e137642137726%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out137633137646%_
                        '2
                        '#f
                        '#f)))
                    (_%e137643137731%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out137633137646%_
                        '3
                        '#f
                        '#f)))
                    (_%e137644137736%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out137633137646%_
                        '4
                        '#f
                        '#f))))
               (let ((_%key137729%_ _%e137642137726%_)
                     (_%phi137734%_ _%e137643137731%_)
                     (_%name137739%_ _%e137644137736%_))
                 (_%K137640137720%_
                  _%name137739%_
                  _%phi137734%_
                  _%key137729%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%try-match137635137713%_))))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##pair? _%rest137612137620%_))
                                       (let ((_%hd137617137744%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest137612137620%_)))
                                             (_%tl137618137746%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest137612137620%_))))
                                         (let* ((_%out137749%_
                                                 _%hd137617137744%_)
                                                (_%rest137751%_
                                                 _%tl137618137746%_))
                                           (_%K137616137741%_
                                            _%rest137751%_
                                            _%out137749%_)))
                                       (_%else137614137628%_)))))
                             _%tl137579137594%_)))
                        (_%g137574137584%_ _%g137575137587%_)))))
            (_%g137573137753%_ _%stx137569%_)))))
    (define gxc#generate-meta-provide%
      (lambda (_%self137529%_ _%stx137530%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self137529%_ 'state)))
        (let* ((_%g137532137542%_
                (lambda (_%g137533137539%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137533137539%_))))
               (_%g137531137565%_
                (lambda (_%g137533137545%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137533137545%_))
                      (let ((_%e137535137547%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137533137545%_))))
                        (let ((_%hd137536137550%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137535137547%_)))
                              (_%tl137537137552%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137535137547%_))))
                          ((lambda (_%L137555%_)
                             (cons '%#provide
                                   (map gxc#generate-runtime-identifier
                                        _%L137555%_)))
                           _%tl137537137552%_)))
                      (_%g137532137542%_ _%g137533137545%_)))))
          (_%g137531137565%_ _%stx137530%_))))
    (define gxc#generate-meta-extern%
      (lambda (_%self137400%_ _%stx137401%_)
        (letrec ((_%generate1137403%_
                  (lambda (_%id137524%_ _%eid137525%_)
                    (let ((_%eid137527%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%eid137525%_))))
                      (if (let ()
                            (declare (not safe))
                            (interned-symbol? _%eid137527%_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"Cannot compile extern reference"
                             _%stx137401%_
                             _%eid137527%_)))
                      (cons (gxc#generate-runtime-identifier _%id137524%_)
                            (cons _%eid137527%_ '()))))))
          (let* ((_%g137405137433%_
                  (lambda (_%g137406137430%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g137406137430%_))))
                 (_%g137404137521%_
                  (lambda (_%g137406137436%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g137406137436%_))
                        (let ((_%e137409137438%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g137406137436%_))))
                          (let ((_%hd137410137441%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e137409137438%_)))
                                (_%tl137411137443%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e137409137438%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl137411137443%_))
                                (let ((_g147199_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl137411137443%_
                                          '0))))
                                  (begin
                                    (let ((_g147200_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g147199_)
                                                 (##vector-length _g147199_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g147200_ 2)))
                                          (error "Context expects 2 values"
                                                 _g147200_)))
                                    (let ((_%target137412137446%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g147199_ 0)))
                                          (_%tl137414137448%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref _g147199_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl137414137448%_))
                                          (letrec ((_%loop137415137451%_
                                                    (lambda (_%hd137413137454%_
                                                             _%eid137419137456%_
                                                             _%id137420137458%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd137413137454%_))
                                                          (let ((_%e137416137461%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd137413137454%_))))
                    (let ((_%lp-hd137417137464%_
                           (let ()
                             (declare (not safe))
                             (##car _%e137416137461%_)))
                          (_%lp-tl137418137466%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e137416137461%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd137417137464%_))
                          (let ((_%e137423137469%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd137417137464%_))))
                            (let ((_%hd137424137472%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e137423137469%_)))
                                  (_%tl137425137474%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e137423137469%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl137425137474%_))
                                  (let ((_%e137426137477%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl137425137474%_))))
                                    (let ((_%hd137427137480%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e137426137477%_)))
                                          (_%tl137428137482%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e137426137477%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl137428137482%_))
                                          (_%loop137415137451%_
                                           _%lp-tl137418137466%_
                                           (cons _%hd137427137480%_
                                                 _%eid137419137456%_)
                                           (cons _%hd137424137472%_
                                                 _%id137420137458%_))
                                          (_%g137405137433%_
                                           _%g137406137436%_))))
                                  (_%g137405137433%_ _%g137406137436%_))))
                          (_%g137405137433%_ _%g137406137436%_))))
                  (let ((_%eid137421137485%_ (reverse _%eid137419137456%_))
                        (_%id137422137487%_ (reverse _%id137420137458%_)))
                    ((lambda (_%L137490%_ _%L137491%_)
                       (cons '%#extern
                             (map _%generate1137403%_
                                  (let ((__tmp147201
                                         (lambda (_%g137506137509%_
                                                  _%g137507137511%_)
                                           (cons _%g137506137509%_
                                                 _%g137507137511%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp147201 '() _%L137491%_))
                                  (let ((__tmp147202
                                         (lambda (_%g137513137516%_
                                                  _%g137514137518%_)
                                           (cons _%g137513137516%_
                                                 _%g137514137518%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp147202 '() _%L137490%_)))))
                     _%eid137421137485%_
                     _%id137422137487%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop137415137451%_
                                             _%target137412137446%_
                                             '()
                                             '()))
                                          (_%g137405137433%_
                                           _%g137406137436%_)))))
                                (_%g137405137433%_ _%g137406137436%_))))
                        (_%g137405137433%_ _%g137406137436%_)))))
            (_%g137404137521%_ _%stx137401%_)))))
    (define gxc#generate-meta-define-values%
      (lambda (_%self137190%_ _%stx137191%_)
        (letrec ((_%generate1137193%_
                  (lambda (_%id137395%_)
                    (let ((_%eid137397%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%id137395%_)))
                          (_%ident137398%_
                           (gxc#generate-runtime-identifier _%id137395%_)))
                      (cons '%#define-runtime
                            (cons _%ident137398%_ (cons _%eid137397%_ '()))))))
                 (_%generate*137194%_
                  (lambda (_%all137363%_)
                    (let* ((_%all137364137372%_ _%all137363%_)
                           (_%else137366137380%_
                            (lambda () (cons '%#begin _%all137363%_)))
                           (_%K137368137385%_
                            (lambda (_%one137383%_) _%one137383%_)))
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%all137364137372%_))
                          (let ((_%hd137369137388%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all137364137372%_)))
                                (_%tl137370137390%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all137364137372%_))))
                            (let ((_%one137393%_ _%hd137369137388%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##null? _%tl137370137390%_))
                                  (_%K137368137385%_ _%one137393%_)
                                  (_%else137366137380%_))))
                          (_%else137366137380%_))))))
          (let* ((_%g137196137213%_
                  (lambda (_%g137197137210%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g137197137210%_))))
                 (_%g137195137360%_
                  (lambda (_%g137197137216%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g137197137216%_))
                        (let ((_%e137200137218%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g137197137216%_))))
                          (let ((_%hd137201137221%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e137200137218%_)))
                                (_%tl137202137223%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e137200137218%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl137202137223%_))
                                (let ((_%e137203137226%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl137202137223%_))))
                                  (let ((_%hd137204137229%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e137203137226%_)))
                                        (_%tl137205137231%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e137203137226%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl137205137231%_))
                                        (let ((_%e137206137234%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl137205137231%_))))
                                          (let ((_%hd137207137237%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e137206137234%_)))
                                                (_%tl137208137239%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e137206137234%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl137208137239%_))
                                                ((lambda (_%L137242%_
                                                          _%L137243%_)
                                                   (let _%lp137259%_ ((_%rest137261%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%L137243%_)
                              (_%r137262%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((_%__stx146938146939%_
                                                             _%rest137261%_)
                                                            (_%g137267137284%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%__stx146938146939%_)))))
               (let ((_%__kont146940146941%_
                      (lambda (_%L137347%_)
                        (_%lp137259%_ _%L137347%_ _%r137262%_)))
                     (_%__kont146942146943%_
                      (lambda (_%L137320%_ _%L137321%_)
                        (_%lp137259%_
                         _%L137320%_
                         (cons (_%generate1137193%_ _%L137321%_)
                               _%r137262%_))))
                     (_%__kont146944146945%_
                      (lambda (_%L137296%_)
                        (_%generate*137194%_
                         (let ((__tmp147203
                                (cons (_%generate1137193%_ _%L137296%_) '())))
                           (declare (not safe))
                           (__foldl1 cons __tmp147203 _%r137262%_)))))
                     (_%__kont146946146947%_
                      (lambda () (_%generate*137194%_ (reverse _%r137262%_)))))
                 (let ((_%g137265137307%_
                        (lambda ()
                          (let ((_%L137296%_ _%__stx146938146939%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L137296%_))
                                (_%__kont146944146945%_ _%L137296%_)
                                (_%__kont146946146947%_))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%__stx146938146939%_))
                       (let ((_%e137270137336%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%__stx146938146939%_))))
                         (let ((_%tl137272137341%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e137270137336%_)))
                               (_%hd137271137339%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e137270137336%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-datum? _%hd137271137339%_))
                               (let ((_%e137273137344%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd137271137339%_))))
                                 (if (equal? _%e137273137344%_ '#f)
                                     (_%__kont146940146941%_
                                      _%tl137272137341%_)
                                     (_%__kont146942146943%_
                                      _%tl137272137341%_
                                      _%hd137271137339%_)))
                               (_%__kont146942146943%_
                                _%tl137272137341%_
                                _%hd137271137339%_))))
                       (let () (declare (not safe)) (_%g137265137307%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd137207137237%_
                                                 _%hd137204137229%_)
                                                (_%g137196137213%_
                                                 _%g137197137216%_))))
                                        (_%g137196137213%_
                                         _%g137197137216%_))))
                                (_%g137196137213%_ _%g137197137216%_))))
                        (_%g137196137213%_ _%g137197137216%_)))))
            (_%g137195137360%_ _%stx137191%_)))))
    (define gxc#generate-meta-define-syntax%
      (lambda (_%self137087%_ _%stx137088%_)
        (let* ((_%g137090137107%_
                (lambda (_%g137091137104%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137091137104%_))))
               (_%g137089137187%_
                (lambda (_%g137091137110%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137091137110%_))
                      (let ((_%e137094137112%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137091137110%_))))
                        (let ((_%hd137095137115%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137094137112%_)))
                              (_%tl137096137117%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137094137112%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137096137117%_))
                              (let ((_%e137097137120%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137096137117%_))))
                                (let ((_%hd137098137123%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137097137120%_)))
                                      (_%tl137099137125%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137097137120%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137099137125%_))
                                      (let ((_%e137100137128%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137099137125%_))))
                                        (let ((_%hd137101137131%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137100137128%_)))
                                              (_%tl137102137133%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137100137128%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl137102137133%_))
                                              ((lambda (_%L137136%_
                                                        _%L137137%_)
                                                 (let* ((_%eid137152%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#generate-runtime-binding-id
                                                            _%L137137%_)))
                                                        (_%phi137154%_
                                                         (let ((__tmp147204
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#current-expander-phi))))
                   (declare (not safe))
                   (##fx+ __tmp147204 '1)))
                (_%block137156%_
                 (gxc#meta-state-begin-phi!
                  (let ()
                    (declare (not safe))
                    (slot-ref__0 _%self137087%_ 'state))
                  _%phi137154%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%g137159137166%_
                                                           (lambda (_%g137160137163%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g137160137163%_))))
                  (_%g137158137184%_
                   (lambda (_%g137160137169%_)
                     ((lambda (_%L137171%_)
                        (gxc#meta-state-add-phi!
                         (let ()
                           (declare (not safe))
                           (slot-ref__0 _%self137087%_ 'state))
                         _%phi137154%_
                         (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#define-runtime))
                               (cons _%L137171%_ (cons _%L137136%_ '())))))
                      _%g137160137169%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g137158137184%_
                                                      _%eid137152%_))
                                                   (if _%block137156%_
                                                       (cons '%#begin
                                                             (cons (cons '%#begin-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons 'load-module
                                                               '()))
                                                   (cons (cons '%#quote
                                                               (cons _%block137156%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons '%#define-syntax
                                       (cons (gxc#generate-runtime-identifier
                                              _%L137137%_)
                                             (cons _%eid137152%_ '())))
                                 '())))
               (cons '%#define-syntax
                     (cons (gxc#generate-runtime-identifier _%L137137%_)
                           (cons _%eid137152%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd137101137131%_
                                               _%hd137098137123%_)
                                              (_%g137090137107%_
                                               _%g137091137110%_))))
                                      (_%g137090137107%_ _%g137091137110%_))))
                              (_%g137090137107%_ _%g137091137110%_))))
                      (_%g137090137107%_ _%g137091137110%_)))))
          (_%g137089137187%_ _%stx137088%_))))
    (define gxc#generate-meta-define-alias%
      (lambda (_%self137019%_ _%stx137020%_)
        (let* ((_%g137022137039%_
                (lambda (_%g137023137036%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g137023137036%_))))
               (_%g137021137084%_
                (lambda (_%g137023137042%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g137023137042%_))
                      (let ((_%e137026137044%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g137023137042%_))))
                        (let ((_%hd137027137047%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e137026137044%_)))
                              (_%tl137028137049%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e137026137044%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl137028137049%_))
                              (let ((_%e137029137052%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl137028137049%_))))
                                (let ((_%hd137030137055%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e137029137052%_)))
                                      (_%tl137031137057%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e137029137052%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl137031137057%_))
                                      (let ((_%e137032137060%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl137031137057%_))))
                                        (let ((_%hd137033137063%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e137032137060%_)))
                                              (_%tl137034137065%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e137032137060%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl137034137065%_))
                                              ((lambda (_%L137068%_
                                                        _%L137069%_)
                                                 (cons '%#define-alias
                                                       (cons (gxc#generate-runtime-identifier
                                                              _%L137069%_)
                                                             (cons (gxc#generate-runtime-identifier
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%L137068%_)
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd137033137063%_
                                               _%hd137030137055%_)
                                              (_%g137022137039%_
                                               _%g137023137042%_))))
                                      (_%g137022137039%_ _%g137023137042%_))))
                              (_%g137022137039%_ _%g137023137042%_))))
                      (_%g137022137039%_ _%g137023137042%_)))))
          (_%g137021137084%_ _%stx137020%_))))
    (define gxc#generate-meta-phi-define-values%
      (lambda (_%self137016%_ _%stx137017%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self137016%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx137017%_)
        (gxc#generate-meta-define-values% _%self137016%_ _%stx137017%_)))
    (define gxc#generate-meta-phi-expr
      (lambda (_%self137013%_ _%stx137014%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self137013%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx137014%_)
        '#!void))
    (define gxc#meta-state::t
      (let ((__tmp147206 (list)) (__tmp147205 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state::t
         'meta-state
         __tmp147206
         '(src n open blocks)
         __tmp147205
         ':init!)))
    (define gxc#meta-state?
      (let () (declare (not safe)) (__make-class-predicate gxc#meta-state::t)))
    (define gxc#make-meta-state
      (lambda _%$args137010%_
        (apply make-instance gxc#meta-state::t _%$args137010%_)))
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
      (lambda (_%self136355136994%_ _%ctx136996%_)
        (let* ((_%self136998%_ _%self136355136994%_)
               (_%self137000%_ _%self136998%_))
          (if (let ((__tmp147207
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self137000%_))))
                (declare (not safe))
                (##fx< '4 __tmp147207))
              (begin
                (let ((__tmp147208
                       (let ((__tmp147209
                              (##structure-ref
                               _%ctx136996%_
                               '1
                               gx#expander-context::t
                               '#f)))
                         (declare (not safe))
                         (gxc#module-id->path-string __tmp147209))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self137000%_
                   __tmp147208
                   '1
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self137000%_ '1 '2 '#f '#f))
                (let ((__tmp147210
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self137000%_
                   __tmp147210
                   '3
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self137000%_ '() '4 '#f '#f))
                '#!void)
              (let ((__tmp147211
                     (let ()
                       (declare (not safe))
                       (##vector-length _%self137000%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self137000%_
                       '4
                       __tmp147211))))))
    (let ()
      (declare (not safe))
      (__bind-method! gxc#meta-state::t ':init! gxc#meta-state:::init! '#f))
    (define gxc#meta-state-block::t
      (let ((__tmp147213 (list)) (__tmp147212 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state-block::t
         'meta-state-block
         __tmp147213
         '(ctx phi n code)
         __tmp147212
         '#f)))
    (define gxc#meta-state-block?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#meta-state-block::t)))
    (define gxc#make-meta-state-block
      (lambda _%$args136869%_
        (apply make-instance gxc#meta-state-block::t _%$args136869%_)))
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
      (lambda (_%state136828%_ _%phi136829%_)
        (let* ((_%state136830136838%_ _%state136828%_)
               (_%E136832136842%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%state136830136838%_
                           '((meta-state src n open))))
                  '#!void))
               (_%K136833136851%_
                (lambda (_%open136845%_ _%n136846%_ _%src136847%_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _%open136845%_ _%phi136829%_))
                      '#f
                      (let ((_%block-ref136849%_
                             (let ((__tmp147214 (number->string _%n136846%_)))
                               (declare (not safe))
                               (##string-append
                                _%src136847%_
                                '"~"
                                __tmp147214))))
                        (##structure-set!
                         _%state136828%_
                         (let () (declare (not safe)) (##fx+ _%n136846%_ '1))
                         '2
                         gxc#meta-state::t
                         '#f)
                        (let ((__tmp147215
                               (let ((__tmp147216
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context))))
                                 (declare (not safe))
                                 (##structure
                                  gxc#meta-state-block::t
                                  __tmp147216
                                  _%phi136829%_
                                  _%n136846%_
                                  '()))))
                          (declare (not safe))
                          (hash-put! _%open136845%_ _%phi136829%_ __tmp147215))
                        _%block-ref136849%_)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _%state136830136838%_
                 'gxc#meta-state::t))
              (let* ((_%e136834136854%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state136830136838%_
                         '1
                         '#f
                         '#f)))
                     (_%src136857%_ _%e136834136854%_)
                     (_%e136835136859%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state136830136838%_
                         '2
                         '#f
                         '#f)))
                     (_%n136862%_ _%e136835136859%_)
                     (_%e136836136864%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state136830136838%_
                         '3
                         '#f
                         '#f)))
                     (_%open136867%_ _%e136836136864%_))
                (_%K136833136851%_ _%open136867%_ _%n136862%_ _%src136857%_))
              (_%E136832136842%_)))))
    (define gxc#meta-state-add-phi!
      (lambda (_%state136822%_ _%phi136823%_ _%stx136824%_)
        (let ((_%block136826%_
               (let ((__tmp147217
                      (##structure-ref
                       _%state136822%_
                       '3
                       gxc#meta-state::t
                       '#f)))
                 (declare (not safe))
                 (hash-get __tmp147217 _%phi136823%_))))
          (##structure-set!
           _%block136826%_
           (cons _%stx136824%_
                 (##structure-ref
                  _%block136826%_
                  '4
                  gxc#meta-state-block::t
                  '#f))
           '4
           gxc#meta-state-block::t
           '#f))))
    (define gxc#meta-state-end-phi!
      (lambda (_%state136816%_)
        (##structure-set!
         _%state136816%_
         (let ((__tmp147220
                (lambda (_%_136818%_ _%block136819%_ _%r136820%_)
                  (cons _%block136819%_ _%r136820%_)))
               (__tmp147219
                (##structure-ref _%state136816%_ '4 gxc#meta-state::t '#f))
               (__tmp147218
                (##structure-ref _%state136816%_ '3 gxc#meta-state::t '#f)))
           (declare (not safe))
           (hash-fold __tmp147220 __tmp147219 __tmp147218))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _%state136816%_
         (let () (declare (not safe)) (make-hash-table-eq))
         '3
         gxc#meta-state::t
         '#f)))
    (define gxc#meta-state-end!
      (lambda (_%state136768%_)
        (gxc#meta-state-end-phi! _%state136768%_)
        (let ((__tmp147222
               (lambda (_%block136770%_ _%r136771%_)
                 (let* ((_%block136772136781%_ _%block136770%_)
                        (_%E136774136785%_
                         (lambda ()
                           (let ()
                             (declare (not safe))
                             (error '"No clause matching"
                                    _%block136772136781%_
                                    '((meta-state-block ctx phi n code))))
                           '#!void))
                        (_%K136775136793%_
                         (lambda (_%code136788%_
                                  _%n136789%_
                                  _%phi136790%_
                                  _%ctx136791%_)
                           (if (null? _%code136788%_)
                               _%r136771%_
                               (cons (cons _%ctx136791%_
                                           (cons _%phi136790%_
                                                 (cons _%n136789%_
                                                       (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (reverse _%code136788%_))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%r136771%_)))))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%block136772136781%_
                          'gxc#meta-state-block::t))
                       (let* ((_%e136776136796%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block136772136781%_
                                  '1
                                  '#f
                                  '#f)))
                              (_%ctx136799%_ _%e136776136796%_)
                              (_%e136777136801%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block136772136781%_
                                  '2
                                  '#f
                                  '#f)))
                              (_%phi136804%_ _%e136777136801%_)
                              (_%e136778136806%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block136772136781%_
                                  '3
                                  '#f
                                  '#f)))
                              (_%n136809%_ _%e136778136806%_)
                              (_%e136779136811%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block136772136781%_
                                  '4
                                  '#f
                                  '#f)))
                              (_%code136814%_ _%e136779136811%_))
                         (_%K136775136793%_
                          _%code136814%_
                          _%n136809%_
                          _%phi136804%_
                          _%ctx136799%_))
                       (_%E136774136785%_)))))
              (__tmp147221
               (##structure-ref _%state136768%_ '4 gxc#meta-state::t '#f)))
          (declare (not safe))
          (__foldl1 __tmp147222 '() __tmp147221))))
    (define gxc#collect-expression-refs
      (lambda (_%stx136764%_)
        (let ((_%ht136766%_
               (let () (declare (not safe)) (make-hash-table-eq))))
          (gxc#apply-collect-expression-refs__% '#f _%ht136766%_ _%stx136764%_)
          _%ht136766%_)))
    (define gxc#collect-refs-ref%
      (lambda (_%self136707%_ _%stx136708%_)
        (let* ((_%g136710136723%_
                (lambda (_%g136711136720%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136711136720%_))))
               (_%g136709136761%_
                (lambda (_%g136711136726%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136711136726%_))
                      (let ((_%e136713136728%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136711136726%_))))
                        (let ((_%hd136714136731%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136713136728%_)))
                              (_%tl136715136733%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136713136728%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136715136733%_))
                              (let ((_%e136716136736%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136715136733%_))))
                                (let ((_%hd136717136739%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136716136736%_)))
                                      (_%tl136718136741%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136716136736%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl136718136741%_))
                                      ((lambda (_%L136744%_)
                                         (let* ((_%bind136756%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#resolve-identifier__0
                                                    _%L136744%_)))
                                                (_%eid136758%_
                                                 (if _%bind136756%_
                                                     (##structure-ref
                                                      _%bind136756%_
                                                      '1
                                                      gx#binding::t
                                                      '#f)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%L136744%_))))
                                                (__tmp147223
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self136707%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-put!
                                            __tmp147223
                                            _%eid136758%_
                                            _%eid136758%_)))
                                       _%hd136717136739%_)
                                      (_%g136710136723%_ _%g136711136726%_))))
                              (_%g136710136723%_ _%g136711136726%_))))
                      (_%g136710136723%_ _%g136711136726%_)))))
          (_%g136709136761%_ _%stx136708%_))))
    (define gxc#collect-refs-setq%
      (lambda (_%self136634%_ _%stx136635%_)
        (let* ((_%g136637136654%_
                (lambda (_%g136638136651%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136638136651%_))))
               (_%g136636136704%_
                (lambda (_%g136638136657%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136638136657%_))
                      (let ((_%e136641136659%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136638136657%_))))
                        (let ((_%hd136642136662%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136641136659%_)))
                              (_%tl136643136664%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136641136659%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136643136664%_))
                              (let ((_%e136644136667%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136643136664%_))))
                                (let ((_%hd136645136670%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136644136667%_)))
                                      (_%tl136646136672%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136644136667%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl136646136672%_))
                                      (let ((_%e136647136675%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl136646136672%_))))
                                        (let ((_%hd136648136678%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e136647136675%_)))
                                              (_%tl136649136680%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e136647136675%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl136649136680%_))
                                              ((lambda (_%L136683%_
                                                        _%L136684%_)
                                                 (let* ((_%bind136699%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#resolve-identifier__0
                                                            _%L136684%_)))
                                                        (_%eid136701%_
                                                         (if _%bind136699%_
                                                             (##structure-ref
                                                              _%bind136699%_
                                                              '1
                                                              gx#binding::t
                                                              '#f)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%L136684%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp147224
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self136634%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp147224
                                                      _%eid136701%_
                                                      _%eid136701%_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self136634%_
                                                      _%L136683%_))))
                                               _%hd136648136678%_
                                               _%hd136645136670%_)
                                              (_%g136637136654%_
                                               _%g136638136657%_))))
                                      (_%g136637136654%_ _%g136638136657%_))))
                              (_%g136637136654%_ _%g136638136657%_))))
                      (_%g136637136654%_ _%g136638136657%_)))))
          (_%g136636136704%_ _%stx136635%_))))
    (define gxc#find-runtime-begin%
      (lambda (_%self136591%_ _%stx136592%_)
        (let* ((_%g136594136604%_
                (lambda (_%g136595136601%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136595136601%_))))
               (_%g136593136631%_
                (lambda (_%g136595136607%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136595136607%_))
                      (let ((_%e136597136609%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136595136607%_))))
                        (let ((_%hd136598136612%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136597136609%_)))
                              (_%tl136599136614%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136597136609%_))))
                          ((lambda (_%L136617%_)
                             (let ((__tmp147225
                                    (lambda (_%g136626136628%_)
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self136591%_
                                         _%g136626136628%_)))))
                               (declare (not safe))
                               (__ormap1 __tmp147225 _%L136617%_)))
                           _%tl136599136614%_)))
                      (_%g136594136604%_ _%g136595136607%_)))))
          (_%g136593136631%_ _%stx136592%_))))
    (define gxc#count-values-single%
      (lambda (_%self136588%_ _%stx136589%_) '1))
    (define gxc#count-values-call%
      (lambda (_%self136454%_ _%stx136455%_)
        (let* ((_%__stx146968146969%_ _%stx136455%_)
               (_%g136458136487%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx146968146969%_)))))
          (let ((_%__kont146970146971%_
                 (lambda (_%L136555%_ _%L136556%_)
                   (length (let ((__tmp147226
                                  (lambda (_%g136577136580%_ _%g136578136582%_)
                                    (cons _%g136577136580%_
                                          _%g136578136582%_))))
                             (declare (not safe))
                             (__foldr1 __tmp147226 '() _%L136555%_)))))
                (_%__kont146974146975%_ (lambda () '#f)))
            (let ((_%__match147013147014%_
                   (lambda (_%e136462136499%_
                            _%hd136463136502%_
                            _%tl136464136504%_
                            _%e136465136507%_
                            _%hd136466136510%_
                            _%tl136467136512%_
                            _%e136468136515%_
                            _%hd136469136518%_
                            _%tl136470136520%_
                            _%e136471136523%_
                            _%hd136472136526%_
                            _%tl136473136528%_
                            _%__splice146972146973%_
                            _%target136474136531%_
                            _%tl136476136533%_)
                     (letrec ((_%loop136477136536%_
                               (lambda (_%hd136475136539%_
                                        _%rand136481136541%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd136475136539%_))
                                     (let ((_%e136478136544%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd136475136539%_))))
                                       (let ((_%lp-tl136480136549%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e136478136544%_)))
                                             (_%lp-hd136479136547%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e136478136544%_))))
                                         (_%loop136477136536%_
                                          _%lp-tl136480136549%_
                                          (cons _%lp-hd136479136547%_
                                                _%rand136481136541%_))))
                                     (let ((_%rand136482136552%_
                                            (reverse _%rand136481136541%_)))
                                       (let ((_%L136555%_ _%rand136482136552%_)
                                             (_%L136556%_ _%hd136472136526%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L136556%_
                                                'values))
                                             (_%__kont146970146971%_
                                              _%L136555%_
                                              _%L136556%_)
                                             (_%__kont146974146975%_))))))))
                       (_%loop136477136536%_ _%target136474136531%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx146968146969%_))
                  (let ((_%e136462136499%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx146968146969%_))))
                    (let ((_%tl136464136504%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e136462136499%_)))
                          (_%hd136463136502%_
                           (let ()
                             (declare (not safe))
                             (##car _%e136462136499%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl136464136504%_))
                          (let ((_%e136465136507%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl136464136504%_))))
                            (let ((_%tl136467136512%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e136465136507%_)))
                                  (_%hd136466136510%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e136465136507%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd136466136510%_))
                                  (let ((_%e136468136515%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd136466136510%_))))
                                    (let ((_%tl136470136520%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e136468136515%_)))
                                          (_%hd136469136518%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e136468136515%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd136469136518%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd136469136518%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl136470136520%_))
                                                  (let ((_%e136471136523%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl136470136520%_))))
                                                    (let ((_%tl136473136528%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e136471136523%_)))
                                                          (_%hd136472136526%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e136471136523%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl136473136528%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl136467136512%_))
                      (let ((_%__splice146972146973%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl136467136512%_
                                '0))))
                        (let ((_%tl136476136533%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice146972146973%_ '1)))
                              (_%target136474136531%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice146972146973%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl136476136533%_))
                              (_%__match147013147014%_
                               _%e136462136499%_
                               _%hd136463136502%_
                               _%tl136464136504%_
                               _%e136465136507%_
                               _%hd136466136510%_
                               _%tl136467136512%_
                               _%e136468136515%_
                               _%hd136469136518%_
                               _%tl136470136520%_
                               _%e136471136523%_
                               _%hd136472136526%_
                               _%tl136473136528%_
                               _%__splice146972146973%_
                               _%target136474136531%_
                               _%tl136476136533%_)
                              (_%__kont146974146975%_))))
                      (_%__kont146974146975%_))
                  (_%__kont146974146975%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont146974146975%_))
                                              (_%__kont146974146975%_))
                                          (_%__kont146974146975%_))))
                                  (_%__kont146974146975%_))))
                          (_%__kont146974146975%_))))
                  (_%__kont146974146975%_)))))))
    (define gxc#count-values-if%
      (lambda (_%self136357%_ _%stx136358%_)
        (let* ((_%g136360136381%_
                (lambda (_%g136361136378%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g136361136378%_))))
               (_%g136359136451%_
                (lambda (_%g136361136384%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g136361136384%_))
                      (let ((_%e136365136386%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g136361136384%_))))
                        (let ((_%hd136366136389%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e136365136386%_)))
                              (_%tl136367136391%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e136365136386%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl136367136391%_))
                              (let ((_%e136368136394%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl136367136391%_))))
                                (let ((_%hd136369136397%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e136368136394%_)))
                                      (_%tl136370136399%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e136368136394%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl136370136399%_))
                                      (let ((_%e136371136402%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl136370136399%_))))
                                        (let ((_%hd136372136405%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e136371136402%_)))
                                              (_%tl136373136407%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e136371136402%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl136373136407%_))
                                              (let ((_%e136374136410%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl136373136407%_))))
                                                (let ((_%hd136375136413%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e136374136410%_)))
                                                      (_%tl136376136415%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e136374136410%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl136376136415%_))
                                                      ((lambda (_%L136418%_
                                                                _%L136419%_
                                                                _%L136420%_)
                                                         (let ((_%c1136437136439%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1 _%self136357%_ _%L136419%_))))
                   (if _%c1136437136439%_
                       (let* ((_%c1136442%_ _%c1136437136439%_)
                              (_%c2136443136445%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self136357%_
                                  _%L136418%_))))
                         (if _%c2136443136445%_
                             (let ((_%c2136448%_ _%c2136443136445%_))
                               (if (fx= _%c1136442%_ _%c2136448%_)
                                   _%c1136442%_
                                   '#f))
                             '#f))
                       '#f)))
               _%hd136375136413%_
               _%hd136372136405%_
               _%hd136369136397%_)
              (_%g136360136381%_ _%g136361136384%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g136360136381%_
                                               _%g136361136384%_))))
                                      (_%g136360136381%_ _%g136361136384%_))))
                              (_%g136360136381%_ _%g136361136384%_))))
                      (_%g136360136381%_ _%g136361136384%_)))))
          (_%g136359136451%_ _%stx136358%_))))))
