(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/compile::timestamp 1773009270)
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
    (define gxc#::collect-bindings::t
      (let ((__tmp206795 (list gxc#::void::t))
            (__tmp206794 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-bindings::t
         '::collect-bindings
         __tmp206795
         '()
         __tmp206794
         '#f)))
    (define gxc#::collect-bindings?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-bindings::t)))
    (define gxc#make-::collect-bindings
      (lambda _%$args205409%_
        (apply make-instance gxc#::collect-bindings::t _%$args205409%_)))
    (define gxc#::collect-bindings-bind-methods!
      (let ((__tmp206796
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
        (__make-atomic-promise __tmp206796)))
    (define gxc#apply-collect-bindings
      (lambda (_%stx205401%_)
        (force gxc#::collect-bindings-bind-methods!)
        (let* ((_%self205404%_
                (let ((__obj206770
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-bindings::t))))
                  __obj206770))
               (__tmp206797
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self205404%_ _%stx205401%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp206797
           gxc#current-compile-method
           _%self205404%_))))
    (define gxc#::lift-modules::t
      (let ((__tmp206799 (list gxc#::void::t))
            (__tmp206798 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::lift-modules::t
         '::lift-modules
         __tmp206799
         '(modules)
         __tmp206798
         '#f)))
    (define gxc#::lift-modules?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::lift-modules::t)))
    (define gxc#make-::lift-modules
      (lambda _%$args205398%_
        (apply make-instance gxc#::lift-modules::t _%$args205398%_)))
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
      (let ((__tmp206800
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
        (__make-atomic-promise __tmp206800)))
    (define gxc#apply-lift-modules__%
      (lambda (_%@@keywords205373%_ _%modules205370205374%_ _%stx205375%_)
        (let ((_%modules205378%_
               (if (eq? _%modules205370205374%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'modules:))
                   _%modules205370205374%_)))
          (force gxc#::lift-modules-bind-methods!)
          (let* ((_%self205380%_
                  (let ((__obj206772
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::lift-modules::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj206772
                       _%modules205378%_
                       '1
                       '#f
                       '#f))
                    __obj206772))
                 (__tmp206801
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self205380%_ _%stx205375%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp206801
             gxc#current-compile-method
             _%self205380%_)))))
    (define gxc#apply-lift-modules__@
      (lambda (_%@@keywords205387%_ . _%args205388%_)
        (apply gxc#apply-lift-modules__%
               _%@@keywords205387%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords205387%_
                  'modules:
                  absent-value))
               _%args205388%_)))
    (define gxc#apply-lift-modules
      (lambda _%args205371205394%_
        (apply keyword-dispatch
               '#(modules:)
               gxc#apply-lift-modules__@
               _%args205371205394%_)))
    (define gxc#::find-runtime-code::t
      (let ((__tmp206803 (list)) (__tmp206802 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-runtime-code::t
         '::find-runtime-code
         __tmp206803
         '()
         __tmp206802
         '#f)))
    (define gxc#::find-runtime-code?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-runtime-code::t)))
    (define gxc#make-::find-runtime-code
      (lambda _%$args205366%_
        (apply make-instance gxc#::find-runtime-code::t _%$args205366%_)))
    (define gxc#::find-runtime-code-bind-methods!
      (let ((__tmp206804
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
        (__make-atomic-promise __tmp206804)))
    (define gxc#apply-find-runtime-code
      (lambda (_%stx205358%_)
        (force gxc#::find-runtime-code-bind-methods!)
        (let* ((_%self205361%_
                (let ((__obj206774
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-runtime-code::t))))
                  __obj206774))
               (__tmp206805
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self205361%_ _%stx205358%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp206805
           gxc#current-compile-method
           _%self205361%_))))
    (define gxc#::find-lambda-expression::t
      (let ((__tmp206807 (list gxc#::false::t))
            (__tmp206806 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-lambda-expression::t
         '::find-lambda-expression
         __tmp206807
         '()
         __tmp206806
         '#f)))
    (define gxc#::find-lambda-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-lambda-expression::t)))
    (define gxc#make-::find-lambda-expression
      (lambda _%$args205355%_
        (apply make-instance gxc#::find-lambda-expression::t _%$args205355%_)))
    (define gxc#::find-lambda-expression-bind-methods!
      (let ((__tmp206808
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
        (__make-atomic-promise __tmp206808)))
    (define gxc#apply-find-lambda-expression
      (lambda (_%stx205347%_)
        (force gxc#::find-lambda-expression-bind-methods!)
        (let* ((_%self205350%_
                (let ((__obj206776
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-lambda-expression::t))))
                  __obj206776))
               (__tmp206809
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self205350%_ _%stx205347%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp206809
           gxc#current-compile-method
           _%self205350%_))))
    (define gxc#::count-values::t
      (let ((__tmp206811 (list gxc#::false-expression::t))
            (__tmp206810 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::count-values::t
         '::count-values
         __tmp206811
         '()
         __tmp206810
         '#f)))
    (define gxc#::count-values?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::count-values::t)))
    (define gxc#make-::count-values
      (lambda _%$args205344%_
        (apply make-instance gxc#::count-values::t _%$args205344%_)))
    (define gxc#::count-values-bind-methods!
      (let ((__tmp206812
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
        (__make-atomic-promise __tmp206812)))
    (define gxc#apply-count-values
      (lambda (_%stx205336%_)
        (force gxc#::count-values-bind-methods!)
        (let* ((_%self205339%_
                (let ((__obj206778
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::count-values::t))))
                  __obj206778))
               (__tmp206813
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self205339%_ _%stx205336%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp206813
           gxc#current-compile-method
           _%self205339%_))))
    (define gxc#::generate-runtime-empty::t
      (let ((__tmp206814 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-empty::t
         '::generate-runtime-empty
         __tmp206814
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime-empty?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-empty::t)))
    (define gxc#make-::generate-runtime-empty
      (lambda _%$args205333%_
        (apply make-instance gxc#::generate-runtime-empty::t _%$args205333%_)))
    (define gxc#::generate-runtime-empty-bind-methods!
      (let ((__tmp206815
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
        (__make-atomic-promise __tmp206815)))
    (define gxc#::generate-loader::t
      (let ((__tmp206817 (list gxc#::generate-runtime-empty::t))
            (__tmp206816 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-loader::t
         '::generate-loader
         __tmp206817
         '()
         __tmp206816
         '#f)))
    (define gxc#::generate-loader?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-loader::t)))
    (define gxc#make-::generate-loader
      (lambda _%$args205329%_
        (apply make-instance gxc#::generate-loader::t _%$args205329%_)))
    (define gxc#::generate-loader-bind-methods!
      (let ((__tmp206818
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
        (__make-atomic-promise __tmp206818)))
    (define gxc#apply-generate-loader
      (lambda (_%stx205321%_)
        (force gxc#::generate-loader-bind-methods!)
        (let* ((_%self205324%_
                (let ((__obj206781
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-loader::t))))
                  __obj206781))
               (__tmp206819
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self205324%_ _%stx205321%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp206819
           gxc#current-compile-method
           _%self205324%_))))
    (define gxc#::generate-runtime::t
      (let ((__tmp206820 (list gxc#::generate-runtime-empty::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime::t
         '::generate-runtime
         __tmp206820
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime::t)))
    (define gxc#make-::generate-runtime
      (lambda _%$args205318%_
        (apply make-instance gxc#::generate-runtime::t _%$args205318%_)))
    (define gxc#::generate-runtime-bind-methods!
      (let ((__tmp206821
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
        (__make-atomic-promise __tmp206821)))
    (define gxc#apply-generate-runtime
      (lambda (_%stx205310%_)
        (force gxc#::generate-runtime-bind-methods!)
        (let* ((_%self205313%_
                (let ((__obj206783
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime::t))))
                  __obj206783))
               (__tmp206822
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self205313%_ _%stx205310%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp206822
           gxc#current-compile-method
           _%self205313%_))))
    (define gxc#::generate-runtime-phi::t
      (let ((__tmp206824 (list gxc#::generate-runtime::t))
            (__tmp206823 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-phi::t
         '::generate-runtime-phi
         __tmp206824
         '()
         __tmp206823
         '#f)))
    (define gxc#::generate-runtime-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-phi::t)))
    (define gxc#make-::generate-runtime-phi
      (lambda _%$args205307%_
        (apply make-instance gxc#::generate-runtime-phi::t _%$args205307%_)))
    (define gxc#::generate-runtime-phi-bind-methods!
      (let ((__tmp206825
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
        (__make-atomic-promise __tmp206825)))
    (define gxc#apply-generate-runtime-phi
      (lambda (_%stx205299%_)
        (force gxc#::generate-runtime-phi-bind-methods!)
        (let* ((_%self205302%_
                (let ((__obj206785
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime-phi::t))))
                  __obj206785))
               (__tmp206826
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self205302%_ _%stx205299%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp206826
           gxc#current-compile-method
           _%self205302%_))))
    (define gxc#::collect-expression-refs::t
      (let ((__tmp206827 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-expression-refs::t
         '::collect-expression-refs
         __tmp206827
         '(table)
         '()
         '#f)))
    (define gxc#::collect-expression-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-expression-refs::t)))
    (define gxc#make-::collect-expression-refs
      (lambda _%$args205296%_
        (apply make-instance
               gxc#::collect-expression-refs::t
               _%$args205296%_)))
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
      (let ((__tmp206828
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
        (__make-atomic-promise __tmp206828)))
    (define gxc#apply-collect-expression-refs__%
      (lambda (_%@@keywords205271%_ _%table205268205272%_ _%stx205273%_)
        (let ((_%table205276%_
               (if (eq? _%table205268205272%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table205268205272%_)))
          (force gxc#::collect-expression-refs-bind-methods!)
          (let* ((_%self205278%_
                  (let ((__obj206787
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#::collect-expression-refs::t
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj206787
                       _%table205276%_
                       '1
                       '#f
                       '#f))
                    __obj206787))
                 (__tmp206829
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self205278%_ _%stx205273%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp206829
             gxc#current-compile-method
             _%self205278%_)))))
    (define gxc#apply-collect-expression-refs__@
      (lambda (_%@@keywords205285%_ . _%args205286%_)
        (apply gxc#apply-collect-expression-refs__%
               _%@@keywords205285%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords205285%_
                  'table:
                  absent-value))
               _%args205286%_)))
    (define gxc#apply-collect-expression-refs
      (lambda _%args205269205292%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-expression-refs__@
               _%args205269205292%_)))
    (define gxc#::generate-meta::t
      (let ((__tmp206831 (list gxc#::void-expression::t))
            (__tmp206830 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta::t
         '::generate-meta
         __tmp206831
         '(state)
         __tmp206830
         '#f)))
    (define gxc#::generate-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta::t)))
    (define gxc#make-::generate-meta
      (lambda _%$args205264%_
        (apply make-instance gxc#::generate-meta::t _%$args205264%_)))
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
      (let ((__tmp206832
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
        (__make-atomic-promise __tmp206832)))
    (define gxc#apply-generate-meta__%
      (lambda (_%@@keywords205239%_ _%state205236205240%_ _%stx205241%_)
        (let ((_%state205244%_
               (if (eq? _%state205236205240%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state205236205240%_)))
          (force gxc#::generate-meta-bind-methods!)
          (let* ((_%self205246%_
                  (let ((__obj206789
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj206789
                       _%state205244%_
                       '1
                       '#f
                       '#f))
                    __obj206789))
                 (__tmp206833
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self205246%_ _%stx205241%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp206833
             gxc#current-compile-method
             _%self205246%_)))))
    (define gxc#apply-generate-meta__@
      (lambda (_%@@keywords205253%_ . _%args205254%_)
        (apply gxc#apply-generate-meta__%
               _%@@keywords205253%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords205253%_
                  'state:
                  absent-value))
               _%args205254%_)))
    (define gxc#apply-generate-meta
      (lambda _%args205237205260%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta__@
               _%args205237205260%_)))
    (define gxc#::generate-meta-phi::t
      (let ((__tmp206835 (list)) (__tmp206834 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta-phi::t
         '::generate-meta-phi
         __tmp206835
         '(state)
         __tmp206834
         '#f)))
    (define gxc#::generate-meta-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta-phi::t)))
    (define gxc#make-::generate-meta-phi
      (lambda _%$args205232%_
        (apply make-instance gxc#::generate-meta-phi::t _%$args205232%_)))
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
      (let ((__tmp206836
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
        (__make-atomic-promise __tmp206836)))
    (define gxc#apply-generate-meta-phi__%
      (lambda (_%@@keywords205207%_ _%state205204205208%_ _%stx205209%_)
        (let ((_%state205212%_
               (if (eq? _%state205204205208%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state205204205208%_)))
          (force gxc#::generate-meta-phi-bind-methods!)
          (let* ((_%self205214%_
                  (let ((__obj206791
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta-phi::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj206791
                       _%state205212%_
                       '1
                       '#f
                       '#f))
                    __obj206791))
                 (__tmp206837
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self205214%_ _%stx205209%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp206837
             gxc#current-compile-method
             _%self205214%_)))))
    (define gxc#apply-generate-meta-phi__@
      (lambda (_%@@keywords205221%_ . _%args205222%_)
        (apply gxc#apply-generate-meta-phi__%
               _%@@keywords205221%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords205221%_
                  'state:
                  absent-value))
               _%args205222%_)))
    (define gxc#apply-generate-meta-phi
      (lambda _%args205205205228%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta-phi__@
               _%args205205205228%_)))
    (define gxc#collect-bindings-define-values%
      (lambda (_%self205133%_ _%stx205134%_)
        (let* ((_%g205136205153%_
                (lambda (_%g205137205150%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g205137205150%_))))
               (_%g205135205200%_
                (lambda (_%g205137205156%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g205137205156%_))
                      (let ((_%e205140205158%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g205137205156%_))))
                        (let ((_%hd205141205161%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205140205158%_)))
                              (_%tl205142205163%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205140205158%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl205142205163%_))
                              (let ((_%e205143205166%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl205142205163%_))))
                                (let ((_%hd205144205169%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e205143205166%_)))
                                      (_%tl205145205171%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e205143205166%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl205145205171%_))
                                      (let ((_%e205146205174%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl205145205171%_))))
                                        (let ((_%hd205147205177%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e205146205174%_)))
                                              (_%tl205148205179%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e205146205174%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl205148205179%_))
                                              ((lambda (_%g205138205182%_
                                                        _%g205139205183%_)
                                                 (let ((__tmp206838
                                                        (lambda (_%bind205198%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#identifier? _%bind205198%_))
                      (gxc#add-module-binding! _%bind205198%_ '#f)
                      '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#stx-for-each1
                                                    __tmp206838
                                                    _%g205139205183%_)))
                                               _%hd205147205177%_
                                               _%hd205144205169%_)
                                              (_%g205136205153%_
                                               _%g205137205156%_))))
                                      (_%g205136205153%_ _%g205137205156%_))))
                              (_%g205136205153%_ _%g205137205156%_))))
                      (_%g205136205153%_ _%g205137205156%_)))))
          (_%g205135205200%_ _%stx205134%_))))
    (define gxc#collect-bindings-define-syntax%
      (lambda (_%self205065%_ _%stx205066%_)
        (let* ((_%g205068205085%_
                (lambda (_%g205069205082%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g205069205082%_))))
               (_%g205067205130%_
                (lambda (_%g205069205088%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g205069205088%_))
                      (let ((_%e205072205090%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g205069205088%_))))
                        (let ((_%hd205073205093%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205072205090%_)))
                              (_%tl205074205095%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205072205090%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl205074205095%_))
                              (let ((_%e205075205098%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl205074205095%_))))
                                (let ((_%hd205076205101%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e205075205098%_)))
                                      (_%tl205077205103%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e205075205098%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl205077205103%_))
                                      (let ((_%e205078205106%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl205077205103%_))))
                                        (let ((_%hd205079205109%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e205078205106%_)))
                                              (_%tl205080205111%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e205078205106%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl205080205111%_))
                                              ((lambda (_%g205070205114%_
                                                        _%g205071205115%_)
                                                 (gxc#add-module-binding!
                                                  _%g205071205115%_
                                                  '#t))
                                               _%hd205079205109%_
                                               _%hd205076205101%_)
                                              (_%g205068205085%_
                                               _%g205069205088%_))))
                                      (_%g205068205085%_ _%g205069205088%_))))
                              (_%g205068205085%_ _%g205069205088%_))))
                      (_%g205068205085%_ _%g205069205088%_)))))
          (_%g205067205130%_ _%stx205066%_))))
    (define gxc#lift-modules-module%
      (lambda (_%self205007%_ _%stx205008%_)
        (let* ((_%g205010205024%_
                (lambda (_%g205011205021%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g205011205021%_))))
               (_%g205009205062%_
                (lambda (_%g205011205027%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g205011205027%_))
                      (let ((_%e205014205029%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g205011205027%_))))
                        (let ((_%hd205015205032%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205014205029%_)))
                              (_%tl205016205034%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205014205029%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl205016205034%_))
                              (let ((_%e205017205037%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl205016205034%_))))
                                (let ((_%hd205018205040%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e205017205037%_)))
                                      (_%tl205019205042%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e205017205037%_))))
                                  ((lambda (_%g205012205045%_
                                            _%g205013205046%_)
                                     (let ((_%ctx205059%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-local-e__0
                                               _%g205013205046%_))))
                                       (set-box!
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self205007%_
                                           'modules))
                                        (cons _%ctx205059%_
                                              (unbox (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self205007%_
                                                        'modules)))))
                                       (let ((__tmp206839
                                              (lambda ()
                                                (let ((__tmp206840
                                                       (##structure-ref
                                                        _%ctx205059%_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self205007%_
                                                   __tmp206840)))))
                                         (declare (not safe))
                                         (call-with-parameters__1
                                          __tmp206839
                                          gx#current-expander-context
                                          _%ctx205059%_))))
                                   _%tl205019205042%_
                                   _%hd205018205040%_)))
                              (_%g205010205024%_ _%g205011205027%_))))
                      (_%g205010205024%_ _%g205011205027%_)))))
          (_%g205009205062%_ _%stx205008%_))))
    (define gxc#current-compile-decls-unsafe?
      (lambda ()
        (let ((_%decls204961204963%_
               (let () (declare (not safe)) (gxc#current-compile-decls))))
          (if _%decls204961204963%_
              (let ((_%decls204965%_ _%decls204961204963%_))
                (let _%lp204967%_ ((_%rest204969%_ _%decls204965%_))
                  (let* ((_%rest204970204978%_ _%rest204969%_)
                         (_%else204972204986%_ (lambda () '#f))
                         (_%K204974204995%_
                          (lambda (_%decls204989%_ _%decl204990%_)
                            (if (equal? _%decl204990%_ '(not safe))
                                '#t
                                (if (equal? _%decl204990%_ '(safe))
                                    '#f
                                    (_%lp204967%_ _%decls204989%_))))))
                    (if (pair? _%rest204970204978%_)
                        (let ((_%hd204975204998%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest204970204978%_)))
                              (_%tl204976205000%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest204970204978%_))))
                          (let* ((_%decl205003%_ _%hd204975204998%_)
                                 (_%decls205005%_ _%tl204976205000%_))
                            (_%K204974204995%_
                             _%decls205005%_
                             _%decl205003%_)))
                        (_%else204972204986%_)))))
              '#f))))
    (define gxc#add-module-binding!
      (lambda (_%id204955%_ _%syntax?204956%_)
        (let ((_%eid204958%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id204955%_))
                '1
                gx#binding::t
                '#f))
              (_%ht204959%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-symbol-table))
                '2
                gxc#symbol-table::t
                '#f)))
          (if (let () (declare (not safe)) (interned-symbol? _%eid204958%_))
              '#!void
              (let ((__tmp206841
                     (let ((__tmp206842
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__0
                               _%eid204958%_))))
                       (declare (not safe))
                       (gx#make-binding-id__1 __tmp206842 _%syntax?204956%_))))
                (declare (not safe))
                (hash-put! _%ht204959%_ _%eid204958%_ __tmp206841))))))
    (define gxc#generate-runtime-empty
      (lambda (_%self204952%_ _%stx204953%_) '(begin)))
    (define gxc#generate-runtime-begin%
      (lambda (_%self204799%_ _%stx204800%_)
        (letrec ((_%simplify204802%_
                  (lambda (_%body204850%_)
                    (let _%lp204852%_ ((_%rest204854%_ _%body204850%_)
                                       (_%r204855%_ '()))
                      (let* ((_%rest204856204864%_ _%rest204854%_)
                             (_%else204858204872%_
                              (lambda () (reverse _%r204855%_)))
                             (_%K204860204940%_
                              (lambda (_%rest204875%_ _%hd204876%_)
                                (let* ((_%hd204877204893%_ _%hd204876%_)
                                       (_%else204881204901%_
                                        (lambda ()
                                          (_%lp204852%_
                                           _%rest204875%_
                                           (cons _%hd204876%_ _%r204855%_)))))
                                  (let ((_%K204889204930%_
                                         (lambda (_%exprs204928%_)
                                           (_%lp204852%_
                                            (let ()
                                              (declare (not safe))
                                              (foldr__0
                                               cons
                                               _%rest204875%_
                                               _%exprs204928%_))
                                            _%r204855%_)))
                                        (_%K204884204914%_
                                         (lambda ()
                                           (if (null? _%rest204875%_)
                                               (_%lp204852%_
                                                _%rest204875%_
                                                (cons _%hd204876%_
                                                      _%r204855%_))
                                               (_%lp204852%_
                                                _%rest204875%_
                                                _%r204855%_))))
                                        (_%K204883204906%_
                                         (lambda ()
                                           (if (null? _%rest204875%_)
                                               (_%lp204852%_
                                                _%rest204875%_
                                                (cons _%hd204876%_
                                                      _%r204855%_))
                                               (_%lp204852%_
                                                _%rest204875%_
                                                _%r204855%_)))))
                                    (let ((_%try-match204880204909%_
                                           (lambda ()
                                             (if (symbol? _%hd204877204893%_)
                                                 (_%K204883204906%_)
                                                 (_%else204881204901%_)))))
                                      (if (pair? _%hd204877204893%_)
                                          (let ((_%tl204891204935%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd204877204893%_)))
                                                (_%hd204890204933%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd204877204893%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd204890204933%_
                                                         'begin))
                                                (let ((_%exprs204938%_
                                                       _%tl204891204935%_))
                                                  (_%K204889204930%_
                                                   _%exprs204938%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd204890204933%_
                                                             'quote))
                                                    (if (pair? _%tl204891204935%_)
                                                        (let ((_%tl204888204922%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%tl204891204935%_))))
                  (if (null? _%tl204888204922%_)
                      (_%K204884204914%_)
                      (_%try-match204880204909%_)))
                (_%try-match204880204909%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%try-match204880204909%_))))
                                          (_%try-match204880204909%_))))))))
                        (if (pair? _%rest204856204864%_)
                            (let ((_%hd204861204943%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest204856204864%_)))
                                  (_%tl204862204945%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest204856204864%_))))
                              (let* ((_%hd204948%_ _%hd204861204943%_)
                                     (_%rest204950%_ _%tl204862204945%_))
                                (_%K204860204940%_
                                 _%rest204950%_
                                 _%hd204948%_)))
                            (_%else204858204872%_)))))))
          (let* ((_%g204804204814%_
                  (lambda (_%g204805204811%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g204805204811%_))))
                 (_%g204803204847%_
                  (lambda (_%g204805204817%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g204805204817%_))
                        (let ((_%e204807204819%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g204805204817%_))))
                          (let ((_%hd204808204822%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e204807204819%_)))
                                (_%tl204809204824%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e204807204819%_))))
                            ((lambda (_%g204806204827%_)
                               (let* ((_%body204842%_
                                       (map (lambda (_%g204837204839%_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%self204799%_
                                                 _%g204837204839%_)))
                                            _%g204806204827%_))
                                      (_%body204844%_
                                       (_%simplify204802%_ _%body204842%_)))
                                 (if (let ((__tmp206843
                                            (length _%body204844%_)))
                                       (declare (not safe))
                                       (##fx= __tmp206843 '1))
                                     (car _%body204844%_)
                                     (cons 'begin _%body204844%_))))
                             _%tl204809204824%_)))
                        (_%g204804204814%_ _%g204805204817%_)))))
            (_%g204803204847%_ _%stx204800%_)))))
    (define gxc#generate-runtime-begin-foreign%
      (lambda (_%self204760%_ _%stx204761%_)
        (let* ((_%g204763204773%_
                (lambda (_%g204764204770%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204764204770%_))))
               (_%g204762204796%_
                (lambda (_%g204764204776%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204764204776%_))
                      (let ((_%e204766204778%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g204764204776%_))))
                        (let ((_%hd204767204781%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204766204778%_)))
                              (_%tl204768204783%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204766204778%_))))
                          ((lambda (_%g204765204786%_)
                             (cons 'begin
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax->datum _%g204765204786%_))))
                           _%tl204768204783%_)))
                      (_%g204763204773%_ _%g204764204776%_)))))
          (_%g204762204796%_ _%stx204761%_))))
    (define gxc#generate-runtime-begin-annotation%
      (lambda (_%self204526%_ _%stx204527%_)
        (let* ((_%__stx205433205434%_ _%stx204527%_)
               (_%g204531204583%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx205433205434%_)))))
          (let ((_%__kont205435205436%_
                 (lambda (_%g204533204742%_ _%g204534204743%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self204526%_ _%g204533204742%_))))
                (_%__kont205437205438%_
                 (lambda (_%g204544204690%_
                          _%g204545204691%_
                          _%g204546204692%_)
                   (if (let ((__tmp206844
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%g204546204692%_))))
                         (declare (not safe))
                         (##memq __tmp206844 '(@inline)))
                       '(begin)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1
                          _%self204526%_
                          _%g204544204690%_)))))
                (_%__kont205441205442%_
                 (lambda (_%g204568204612%_ _%g204569204613%_)
                   (let ((_%decls204628%_
                          (map gx#syntax->datum _%g204569204613%_)))
                     (let ((__tmp206847
                            (lambda ()
                              (cons 'begin
                                    (cons (cons 'declare _%decls204628%_)
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self204526%_
                                                   _%g204568204612%_))
                                                '())))))
                           (__tmp206845
                            (let ((__tmp206846
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-decls))))
                              (declare (not safe))
                              (foldr__0 cons __tmp206846 _%decls204628%_))))
                       (declare (not safe))
                       (call-with-parameters__1
                        __tmp206847
                        gxc#current-compile-decls
                        __tmp206845))))))
            (let* ((_%__match205488205489%_
                    (lambda (_%e204547204636%_
                             _%hd204548204639%_
                             _%tl204549204641%_
                             _%e204550204644%_
                             _%hd204551204647%_
                             _%tl204552204649%_
                             _%e204553204652%_
                             _%hd204554204655%_
                             _%tl204555204657%_
                             _%__splice205439205440%_
                             _%target204556204660%_
                             _%tl204558204662%_)
                      (letrec ((_%loop204559204665%_
                                (lambda (_%hd204557204668%_
                                         _%param204563204670%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd204557204668%_))
                                      (let ((_%e204560204672%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd204557204668%_))))
                                        (let ((_%lp-tl204562204677%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204560204672%_)))
                                              (_%lp-hd204561204675%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204560204672%_))))
                                          (_%loop204559204665%_
                                           _%lp-tl204562204677%_
                                           (cons _%lp-hd204561204675%_
                                                 _%param204563204670%_))))
                                      (let ((_%param204564204680%_
                                             (reverse _%param204563204670%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl204552204649%_))
                                            (let ((_%e204565204682%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl204552204649%_))))
                                              (let ((_%tl204567204687%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e204565204682%_)))
                                                    (_%hd204566204685%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e204565204682%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl204567204687%_))
                                                    (let ((_%g204544204690%_
                                                           _%hd204566204685%_)
                                                          (_%g204545204691%_
                                                           _%param204564204680%_)
                                                          (_%g204546204692%_
                                                           _%hd204554204655%_))
                                                      (if (and (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier? _%g204546204692%_))
                       (not (let ((__tmp206848
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g204546204692%_))))
                              (declare (not safe))
                              (##memq __tmp206848 gxc#gambit-annotations))))
                  (_%__kont205437205438%_
                   _%g204544204690%_
                   _%g204545204691%_
                   _%g204546204692%_)
                  (_%__kont205441205442%_
                   _%hd204566204685%_
                   _%hd204551204647%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g204531204583%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g204531204583%_))))))))
                        (_%loop204559204665%_ _%target204556204660%_ '()))))
                   (_%__match205462205463%_
                    (lambda (_%e204535204718%_
                             _%hd204536204721%_
                             _%tl204537204723%_
                             _%e204538204726%_
                             _%hd204539204729%_
                             _%tl204540204731%_
                             _%e204541204734%_
                             _%hd204542204737%_
                             _%tl204543204739%_)
                      (let ((_%g204533204742%_ _%hd204542204737%_)
                            (_%g204534204743%_ _%hd204539204729%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%g204534204743%_))
                            (_%__kont205435205436%_
                             _%g204533204742%_
                             _%g204534204743%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd204539204729%_))
                                (let ((_%e204553204652%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd204539204729%_))))
                                  (let ((_%tl204555204657%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e204553204652%_)))
                                        (_%hd204554204655%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e204553204652%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl204555204657%_))
                                        (let ((_%__splice205439205440%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%tl204555204657%_
                                                  '0))))
                                          (let ((_%tl204558204662%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice205439205440%_
                                                    '1)))
                                                (_%target204556204660%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice205439205440%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl204558204662%_))
                                                (_%__match205488205489%_
                                                 _%e204535204718%_
                                                 _%hd204536204721%_
                                                 _%tl204537204723%_
                                                 _%e204538204726%_
                                                 _%hd204539204729%_
                                                 _%tl204540204731%_
                                                 _%e204553204652%_
                                                 _%hd204554204655%_
                                                 _%tl204555204657%_
                                                 _%__splice205439205440%_
                                                 _%target204556204660%_
                                                 _%tl204558204662%_)
                                                (_%__kont205441205442%_
                                                 _%hd204542204737%_
                                                 _%hd204539204729%_))))
                                        (_%__kont205441205442%_
                                         _%hd204542204737%_
                                         _%hd204539204729%_))))
                                (_%__kont205441205442%_
                                 _%hd204542204737%_
                                 _%hd204539204729%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx205433205434%_))
                  (let ((_%e204535204718%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx205433205434%_))))
                    (let ((_%tl204537204723%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e204535204718%_)))
                          (_%hd204536204721%_
                           (let ()
                             (declare (not safe))
                             (##car _%e204535204718%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl204537204723%_))
                          (let ((_%e204538204726%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl204537204723%_))))
                            (let ((_%tl204540204731%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e204538204726%_)))
                                  (_%hd204539204729%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e204538204726%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl204540204731%_))
                                  (let ((_%e204541204734%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl204540204731%_))))
                                    (let ((_%tl204543204739%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e204541204734%_)))
                                          (_%hd204542204737%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e204541204734%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl204543204739%_))
                                          (_%__match205462205463%_
                                           _%e204535204718%_
                                           _%hd204536204721%_
                                           _%tl204537204723%_
                                           _%e204538204726%_
                                           _%hd204539204729%_
                                           _%tl204540204731%_
                                           _%e204541204734%_
                                           _%hd204542204737%_
                                           _%tl204543204739%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd204539204729%_))
                                              (let ((_%e204553204652%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd204539204729%_))))
                                                (let ((_%tl204555204657%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e204553204652%_)))
                                                      (_%hd204554204655%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e204553204652%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl204555204657%_))
                                                      (let ((_%__splice205439205440%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl204555204657%_
                        '0))))
                (let ((_%tl204558204662%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice205439205440%_ '1)))
                      (_%target204556204660%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice205439205440%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl204558204662%_))
                      (_%__match205488205489%_
                       _%e204535204718%_
                       _%hd204536204721%_
                       _%tl204537204723%_
                       _%e204538204726%_
                       _%hd204539204729%_
                       _%tl204540204731%_
                       _%e204553204652%_
                       _%hd204554204655%_
                       _%tl204555204657%_
                       _%__splice205439205440%_
                       _%target204556204660%_
                       _%tl204558204662%_)
                      (let () (declare (not safe)) (_%g204531204583%_)))))
              (let () (declare (not safe)) (_%g204531204583%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g204531204583%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd204539204729%_))
                                      (let ((_%e204553204652%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd204539204729%_))))
                                        (let ((_%tl204555204657%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204553204652%_)))
                                              (_%hd204554204655%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204553204652%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl204555204657%_))
                                              (let ((_%__splice205439205440%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl204555204657%_
                                                        '0))))
                                                (let ((_%tl204558204662%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice205439205440%_
                                                          '1)))
                                                      (_%target204556204660%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice205439205440%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl204558204662%_))
                                                      (_%__match205488205489%_
                                                       _%e204535204718%_
                                                       _%hd204536204721%_
                                                       _%tl204537204723%_
                                                       _%e204538204726%_
                                                       _%hd204539204729%_
                                                       _%tl204540204731%_
                                                       _%e204553204652%_
                                                       _%hd204554204655%_
                                                       _%tl204555204657%_
                                                       _%__splice205439205440%_
                                                       _%target204556204660%_
                                                       _%tl204558204662%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g204531204583%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g204531204583%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g204531204583%_))))))
                          (let () (declare (not safe)) (_%g204531204583%_)))))
                  (let () (declare (not safe)) (_%g204531204583%_))))))))
    (define gxc#generate-runtime-declare%
      (lambda (_%self204485%_ _%stx204486%_)
        (let* ((_%g204488204498%_
                (lambda (_%g204489204495%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204489204495%_))))
               (_%g204487204523%_
                (lambda (_%g204489204501%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204489204501%_))
                      (let ((_%e204491204503%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g204489204501%_))))
                        (let ((_%hd204492204506%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204491204503%_)))
                              (_%tl204493204508%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204491204503%_))))
                          ((lambda (_%g204490204511%_)
                             (let ((_%decls204521%_
                                    (map gx#syntax->datum _%g204490204511%_)))
                               (let ((__tmp206849
                                      (let ((__tmp206850
                                             (let ()
                                               (declare (not safe))
                                               (gxc#current-compile-decls))))
                                        (declare (not safe))
                                        (foldr__0
                                         cons
                                         __tmp206850
                                         _%decls204521%_))))
                                 (declare (not safe))
                                 (gxc#current-compile-decls __tmp206849))
                               (cons 'declare _%decls204521%_)))
                           _%tl204493204508%_)))
                      (_%g204488204498%_ _%g204489204501%_)))))
          (_%g204487204523%_ _%stx204486%_))))
    (define gxc#generate-runtime-define-values%
      (lambda (_%self204232%_ _%stx204233%_)
        (let* ((_%g204235204252%_
                (lambda (_%g204236204249%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204236204249%_))))
               (_%g204234204482%_
                (lambda (_%g204236204255%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204236204255%_))
                      (let ((_%e204239204257%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g204236204255%_))))
                        (let ((_%hd204240204260%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204239204257%_)))
                              (_%tl204241204262%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204239204257%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204241204262%_))
                              (let ((_%e204242204265%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl204241204262%_))))
                                (let ((_%hd204243204268%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204242204265%_)))
                                      (_%tl204244204270%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204242204265%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl204244204270%_))
                                      (let ((_%e204245204273%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl204244204270%_))))
                                        (let ((_%hd204246204276%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204245204273%_)))
                                              (_%tl204247204278%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204245204273%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl204247204278%_))
                                              ((lambda (_%g204237204281%_
                                                        _%g204238204282%_)
                                                 (let* ((_%__stx205541205542%_
                                                         _%g204238204282%_)
                                                        (_%g204299204313%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx205541205542%_)))))
                                                   (let ((_%__kont205543205544%_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _%self204232%_
                                                               _%g204237204281%_))))
                                                         (_%__kont205545205546%_
                                                          (lambda (_%g204305204445%_)
                                                            (let ((_%eid204454%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id
                              _%g204305204445%_))))
                      (let ((_%lambda-expr204455204457%_
                             (gxc#apply-find-lambda-expression
                              _%g204237204281%_)))
                        (if _%lambda-expr204455204457%_
                            (let* ((_%lambda-expr204459%_
                                    _%lambda-expr204455204457%_)
                                   (__tmp206851
                                    (let ()
                                      (declare (not safe))
                                      (gxc#current-compile-runtime-names))))
                              (declare (not safe))
                              (hash-put!
                               __tmp206851
                               _%lambda-expr204459%_
                               _%eid204454%_))
                            '#f))
                      (cons 'define
                            (cons _%eid204454%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__1
                                           _%self204232%_
                                           _%g204237204281%_))
                                        '()))))))
                 (_%__kont205547205548%_
                  (lambda ()
                    (let* ((_%tmp204320%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%body204429%_
                            (let _%lp204322%_ ((_%rest204324%_
                                                _%g204238204282%_)
                                               (_%k204325%_ '0)
                                               (_%r204326%_ '()))
                              (let* ((_%__stx205511205512%_ _%rest204324%_)
                                     (_%g204331204348%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx205511205512%_)))))
                                (let ((_%__kont205513205514%_
                                       (lambda (_%g204333204416%_)
                                         (_%lp204322%_
                                          _%g204333204416%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k204325%_ '1))
                                          _%r204326%_)))
                                      (_%__kont205515205516%_
                                       (lambda (_%g204338204389%_
                                                _%g204339204390%_)
                                         (_%lp204322%_
                                          _%g204338204389%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k204325%_ '1))
                                          (cons (cons 'define
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#generate-runtime-binding-id
                                                               _%g204339204390%_))
                                                            (cons (gxc#generate-runtime-values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tmp204320%_
                           _%k204325%_
                           _%g204338204389%_)
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%r204326%_))))
                                      (_%__kont205517205518%_
                                       (lambda (_%g204343204360%_)
                                         (let ((__tmp206852
                                                (cons (cons 'define
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#generate-runtime-binding-id
                             _%g204343204360%_))
                          (cons (gxc#generate-runtime-values->list
                                 _%tmp204320%_
                                 _%k204325%_)
                                '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (foldl__0
                                            cons
                                            __tmp206852
                                            _%r204326%_))))
                                      (_%__kont205519205520%_
                                       (lambda () (reverse _%r204326%_))))
                                  (let ((_%g204329204376%_
                                         (lambda ()
                                           (let ((_%g204343204360%_
                                                  _%__stx205511205512%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%g204343204360%_))
                                                 (_%__kont205517205518%_
                                                  _%g204343204360%_)
                                                 (_%__kont205519205520%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx205511205512%_))
                                        (let ((_%e204334204405%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx205511205512%_))))
                                          (let ((_%tl204336204410%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e204334204405%_)))
                                                (_%hd204335204408%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e204334204405%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd204335204408%_))
                                                (let ((_%e204337204413%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd204335204408%_))))
                                                  (if (equal? _%e204337204413%_
                                                              '#f)
                                                      (_%__kont205513205514%_
                                                       _%tl204336204410%_)
                                                      (_%__kont205515205516%_
                                                       _%tl204336204410%_
                                                       _%hd204335204408%_)))
                                                (_%__kont205515205516%_
                                                 _%tl204336204410%_
                                                 _%hd204335204408%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g204329204376%_)))))))))
                      (cons 'begin
                            (cons (cons 'define
                                        (cons _%tmp204320%_
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self204232%_
                                                       _%g204237204281%_))
                                                    '())))
                                  (cons (gxc#generate-runtime-check-values
                                         _%tmp204320%_
                                         _%g204238204282%_
                                         _%g204237204281%_)
                                        _%body204429%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx205541205542%_))
                                                         (let ((_%e204301204466%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx205541205542%_))))
                   (let ((_%tl204303204471%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e204301204466%_)))
                         (_%hd204302204469%_
                          (let ()
                            (declare (not safe))
                            (##car _%e204301204466%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-datum? _%hd204302204469%_))
                         (let ((_%e204304204474%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd204302204469%_))))
                           (if (equal? _%e204304204474%_ '#f)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl204303204471%_))
                                   (_%__kont205543205544%_)
                                   (_%__kont205547205548%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl204303204471%_))
                                   (_%__kont205545205546%_ _%hd204302204469%_)
                                   (_%__kont205547205548%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl204303204471%_))
                             (_%__kont205545205546%_ _%hd204302204469%_)
                             (_%__kont205547205548%_)))))
                 (_%__kont205547205548%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd204246204276%_
                                               _%hd204243204268%_)
                                              (_%g204235204252%_
                                               _%g204236204255%_))))
                                      (_%g204235204252%_ _%g204236204255%_))))
                              (_%g204235204252%_ _%g204236204255%_))))
                      (_%g204235204252%_ _%g204236204255%_)))))
          (_%g204234204482%_ _%stx204233%_))))
    (define gxc#generate-runtime-check-values
      (lambda (_%vals204207%_ _%hd204208%_ _%expr204209%_)
        (let ((_%$e204211%_ (gxc#apply-count-values _%expr204209%_)))
          (if _%$e204211%_
              ((lambda (_%count204214%_)
                 (let ((_%len204216%_
                        (let ()
                          (declare (not safe))
                          (gx#stx-length _%hd204208%_)))
                       (_%cmp204217%_
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-list? _%hd204208%_))
                            fx=
                            fx>=)))
                   (if (or (let ()
                             (declare (not safe))
                             (##fx= _%len204216%_ '0))
                           (_%cmp204217%_ _%count204214%_ _%len204216%_))
                       '#!void
                       (let ()
                         (declare (not safe))
                         (gxc#raise-compile-error
                          '"Value count mismatch"
                          _%expr204209%_
                          _%hd204208%_)))))
               _%$e204211%_)
              (let* ((_%len204223%_
                      (let ()
                        (declare (not safe))
                        (gx#stx-length _%hd204208%_)))
                     (_%cmp204225%_
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-list? _%hd204208%_))
                          '##fx=
                          '##fx>=))
                     (_%errmsg204227%_
                      (let ((__tmp206854
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-list? _%hd204208%_))
                                 '"Context expects "
                                 '"Context expects at least "))
                            (__tmp206853 (number->string _%len204223%_)))
                        (declare (not safe))
                        (##string-append __tmp206854 __tmp206853 '" values")))
                     (_%count204229%_
                      (let ()
                        (declare (not safe))
                        (gxc#generate-runtime-temporary__0))))
                (if (if (let ()
                          (declare (not safe))
                          (gx#stx-list? _%hd204208%_))
                        '#f
                        (let () (declare (not safe)) (##fx= _%len204223%_ '0)))
                    '#!void
                    (cons 'let
                          (cons (cons (cons _%count204229%_
                                            (cons (gxc#generate-runtime-values-count
                                                   _%vals204207%_)
                                                  '()))
                                      '())
                                (cons (cons 'if
                                            (cons (cons 'not
                                                        (cons (if (gxc#current-compile-decls-unsafe?)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%cmp204225%_
                                (cons _%count204229%_
                                      (cons _%len204223%_ '())))
                          (cons 'let
                                (cons '()
                                      (cons '(declare (not safe))
                                            (cons (cons _%cmp204225%_
                                                        (cons _%count204229%_
                                                              (cons _%len204223%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons 'error
                                                              (cons _%errmsg204227%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%count204229%_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))))))))
    (define gxc#generate-runtime-values-count
      (lambda (_%var204202%_)
        (letrec ((_%generate-inline204204%_
                  (lambda ()
                    (cons 'if
                          (cons (cons '##values? (cons _%var204202%_ '()))
                                (cons (cons '##values-length
                                            (cons _%var204202%_ '()))
                                      (cons '1 '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline204204%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline204204%_) '()))))))))
    (define gxc#generate-runtime-values-ref
      (lambda (_%var204195%_ _%i204196%_ _%rest204197%_)
        (letrec ((_%generate-inline204199%_
                  (lambda ()
                    (if (and (let ()
                               (declare (not safe))
                               (##fx= _%i204196%_ '0))
                             (not (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%rest204197%_))))
                        (cons 'if
                              (cons (cons '##values? (cons _%var204195%_ '()))
                                    (cons (cons '##values-ref
                                                (cons _%var204195%_
                                                      (cons '0 '())))
                                          (cons _%var204195%_ '()))))
                        (cons '##values-ref
                              (cons _%var204195%_ (cons _%i204196%_ '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline204199%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline204199%_) '()))))))))
    (define gxc#generate-runtime-values->list
      (lambda (_%var204189%_ _%i204190%_)
        (if (let () (declare (not safe)) (##fx= _%i204190%_ '0))
            (if (gxc#current-compile-decls-unsafe?)
                (cons 'if
                      (cons (cons '##values? (cons _%var204189%_ '()))
                            (cons (cons '##values->list
                                        (cons _%var204189%_ '()))
                                  (cons (cons 'list (cons _%var204189%_ '()))
                                        '()))))
                (cons 'let
                      (cons '()
                            (cons '(declare (not safe))
                                  (cons (cons 'if
                                              (cons (cons '##values?
                                                          (cons _%var204189%_
                                                                '()))
                                                    (cons (cons '##values->list
                                                                (cons _%var204189%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons 'list (cons _%var204189%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
            (if (let () (declare (not safe)) (##fx= _%i204190%_ '1))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons 'if
                          (cons (cons '##values? (cons _%var204189%_ '()))
                                (cons (cons '##cdr
                                            (cons (cons '##values->list
                                                        (cons _%var204189%_
                                                              '()))
                                                  '()))
                                      (cons ''() '()))))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons 'if
                                                  (cons (cons '##values?
                                                              (cons _%var204189%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '##cdr
                            (cons (cons '##values->list
                                        (cons _%var204189%_ '()))
                                  '()))
                      (cons ''() '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons '##list-tail
                          (cons (cons '##values->list (cons _%var204189%_ '()))
                                (cons _%i204190%_ '())))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons '##list-tail
                                                  (cons (cons '##values->list
                                                              (cons _%var204189%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _%i204190%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))))))
    (define gxc#generate-runtime-lambda%
      (lambda (_%self204121%_ _%stx204122%_)
        (let* ((_%g204124204141%_
                (lambda (_%g204125204138%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204125204138%_))))
               (_%g204123204186%_
                (lambda (_%g204125204144%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204125204144%_))
                      (let ((_%e204128204146%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g204125204144%_))))
                        (let ((_%hd204129204149%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204128204146%_)))
                              (_%tl204130204151%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204128204146%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204130204151%_))
                              (let ((_%e204131204154%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl204130204151%_))))
                                (let ((_%hd204132204157%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204131204154%_)))
                                      (_%tl204133204159%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204131204154%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl204133204159%_))
                                      (let ((_%e204134204162%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl204133204159%_))))
                                        (let ((_%hd204135204165%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204134204162%_)))
                                              (_%tl204136204167%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204134204162%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl204136204167%_))
                                              ((lambda (_%g204126204170%_
                                                        _%g204127204171%_)
                                                 (gxc#generate-runtime-lambda-form
                                                  _%self204121%_
                                                  _%g204127204171%_
                                                  _%g204126204170%_))
                                               _%hd204135204165%_
                                               _%hd204132204157%_)
                                              (_%g204124204141%_
                                               _%g204125204144%_))))
                                      (_%g204124204141%_ _%g204125204144%_))))
                              (_%g204124204141%_ _%g204125204144%_))))
                      (_%g204124204141%_ _%g204125204144%_)))))
          (_%g204123204186%_ _%stx204122%_))))
    (define gxc#generate-runtime-lambda-form
      (lambda (_%self204080%_ _%hd204081%_ _%body204082%_)
        (let* ((_%hd204084%_ (gxc#generate-runtime-lambda-head _%hd204081%_))
               (_%body204086%_
                (let ()
                  (declare (not safe))
                  (gxc#compile-e__1 _%self204080%_ _%body204082%_)))
               (_%body204118%_
                (let* ((_%body204087204095%_ _%body204086%_)
                       (_%else204089204103%_
                        (lambda () (cons _%body204086%_ '())))
                       (_%K204091204108%_
                        (lambda (_%exprs204106%_) _%exprs204106%_)))
                  (if (pair? _%body204087204095%_)
                      (let ((_%hd204092204111%_
                             (let ()
                               (declare (not safe))
                               (##car _%body204087204095%_)))
                            (_%tl204093204113%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%body204087204095%_))))
                        (if (let ()
                              (declare (not safe))
                              (##eq? _%hd204092204111%_ 'begin))
                            (let ((_%exprs204116%_ _%tl204093204113%_))
                              (_%K204091204108%_ _%exprs204116%_))
                            (_%else204089204103%_)))
                      (_%else204089204103%_)))))
          (cons 'lambda (cons _%hd204084%_ _%body204118%_)))))
    (define gxc#generate-runtime-lambda-head
      (lambda (_%hd204078%_)
        (let ()
          (declare (not safe))
          (gx#stx-map1 gxc#generate-runtime-binding-id* _%hd204078%_))))
    (define gxc#generate-runtime-case-lambda%
      (lambda (_%self202635%_ _%stx202636%_)
        (letrec ((_%dispatch-case?202638%_
                  (lambda (_%hd203316%_ _%body203317%_)
                    (let* ((_%form203319%_
                            (cons _%hd203316%_ (cons _%body203317%_ '())))
                           (_%__stx205573205574%_ _%form203319%_)
                           (_%g203324203481%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx205573205574%_)))))
                      (let ((_%__kont205575205576%_
                             (lambda (_%g203326203998%_
                                      _%g203327203999%_
                                      _%g203328204000%_)
                               '#t))
                            (_%__kont205581205582%_
                             (lambda (_%g203371203790%_
                                      _%g203372203791%_
                                      _%g203373203792%_
                                      _%g203374203793%_
                                      _%g203375203794%_
                                      _%g203376203795%_)
                               '#t))
                            (_%__kont205587205588%_
                             (lambda (_%g203437203589%_
                                      _%g203438203590%_
                                      _%g203439203591%_
                                      _%g203440203592%_)
                               '#t))
                            (_%__kont205589205590%_ (lambda () '#f)))
                        (let* ((_%__match205714205715%_
                                (lambda (_%e203441203493%_
                                         _%hd203442203496%_
                                         _%tl203443203498%_
                                         _%e203444203501%_
                                         _%hd203445203504%_
                                         _%tl203446203506%_
                                         _%e203447203509%_
                                         _%hd203448203512%_
                                         _%tl203449203514%_
                                         _%e203450203517%_
                                         _%hd203451203520%_
                                         _%tl203452203522%_
                                         _%e203453203525%_
                                         _%hd203454203528%_
                                         _%tl203455203530%_
                                         _%e203456203533%_
                                         _%hd203457203536%_
                                         _%tl203458203538%_
                                         _%e203459203541%_
                                         _%hd203460203544%_
                                         _%tl203461203546%_
                                         _%e203462203549%_
                                         _%hd203463203552%_
                                         _%tl203464203554%_
                                         _%e203465203557%_
                                         _%hd203466203560%_
                                         _%tl203467203562%_
                                         _%e203468203565%_
                                         _%hd203469203568%_
                                         _%tl203470203570%_
                                         _%e203471203573%_
                                         _%hd203472203576%_
                                         _%tl203473203578%_
                                         _%e203474203581%_
                                         _%hd203475203584%_
                                         _%tl203476203586%_)
                                  (let ((_%g203437203589%_ _%hd203475203584%_)
                                        (_%g203438203590%_ _%hd203466203560%_)
                                        (_%g203439203591%_ _%hd203457203536%_)
                                        (_%g203440203592%_ _%hd203442203496%_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (gx#identifier?
                                                _%g203440203592%_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#runtime-identifier=?
                                                _%g203439203591%_
                                                'apply))
                                             (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%g203440203592%_
                                                _%g203437203589%_))
                                             (not (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%g203438203590%_
                                                     _%g203440203592%_))))
                                        (_%__kont205587205588%_
                                         _%g203437203589%_
                                         _%g203438203590%_
                                         _%g203439203591%_
                                         _%g203440203592%_)
                                        (_%__kont205589205590%_)))))
                               (_%__match205686205687%_
                                (lambda (_%e203441203493%_
                                         _%hd203442203496%_
                                         _%tl203443203498%_
                                         _%e203444203501%_
                                         _%hd203445203504%_
                                         _%tl203446203506%_
                                         _%e203447203509%_
                                         _%hd203448203512%_
                                         _%tl203449203514%_
                                         _%e203450203517%_
                                         _%hd203451203520%_
                                         _%tl203452203522%_
                                         _%e203453203525%_
                                         _%hd203454203528%_
                                         _%tl203455203530%_
                                         _%e203456203533%_
                                         _%hd203457203536%_
                                         _%tl203458203538%_
                                         _%e203459203541%_
                                         _%hd203460203544%_
                                         _%tl203461203546%_
                                         _%e203462203549%_
                                         _%hd203463203552%_
                                         _%tl203464203554%_
                                         _%e203465203557%_
                                         _%hd203466203560%_
                                         _%tl203467203562%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl203461203546%_))
                                      (let ((_%e203468203565%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl203461203546%_))))
                                        (let ((_%tl203470203570%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e203468203565%_)))
                                              (_%hd203469203568%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e203468203565%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd203469203568%_))
                                              (let ((_%e203471203573%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd203469203568%_))))
                                                (let ((_%tl203473203578%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e203471203573%_)))
                                                      (_%hd203472203576%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e203471203573%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd203472203576%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _%hd203472203576%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl203473203578%_))
                      (let ((_%e203474203581%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl203473203578%_))))
                        (let ((_%tl203476203586%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203474203581%_)))
                              (_%hd203475203584%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203474203581%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl203476203586%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl203470203570%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl203446203506%_))
                                      (_%__match205714205715%_
                                       _%e203441203493%_
                                       _%hd203442203496%_
                                       _%tl203443203498%_
                                       _%e203444203501%_
                                       _%hd203445203504%_
                                       _%tl203446203506%_
                                       _%e203447203509%_
                                       _%hd203448203512%_
                                       _%tl203449203514%_
                                       _%e203450203517%_
                                       _%hd203451203520%_
                                       _%tl203452203522%_
                                       _%e203453203525%_
                                       _%hd203454203528%_
                                       _%tl203455203530%_
                                       _%e203456203533%_
                                       _%hd203457203536%_
                                       _%tl203458203538%_
                                       _%e203459203541%_
                                       _%hd203460203544%_
                                       _%tl203461203546%_
                                       _%e203462203549%_
                                       _%hd203463203552%_
                                       _%tl203464203554%_
                                       _%e203465203557%_
                                       _%hd203466203560%_
                                       _%tl203467203562%_
                                       _%e203468203565%_
                                       _%hd203469203568%_
                                       _%tl203470203570%_
                                       _%e203471203573%_
                                       _%hd203472203576%_
                                       _%tl203473203578%_
                                       _%e203474203581%_
                                       _%hd203475203584%_
                                       _%tl203476203586%_)
                                      (_%__kont205589205590%_))
                                  (_%__kont205589205590%_))
                              (_%__kont205589205590%_))))
                      (_%__kont205589205590%_))
                  (_%__kont205589205590%_))
              (_%__kont205589205590%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont205589205590%_))))
                                      (_%__kont205589205590%_))))
                               (_%__match205616205617%_
                                (lambda (_%e203377203634%_
                                         _%hd203378203637%_
                                         _%tl203379203639%_
                                         _%__splice205583205584%_
                                         _%target203380203642%_
                                         _%tl203382203644%_)
                                  (letrec ((_%loop203383203647%_
                                            (lambda (_%hd203381203650%_
                                                     _%arg203387203652%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd203381203650%_))
                                                  (let ((_%e203384203654%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd203381203650%_))))
                                                    (let ((_%lp-tl203386203659%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e203384203654%_)))
                                                          (_%lp-hd203385203657%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e203384203654%_))))
                                                      (_%loop203383203647%_
                                                       _%lp-tl203386203659%_
                                                       (cons _%lp-hd203385203657%_
                                                             _%arg203387203652%_))))
                                                  (let ((_%arg203388203662%_
                                                         (reverse _%arg203387203652%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl203379203639%_))
                                                        (let ((_%e203389203664%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl203379203639%_))))
                  (let ((_%tl203391203669%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e203389203664%_)))
                        (_%hd203390203667%_
                         (let ()
                           (declare (not safe))
                           (##car _%e203389203664%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd203390203667%_))
                        (let ((_%e203392203672%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd203390203667%_))))
                          (let ((_%tl203394203677%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e203392203672%_)))
                                (_%hd203393203675%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e203392203672%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd203393203675%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd203393203675%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl203394203677%_))
                                        (let ((_%e203395203680%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl203394203677%_))))
                                          (let ((_%tl203397203685%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e203395203680%_)))
                                                (_%hd203396203683%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e203395203680%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd203396203683%_))
                                                (let ((_%e203398203688%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd203396203683%_))))
                                                  (let ((_%tl203400203693%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e203398203688%_)))
                                                        (_%hd203399203691%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e203398203688%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd203399203691%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd203399203691%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl203400203693%_))
                        (let ((_%e203401203696%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl203400203693%_))))
                          (let ((_%tl203403203701%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e203401203696%_)))
                                (_%hd203402203699%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e203401203696%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl203403203701%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl203397203685%_))
                                    (let ((_%e203404203704%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl203397203685%_))))
                                      (let ((_%tl203406203709%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e203404203704%_)))
                                            (_%hd203405203707%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e203404203704%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd203405203707%_))
                                            (let ((_%e203407203712%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd203405203707%_))))
                                              (let ((_%tl203409203717%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e203407203712%_)))
                                                    (_%hd203408203715%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e203407203712%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd203408203715%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd203408203715%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl203409203717%_))
                                                            (let ((_%e203410203720%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl203409203717%_))))
                      (let ((_%tl203412203725%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e203410203720%_)))
                            (_%hd203411203723%_
                             (let ()
                               (declare (not safe))
                               (##car _%e203410203720%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl203412203725%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl203406203709%_))
                                (if (let ((__tmp206855
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-length
                                              _%tl203406203709%_))))
                                      (declare (not safe))
                                      (##fx>= __tmp206855 '1))
                                    (let ((_%__splice205585205586%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl203406203709%_
                                              '1))))
                                      (let ((_%tl203415203730%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice205585205586%_
                                                '1)))
                                            (_%target203413203728%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice205585205586%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl203415203730%_))
                                            (let ((_%e203422203733%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl203415203730%_))))
                                              (let ((_%tl203424203738%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e203422203733%_)))
                                                    (_%hd203423203736%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e203422203733%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd203423203736%_))
                                                    (let ((_%e203425203741%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd203423203736%_))))
                                                      (let ((_%tl203427203746%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e203425203741%_)))
                    (_%hd203426203744%_
                     (let () (declare (not safe)) (##car _%e203425203741%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd203426203744%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _%hd203426203744%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl203427203746%_))
                            (let ((_%e203428203749%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl203427203746%_))))
                              (let ((_%tl203430203754%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e203428203749%_)))
                                    (_%hd203429203752%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e203428203749%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl203430203754%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl203424203738%_))
                                        (letrec ((_%loop203416203757%_
                                                  (lambda (_%hd203414203760%_
                                                           _%xarg203420203762%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd203414203760%_))
                                                        (let ((_%e203417203764%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd203414203760%_))))
                  (let ((_%lp-tl203419203769%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e203417203764%_)))
                        (_%lp-hd203418203767%_
                         (let ()
                           (declare (not safe))
                           (##car _%e203417203764%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd203418203767%_))
                        (let ((_%e203431203772%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd203418203767%_))))
                          (let ((_%tl203433203777%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e203431203772%_)))
                                (_%hd203432203775%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e203431203772%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd203432203775%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _%hd203432203775%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl203433203777%_))
                                        (let ((_%e203434203780%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl203433203777%_))))
                                          (let ((_%tl203436203785%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e203434203780%_)))
                                                (_%hd203435203783%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e203434203780%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl203436203785%_))
                                                (_%loop203416203757%_
                                                 _%lp-tl203419203769%_
                                                 (cons _%hd203435203783%_
                                                       _%xarg203420203762%_))
                                                (_%__match205686205687%_
                                                 _%e203377203634%_
                                                 _%hd203378203637%_
                                                 _%tl203379203639%_
                                                 _%e203389203664%_
                                                 _%hd203390203667%_
                                                 _%tl203391203669%_
                                                 _%e203392203672%_
                                                 _%hd203393203675%_
                                                 _%tl203394203677%_
                                                 _%e203395203680%_
                                                 _%hd203396203683%_
                                                 _%tl203397203685%_
                                                 _%e203398203688%_
                                                 _%hd203399203691%_
                                                 _%tl203400203693%_
                                                 _%e203401203696%_
                                                 _%hd203402203699%_
                                                 _%tl203403203701%_
                                                 _%e203404203704%_
                                                 _%hd203405203707%_
                                                 _%tl203406203709%_
                                                 _%e203407203712%_
                                                 _%hd203408203715%_
                                                 _%tl203409203717%_
                                                 _%e203410203720%_
                                                 _%hd203411203723%_
                                                 _%tl203412203725%_))))
                                        (_%__match205686205687%_
                                         _%e203377203634%_
                                         _%hd203378203637%_
                                         _%tl203379203639%_
                                         _%e203389203664%_
                                         _%hd203390203667%_
                                         _%tl203391203669%_
                                         _%e203392203672%_
                                         _%hd203393203675%_
                                         _%tl203394203677%_
                                         _%e203395203680%_
                                         _%hd203396203683%_
                                         _%tl203397203685%_
                                         _%e203398203688%_
                                         _%hd203399203691%_
                                         _%tl203400203693%_
                                         _%e203401203696%_
                                         _%hd203402203699%_
                                         _%tl203403203701%_
                                         _%e203404203704%_
                                         _%hd203405203707%_
                                         _%tl203406203709%_
                                         _%e203407203712%_
                                         _%hd203408203715%_
                                         _%tl203409203717%_
                                         _%e203410203720%_
                                         _%hd203411203723%_
                                         _%tl203412203725%_))
                                    (_%__match205686205687%_
                                     _%e203377203634%_
                                     _%hd203378203637%_
                                     _%tl203379203639%_
                                     _%e203389203664%_
                                     _%hd203390203667%_
                                     _%tl203391203669%_
                                     _%e203392203672%_
                                     _%hd203393203675%_
                                     _%tl203394203677%_
                                     _%e203395203680%_
                                     _%hd203396203683%_
                                     _%tl203397203685%_
                                     _%e203398203688%_
                                     _%hd203399203691%_
                                     _%tl203400203693%_
                                     _%e203401203696%_
                                     _%hd203402203699%_
                                     _%tl203403203701%_
                                     _%e203404203704%_
                                     _%hd203405203707%_
                                     _%tl203406203709%_
                                     _%e203407203712%_
                                     _%hd203408203715%_
                                     _%tl203409203717%_
                                     _%e203410203720%_
                                     _%hd203411203723%_
                                     _%tl203412203725%_))
                                (_%__match205686205687%_
                                 _%e203377203634%_
                                 _%hd203378203637%_
                                 _%tl203379203639%_
                                 _%e203389203664%_
                                 _%hd203390203667%_
                                 _%tl203391203669%_
                                 _%e203392203672%_
                                 _%hd203393203675%_
                                 _%tl203394203677%_
                                 _%e203395203680%_
                                 _%hd203396203683%_
                                 _%tl203397203685%_
                                 _%e203398203688%_
                                 _%hd203399203691%_
                                 _%tl203400203693%_
                                 _%e203401203696%_
                                 _%hd203402203699%_
                                 _%tl203403203701%_
                                 _%e203404203704%_
                                 _%hd203405203707%_
                                 _%tl203406203709%_
                                 _%e203407203712%_
                                 _%hd203408203715%_
                                 _%tl203409203717%_
                                 _%e203410203720%_
                                 _%hd203411203723%_
                                 _%tl203412203725%_))))
                        (_%__match205686205687%_
                         _%e203377203634%_
                         _%hd203378203637%_
                         _%tl203379203639%_
                         _%e203389203664%_
                         _%hd203390203667%_
                         _%tl203391203669%_
                         _%e203392203672%_
                         _%hd203393203675%_
                         _%tl203394203677%_
                         _%e203395203680%_
                         _%hd203396203683%_
                         _%tl203397203685%_
                         _%e203398203688%_
                         _%hd203399203691%_
                         _%tl203400203693%_
                         _%e203401203696%_
                         _%hd203402203699%_
                         _%tl203403203701%_
                         _%e203404203704%_
                         _%hd203405203707%_
                         _%tl203406203709%_
                         _%e203407203712%_
                         _%hd203408203715%_
                         _%tl203409203717%_
                         _%e203410203720%_
                         _%hd203411203723%_
                         _%tl203412203725%_))))
                (let ((_%xarg203421203788%_ (reverse _%xarg203420203762%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl203391203669%_))
                      (let ((_%g203371203790%_ _%hd203429203752%_)
                            (_%g203372203791%_ _%xarg203421203788%_)
                            (_%g203373203792%_ _%hd203411203723%_)
                            (_%g203374203793%_ _%hd203402203699%_)
                            (_%g203375203794%_ _%tl203382203644%_)
                            (_%g203376203795%_ _%arg203388203662%_))
                        (if (and (let ((__tmp206856
                                        (let ((__tmp206857
                                               (lambda (_%g203838203841%_
                                                        _%g203839203843%_)
                                                 (cons _%g203838203841%_
                                                       _%g203839203843%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp206857
                                           '()
                                           _%g203376203795%_))))
                                   (declare (not safe))
                                   (gx#identifier-list? __tmp206856))
                                 (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%g203375203794%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _%g203374203793%_
                                    'apply))
                                 (let ((__tmp206860
                                        (length (let ((__tmp206861
                                                       (lambda (_%g203845203848%_
                                                                _%g203846203850%_)
                                                         (cons _%g203845203848%_
                                                               _%g203846203850%_))))
                                                  (declare (not safe))
                                                  (foldr__0
                                                   __tmp206861
                                                   '()
                                                   _%g203376203795%_))))
                                       (__tmp206858
                                        (length (let ((__tmp206859
                                                       (lambda (_%g203852203855%_
                                                                _%g203853203857%_)
                                                         (cons _%g203852203855%_
                                                               _%g203853203857%_))))
                                                  (declare (not safe))
                                                  (foldr__0
                                                   __tmp206859
                                                   '()
                                                   _%g203372203791%_)))))
                                   (declare (not safe))
                                   (##fx= __tmp206860 __tmp206858))
                                 (let ((__tmp206864
                                        (let ((__tmp206865
                                               (lambda (_%g203859203862%_
                                                        _%g203860203864%_)
                                                 (cons _%g203859203862%_
                                                       _%g203860203864%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp206865
                                           '()
                                           _%g203376203795%_)))
                                       (__tmp206862
                                        (let ((__tmp206863
                                               (lambda (_%g203866203869%_
                                                        _%g203867203871%_)
                                                 (cons _%g203866203869%_
                                                       _%g203867203871%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp206863
                                           '()
                                           _%g203372203791%_))))
                                   (declare (not safe))
                                   (andmap__1
                                    gx#free-identifier=?
                                    __tmp206864
                                    __tmp206862))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g203375203794%_
                                    _%g203371203790%_))
                                 (not (let ((__tmp206869
                                             (lambda (_%g203873203875%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#free-identifier=?
                                                  _%g203873203875%_
                                                  _%g203373203792%_))))
                                            (__tmp206866
                                             (let ((__tmp206868
                                                    (lambda (_%g203877203880%_
                                                             _%g203878203882%_)
                                                      (cons _%g203877203880%_
                                                            _%g203878203882%_)))
                                                   (__tmp206867
                                                    (cons _%g203375203794%_
                                                          '())))
                                               (declare (not safe))
                                               (foldr__0
                                                __tmp206868
                                                __tmp206867
                                                _%g203376203795%_))))
                                        (declare (not safe))
                                        (__find __tmp206869 __tmp206866))))
                            (_%__kont205581205582%_
                             _%g203371203790%_
                             _%g203372203791%_
                             _%g203373203792%_
                             _%g203374203793%_
                             _%g203375203794%_
                             _%g203376203795%_)
                            (_%__match205686205687%_
                             _%e203377203634%_
                             _%hd203378203637%_
                             _%tl203379203639%_
                             _%e203389203664%_
                             _%hd203390203667%_
                             _%tl203391203669%_
                             _%e203392203672%_
                             _%hd203393203675%_
                             _%tl203394203677%_
                             _%e203395203680%_
                             _%hd203396203683%_
                             _%tl203397203685%_
                             _%e203398203688%_
                             _%hd203399203691%_
                             _%tl203400203693%_
                             _%e203401203696%_
                             _%hd203402203699%_
                             _%tl203403203701%_
                             _%e203404203704%_
                             _%hd203405203707%_
                             _%tl203406203709%_
                             _%e203407203712%_
                             _%hd203408203715%_
                             _%tl203409203717%_
                             _%e203410203720%_
                             _%hd203411203723%_
                             _%tl203412203725%_)))
                      (_%__match205686205687%_
                       _%e203377203634%_
                       _%hd203378203637%_
                       _%tl203379203639%_
                       _%e203389203664%_
                       _%hd203390203667%_
                       _%tl203391203669%_
                       _%e203392203672%_
                       _%hd203393203675%_
                       _%tl203394203677%_
                       _%e203395203680%_
                       _%hd203396203683%_
                       _%tl203397203685%_
                       _%e203398203688%_
                       _%hd203399203691%_
                       _%tl203400203693%_
                       _%e203401203696%_
                       _%hd203402203699%_
                       _%tl203403203701%_
                       _%e203404203704%_
                       _%hd203405203707%_
                       _%tl203406203709%_
                       _%e203407203712%_
                       _%hd203408203715%_
                       _%tl203409203717%_
                       _%e203410203720%_
                       _%hd203411203723%_
                       _%tl203412203725%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop203416203757%_
                                           _%target203413203728%_
                                           '()))
                                        (_%__match205686205687%_
                                         _%e203377203634%_
                                         _%hd203378203637%_
                                         _%tl203379203639%_
                                         _%e203389203664%_
                                         _%hd203390203667%_
                                         _%tl203391203669%_
                                         _%e203392203672%_
                                         _%hd203393203675%_
                                         _%tl203394203677%_
                                         _%e203395203680%_
                                         _%hd203396203683%_
                                         _%tl203397203685%_
                                         _%e203398203688%_
                                         _%hd203399203691%_
                                         _%tl203400203693%_
                                         _%e203401203696%_
                                         _%hd203402203699%_
                                         _%tl203403203701%_
                                         _%e203404203704%_
                                         _%hd203405203707%_
                                         _%tl203406203709%_
                                         _%e203407203712%_
                                         _%hd203408203715%_
                                         _%tl203409203717%_
                                         _%e203410203720%_
                                         _%hd203411203723%_
                                         _%tl203412203725%_))
                                    (_%__match205686205687%_
                                     _%e203377203634%_
                                     _%hd203378203637%_
                                     _%tl203379203639%_
                                     _%e203389203664%_
                                     _%hd203390203667%_
                                     _%tl203391203669%_
                                     _%e203392203672%_
                                     _%hd203393203675%_
                                     _%tl203394203677%_
                                     _%e203395203680%_
                                     _%hd203396203683%_
                                     _%tl203397203685%_
                                     _%e203398203688%_
                                     _%hd203399203691%_
                                     _%tl203400203693%_
                                     _%e203401203696%_
                                     _%hd203402203699%_
                                     _%tl203403203701%_
                                     _%e203404203704%_
                                     _%hd203405203707%_
                                     _%tl203406203709%_
                                     _%e203407203712%_
                                     _%hd203408203715%_
                                     _%tl203409203717%_
                                     _%e203410203720%_
                                     _%hd203411203723%_
                                     _%tl203412203725%_))))
                            (_%__match205686205687%_
                             _%e203377203634%_
                             _%hd203378203637%_
                             _%tl203379203639%_
                             _%e203389203664%_
                             _%hd203390203667%_
                             _%tl203391203669%_
                             _%e203392203672%_
                             _%hd203393203675%_
                             _%tl203394203677%_
                             _%e203395203680%_
                             _%hd203396203683%_
                             _%tl203397203685%_
                             _%e203398203688%_
                             _%hd203399203691%_
                             _%tl203400203693%_
                             _%e203401203696%_
                             _%hd203402203699%_
                             _%tl203403203701%_
                             _%e203404203704%_
                             _%hd203405203707%_
                             _%tl203406203709%_
                             _%e203407203712%_
                             _%hd203408203715%_
                             _%tl203409203717%_
                             _%e203410203720%_
                             _%hd203411203723%_
                             _%tl203412203725%_))
                        (_%__match205686205687%_
                         _%e203377203634%_
                         _%hd203378203637%_
                         _%tl203379203639%_
                         _%e203389203664%_
                         _%hd203390203667%_
                         _%tl203391203669%_
                         _%e203392203672%_
                         _%hd203393203675%_
                         _%tl203394203677%_
                         _%e203395203680%_
                         _%hd203396203683%_
                         _%tl203397203685%_
                         _%e203398203688%_
                         _%hd203399203691%_
                         _%tl203400203693%_
                         _%e203401203696%_
                         _%hd203402203699%_
                         _%tl203403203701%_
                         _%e203404203704%_
                         _%hd203405203707%_
                         _%tl203406203709%_
                         _%e203407203712%_
                         _%hd203408203715%_
                         _%tl203409203717%_
                         _%e203410203720%_
                         _%hd203411203723%_
                         _%tl203412203725%_))
                    (_%__match205686205687%_
                     _%e203377203634%_
                     _%hd203378203637%_
                     _%tl203379203639%_
                     _%e203389203664%_
                     _%hd203390203667%_
                     _%tl203391203669%_
                     _%e203392203672%_
                     _%hd203393203675%_
                     _%tl203394203677%_
                     _%e203395203680%_
                     _%hd203396203683%_
                     _%tl203397203685%_
                     _%e203398203688%_
                     _%hd203399203691%_
                     _%tl203400203693%_
                     _%e203401203696%_
                     _%hd203402203699%_
                     _%tl203403203701%_
                     _%e203404203704%_
                     _%hd203405203707%_
                     _%tl203406203709%_
                     _%e203407203712%_
                     _%hd203408203715%_
                     _%tl203409203717%_
                     _%e203410203720%_
                     _%hd203411203723%_
                     _%tl203412203725%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match205686205687%_
                                                     _%e203377203634%_
                                                     _%hd203378203637%_
                                                     _%tl203379203639%_
                                                     _%e203389203664%_
                                                     _%hd203390203667%_
                                                     _%tl203391203669%_
                                                     _%e203392203672%_
                                                     _%hd203393203675%_
                                                     _%tl203394203677%_
                                                     _%e203395203680%_
                                                     _%hd203396203683%_
                                                     _%tl203397203685%_
                                                     _%e203398203688%_
                                                     _%hd203399203691%_
                                                     _%tl203400203693%_
                                                     _%e203401203696%_
                                                     _%hd203402203699%_
                                                     _%tl203403203701%_
                                                     _%e203404203704%_
                                                     _%hd203405203707%_
                                                     _%tl203406203709%_
                                                     _%e203407203712%_
                                                     _%hd203408203715%_
                                                     _%tl203409203717%_
                                                     _%e203410203720%_
                                                     _%hd203411203723%_
                                                     _%tl203412203725%_))))
                                            (_%__match205686205687%_
                                             _%e203377203634%_
                                             _%hd203378203637%_
                                             _%tl203379203639%_
                                             _%e203389203664%_
                                             _%hd203390203667%_
                                             _%tl203391203669%_
                                             _%e203392203672%_
                                             _%hd203393203675%_
                                             _%tl203394203677%_
                                             _%e203395203680%_
                                             _%hd203396203683%_
                                             _%tl203397203685%_
                                             _%e203398203688%_
                                             _%hd203399203691%_
                                             _%tl203400203693%_
                                             _%e203401203696%_
                                             _%hd203402203699%_
                                             _%tl203403203701%_
                                             _%e203404203704%_
                                             _%hd203405203707%_
                                             _%tl203406203709%_
                                             _%e203407203712%_
                                             _%hd203408203715%_
                                             _%tl203409203717%_
                                             _%e203410203720%_
                                             _%hd203411203723%_
                                             _%tl203412203725%_))))
                                    (_%__match205686205687%_
                                     _%e203377203634%_
                                     _%hd203378203637%_
                                     _%tl203379203639%_
                                     _%e203389203664%_
                                     _%hd203390203667%_
                                     _%tl203391203669%_
                                     _%e203392203672%_
                                     _%hd203393203675%_
                                     _%tl203394203677%_
                                     _%e203395203680%_
                                     _%hd203396203683%_
                                     _%tl203397203685%_
                                     _%e203398203688%_
                                     _%hd203399203691%_
                                     _%tl203400203693%_
                                     _%e203401203696%_
                                     _%hd203402203699%_
                                     _%tl203403203701%_
                                     _%e203404203704%_
                                     _%hd203405203707%_
                                     _%tl203406203709%_
                                     _%e203407203712%_
                                     _%hd203408203715%_
                                     _%tl203409203717%_
                                     _%e203410203720%_
                                     _%hd203411203723%_
                                     _%tl203412203725%_))
                                (_%__match205686205687%_
                                 _%e203377203634%_
                                 _%hd203378203637%_
                                 _%tl203379203639%_
                                 _%e203389203664%_
                                 _%hd203390203667%_
                                 _%tl203391203669%_
                                 _%e203392203672%_
                                 _%hd203393203675%_
                                 _%tl203394203677%_
                                 _%e203395203680%_
                                 _%hd203396203683%_
                                 _%tl203397203685%_
                                 _%e203398203688%_
                                 _%hd203399203691%_
                                 _%tl203400203693%_
                                 _%e203401203696%_
                                 _%hd203402203699%_
                                 _%tl203403203701%_
                                 _%e203404203704%_
                                 _%hd203405203707%_
                                 _%tl203406203709%_
                                 _%e203407203712%_
                                 _%hd203408203715%_
                                 _%tl203409203717%_
                                 _%e203410203720%_
                                 _%hd203411203723%_
                                 _%tl203412203725%_))
                            (_%__kont205589205590%_))))
                    (_%__kont205589205590%_))
                (_%__kont205589205590%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont205589205590%_))))
                                            (_%__kont205589205590%_))))
                                    (_%__kont205589205590%_))
                                (_%__kont205589205590%_))))
                        (_%__kont205589205590%_))
                    (_%__kont205589205590%_))
                (_%__kont205589205590%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont205589205590%_))))
                                        (_%__kont205589205590%_))
                                    (_%__kont205589205590%_))
                                (_%__kont205589205590%_))))
                        (_%__kont205589205590%_))))
                (_%__kont205589205590%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop203383203647%_
                                     _%target203380203642%_
                                     '()))))
                               (_%__match205604205605%_
                                (lambda (_%e203329203890%_
                                         _%hd203330203893%_
                                         _%tl203331203895%_
                                         _%__splice205577205578%_
                                         _%target203332203898%_
                                         _%tl203334203900%_)
                                  (letrec ((_%loop203335203903%_
                                            (lambda (_%hd203333203906%_
                                                     _%arg203339203908%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd203333203906%_))
                                                  (let ((_%e203336203910%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd203333203906%_))))
                                                    (let ((_%lp-tl203338203915%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e203336203910%_)))
                                                          (_%lp-hd203337203913%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e203336203910%_))))
                                                      (_%loop203335203903%_
                                                       _%lp-tl203338203915%_
                                                       (cons _%lp-hd203337203913%_
                                                             _%arg203339203908%_))))
                                                  (let ((_%arg203340203918%_
                                                         (reverse _%arg203339203908%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl203331203895%_))
                                                        (let ((_%e203341203920%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl203331203895%_))))
                  (let ((_%tl203343203925%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e203341203920%_)))
                        (_%hd203342203923%_
                         (let ()
                           (declare (not safe))
                           (##car _%e203341203920%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd203342203923%_))
                        (let ((_%e203344203928%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd203342203923%_))))
                          (let ((_%tl203346203933%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e203344203928%_)))
                                (_%hd203345203931%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e203344203928%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd203345203931%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd203345203931%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl203346203933%_))
                                        (let ((_%e203347203936%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl203346203933%_))))
                                          (let ((_%tl203349203941%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e203347203936%_)))
                                                (_%hd203348203939%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e203347203936%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd203348203939%_))
                                                (let ((_%e203350203944%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd203348203939%_))))
                                                  (let ((_%tl203352203949%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e203350203944%_)))
                                                        (_%hd203351203947%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e203350203944%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd203351203947%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd203351203947%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl203352203949%_))
                        (let ((_%e203353203952%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl203352203949%_))))
                          (let ((_%tl203355203957%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e203353203952%_)))
                                (_%hd203354203955%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e203353203952%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl203355203957%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl203349203941%_))
                                    (let ((_%__splice205579205580%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl203349203941%_
                                              '0))))
                                      (let ((_%tl203358203962%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice205579205580%_
                                                '1)))
                                            (_%target203356203960%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice205579205580%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl203358203962%_))
                                            (letrec ((_%loop203359203965%_
                                                      (lambda (_%hd203357203968%_
                                                               _%xarg203363203970%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd203357203968%_))
                                                            (let ((_%e203360203972%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd203357203968%_))))
                      (let ((_%lp-tl203362203977%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e203360203972%_)))
                            (_%lp-hd203361203975%_
                             (let ()
                               (declare (not safe))
                               (##car _%e203360203972%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd203361203975%_))
                            (let ((_%e203365203980%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd203361203975%_))))
                              (let ((_%tl203367203985%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e203365203980%_)))
                                    (_%hd203366203983%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e203365203980%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd203366203983%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd203366203983%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl203367203985%_))
                                            (let ((_%e203368203988%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl203367203985%_))))
                                              (let ((_%tl203370203993%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e203368203988%_)))
                                                    (_%hd203369203991%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e203368203988%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl203370203993%_))
                                                    (_%loop203359203965%_
                                                     _%lp-tl203362203977%_
                                                     (cons _%hd203369203991%_
                                                           _%xarg203363203970%_))
                                                    (_%__match205616205617%_
                                                     _%e203329203890%_
                                                     _%hd203330203893%_
                                                     _%tl203331203895%_
                                                     _%__splice205577205578%_
                                                     _%target203332203898%_
                                                     _%tl203334203900%_))))
                                            (_%__match205616205617%_
                                             _%e203329203890%_
                                             _%hd203330203893%_
                                             _%tl203331203895%_
                                             _%__splice205577205578%_
                                             _%target203332203898%_
                                             _%tl203334203900%_))
                                        (_%__match205616205617%_
                                         _%e203329203890%_
                                         _%hd203330203893%_
                                         _%tl203331203895%_
                                         _%__splice205577205578%_
                                         _%target203332203898%_
                                         _%tl203334203900%_))
                                    (_%__match205616205617%_
                                     _%e203329203890%_
                                     _%hd203330203893%_
                                     _%tl203331203895%_
                                     _%__splice205577205578%_
                                     _%target203332203898%_
                                     _%tl203334203900%_))))
                            (_%__match205616205617%_
                             _%e203329203890%_
                             _%hd203330203893%_
                             _%tl203331203895%_
                             _%__splice205577205578%_
                             _%target203332203898%_
                             _%tl203334203900%_))))
                    (let ((_%xarg203364203996%_
                           (reverse _%xarg203363203970%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl203343203925%_))
                          (let ((_%g203326203998%_ _%xarg203364203996%_)
                                (_%g203327203999%_ _%hd203354203955%_)
                                (_%g203328204000%_ _%arg203340203918%_))
                            (if (and (let ((__tmp206870
                                            (let ((__tmp206871
                                                   (lambda (_%g204028204031%_
                                                            _%g204029204033%_)
                                                     (cons _%g204028204031%_
                                                           _%g204029204033%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp206871
                                               '()
                                               _%g203328204000%_))))
                                       (declare (not safe))
                                       (gx#identifier-list? __tmp206870))
                                     (let ((__tmp206874
                                            (length (let ((__tmp206875
                                                           (lambda (_%g204035204038%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g204036204040%_)
                     (cons _%g204035204038%_ _%g204036204040%_))))
              (declare (not safe))
              (foldr__0 __tmp206875 '() _%g203328204000%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (__tmp206872
                                            (length (let ((__tmp206873
                                                           (lambda (_%g204042204045%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g204043204047%_)
                     (cons _%g204042204045%_ _%g204043204047%_))))
              (declare (not safe))
              (foldr__0 __tmp206873 '() _%g203326203998%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp206874 __tmp206872))
                                     (let ((__tmp206878
                                            (let ((__tmp206879
                                                   (lambda (_%g204049204052%_
                                                            _%g204050204054%_)
                                                     (cons _%g204049204052%_
                                                           _%g204050204054%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp206879
                                               '()
                                               _%g203328204000%_)))
                                           (__tmp206876
                                            (let ((__tmp206877
                                                   (lambda (_%g204056204059%_
                                                            _%g204057204061%_)
                                                     (cons _%g204056204059%_
                                                           _%g204057204061%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp206877
                                               '()
                                               _%g203326203998%_))))
                                       (declare (not safe))
                                       (andmap__1
                                        gx#free-identifier=?
                                        __tmp206878
                                        __tmp206876))
                                     (not (let ((__tmp206882
                                                 (lambda (_%g204063204065%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g204063204065%_
                                                      _%g203327203999%_))))
                                                (__tmp206880
                                                 (let ((__tmp206881
                                                        (lambda (_%g204067204070%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g204068204072%_)
                  (cons _%g204067204070%_ _%g204068204072%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr__0
                                                    __tmp206881
                                                    '()
                                                    _%g203328204000%_))))
                                            (declare (not safe))
                                            (__find __tmp206882 __tmp206880))))
                                (_%__kont205575205576%_
                                 _%g203326203998%_
                                 _%g203327203999%_
                                 _%g203328204000%_)
                                (_%__match205616205617%_
                                 _%e203329203890%_
                                 _%hd203330203893%_
                                 _%tl203331203895%_
                                 _%__splice205577205578%_
                                 _%target203332203898%_
                                 _%tl203334203900%_)))
                          (_%__match205616205617%_
                           _%e203329203890%_
                           _%hd203330203893%_
                           _%tl203331203895%_
                           _%__splice205577205578%_
                           _%target203332203898%_
                           _%tl203334203900%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop203359203965%_
                                               _%target203356203960%_
                                               '()))
                                            (_%__match205616205617%_
                                             _%e203329203890%_
                                             _%hd203330203893%_
                                             _%tl203331203895%_
                                             _%__splice205577205578%_
                                             _%target203332203898%_
                                             _%tl203334203900%_))))
                                    (_%__match205616205617%_
                                     _%e203329203890%_
                                     _%hd203330203893%_
                                     _%tl203331203895%_
                                     _%__splice205577205578%_
                                     _%target203332203898%_
                                     _%tl203334203900%_))
                                (_%__match205616205617%_
                                 _%e203329203890%_
                                 _%hd203330203893%_
                                 _%tl203331203895%_
                                 _%__splice205577205578%_
                                 _%target203332203898%_
                                 _%tl203334203900%_))))
                        (_%__match205616205617%_
                         _%e203329203890%_
                         _%hd203330203893%_
                         _%tl203331203895%_
                         _%__splice205577205578%_
                         _%target203332203898%_
                         _%tl203334203900%_))
                    (_%__match205616205617%_
                     _%e203329203890%_
                     _%hd203330203893%_
                     _%tl203331203895%_
                     _%__splice205577205578%_
                     _%target203332203898%_
                     _%tl203334203900%_))
                (_%__match205616205617%_
                 _%e203329203890%_
                 _%hd203330203893%_
                 _%tl203331203895%_
                 _%__splice205577205578%_
                 _%target203332203898%_
                 _%tl203334203900%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match205616205617%_
                                                 _%e203329203890%_
                                                 _%hd203330203893%_
                                                 _%tl203331203895%_
                                                 _%__splice205577205578%_
                                                 _%target203332203898%_
                                                 _%tl203334203900%_))))
                                        (_%__match205616205617%_
                                         _%e203329203890%_
                                         _%hd203330203893%_
                                         _%tl203331203895%_
                                         _%__splice205577205578%_
                                         _%target203332203898%_
                                         _%tl203334203900%_))
                                    (_%__match205616205617%_
                                     _%e203329203890%_
                                     _%hd203330203893%_
                                     _%tl203331203895%_
                                     _%__splice205577205578%_
                                     _%target203332203898%_
                                     _%tl203334203900%_))
                                (_%__match205616205617%_
                                 _%e203329203890%_
                                 _%hd203330203893%_
                                 _%tl203331203895%_
                                 _%__splice205577205578%_
                                 _%target203332203898%_
                                 _%tl203334203900%_))))
                        (_%__match205616205617%_
                         _%e203329203890%_
                         _%hd203330203893%_
                         _%tl203331203895%_
                         _%__splice205577205578%_
                         _%target203332203898%_
                         _%tl203334203900%_))))
                (_%__match205616205617%_
                 _%e203329203890%_
                 _%hd203330203893%_
                 _%tl203331203895%_
                 _%__splice205577205578%_
                 _%target203332203898%_
                 _%tl203334203900%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop203335203903%_
                                     _%target203332203898%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx205573205574%_))
                              (let ((_%e203329203890%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx205573205574%_))))
                                (let ((_%tl203331203895%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203329203890%_)))
                                      (_%hd203330203893%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203329203890%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd203330203893%_))
                                      (let ((_%__splice205577205578%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%hd203330203893%_
                                                '0))))
                                        (let ((_%tl203334203900%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice205577205578%_
                                                  '1)))
                                              (_%target203332203898%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice205577205578%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl203334203900%_))
                                              (_%__match205604205605%_
                                               _%e203329203890%_
                                               _%hd203330203893%_
                                               _%tl203331203895%_
                                               _%__splice205577205578%_
                                               _%target203332203898%_
                                               _%tl203334203900%_)
                                              (_%__match205616205617%_
                                               _%e203329203890%_
                                               _%hd203330203893%_
                                               _%tl203331203895%_
                                               _%__splice205577205578%_
                                               _%target203332203898%_
                                               _%tl203334203900%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl203331203895%_))
                                          (let ((_%e203444203501%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl203331203895%_))))
                                            (let ((_%tl203446203506%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e203444203501%_)))
                                                  (_%hd203445203504%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e203444203501%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd203445203504%_))
                                                  (let ((_%e203447203509%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd203445203504%_))))
                                                    (let ((_%tl203449203514%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e203447203509%_)))
                                                          (_%hd203448203512%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e203447203509%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd203448203512%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd203448203512%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl203449203514%_))
                          (let ((_%e203450203517%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl203449203514%_))))
                            (let ((_%tl203452203522%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e203450203517%_)))
                                  (_%hd203451203520%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e203450203517%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd203451203520%_))
                                  (let ((_%e203453203525%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd203451203520%_))))
                                    (let ((_%tl203455203530%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e203453203525%_)))
                                          (_%hd203454203528%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e203453203525%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd203454203528%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd203454203528%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl203455203530%_))
                                                  (let ((_%e203456203533%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl203455203530%_))))
                                                    (let ((_%tl203458203538%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e203456203533%_)))
                                                          (_%hd203457203536%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e203456203533%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl203458203538%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl203452203522%_))
                      (let ((_%e203459203541%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl203452203522%_))))
                        (let ((_%tl203461203546%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203459203541%_)))
                              (_%hd203460203544%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203459203541%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd203460203544%_))
                              (let ((_%e203462203549%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd203460203544%_))))
                                (let ((_%tl203464203554%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203462203549%_)))
                                      (_%hd203463203552%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203462203549%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd203463203552%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd203463203552%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl203464203554%_))
                                              (let ((_%e203465203557%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl203464203554%_))))
                                                (let ((_%tl203467203562%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e203465203557%_)))
                                                      (_%hd203466203560%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e203465203557%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl203467203562%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl203461203546%_))
                                                          (let ((_%e203468203565%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl203461203546%_))))
                    (let ((_%tl203470203570%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e203468203565%_)))
                          (_%hd203469203568%_
                           (let ()
                             (declare (not safe))
                             (##car _%e203468203565%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd203469203568%_))
                          (let ((_%e203471203573%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd203469203568%_))))
                            (let ((_%tl203473203578%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e203471203573%_)))
                                  (_%hd203472203576%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e203471203573%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd203472203576%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _%hd203472203576%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl203473203578%_))
                                          (let ((_%e203474203581%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl203473203578%_))))
                                            (let ((_%tl203476203586%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e203474203581%_)))
                                                  (_%hd203475203584%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e203474203581%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl203476203586%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl203470203570%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl203446203506%_))
                                                          (_%__match205714205715%_
                                                           _%e203329203890%_
                                                           _%hd203330203893%_
                                                           _%tl203331203895%_
                                                           _%e203444203501%_
                                                           _%hd203445203504%_
                                                           _%tl203446203506%_
                                                           _%e203447203509%_
                                                           _%hd203448203512%_
                                                           _%tl203449203514%_
                                                           _%e203450203517%_
                                                           _%hd203451203520%_
                                                           _%tl203452203522%_
                                                           _%e203453203525%_
                                                           _%hd203454203528%_
                                                           _%tl203455203530%_
                                                           _%e203456203533%_
                                                           _%hd203457203536%_
                                                           _%tl203458203538%_
                                                           _%e203459203541%_
                                                           _%hd203460203544%_
                                                           _%tl203461203546%_
                                                           _%e203462203549%_
                                                           _%hd203463203552%_
                                                           _%tl203464203554%_
                                                           _%e203465203557%_
                                                           _%hd203466203560%_
                                                           _%tl203467203562%_
                                                           _%e203468203565%_
                                                           _%hd203469203568%_
                                                           _%tl203470203570%_
                                                           _%e203471203573%_
                                                           _%hd203472203576%_
                                                           _%tl203473203578%_
                                                           _%e203474203581%_
                                                           _%hd203475203584%_
                                                           _%tl203476203586%_)
                                                          (_%__kont205589205590%_))
                                                      (_%__kont205589205590%_))
                                                  (_%__kont205589205590%_))))
                                          (_%__kont205589205590%_))
                                      (_%__kont205589205590%_))
                                  (_%__kont205589205590%_))))
                          (_%__kont205589205590%_))))
                  (_%__kont205589205590%_))
              (_%__kont205589205590%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont205589205590%_))
                                          (_%__kont205589205590%_))
                                      (_%__kont205589205590%_))))
                              (_%__kont205589205590%_))))
                      (_%__kont205589205590%_))
                  (_%__kont205589205590%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont205589205590%_))
                                              (_%__kont205589205590%_))
                                          (_%__kont205589205590%_))))
                                  (_%__kont205589205590%_))))
                          (_%__kont205589205590%_))
                      (_%__kont205589205590%_))
                  (_%__kont205589205590%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont205589205590%_))))
                                          (_%__kont205589205590%_)))))
                              (_%__kont205589205590%_)))))))
                 (_%dispatch-case-e202639%_
                  (lambda (_%hd202786%_ _%body202787%_)
                    (let* ((_%form202789%_
                            (cons _%hd202786%_ (cons _%body202787%_ '())))
                           (_%__stx205717205718%_ _%form202789%_)
                           (_%g202793202917%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx205717205718%_)))))
                      (let ((_%__kont205719205720%_
                             (lambda (_%g202795203282%_
                                      _%g202796203283%_
                                      _%g202797203284%_)
                               (let ((__tmp206883
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%g202796203283%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self202635%_
                                  __tmp206883))))
                            (_%__kont205725205726%_
                             (lambda (_%g202840203134%_
                                      _%g202841203135%_
                                      _%g202842203136%_
                                      _%g202843203137%_)
                               (let ((__tmp206884
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%g202840203134%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self202635%_
                                  __tmp206884))))
                            (_%__kont205729205730%_
                             (lambda (_%g202880203002%_
                                      _%g202881203003%_
                                      _%g202882203004%_)
                               (let ((__tmp206885
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%g202880203002%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self202635%_
                                  __tmp206885)))))
                        (let* ((_%__match205826205827%_
                                (lambda (_%e202883202922%_
                                         _%hd202884202925%_
                                         _%tl202885202927%_
                                         _%e202886202930%_
                                         _%hd202887202933%_
                                         _%tl202888202935%_
                                         _%e202889202938%_
                                         _%hd202890202941%_
                                         _%tl202891202943%_
                                         _%e202892202946%_
                                         _%hd202893202949%_
                                         _%tl202894202951%_
                                         _%e202895202954%_
                                         _%hd202896202957%_
                                         _%tl202897202959%_
                                         _%e202898202962%_
                                         _%hd202899202965%_
                                         _%tl202900202967%_
                                         _%e202901202970%_
                                         _%hd202902202973%_
                                         _%tl202903202975%_
                                         _%e202904202978%_
                                         _%hd202905202981%_
                                         _%tl202906202983%_
                                         _%e202907202986%_
                                         _%hd202908202989%_
                                         _%tl202909202991%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl202903202975%_))
                                      (let ((_%e202910202994%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl202903202975%_))))
                                        (let ((_%tl202912202999%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e202910202994%_)))
                                              (_%hd202911202997%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e202910202994%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl202912202999%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl202888202935%_))
                                                  (_%__kont205729205730%_
                                                   _%hd202908202989%_
                                                   _%hd202899202965%_
                                                   _%hd202884202925%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g202793202917%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g202793202917%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g202793202917%_)))))
                               (_%__match205756205757%_
                                (lambda (_%e202844203040%_
                                         _%hd202845203043%_
                                         _%tl202846203045%_
                                         _%__splice205727205728%_
                                         _%target202847203048%_
                                         _%tl202849203050%_)
                                  (letrec ((_%loop202850203053%_
                                            (lambda (_%hd202848203056%_
                                                     _%arg202854203058%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd202848203056%_))
                                                  (let ((_%e202851203060%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd202848203056%_))))
                                                    (let ((_%lp-tl202853203065%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e202851203060%_)))
                                                          (_%lp-hd202852203063%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e202851203060%_))))
                                                      (_%loop202850203053%_
                                                       _%lp-tl202853203065%_
                                                       (cons _%lp-hd202852203063%_
                                                             _%arg202854203058%_))))
                                                  (let ((_%arg202855203068%_
                                                         (reverse _%arg202854203058%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl202846203045%_))
                                                        (let ((_%e202856203070%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl202846203045%_))))
                  (let ((_%tl202858203075%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e202856203070%_)))
                        (_%hd202857203073%_
                         (let ()
                           (declare (not safe))
                           (##car _%e202856203070%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd202857203073%_))
                        (let ((_%e202859203078%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd202857203073%_))))
                          (let ((_%tl202861203083%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e202859203078%_)))
                                (_%hd202860203081%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e202859203078%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd202860203081%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd202860203081%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl202861203083%_))
                                        (let ((_%e202862203086%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl202861203083%_))))
                                          (let ((_%tl202864203091%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e202862203086%_)))
                                                (_%hd202863203089%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e202862203086%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd202863203089%_))
                                                (let ((_%e202865203094%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd202863203089%_))))
                                                  (let ((_%tl202867203099%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e202865203094%_)))
                                                        (_%hd202866203097%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e202865203094%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd202866203097%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd202866203097%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl202867203099%_))
                        (let ((_%e202868203102%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl202867203099%_))))
                          (let ((_%tl202870203107%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e202868203102%_)))
                                (_%hd202869203105%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e202868203102%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl202870203107%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl202864203091%_))
                                    (let ((_%e202871203110%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl202864203091%_))))
                                      (let ((_%tl202873203115%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e202871203110%_)))
                                            (_%hd202872203113%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e202871203110%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd202872203113%_))
                                            (let ((_%e202874203118%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd202872203113%_))))
                                              (let ((_%tl202876203123%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e202874203118%_)))
                                                    (_%hd202875203121%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e202874203118%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd202875203121%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd202875203121%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl202876203123%_))
                                                            (let ((_%e202877203126%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl202876203123%_))))
                      (let ((_%tl202879203131%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e202877203126%_)))
                            (_%hd202878203129%_
                             (let ()
                               (declare (not safe))
                               (##car _%e202877203126%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl202879203131%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl202858203075%_))
                                (_%__kont205725205726%_
                                 _%hd202878203129%_
                                 _%hd202869203105%_
                                 _%tl202849203050%_
                                 _%arg202855203068%_)
                                (_%__match205826205827%_
                                 _%e202844203040%_
                                 _%hd202845203043%_
                                 _%tl202846203045%_
                                 _%e202856203070%_
                                 _%hd202857203073%_
                                 _%tl202858203075%_
                                 _%e202859203078%_
                                 _%hd202860203081%_
                                 _%tl202861203083%_
                                 _%e202862203086%_
                                 _%hd202863203089%_
                                 _%tl202864203091%_
                                 _%e202865203094%_
                                 _%hd202866203097%_
                                 _%tl202867203099%_
                                 _%e202868203102%_
                                 _%hd202869203105%_
                                 _%tl202870203107%_
                                 _%e202871203110%_
                                 _%hd202872203113%_
                                 _%tl202873203115%_
                                 _%e202874203118%_
                                 _%hd202875203121%_
                                 _%tl202876203123%_
                                 _%e202877203126%_
                                 _%hd202878203129%_
                                 _%tl202879203131%_))
                            (let ()
                              (declare (not safe))
                              (_%g202793202917%_)))))
                    (let () (declare (not safe)) (_%g202793202917%_)))
                (let () (declare (not safe)) (_%g202793202917%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g202793202917%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g202793202917%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g202793202917%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g202793202917%_)))))
                        (let () (declare (not safe)) (_%g202793202917%_)))
                    (let () (declare (not safe)) (_%g202793202917%_)))
                (let () (declare (not safe)) (_%g202793202917%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g202793202917%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g202793202917%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g202793202917%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g202793202917%_)))))
                        (let () (declare (not safe)) (_%g202793202917%_)))))
                (let () (declare (not safe)) (_%g202793202917%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop202850203053%_
                                     _%target202847203048%_
                                     '()))))
                               (_%__match205744205745%_
                                (lambda (_%e202798203174%_
                                         _%hd202799203177%_
                                         _%tl202800203179%_
                                         _%__splice205721205722%_
                                         _%target202801203182%_
                                         _%tl202803203184%_)
                                  (letrec ((_%loop202804203187%_
                                            (lambda (_%hd202802203190%_
                                                     _%arg202808203192%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd202802203190%_))
                                                  (let ((_%e202805203194%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd202802203190%_))))
                                                    (let ((_%lp-tl202807203199%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e202805203194%_)))
                                                          (_%lp-hd202806203197%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e202805203194%_))))
                                                      (_%loop202804203187%_
                                                       _%lp-tl202807203199%_
                                                       (cons _%lp-hd202806203197%_
                                                             _%arg202808203192%_))))
                                                  (let ((_%arg202809203202%_
                                                         (reverse _%arg202808203192%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl202800203179%_))
                                                        (let ((_%e202810203204%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl202800203179%_))))
                  (let ((_%tl202812203209%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e202810203204%_)))
                        (_%hd202811203207%_
                         (let ()
                           (declare (not safe))
                           (##car _%e202810203204%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd202811203207%_))
                        (let ((_%e202813203212%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd202811203207%_))))
                          (let ((_%tl202815203217%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e202813203212%_)))
                                (_%hd202814203215%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e202813203212%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd202814203215%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd202814203215%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl202815203217%_))
                                        (let ((_%e202816203220%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl202815203217%_))))
                                          (let ((_%tl202818203225%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e202816203220%_)))
                                                (_%hd202817203223%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e202816203220%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd202817203223%_))
                                                (let ((_%e202819203228%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd202817203223%_))))
                                                  (let ((_%tl202821203233%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e202819203228%_)))
                                                        (_%hd202820203231%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e202819203228%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd202820203231%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd202820203231%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl202821203233%_))
                        (let ((_%e202822203236%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl202821203233%_))))
                          (let ((_%tl202824203241%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e202822203236%_)))
                                (_%hd202823203239%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e202822203236%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl202824203241%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl202818203225%_))
                                    (let ((_%__splice205723205724%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl202818203225%_
                                              '0))))
                                      (let ((_%tl202827203246%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice205723205724%_
                                                '1)))
                                            (_%target202825203244%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice205723205724%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl202827203246%_))
                                            (letrec ((_%loop202828203249%_
                                                      (lambda (_%hd202826203252%_
                                                               _%xarg202832203254%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd202826203252%_))
                                                            (let ((_%e202829203256%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd202826203252%_))))
                      (let ((_%lp-tl202831203261%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e202829203256%_)))
                            (_%lp-hd202830203259%_
                             (let ()
                               (declare (not safe))
                               (##car _%e202829203256%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd202830203259%_))
                            (let ((_%e202834203264%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd202830203259%_))))
                              (let ((_%tl202836203269%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e202834203264%_)))
                                    (_%hd202835203267%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e202834203264%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd202835203267%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd202835203267%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl202836203269%_))
                                            (let ((_%e202837203272%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl202836203269%_))))
                                              (let ((_%tl202839203277%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e202837203272%_)))
                                                    (_%hd202838203275%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e202837203272%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl202839203277%_))
                                                    (_%loop202828203249%_
                                                     _%lp-tl202831203261%_
                                                     (cons _%hd202838203275%_
                                                           _%xarg202832203254%_))
                                                    (_%__match205756205757%_
                                                     _%e202798203174%_
                                                     _%hd202799203177%_
                                                     _%tl202800203179%_
                                                     _%__splice205721205722%_
                                                     _%target202801203182%_
                                                     _%tl202803203184%_))))
                                            (_%__match205756205757%_
                                             _%e202798203174%_
                                             _%hd202799203177%_
                                             _%tl202800203179%_
                                             _%__splice205721205722%_
                                             _%target202801203182%_
                                             _%tl202803203184%_))
                                        (_%__match205756205757%_
                                         _%e202798203174%_
                                         _%hd202799203177%_
                                         _%tl202800203179%_
                                         _%__splice205721205722%_
                                         _%target202801203182%_
                                         _%tl202803203184%_))
                                    (_%__match205756205757%_
                                     _%e202798203174%_
                                     _%hd202799203177%_
                                     _%tl202800203179%_
                                     _%__splice205721205722%_
                                     _%target202801203182%_
                                     _%tl202803203184%_))))
                            (_%__match205756205757%_
                             _%e202798203174%_
                             _%hd202799203177%_
                             _%tl202800203179%_
                             _%__splice205721205722%_
                             _%target202801203182%_
                             _%tl202803203184%_))))
                    (let ((_%xarg202833203280%_
                           (reverse _%xarg202832203254%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl202812203209%_))
                          (_%__kont205719205720%_
                           _%xarg202833203280%_
                           _%hd202823203239%_
                           _%arg202809203202%_)
                          (_%__match205756205757%_
                           _%e202798203174%_
                           _%hd202799203177%_
                           _%tl202800203179%_
                           _%__splice205721205722%_
                           _%target202801203182%_
                           _%tl202803203184%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop202828203249%_
                                               _%target202825203244%_
                                               '()))
                                            (_%__match205756205757%_
                                             _%e202798203174%_
                                             _%hd202799203177%_
                                             _%tl202800203179%_
                                             _%__splice205721205722%_
                                             _%target202801203182%_
                                             _%tl202803203184%_))))
                                    (_%__match205756205757%_
                                     _%e202798203174%_
                                     _%hd202799203177%_
                                     _%tl202800203179%_
                                     _%__splice205721205722%_
                                     _%target202801203182%_
                                     _%tl202803203184%_))
                                (_%__match205756205757%_
                                 _%e202798203174%_
                                 _%hd202799203177%_
                                 _%tl202800203179%_
                                 _%__splice205721205722%_
                                 _%target202801203182%_
                                 _%tl202803203184%_))))
                        (_%__match205756205757%_
                         _%e202798203174%_
                         _%hd202799203177%_
                         _%tl202800203179%_
                         _%__splice205721205722%_
                         _%target202801203182%_
                         _%tl202803203184%_))
                    (_%__match205756205757%_
                     _%e202798203174%_
                     _%hd202799203177%_
                     _%tl202800203179%_
                     _%__splice205721205722%_
                     _%target202801203182%_
                     _%tl202803203184%_))
                (_%__match205756205757%_
                 _%e202798203174%_
                 _%hd202799203177%_
                 _%tl202800203179%_
                 _%__splice205721205722%_
                 _%target202801203182%_
                 _%tl202803203184%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match205756205757%_
                                                 _%e202798203174%_
                                                 _%hd202799203177%_
                                                 _%tl202800203179%_
                                                 _%__splice205721205722%_
                                                 _%target202801203182%_
                                                 _%tl202803203184%_))))
                                        (_%__match205756205757%_
                                         _%e202798203174%_
                                         _%hd202799203177%_
                                         _%tl202800203179%_
                                         _%__splice205721205722%_
                                         _%target202801203182%_
                                         _%tl202803203184%_))
                                    (_%__match205756205757%_
                                     _%e202798203174%_
                                     _%hd202799203177%_
                                     _%tl202800203179%_
                                     _%__splice205721205722%_
                                     _%target202801203182%_
                                     _%tl202803203184%_))
                                (_%__match205756205757%_
                                 _%e202798203174%_
                                 _%hd202799203177%_
                                 _%tl202800203179%_
                                 _%__splice205721205722%_
                                 _%target202801203182%_
                                 _%tl202803203184%_))))
                        (_%__match205756205757%_
                         _%e202798203174%_
                         _%hd202799203177%_
                         _%tl202800203179%_
                         _%__splice205721205722%_
                         _%target202801203182%_
                         _%tl202803203184%_))))
                (_%__match205756205757%_
                 _%e202798203174%_
                 _%hd202799203177%_
                 _%tl202800203179%_
                 _%__splice205721205722%_
                 _%target202801203182%_
                 _%tl202803203184%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop202804203187%_
                                     _%target202801203182%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx205717205718%_))
                              (let ((_%e202798203174%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx205717205718%_))))
                                (let ((_%tl202800203179%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202798203174%_)))
                                      (_%hd202799203177%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202798203174%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd202799203177%_))
                                      (let ((_%__splice205721205722%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%hd202799203177%_
                                                '0))))
                                        (let ((_%tl202803203184%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice205721205722%_
                                                  '1)))
                                              (_%target202801203182%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice205721205722%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl202803203184%_))
                                              (_%__match205744205745%_
                                               _%e202798203174%_
                                               _%hd202799203177%_
                                               _%tl202800203179%_
                                               _%__splice205721205722%_
                                               _%target202801203182%_
                                               _%tl202803203184%_)
                                              (_%__match205756205757%_
                                               _%e202798203174%_
                                               _%hd202799203177%_
                                               _%tl202800203179%_
                                               _%__splice205721205722%_
                                               _%target202801203182%_
                                               _%tl202803203184%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl202800203179%_))
                                          (let ((_%e202886202930%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl202800203179%_))))
                                            (let ((_%tl202888202935%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e202886202930%_)))
                                                  (_%hd202887202933%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e202886202930%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd202887202933%_))
                                                  (let ((_%e202889202938%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd202887202933%_))))
                                                    (let ((_%tl202891202943%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e202889202938%_)))
                                                          (_%hd202890202941%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e202889202938%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd202890202941%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd202890202941%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl202891202943%_))
                          (let ((_%e202892202946%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl202891202943%_))))
                            (let ((_%tl202894202951%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e202892202946%_)))
                                  (_%hd202893202949%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e202892202946%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd202893202949%_))
                                  (let ((_%e202895202954%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd202893202949%_))))
                                    (let ((_%tl202897202959%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e202895202954%_)))
                                          (_%hd202896202957%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e202895202954%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd202896202957%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd202896202957%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl202897202959%_))
                                                  (let ((_%e202898202962%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl202897202959%_))))
                                                    (let ((_%tl202900202967%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e202898202962%_)))
                                                          (_%hd202899202965%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e202898202962%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl202900202967%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl202894202951%_))
                      (let ((_%e202901202970%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl202894202951%_))))
                        (let ((_%tl202903202975%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202901202970%_)))
                              (_%hd202902202973%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202901202970%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd202902202973%_))
                              (let ((_%e202904202978%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd202902202973%_))))
                                (let ((_%tl202906202983%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202904202978%_)))
                                      (_%hd202905202981%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202904202978%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd202905202981%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd202905202981%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl202906202983%_))
                                              (let ((_%e202907202986%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl202906202983%_))))
                                                (let ((_%tl202909202991%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e202907202986%_)))
                                                      (_%hd202908202989%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e202907202986%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl202909202991%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl202903202975%_))
                                                          (let ((_%e202910202994%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl202903202975%_))))
                    (let ((_%tl202912202999%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e202910202994%_)))
                          (_%hd202911202997%_
                           (let ()
                             (declare (not safe))
                             (##car _%e202910202994%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl202912202999%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl202888202935%_))
                              (_%__kont205729205730%_
                               _%hd202908202989%_
                               _%hd202899202965%_
                               _%hd202799203177%_)
                              (let ()
                                (declare (not safe))
                                (_%g202793202917%_)))
                          (let () (declare (not safe)) (_%g202793202917%_)))))
                  (let () (declare (not safe)) (_%g202793202917%_)))
              (let () (declare (not safe)) (_%g202793202917%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g202793202917%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g202793202917%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g202793202917%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g202793202917%_)))))
                      (let () (declare (not safe)) (_%g202793202917%_)))
                  (let () (declare (not safe)) (_%g202793202917%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g202793202917%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g202793202917%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g202793202917%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g202793202917%_)))))
                          (let () (declare (not safe)) (_%g202793202917%_)))
                      (let () (declare (not safe)) (_%g202793202917%_)))
                  (let () (declare (not safe)) (_%g202793202917%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g202793202917%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g202793202917%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g202793202917%_))))))))
                 (_%generate1202640%_
                  (lambda (_%args202771%_
                           _%arglen202772%_
                           _%hd202773%_
                           _%body202774%_)
                    (let* ((_%len202776%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-length _%hd202773%_)))
                           (_%condition202781%_
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _%hd202773%_))
                                (if (gxc#current-compile-decls-unsafe?)
                                    (cons '##fx=
                                          (cons _%arglen202772%_
                                                (cons _%len202776%_ '())))
                                    (cons 'let
                                          (cons '()
                                                (cons '(declare (not safe))
                                                      (cons (cons '##fx=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%arglen202772%_ (cons _%len202776%_ '())))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (if (> _%len202776%_ '0)
                                    (if (gxc#current-compile-decls-unsafe?)
                                        (cons '##fx>=
                                              (cons _%arglen202772%_
                                                    (cons _%len202776%_ '())))
                                        (cons 'let
                                              (cons '()
                                                    (cons '(declare (not safe))
                                                          (cons (cons '##fx>=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%arglen202772%_ (cons _%len202776%_ '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '#t)))
                           (_%dispatch202783%_
                            (if (_%dispatch-case?202638%_
                                 _%hd202773%_
                                 _%body202774%_)
                                (_%dispatch-case-e202639%_
                                 _%hd202773%_
                                 _%body202774%_)
                                (gxc#generate-runtime-lambda-form
                                 _%self202635%_
                                 _%hd202773%_
                                 _%body202774%_))))
                      (cons _%condition202781%_
                            (cons (cons 'apply
                                        (cons _%dispatch202783%_
                                              (cons _%args202771%_ '())))
                                  '()))))))
          (let* ((_%g202642202670%_
                  (lambda (_%g202643202667%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g202643202667%_))))
                 (_%g202641202768%_
                  (lambda (_%g202643202673%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g202643202673%_))
                        (let ((_%e202646202675%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g202643202673%_))))
                          (let ((_%hd202647202678%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e202646202675%_)))
                                (_%tl202648202680%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e202646202675%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl202648202680%_))
                                (let ((_g206886_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl202648202680%_
                                          '0))))
                                  (begin
                                    (let ((_g206887_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g206886_)
                                                 (##values-length _g206886_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g206887_ 2)))
                                          (error "Context expects 2 values"
                                                 _g206887_)))
                                    (let ((_%target202649202683%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g206886_ 0)))
                                          (_%tl202651202685%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g206886_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl202651202685%_))
                                          (letrec ((_%loop202652202688%_
                                                    (lambda (_%hd202650202691%_
                                                             _%body202656202693%_
                                                             _%hd202657202694%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd202650202691%_))
                                                          (let ((_%e202653202696%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd202650202691%_))))
                    (let ((_%lp-hd202654202699%_
                           (let ()
                             (declare (not safe))
                             (##car _%e202653202696%_)))
                          (_%lp-tl202655202701%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e202653202696%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd202654202699%_))
                          (let ((_%e202660202704%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd202654202699%_))))
                            (let ((_%hd202661202707%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e202660202704%_)))
                                  (_%tl202662202709%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e202660202704%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl202662202709%_))
                                  (let ((_%e202663202712%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl202662202709%_))))
                                    (let ((_%hd202664202715%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e202663202712%_)))
                                          (_%tl202665202717%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e202663202712%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl202665202717%_))
                                          (_%loop202652202688%_
                                           _%lp-tl202655202701%_
                                           (cons _%hd202664202715%_
                                                 _%body202656202693%_)
                                           (cons _%hd202661202707%_
                                                 _%hd202657202694%_))
                                          (_%g202642202670%_
                                           _%g202643202673%_))))
                                  (_%g202642202670%_ _%g202643202673%_))))
                          (_%g202642202670%_ _%g202643202673%_))))
                  (let ((_%body202658202720%_ (reverse _%body202656202693%_))
                        (_%hd202659202721%_ (reverse _%hd202657202694%_)))
                    ((lambda (_%g202644202723%_ _%g202645202724%_)
                       (let ((_%args202743%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%arglen202744%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%name202745%_
                              (let ((_%$e202740%_
                                     (let ((__tmp206888
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-runtime-names))))
                                       (declare (not safe))
                                       (hash-get __tmp206888 _%stx202636%_))))
                                (if _%$e202740%_
                                    _%$e202740%_
                                    ''case-lambda-dispatch))))
                         (cons 'lambda
                               (cons _%args202743%_
                                     (cons (cons 'let
                                                 (cons (cons (cons _%arglen202744%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (gxc#current-compile-decls-unsafe?)
                                     (cons '##length (cons _%args202743%_ '()))
                                     (cons 'let
                                           (cons '()
                                                 (cons '(declare (not safe))
                                                       (cons (cons '##length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%args202743%_ '()))
                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 '()))
                     '())
               (cons (cons 'cond
                           (let ((__tmp206892
                                  (cons (cons 'else
                                              (cons (cons '##raise-wrong-number-of-arguments-exception
                                                          (cons _%name202745%_
                                                                (cons _%args202743%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '()))
                                 (__tmp206889
                                  (map (lambda (_%g202746202749%_
                                                _%g202747202751%_)
                                         (_%generate1202640%_
                                          _%args202743%_
                                          _%arglen202744%_
                                          _%g202746202749%_
                                          _%g202747202751%_))
                                       (let ((__tmp206890
                                              (lambda (_%g202753202756%_
                                                       _%g202754202758%_)
                                                (cons _%g202753202756%_
                                                      _%g202754202758%_))))
                                         (declare (not safe))
                                         (foldr__0
                                          __tmp206890
                                          '()
                                          _%g202645202724%_))
                                       (let ((__tmp206891
                                              (lambda (_%g202760202763%_
                                                       _%g202761202765%_)
                                                (cons _%g202760202763%_
                                                      _%g202761202765%_))))
                                         (declare (not safe))
                                         (foldr__0
                                          __tmp206891
                                          '()
                                          _%g202644202723%_)))))
                             (declare (not safe))
                             (foldr__0 cons __tmp206892 __tmp206889)))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))
                     _%body202658202720%_
                     _%hd202659202721%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop202652202688%_
                                             _%target202649202683%_
                                             '()
                                             '()))
                                          (_%g202642202670%_
                                           _%g202643202673%_)))))
                                (_%g202642202670%_ _%g202643202673%_))))
                        (_%g202642202670%_ _%g202643202673%_)))))
            (_%g202641202768%_ _%stx202636%_)))))
    (define gxc#generate-runtime-let-values%__%
      (lambda (_%self201872%_ _%stx201873%_ _%compiled-body?201874%_)
        (letrec ((_%generate-simple201876%_
                  (lambda (_%hd202620%_ _%body202621%_)
                    (_%coalesce-boolean201877%_
                     (_%simplify-let201878%_
                      (gxc#generate-runtime-simple-let
                       _%self201872%_
                       'let
                       _%hd202620%_
                       _%body202621%_
                       _%compiled-body?201874%_)))))
                 (_%coalesce-boolean201877%_
                  (lambda (_%code202481%_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-boolean-context))
                        (let* ((_%code202482202508%_ _%code202481%_)
                               (_%else202484202516%_
                                (lambda () _%code202481%_))
                               (_%K202486202553%_
                                (lambda (_%expr2202519%_
                                         _%expr1202520%_
                                         _%id202521%_)
                                  (let* ((_%expr2202522202530%_
                                          _%expr2202519%_)
                                         (_%else202524202538%_
                                          (lambda ()
                                            (cons 'or
                                                  (cons _%expr1202520%_
                                                        (cons _%expr2202519%_
                                                              '())))))
                                         (_%K202526202543%_
                                          (lambda (_%exprs202541%_)
                                            (cons 'or
                                                  (cons _%expr1202520%_
                                                        _%exprs202541%_)))))
                                    (if (pair? _%expr2202522202530%_)
                                        (let ((_%hd202527202546%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%expr2202522202530%_)))
                                              (_%tl202528202548%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%expr2202522202530%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd202527202546%_ 'or))
                                              (let ((_%exprs202551%_
                                                     _%tl202528202548%_))
                                                (_%K202526202543%_
                                                 _%exprs202551%_))
                                              (_%else202524202538%_)))
                                        (_%else202524202538%_))))))
                          (if (pair? _%code202482202508%_)
                              (let ((_%hd202487202556%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%code202482202508%_)))
                                    (_%tl202488202558%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%code202482202508%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%hd202487202556%_ 'let))
                                    (if (pair? _%tl202488202558%_)
                                        (let ((_%hd202489202561%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%tl202488202558%_)))
                                              (_%tl202490202563%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%tl202488202558%_))))
                                          (if (pair? _%hd202489202561%_)
                                              (let ((_%hd202501202566%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%hd202489202561%_)))
                                                    (_%tl202502202568%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%hd202489202561%_))))
                                                (if (pair? _%hd202501202566%_)
                                                    (let ((_%hd202503202571%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%hd202501202566%_)))
                                                          (_%tl202504202573%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%hd202501202566%_))))
                                                      (let ((_%id202576%_
                                                             _%hd202503202571%_))
                                                        (if (pair? _%tl202504202573%_)
                                                            (let ((_%hd202505202578%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##car _%tl202504202573%_)))
                          (_%tl202506202580%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl202504202573%_))))
                      (let ((_%expr1202583%_ _%hd202505202578%_))
                        (if (null? _%tl202506202580%_)
                            (if (null? _%tl202502202568%_)
                                (if (pair? _%tl202490202563%_)
                                    (let ((_%hd202491202585%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl202490202563%_)))
                                          (_%tl202492202587%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl202490202563%_))))
                                      (if (pair? _%hd202491202585%_)
                                          (let ((_%hd202493202590%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd202491202585%_)))
                                                (_%tl202494202592%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd202491202585%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd202493202590%_
                                                         'if))
                                                (if (pair? _%tl202494202592%_)
                                                    (let ((_%hd202495202595%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl202494202592%_)))
                                                          (_%tl202496202597%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl202494202592%_))))
                                                      (if ((lambda (_%g202599202601%_)
                                                             (eq? _%g202599202601%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id202576%_))
                   _%hd202495202595%_)
                  (if (pair? _%tl202496202597%_)
                      (let ((_%hd202497202604%_
                             (let ()
                               (declare (not safe))
                               (##car _%tl202496202597%_)))
                            (_%tl202498202606%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%tl202496202597%_))))
                        (if ((lambda (_%g202608202610%_)
                               (eq? _%g202608202610%_ _%id202576%_))
                             _%hd202497202604%_)
                            (if (pair? _%tl202498202606%_)
                                (let ((_%hd202499202613%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl202498202606%_)))
                                      (_%tl202500202615%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl202498202606%_))))
                                  (let ((_%expr2202618%_ _%hd202499202613%_))
                                    (if (null? _%tl202500202615%_)
                                        (if (null? _%tl202492202587%_)
                                            (_%K202486202553%_
                                             _%expr2202618%_
                                             _%expr1202583%_
                                             _%id202576%_)
                                            (_%else202484202516%_))
                                        (_%else202484202516%_))))
                                (_%else202484202516%_))
                            (_%else202484202516%_)))
                      (_%else202484202516%_))
                  (_%else202484202516%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else202484202516%_))
                                                (_%else202484202516%_)))
                                          (_%else202484202516%_)))
                                    (_%else202484202516%_))
                                (_%else202484202516%_))
                            (_%else202484202516%_))))
                    (_%else202484202516%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else202484202516%_)))
                                              (_%else202484202516%_)))
                                        (_%else202484202516%_))
                                    (_%else202484202516%_)))
                              (_%else202484202516%_)))
                        _%code202481%_)))
                 (_%simplify-let201878%_
                  (lambda (_%code202180%_)
                    (let* ((_%code202181202253%_ _%code202180%_)
                           (_%else202186202261%_ (lambda () _%code202180%_)))
                      (let ((_%K202245202461%_
                             (lambda (_%expr202459%_) _%expr202459%_))
                            (_%K202228202407%_
                             (lambda (_%body202403%_
                                      _%expr202404%_
                                      _%id202405%_)
                               (cons 'let
                                     (cons (cons (cons _%id202405%_
                                                       (cons _%expr202404%_
                                                             '()))
                                                 '())
                                           _%body202403%_))))
                            (_%K202205202331%_
                             (lambda (_%body202325%_
                                      _%expr2202326%_
                                      _%id2202327%_
                                      _%expr1202328%_
                                      _%id1202329%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1202329%_
                                                       (cons _%expr1202328%_
                                                             '()))
                                                 (cons (cons _%id2202327%_
                                                             (cons _%expr2202326%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body202325%_))))
                            (_%K202188202270%_
                             (lambda (_%body202265%_
                                      _%bind202266%_
                                      _%expr1202267%_
                                      _%id1202268%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1202268%_
                                                       (cons _%expr1202267%_
                                                             '()))
                                                 _%bind202266%_)
                                           _%body202265%_)))))
                        (if (pair? _%code202181202253%_)
                            (let ((_%tl202247202466%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%code202181202253%_)))
                                  (_%hd202246202464%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%code202181202253%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd202246202464%_ 'let))
                                  (if (pair? _%tl202247202466%_)
                                      (let ((_%tl202249202471%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%tl202247202466%_)))
                                            (_%hd202248202469%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%tl202247202466%_))))
                                        (if (null? _%hd202248202469%_)
                                            (if (pair? _%tl202249202471%_)
                                                (let ((_%tl202251202476%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%tl202249202471%_)))
                                                      (_%hd202250202474%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%tl202249202471%_))))
                                                  (if (null? _%tl202251202476%_)
                                                      (let ((_%expr202479%_
                                                             _%hd202250202474%_))
                                                        (_%K202245202461%_
                                                         _%expr202479%_))
                                                      (_%else202186202261%_)))
                                                (_%else202186202261%_))
                                            (if (pair? _%hd202248202469%_)
                                                (let ((_%tl202240202422%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd202248202469%_)))
                                                      (_%hd202239202420%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd202248202469%_))))
                                                  (if (pair? _%hd202239202420%_)
                                                      (let ((_%tl202242202427%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%hd202239202420%_)))
                    (_%hd202241202425%_
                     (let () (declare (not safe)) (##car _%hd202239202420%_))))
                (if (pair? _%tl202242202427%_)
                    (let ((_%tl202244202434%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl202242202427%_)))
                          (_%hd202243202432%_
                           (let ()
                             (declare (not safe))
                             (##car _%tl202242202427%_))))
                      (if (null? _%tl202244202434%_)
                          (if (null? _%tl202240202422%_)
                              (if (pair? _%tl202249202471%_)
                                  (let ((_%tl202234202441%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl202249202471%_)))
                                        (_%hd202233202439%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl202249202471%_))))
                                    (if (pair? _%hd202233202439%_)
                                        (let ((_%tl202236202446%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%hd202233202439%_)))
                                              (_%hd202235202444%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%hd202233202439%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd202235202444%_
                                                       'let))
                                              (if (pair? _%tl202236202446%_)
                                                  (let ((_%tl202238202451%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl202236202446%_)))
                                                        (_%hd202237202449%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl202236202446%_))))
                                                    (if (null? _%hd202237202449%_)
                                                        (if (null? _%tl202234202441%_)
                                                            (let ((_%id202430%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%hd202241202425%_)
                          (_%expr202437%_ _%hd202243202432%_)
                          (_%body202454%_ _%tl202238202451%_))
                      (_%K202228202407%_
                       _%body202454%_
                       _%expr202437%_
                       _%id202430%_))
                    (_%else202186202261%_))
                (if (pair? _%hd202237202449%_)
                    (let ((_%tl202217202380%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%hd202237202449%_)))
                          (_%hd202216202378%_
                           (let ()
                             (declare (not safe))
                             (##car _%hd202237202449%_))))
                      (if (pair? _%hd202216202378%_)
                          (let ((_%tl202219202385%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd202216202378%_)))
                                (_%hd202218202383%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd202216202378%_))))
                            (if (pair? _%tl202219202385%_)
                                (let ((_%tl202221202392%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl202219202385%_)))
                                      (_%hd202220202390%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl202219202385%_))))
                                  (if (null? _%tl202221202392%_)
                                      (if (null? _%tl202217202380%_)
                                          (if (null? _%tl202234202441%_)
                                              (let ((_%id1202354%_
                                                     _%hd202241202425%_)
                                                    (_%expr1202361%_
                                                     _%hd202243202432%_)
                                                    (_%id2202388%_
                                                     _%hd202218202383%_)
                                                    (_%expr2202395%_
                                                     _%hd202220202390%_)
                                                    (_%body202397%_
                                                     _%tl202238202451%_))
                                                (_%K202205202331%_
                                                 _%body202397%_
                                                 _%expr2202395%_
                                                 _%id2202388%_
                                                 _%expr1202361%_
                                                 _%id1202354%_))
                                              (_%else202186202261%_))
                                          (_%else202186202261%_))
                                      (_%else202186202261%_)))
                                (_%else202186202261%_)))
                          (_%else202186202261%_)))
                    (_%else202186202261%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else202186202261%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##eq? _%hd202235202444%_
                                                           'let*))
                                                  (if (pair? _%tl202236202446%_)
                                                      (let ((_%tl202198202314%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%tl202236202446%_)))
                    (_%hd202197202312%_
                     (let () (declare (not safe)) (##car _%tl202236202446%_))))
                (if (null? _%tl202234202441%_)
                    (let ((_%id1202293%_ _%hd202241202425%_)
                          (_%expr1202300%_ _%hd202243202432%_)
                          (_%bind202317%_ _%hd202197202312%_)
                          (_%body202319%_ _%tl202198202314%_))
                      (_%K202188202270%_
                       _%body202319%_
                       _%bind202317%_
                       _%expr1202300%_
                       _%id1202293%_))
                    (_%else202186202261%_)))
              (_%else202186202261%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else202186202261%_))))
                                        (_%else202186202261%_)))
                                  (_%else202186202261%_))
                              (_%else202186202261%_))
                          (_%else202186202261%_)))
                    (_%else202186202261%_)))
              (_%else202186202261%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else202186202261%_))))
                                      (_%else202186202261%_))
                                  (_%else202186202261%_)))
                            (_%else202186202261%_))))))
                 (_%generate-values201879%_
                  (lambda (_%hd201993%_ _%body201994%_)
                    (let _%lp201996%_ ((_%rest201998%_ _%hd201993%_)
                                       (_%bind201999%_ '())
                                       (_%check202000%_ '())
                                       (_%post202001%_ '()))
                      (let* ((_%__stx206046206047%_ _%rest201998%_)
                             (_%g202004202015%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx206046206047%_)))))
                        (let ((_%__kont206048206049%_
                               (lambda (_%g202006202042%_ _%g202007202043%_)
                                 (let* ((_%__stx206002206003%_
                                         _%g202007202043%_)
                                        (_%g202058202083%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx206002206003%_)))))
                                   (let ((_%__kont206004206005%_
                                          (lambda (_%g202060202156%_
                                                   _%g202061202157%_)
                                            (let ((_%eid202171%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%g202061202157%_)))
                                                  (_%expr202172%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self201872%_
                                                      _%g202060202156%_))))
                                              (_%lp201996%_
                                               _%g202006202042%_
                                               (cons (cons _%eid202171%_
                                                           (cons _%expr202172%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind201999%_)
                                               _%check202000%_
                                               _%post202001%_))))
                                         (_%__kont206006206007%_
                                          (lambda (_%g202071202104%_
                                                   _%g202072202105%_)
                                            (let* ((_%vals202118%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values202120%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals202118%_
                                                     _%g202072202105%_
                                                     _%g202071202104%_))
                                                   (_%refs202122%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals202118%_
                                                     _%g202072202105%_))
                                                   (_%expr202124%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self201872%_
                                                       _%g202071202104%_))))
                                              (_%lp201996%_
                                               _%g202006202042%_
                                               (cons (cons _%vals202118%_
                                                           (cons _%expr202124%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind201999%_)
                                               (cons _%check-values202120%_
                                                     _%check202000%_)
                                               (cons _%refs202122%_
                                                     _%post202001%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx206002206003%_))
                                         (let ((_%e202062202132%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx206002206003%_))))
                                           (let ((_%tl202064202137%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e202062202132%_)))
                                                 (_%hd202063202135%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e202062202132%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd202063202135%_))
                                                 (let ((_%e202065202140%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd202063202135%_))))
                                                   (let ((_%tl202067202145%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e202065202140%_)))
                                                         (_%hd202066202143%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e202065202140%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl202067202145%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl202064202137%_))
                     (let ((_%e202068202148%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl202064202137%_))))
                       (let ((_%tl202070202153%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e202068202148%_)))
                             (_%hd202069202151%_
                              (let ()
                                (declare (not safe))
                                (##car _%e202068202148%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl202070202153%_))
                             (_%__kont206004206005%_
                              _%hd202069202151%_
                              _%hd202066202143%_)
                             (let ()
                               (declare (not safe))
                               (_%g202058202083%_)))))
                     (let () (declare (not safe)) (_%g202058202083%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl202064202137%_))
                     (let ((_%e202076202096%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl202064202137%_))))
                       (let ((_%tl202078202101%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e202076202096%_)))
                             (_%hd202077202099%_
                              (let ()
                                (declare (not safe))
                                (##car _%e202076202096%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl202078202101%_))
                             (_%__kont206006206007%_
                              _%hd202077202099%_
                              _%hd202063202135%_)
                             (let ()
                               (declare (not safe))
                               (_%g202058202083%_)))))
                     (let () (declare (not safe)) (_%g202058202083%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl202064202137%_))
                                                     (let ((_%e202076202096%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl202064202137%_))))
                                                       (let ((_%tl202078202101%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e202076202096%_)))
                     (_%hd202077202099%_
                      (let () (declare (not safe)) (##car _%e202076202096%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl202078202101%_))
                     (_%__kont206006206007%_
                      _%hd202077202099%_
                      _%hd202063202135%_)
                     (let () (declare (not safe)) (_%g202058202083%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g202058202083%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g202058202083%_)))))))
                              (_%__kont206050206051%_
                               (lambda ()
                                 (let* ((_%body202022%_
                                         (if _%compiled-body?201874%_
                                             _%body201994%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self201872%_
                                                _%body201994%_))))
                                        (_%body202024%_
                                         (_%generate-values-post201880%_
                                          _%post202001%_
                                          _%body202022%_))
                                        (_%body202026%_
                                         (_%generate-values-check201881%_
                                          _%check202000%_
                                          _%body202024%_)))
                                   (cons 'let
                                         (cons (reverse _%bind201999%_)
                                               (cons _%body202026%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx206046206047%_))
                              (let ((_%e202008202034%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx206046206047%_))))
                                (let ((_%tl202010202039%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202008202034%_)))
                                      (_%hd202009202037%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202008202034%_))))
                                  (_%__kont206048206049%_
                                   _%tl202010202039%_
                                   _%hd202009202037%_)))
                              (_%__kont206050206051%_)))))))
                 (_%generate-values-post201880%_
                  (lambda (_%post201952%_ _%body201953%_)
                    (let _%lp201955%_ ((_%rest201957%_ _%post201952%_)
                                       (_%body201958%_ _%body201953%_))
                      (let* ((_%rest201959201967%_ _%rest201957%_)
                             (_%else201961201975%_ (lambda () _%body201958%_))
                             (_%K201963201981%_
                              (lambda (_%rest201978%_ _%bind201979%_)
                                (_%lp201955%_
                                 _%rest201978%_
                                 (cons 'let
                                       (cons _%bind201979%_
                                             (cons _%body201958%_ '())))))))
                        (if (pair? _%rest201959201967%_)
                            (let ((_%hd201964201984%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest201959201967%_)))
                                  (_%tl201965201986%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest201959201967%_))))
                              (let* ((_%bind201989%_ _%hd201964201984%_)
                                     (_%rest201991%_ _%tl201965201986%_))
                                (_%K201963201981%_
                                 _%rest201991%_
                                 _%bind201989%_)))
                            (_%else201961201975%_))))))
                 (_%generate-values-check201881%_
                  (lambda (_%check201949%_ _%body201950%_)
                    (cons 'begin
                          (let ((__tmp206894 (cons _%body201950%_ '()))
                                (__tmp206893 (reverse _%check201949%_)))
                            (declare (not safe))
                            (foldr__0 cons __tmp206894 __tmp206893))))))
          (let* ((_%g201883201900%_
                  (lambda (_%g201884201897%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g201884201897%_))))
                 (_%g201882201946%_
                  (lambda (_%g201884201903%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g201884201903%_))
                        (let ((_%e201887201905%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g201884201903%_))))
                          (let ((_%hd201888201908%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e201887201905%_)))
                                (_%tl201889201910%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e201887201905%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl201889201910%_))
                                (let ((_%e201890201913%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl201889201910%_))))
                                  (let ((_%hd201891201916%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e201890201913%_)))
                                        (_%tl201892201918%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e201890201913%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl201892201918%_))
                                        (let ((_%e201893201921%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl201892201918%_))))
                                          (let ((_%hd201894201924%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e201893201921%_)))
                                                (_%tl201895201926%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e201893201921%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl201895201926%_))
                                                ((lambda (_%g201885201929%_
                                                          _%g201886201930%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%g201886201930%_)
                                                       (_%generate-simple201876%_
                                                        _%g201886201930%_
                                                        _%g201885201929%_)
                                                       (_%generate-values201879%_
                                                        _%g201886201930%_
                                                        _%g201885201929%_)))
                                                 _%hd201894201924%_
                                                 _%hd201891201916%_)
                                                (_%g201883201900%_
                                                 _%g201884201903%_))))
                                        (_%g201883201900%_
                                         _%g201884201903%_))))
                                (_%g201883201900%_ _%g201884201903%_))))
                        (_%g201883201900%_ _%g201884201903%_)))))
            (_%g201882201946%_ _%stx201873%_)))))
    (define gxc#generate-runtime-let-values%__0
      (lambda (_%self202626%_ _%stx202627%_)
        (let ((_%compiled-body?202629%_ '#f))
          (gxc#generate-runtime-let-values%__%
           _%self202626%_
           _%stx202627%_
           _%compiled-body?202629%_))))
    (define gxc#generate-runtime-let-values%
      (lambda _g206895_
        (let ((_g206896_ (let () (declare (not safe)) (##length _g206895_))))
          (cond ((let () (declare (not safe)) (##fx= _g206896_ 2))
                 (apply gxc#generate-runtime-let-values%__0 _g206895_))
                ((let () (declare (not safe)) (##fx= _g206896_ 3))
                 (apply gxc#generate-runtime-let-values%__% _g206895_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-let-values%
                  _g206895_))))))
    (define gxc#generate-runtime-let-values-bind
      (lambda (_%vals201766%_ _%hd201767%_)
        (let _%lp201769%_ ((_%rest201771%_ _%hd201767%_)
                           (_%k201772%_ '0)
                           (_%r201773%_ '()))
          (let* ((_%__stx206060206061%_ _%rest201771%_)
                 (_%g201778201795%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx206060206061%_)))))
            (let ((_%__kont206062206063%_
                   (lambda (_%g201780201858%_)
                     (_%lp201769%_
                      _%g201780201858%_
                      (let () (declare (not safe)) (##fx+ _%k201772%_ '1))
                      _%r201773%_)))
                  (_%__kont206064206065%_
                   (lambda (_%g201785201831%_ _%g201786201832%_)
                     (_%lp201769%_
                      _%g201785201831%_
                      (let () (declare (not safe)) (##fx+ _%k201772%_ '1))
                      (cons (cons (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-binding-id
                                     _%g201786201832%_))
                                  (cons (gxc#generate-runtime-values-ref
                                         _%vals201766%_
                                         _%k201772%_
                                         _%g201785201831%_)
                                        '()))
                            _%r201773%_))))
                  (_%__kont206066206067%_
                   (lambda (_%g201790201807%_)
                     (let ((__tmp206897
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-binding-id
                                           _%g201790201807%_))
                                        (cons (gxc#generate-runtime-values->list
                                               _%vals201766%_
                                               _%k201772%_)
                                              '()))
                                  '())))
                       (declare (not safe))
                       (foldl__0 cons __tmp206897 _%r201773%_))))
                  (_%__kont206068206069%_ (lambda () (reverse _%r201773%_))))
              (let ((_%g201776201818%_
                     (lambda ()
                       (let ((_%g201790201807%_ _%__stx206060206061%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%g201790201807%_))
                             (_%__kont206066206067%_ _%g201790201807%_)
                             (_%__kont206068206069%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx206060206061%_))
                    (let ((_%e201781201847%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx206060206061%_))))
                      (let ((_%tl201783201852%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e201781201847%_)))
                            (_%hd201782201850%_
                             (let ()
                               (declare (not safe))
                               (##car _%e201781201847%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _%hd201782201850%_))
                            (let ((_%e201784201855%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd201782201850%_))))
                              (if (equal? _%e201784201855%_ '#f)
                                  (_%__kont206062206063%_ _%tl201783201852%_)
                                  (_%__kont206064206065%_
                                   _%tl201783201852%_
                                   _%hd201782201850%_)))
                            (_%__kont206064206065%_
                             _%tl201783201852%_
                             _%hd201782201850%_))))
                    (let () (declare (not safe)) (_%g201776201818%_)))))))))
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_%self201445%_ _%stx201446%_ _%compiled-body?201447%_)
        (letrec ((_%generate-simple201449%_
                  (lambda (_%hd201751%_ _%body201752%_)
                    (gxc#generate-runtime-simple-let
                     _%self201445%_
                     'letrec
                     _%hd201751%_
                     _%body201752%_
                     _%compiled-body?201447%_)))
                 (_%generate-values201450%_
                  (lambda (_%hd201530%_ _%body201531%_)
                    (let _%lp201533%_ ((_%rest201535%_ _%hd201530%_)
                                       (_%bind201536%_ '())
                                       (_%check201537%_ '())
                                       (_%post201538%_ '()))
                      (let* ((_%__stx206134206135%_ _%rest201535%_)
                             (_%g201541201552%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx206134206135%_)))))
                        (let ((_%__kont206136206137%_
                               (lambda (_%g201543201579%_ _%g201544201580%_)
                                 (let* ((_%__stx206090206091%_
                                         _%g201544201580%_)
                                        (_%g201595201620%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx206090206091%_)))))
                                   (let ((_%__kont206092206093%_
                                          (lambda (_%g201597201727%_
                                                   _%g201598201728%_)
                                            (let ((_%eid201742%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%g201598201728%_)))
                                                  (_%expr201743%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self201445%_
                                                      _%g201597201727%_))))
                                              (_%lp201533%_
                                               _%g201543201579%_
                                               (cons (cons _%eid201742%_
                                                           (cons _%expr201743%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind201536%_)
                                               _%check201537%_
                                               _%post201538%_))))
                                         (_%__kont206094206095%_
                                          (lambda (_%g201608201641%_
                                                   _%g201609201642%_)
                                            (let* ((_%vals201655%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values201657%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals201655%_
                                                     _%g201609201642%_
                                                     _%g201608201641%_))
                                                   (_%refs201659%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals201655%_
                                                     _%g201609201642%_))
                                                   (_%expr201661%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self201445%_
                                                       _%g201608201641%_))))
                                              (_%lp201533%_
                                               _%g201543201579%_
                                               (let ((__tmp206899
                                                      (cons (cons _%vals201655%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr201661%_ '()))
                    _%bind201536%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp206898
                                                      (map (lambda (_%e201663201665%_)
                                                             (let* ((_%e201663201667201676%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%e201663201665%_)
                            (_%E201669201680%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%e201663201667201676%_
                                        '([eid _])))
                               '#!void))
                            (_%K201670201685%_
                             (lambda (_%eid201683%_)
                               (cons _%eid201683%_ (cons '#!void '())))))
                       (if (pair? _%e201663201667201676%_)
                           (let ((_%hd201671201688%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e201663201667201676%_)))
                                 (_%tl201672201690%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e201663201667201676%_))))
                             (let ((_%eid201693%_ _%hd201671201688%_))
                               (if (pair? _%tl201672201690%_)
                                   (let ((_%tl201674201695%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%tl201672201690%_))))
                                     (if (null? _%tl201674201695%_)
                                         (_%K201670201685%_ _%eid201693%_)
                                         (_%E201669201680%_)))
                                   (_%E201669201680%_))))
                           (_%E201669201680%_))))
                   _%refs201659%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldl__0
                                                  cons
                                                  __tmp206899
                                                  __tmp206898))
                                               (cons _%check-values201657%_
                                                     _%check201537%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (foldl__0
                                                  cons
                                                  _%refs201659%_
                                                  _%post201538%_)))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx206090206091%_))
                                         (let ((_%e201599201703%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx206090206091%_))))
                                           (let ((_%tl201601201708%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e201599201703%_)))
                                                 (_%hd201600201706%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e201599201703%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd201600201706%_))
                                                 (let ((_%e201602201711%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd201600201706%_))))
                                                   (let ((_%tl201604201716%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e201602201711%_)))
                                                         (_%hd201603201714%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e201602201711%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl201604201716%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl201601201708%_))
                     (let ((_%e201605201719%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl201601201708%_))))
                       (let ((_%tl201607201724%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e201605201719%_)))
                             (_%hd201606201722%_
                              (let ()
                                (declare (not safe))
                                (##car _%e201605201719%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl201607201724%_))
                             (_%__kont206092206093%_
                              _%hd201606201722%_
                              _%hd201603201714%_)
                             (let ()
                               (declare (not safe))
                               (_%g201595201620%_)))))
                     (let () (declare (not safe)) (_%g201595201620%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl201601201708%_))
                     (let ((_%e201613201633%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl201601201708%_))))
                       (let ((_%tl201615201638%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e201613201633%_)))
                             (_%hd201614201636%_
                              (let ()
                                (declare (not safe))
                                (##car _%e201613201633%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl201615201638%_))
                             (_%__kont206094206095%_
                              _%hd201614201636%_
                              _%hd201600201706%_)
                             (let ()
                               (declare (not safe))
                               (_%g201595201620%_)))))
                     (let () (declare (not safe)) (_%g201595201620%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl201601201708%_))
                                                     (let ((_%e201613201633%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl201601201708%_))))
                                                       (let ((_%tl201615201638%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e201613201633%_)))
                     (_%hd201614201636%_
                      (let () (declare (not safe)) (##car _%e201613201633%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl201615201638%_))
                     (_%__kont206094206095%_
                      _%hd201614201636%_
                      _%hd201600201706%_)
                     (let () (declare (not safe)) (_%g201595201620%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g201595201620%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g201595201620%_)))))))
                              (_%__kont206138206139%_
                               (lambda ()
                                 (let* ((_%body201559%_
                                         (if _%compiled-body?201447%_
                                             _%body201531%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self201445%_
                                                _%body201531%_))))
                                        (_%body201561%_
                                         (_%generate-values-post201452%_
                                          _%post201538%_
                                          _%body201559%_))
                                        (_%body201563%_
                                         (_%generate-values-check201451%_
                                          _%check201537%_
                                          _%body201561%_)))
                                   (cons 'letrec
                                         (cons (reverse _%bind201536%_)
                                               (cons _%body201563%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx206134206135%_))
                              (let ((_%e201545201571%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx206134206135%_))))
                                (let ((_%tl201547201576%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e201545201571%_)))
                                      (_%hd201546201574%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e201545201571%_))))
                                  (_%__kont206136206137%_
                                   _%tl201547201576%_
                                   _%hd201546201574%_)))
                              (_%__kont206138206139%_)))))))
                 (_%generate-values-check201451%_
                  (lambda (_%check201527%_ _%body201528%_)
                    (cons 'begin
                          (let ((__tmp206901 (cons _%body201528%_ '()))
                                (__tmp206900 (reverse _%check201527%_)))
                            (declare (not safe))
                            (foldr__0 cons __tmp206901 __tmp206900)))))
                 (_%generate-values-post201452%_
                  (lambda (_%post201520%_ _%body201521%_)
                    (cons 'begin
                          (let ((__tmp206905 (cons _%body201521%_ '()))
                                (__tmp206902
                                 (let ((__tmp206904
                                        (lambda (_%g201522201524%_)
                                          (cons 'set! _%g201522201524%_)))
                                       (__tmp206903 (reverse _%post201520%_)))
                                   (declare (not safe))
                                   (##map __tmp206904 __tmp206903))))
                            (declare (not safe))
                            (foldr__0 cons __tmp206905 __tmp206902))))))
          (let* ((_%g201454201471%_
                  (lambda (_%g201455201468%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g201455201468%_))))
                 (_%g201453201517%_
                  (lambda (_%g201455201474%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g201455201474%_))
                        (let ((_%e201458201476%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g201455201474%_))))
                          (let ((_%hd201459201479%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e201458201476%_)))
                                (_%tl201460201481%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e201458201476%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl201460201481%_))
                                (let ((_%e201461201484%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl201460201481%_))))
                                  (let ((_%hd201462201487%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e201461201484%_)))
                                        (_%tl201463201489%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e201461201484%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl201463201489%_))
                                        (let ((_%e201464201492%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl201463201489%_))))
                                          (let ((_%hd201465201495%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e201464201492%_)))
                                                (_%tl201466201497%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e201464201492%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl201466201497%_))
                                                ((lambda (_%g201456201500%_
                                                          _%g201457201501%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%g201457201501%_)
                                                       (_%generate-simple201449%_
                                                        _%g201457201501%_
                                                        _%g201456201500%_)
                                                       (_%generate-values201450%_
                                                        _%g201457201501%_
                                                        _%g201456201500%_)))
                                                 _%hd201465201495%_
                                                 _%hd201462201487%_)
                                                (_%g201454201471%_
                                                 _%g201455201474%_))))
                                        (_%g201454201471%_
                                         _%g201455201474%_))))
                                (_%g201454201471%_ _%g201455201474%_))))
                        (_%g201454201471%_ _%g201455201474%_)))))
            (_%g201453201517%_ _%stx201446%_)))))
    (define gxc#generate-runtime-letrec-values%__0
      (lambda (_%self201757%_ _%stx201758%_)
        (let ((_%compiled-body?201760%_ '#f))
          (gxc#generate-runtime-letrec-values%__%
           _%self201757%_
           _%stx201758%_
           _%compiled-body?201760%_))))
    (define gxc#generate-runtime-letrec-values%
      (lambda _g206906_
        (let ((_g206907_ (let () (declare (not safe)) (##length _g206906_))))
          (cond ((let () (declare (not safe)) (##fx= _g206907_ 2))
                 (apply gxc#generate-runtime-letrec-values%__0 _g206906_))
                ((let () (declare (not safe)) (##fx= _g206907_ 3))
                 (apply gxc#generate-runtime-letrec-values%__% _g206906_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-letrec-values%
                  _g206906_))))))
    (define gxc#generate-runtime-letrec*-values%
      (lambda (_%self201026%_ _%stx201027%_)
        (letrec ((_%generate-values201029%_
                  (lambda (_%hd201272%_ _%body201273%_)
                    (let _%lp201275%_ ((_%rest201277%_ _%hd201272%_)
                                       (_%bind201278%_ '()))
                      (let* ((_%rest201279201287%_ _%rest201277%_)
                             (_%else201281201298%_
                              (lambda ()
                                (let ((_%bind201295%_ (reverse _%bind201278%_))
                                      (_%body201296%_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self201026%_
                                          _%body201273%_))))
                                  (cons 'letrec*
                                        (cons _%bind201295%_
                                              (cons _%body201296%_ '()))))))
                             (_%K201283201432%_
                              (lambda (_%rest201301%_ _%hd-bind201302%_)
                                (let* ((_%__stx206148206149%_
                                        _%hd-bind201302%_)
                                       (_%g201305201330%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx206148206149%_)))))
                                  (let ((_%__kont206150206151%_
                                         (lambda (_%g201307201411%_
                                                  _%g201308201412%_)
                                           (let ((_%eid201426%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-binding-id*
                                                     _%g201308201412%_)))
                                                 (_%expr201427%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self201026%_
                                                     _%g201307201411%_))))
                                             (_%lp201275%_
                                              _%rest201301%_
                                              (cons (cons _%eid201426%_
                                                          (cons _%expr201427%_
                                                                '()))
                                                    _%bind201278%_)))))
                                        (_%__kont206152206153%_
                                         (lambda (_%g201318201351%_
                                                  _%g201319201352%_)
                                           (let* ((_%vals201371%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%tmp201373%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%check-values201375%_
                                                   (gxc#generate-runtime-check-values
                                                    _%tmp201373%_
                                                    _%g201319201352%_
                                                    _%g201318201351%_))
                                                  (_%refs201377%_
                                                   (gxc#generate-runtime-let-values-bind
                                                    _%vals201371%_
                                                    _%g201319201352%_))
                                                  (_%expr201379%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self201026%_
                                                      _%g201318201351%_))))
                                             (_%lp201275%_
                                              _%rest201301%_
                                              (let ((__tmp206908
                                                     (cons (cons _%vals201371%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'let
                                     (cons (cons (cons _%tmp201373%_
                                                       (cons _%expr201379%_
                                                             '()))
                                                 '())
                                           (cons _%check-values201375%_
                                                 (cons _%tmp201373%_ '()))))
                               '()))
                   _%bind201278%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldl__0
                                                 cons
                                                 __tmp206908
                                                 _%refs201377%_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx206148206149%_))
                                        (let ((_%e201309201387%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx206148206149%_))))
                                          (let ((_%tl201311201392%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e201309201387%_)))
                                                (_%hd201310201390%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e201309201387%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd201310201390%_))
                                                (let ((_%e201312201395%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd201310201390%_))))
                                                  (let ((_%tl201314201400%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e201312201395%_)))
                                                        (_%hd201313201398%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e201312201395%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl201314201400%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl201311201392%_))
                                                            (let ((_%e201315201403%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl201311201392%_))))
                      (let ((_%tl201317201408%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e201315201403%_)))
                            (_%hd201316201406%_
                             (let ()
                               (declare (not safe))
                               (##car _%e201315201403%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl201317201408%_))
                            (_%__kont206150206151%_
                             _%hd201316201406%_
                             _%hd201313201398%_)
                            (let ()
                              (declare (not safe))
                              (_%g201305201330%_)))))
                    (let () (declare (not safe)) (_%g201305201330%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl201311201392%_))
                    (let ((_%e201323201343%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl201311201392%_))))
                      (let ((_%tl201325201348%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e201323201343%_)))
                            (_%hd201324201346%_
                             (let ()
                               (declare (not safe))
                               (##car _%e201323201343%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl201325201348%_))
                            (_%__kont206152206153%_
                             _%hd201324201346%_
                             _%hd201310201390%_)
                            (let ()
                              (declare (not safe))
                              (_%g201305201330%_)))))
                    (let () (declare (not safe)) (_%g201305201330%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl201311201392%_))
                                                    (let ((_%e201323201343%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl201311201392%_))))
                                                      (let ((_%tl201325201348%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e201323201343%_)))
                    (_%hd201324201346%_
                     (let () (declare (not safe)) (##car _%e201323201343%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl201325201348%_))
                    (_%__kont206152206153%_
                     _%hd201324201346%_
                     _%hd201310201390%_)
                    (let () (declare (not safe)) (_%g201305201330%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g201305201330%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g201305201330%_))))))))
                        (if (pair? _%rest201279201287%_)
                            (let ((_%hd201284201435%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest201279201287%_)))
                                  (_%tl201285201437%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest201279201287%_))))
                              (let* ((_%hd-bind201440%_ _%hd201284201435%_)
                                     (_%rest201442%_ _%tl201285201437%_))
                                (_%K201283201432%_
                                 _%rest201442%_
                                 _%hd-bind201440%_)))
                            (_%else201281201298%_))))))
                 (_%generate-letrec?201030%_
                  (lambda (_%hd201162%_)
                    (let _%lp201164%_ ((_%rest201166%_ _%hd201162%_))
                      (let* ((_%rest201167201175%_ _%rest201166%_)
                             (_%else201169201183%_ (lambda () '#t))
                             (_%K201171201260%_
                              (lambda (_%rest201186%_ _%hd-bind201187%_)
                                (let* ((_%g201189201206%_
                                        (lambda (_%g201190201203%_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g201190201203%_))))
                                       (_%g201188201257%_
                                        (lambda (_%g201190201209%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%g201190201209%_))
                                              (let ((_%e201193201211%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%g201190201209%_))))
                                                (let ((_%hd201194201214%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e201193201211%_)))
                                                      (_%tl201195201216%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e201193201211%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd201194201214%_))
                                                      (let ((_%e201196201219%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd201194201214%_))))
                (let ((_%hd201197201222%_
                       (let () (declare (not safe)) (##car _%e201196201219%_)))
                      (_%tl201198201224%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e201196201219%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl201198201224%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl201195201216%_))
                          (let ((_%e201199201227%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl201195201216%_))))
                            (let ((_%hd201200201230%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e201199201227%_)))
                                  (_%tl201201201232%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e201199201227%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl201201201232%_))
                                  ((lambda (_%g201191201235%_
                                            _%g201192201236%_)
                                     (if (_%is-lambda-expr?201031%_
                                          _%g201191201235%_)
                                         (_%lp201164%_ _%rest201186%_)
                                         '#f))
                                   _%hd201200201230%_
                                   _%hd201197201222%_)
                                  (_%g201189201206%_ _%g201190201209%_))))
                          (_%g201189201206%_ _%g201190201209%_))
                      (_%g201189201206%_ _%g201190201209%_))))
              (_%g201189201206%_ _%g201190201209%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g201189201206%_
                                               _%g201190201209%_)))))
                                  (_%g201188201257%_ _%hd-bind201187%_)))))
                        (if (pair? _%rest201167201175%_)
                            (let ((_%hd201172201263%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest201167201175%_)))
                                  (_%tl201173201265%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest201167201175%_))))
                              (let* ((_%hd-bind201268%_ _%hd201172201263%_)
                                     (_%rest201270%_ _%tl201173201265%_))
                                (_%K201171201260%_
                                 _%rest201270%_
                                 _%hd-bind201268%_)))
                            (_%else201169201183%_))))))
                 (_%is-lambda-expr?201031%_
                  (lambda (_%expr201099%_)
                    (let* ((_%__stx206192206193%_ _%expr201099%_)
                           (_%g201102201116%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx206192206193%_)))))
                      (let ((_%__kont206194206195%_
                             (lambda (_%g201104201144%_ _%g201105201145%_)
                               '#t))
                            (_%__kont206196206197%_ (lambda () '#f)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%__stx206192206193%_))
                            (let ((_%e201106201128%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%__stx206192206193%_))))
                              (let ((_%tl201108201133%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e201106201128%_)))
                                    (_%hd201107201131%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e201106201128%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd201107201131%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd201107201131%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl201108201133%_))
                                            (let ((_%e201109201136%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl201108201133%_))))
                                              (let ((_%tl201111201141%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e201109201136%_)))
                                                    (_%hd201110201139%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e201109201136%_))))
                                                (_%__kont206194206195%_
                                                 _%tl201111201141%_
                                                 _%hd201110201139%_)))
                                            (_%__kont206196206197%_))
                                        (_%__kont206196206197%_))
                                    (_%__kont206196206197%_))))
                            (_%__kont206196206197%_)))))))
          (let* ((_%g201033201050%_
                  (lambda (_%g201034201047%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g201034201047%_))))
                 (_%g201032201096%_
                  (lambda (_%g201034201053%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g201034201053%_))
                        (let ((_%e201037201055%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g201034201053%_))))
                          (let ((_%hd201038201058%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e201037201055%_)))
                                (_%tl201039201060%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e201037201055%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl201039201060%_))
                                (let ((_%e201040201063%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl201039201060%_))))
                                  (let ((_%hd201041201066%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e201040201063%_)))
                                        (_%tl201042201068%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e201040201063%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl201042201068%_))
                                        (let ((_%e201043201071%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl201042201068%_))))
                                          (let ((_%hd201044201074%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e201043201071%_)))
                                                (_%tl201045201076%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e201043201071%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl201045201076%_))
                                                ((lambda (_%g201035201079%_
                                                          _%g201036201080%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%g201036201080%_)
                                                       (if (_%generate-letrec?201030%_
                                                            _%g201036201080%_)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self201026%_
                                                            'letrec
                                                            _%g201036201080%_
                                                            _%g201035201079%_
                                                            '#f)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self201026%_
                                                            'letrec*
                                                            _%g201036201080%_
                                                            _%g201035201079%_
                                                            '#f))
                                                       (_%generate-values201029%_
                                                        _%g201036201080%_
                                                        _%g201035201079%_)))
                                                 _%hd201044201074%_
                                                 _%hd201041201066%_)
                                                (_%g201033201050%_
                                                 _%g201034201053%_))))
                                        (_%g201033201050%_
                                         _%g201034201053%_))))
                                (_%g201033201050%_ _%g201034201053%_))))
                        (_%g201033201050%_ _%g201034201053%_)))))
            (_%g201032201096%_ _%stx201027%_)))))
    (define gxc#generate-runtime-simple-let?
      (lambda (_%hd200963%_)
        (let _%lp200965%_ ((_%rest200967%_ _%hd200963%_))
          (let* ((_%rest200968200984%_ _%rest200967%_)
                 (_%else200971200992%_ (lambda () '#f)))
            (let ((_%K200974201005%_
                   (lambda (_%rest201003%_) (_%lp200965%_ _%rest201003%_)))
                  (_%K200973200997%_ (lambda () '#t)))
              (let ((_%try-match200970201000%_
                     (lambda ()
                       (if (null? _%rest200968200984%_)
                           (_%K200973200997%_)
                           (_%else200971200992%_)))))
                (if (pair? _%rest200968200984%_)
                    (let ((_%tl200976201010%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest200968200984%_)))
                          (_%hd200975201008%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest200968200984%_))))
                      (if (pair? _%hd200975201008%_)
                          (let ((_%tl200978201015%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd200975201008%_)))
                                (_%hd200977201013%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd200975201008%_))))
                            (if (pair? _%hd200977201013%_)
                                (let ((_%tl200982201018%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd200977201013%_))))
                                  (if (null? _%tl200982201018%_)
                                      (if (pair? _%tl200978201015%_)
                                          (let ((_%tl200980201021%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl200978201015%_))))
                                            (if (null? _%tl200980201021%_)
                                                (let ((_%rest201024%_
                                                       _%tl200976201010%_))
                                                  (_%lp200965%_
                                                   _%rest201024%_))
                                                (_%else200971200992%_)))
                                          (_%else200971200992%_))
                                      (_%else200971200992%_)))
                                (_%else200971200992%_)))
                          (_%else200971200992%_)))
                    (_%try-match200970201000%_))))))))
    (define gxc#generate-runtime-simple-let
      (lambda (_%self200875%_
               _%form200876%_
               _%hd200877%_
               _%body200878%_
               _%compiled-body?200879%_)
        (letrec ((_%generate1200881%_
                  (lambda (_%bind200920%_)
                    (let* ((_%bind200921200932%_ _%bind200920%_)
                           (_%E200923200935%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%bind200921200932%_
                                       '([[id] expr])))
                              '#!void))
                           (_%K200924200941%_
                            (lambda (_%expr200938%_ _%id200939%_)
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-binding-id*
                                       _%id200939%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self200875%_
                                             _%expr200938%_))
                                          '())))))
                      (if (pair? _%bind200921200932%_)
                          (let ((_%hd200925200944%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%bind200921200932%_)))
                                (_%tl200926200946%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%bind200921200932%_))))
                            (if (pair? _%hd200925200944%_)
                                (let ((_%hd200929200949%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd200925200944%_)))
                                      (_%tl200930200951%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd200925200944%_))))
                                  (let ((_%id200954%_ _%hd200929200949%_))
                                    (if (null? _%tl200930200951%_)
                                        (if (pair? _%tl200926200946%_)
                                            (let ((_%hd200927200956%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl200926200946%_)))
                                                  (_%tl200928200958%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl200926200946%_))))
                                              (let ((_%expr200961%_
                                                     _%hd200927200956%_))
                                                (if (null? _%tl200928200958%_)
                                                    (_%K200924200941%_
                                                     _%expr200961%_
                                                     _%id200954%_)
                                                    (_%E200923200935%_))))
                                            (_%E200923200935%_))
                                        (_%E200923200935%_))))
                                (_%E200923200935%_)))
                          (_%E200923200935%_))))))
          (let* ((_%bind200883%_ (map _%generate1200881%_ _%hd200877%_))
                 (_%body200885%_
                  (if _%compiled-body?200879%_
                      _%body200878%_
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self200875%_ _%body200878%_))))
                 (_%body200917%_
                  (let* ((_%body200886200894%_ _%body200885%_)
                         (_%else200888200902%_
                          (lambda () (cons _%body200885%_ '())))
                         (_%K200890200907%_
                          (lambda (_%exprs200905%_) _%exprs200905%_)))
                    (if (pair? _%body200886200894%_)
                        (let ((_%hd200891200910%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%body200886200894%_)))
                              (_%tl200892200912%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%body200886200894%_))))
                          (if (let ()
                                (declare (not safe))
                                (##eq? _%hd200891200910%_ 'begin))
                              (let ((_%exprs200915%_ _%tl200892200912%_))
                                (_%K200890200907%_ _%exprs200915%_))
                              (_%else200888200902%_)))
                        (_%else200888200902%_)))))
            (cons _%form200876%_ (cons _%bind200883%_ _%body200917%_))))))
    (define gxc#generate-runtime-quote%
      (lambda (_%self200775%_ _%stx200776%_)
        (letrec ((_%generate1200778%_
                  (lambda (_%datum200830%_)
                    (if (or (null? _%datum200830%_)
                            (let ()
                              (declare (not safe))
                              (interned-symbol? _%datum200830%_))
                            (let ()
                              (declare (not safe))
                              (gx#self-quoting? _%datum200830%_))
                            (eof-object? _%datum200830%_))
                        _%datum200830%_
                        (if (uninterned-symbol? _%datum200830%_)
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__%
                               _%datum200830%_
                               '#t))
                            (if (pair? _%datum200830%_)
                                (cons (_%generate1200778%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%datum200830%_)))
                                      (_%generate1200778%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%datum200830%_))))
                                (if (box? _%datum200830%_)
                                    (box (_%generate1200778%_
                                          (unbox _%datum200830%_)))
                                    (if (vector? _%datum200830%_)
                                        (vector-map
                                         _%generate1200778%_
                                         _%datum200830%_)
                                        (if (or (s8vector? _%datum200830%_)
                                                (u8vector? _%datum200830%_)
                                                (s16vector? _%datum200830%_)
                                                (u16vector? _%datum200830%_)
                                                (s32vector? _%datum200830%_)
                                                (u32vector? _%datum200830%_)
                                                (s64vector? _%datum200830%_)
                                                (u64vector? _%datum200830%_)
                                                (f32vector? _%datum200830%_)
                                                (f64vector? _%datum200830%_))
                                            _%datum200830%_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot compile non-primitive quote"
                                               _%stx200776%_)))))))))))
          (let* ((_%g200780200793%_
                  (lambda (_%g200781200790%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g200781200790%_))))
                 (_%g200779200827%_
                  (lambda (_%g200781200796%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g200781200796%_))
                        (let ((_%e200783200798%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g200781200796%_))))
                          (let ((_%hd200784200801%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e200783200798%_)))
                                (_%tl200785200803%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e200783200798%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl200785200803%_))
                                (let ((_%e200786200806%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl200785200803%_))))
                                  (let ((_%hd200787200809%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e200786200806%_)))
                                        (_%tl200788200811%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e200786200806%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl200788200811%_))
                                        ((lambda (_%g200782200814%_)
                                           (cons 'quote
                                                 (cons (_%generate1200778%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%g200782200814%_)))
                                                       '())))
                                         _%hd200787200809%_)
                                        (_%g200780200793%_
                                         _%g200781200796%_))))
                                (_%g200780200793%_ _%g200781200796%_))))
                        (_%g200780200793%_ _%g200781200796%_)))))
            (_%g200779200827%_ _%stx200776%_)))))
    (define gxc#generate-runtime-call%
      (lambda (_%self200222%_ _%stx200223%_)
        (letrec ((_%compile-call200225%_
                  (lambda (_%rator200512%_ _%rands200513%_)
                    (let ((_%rator200519%_
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self200222%_
                              _%rator200512%_)))
                          (_%rands200520%_
                           (map (lambda (_%g200514200516%_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%self200222%_
                                     _%g200514200516%_)))
                                _%rands200513%_)))
                      (let* ((_%__stx206239206240%_ _%rator200519%_)
                             (_%g200523200575%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx206239206240%_)))))
                        (let ((_%__kont206241206242%_
                               (lambda (_%g200525200695%_
                                        _%g200526200696%_
                                        _%g200527200697%_
                                        _%g200528200698%_)
                                 (if (let ((__tmp206911
                                            (let ()
                                              (declare (not safe))
                                              (##length _%rands200520%_)))
                                           (__tmp206909
                                            (length (let ((__tmp206910
                                                           (lambda (_%g200734200737%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g200735200739%_)
                     (cons _%g200734200737%_ _%g200735200739%_))))
              (declare (not safe))
              (foldr__0 __tmp206910 '() _%g200527200697%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp206911 __tmp206909))
                                     (let* ((_%id200742%_ _%g200528200698%_)
                                            (_%args200751%_
                                             (let ((__tmp206912
                                                    (lambda (_%g200743200746%_
                                                             _%g200744200748%_)
                                                      (cons _%g200743200746%_
                                                            _%g200744200748%_))))
                                               (declare (not safe))
                                               (foldr__0
                                                __tmp206912
                                                '()
                                                _%g200527200697%_)))
                                            (_%body200760%_
                                             (let ((__tmp206913
                                                    (lambda (_%g200752200755%_
                                                             _%g200753200757%_)
                                                      (cons _%g200752200755%_
                                                            _%g200753200757%_))))
                                               (declare (not safe))
                                               (foldr__0
                                                __tmp206913
                                                '()
                                                _%g200526200696%_)))
                                            (_%init200762%_
                                             (map list
                                                  _%args200751%_
                                                  _%rands200520%_)))
                                       (cons 'let
                                             (cons _%id200742%_
                                                   (cons _%init200762%_
                                                         _%body200760%_))))
                                     (let ((__tmp206914
                                            (let ((__tmp206915
                                                   (lambda (_%g200764200767%_
                                                            _%g200765200769%_)
                                                     (cons _%g200764200767%_
                                                           _%g200765200769%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp206915
                                               '()
                                               _%g200527200697%_))))
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Illegal loop application; arity mismatch"
                                        _%stx200223%_
                                        __tmp206914
                                        _%rands200520%_)))))
                              (_%__kont206247206248%_
                               (lambda ()
                                 (cons _%rator200519%_ _%rands200520%_))))
                          (let ((_%__match206306206307%_
                                 (lambda (_%e200529200587%_
                                          _%hd200530200590%_
                                          _%tl200531200592%_
                                          _%e200532200595%_
                                          _%hd200533200598%_
                                          _%tl200534200600%_
                                          _%e200535200603%_
                                          _%hd200536200606%_
                                          _%tl200537200608%_
                                          _%e200538200611%_
                                          _%hd200539200614%_
                                          _%tl200540200616%_
                                          _%e200541200619%_
                                          _%hd200542200622%_
                                          _%tl200543200624%_
                                          _%e200544200627%_
                                          _%hd200545200630%_
                                          _%tl200546200632%_
                                          _%e200547200635%_
                                          _%hd200548200638%_
                                          _%tl200549200640%_
                                          _%__splice206243206244%_
                                          _%target200550200643%_
                                          _%tl200552200645%_)
                                   (letrec ((_%loop200553200648%_
                                             (lambda (_%hd200551200651%_
                                                      _%arg200557200653%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%hd200551200651%_))
                                                   (let ((_%e200554200655%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%hd200551200651%_))))
                                                     (let ((_%lp-tl200556200660%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e200554200655%_)))
                                                           (_%lp-hd200555200658%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e200554200655%_))))
                                                       (_%loop200553200648%_
                                                        _%lp-tl200556200660%_
                                                        (cons _%lp-hd200555200658%_
                                                              _%arg200557200653%_))))
                                                   (let ((_%arg200558200663%_
                                                          (reverse _%arg200557200653%_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _%tl200549200640%_))
                                                         (let ((_%__splice206245206246%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice->vector
                           _%tl200549200640%_
                           '0))))
                   (let ((_%tl200561200667%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice206245206246%_ '1)))
                         (_%target200559200665%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice206245206246%_ '0))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl200561200667%_))
                         (letrec ((_%loop200562200670%_
                                   (lambda (_%hd200560200673%_
                                            _%body200566200675%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd200560200673%_))
                                         (let ((_%e200563200677%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd200560200673%_))))
                                           (let ((_%lp-tl200565200682%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e200563200677%_)))
                                                 (_%lp-hd200564200680%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e200563200677%_))))
                                             (_%loop200562200670%_
                                              _%lp-tl200565200682%_
                                              (cons _%lp-hd200564200680%_
                                                    _%body200566200675%_))))
                                         (let ((_%body200567200685%_
                                                (reverse _%body200566200675%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%tl200543200624%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl200537200608%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl200534200600%_))
                                                       (let ((_%e200568200687%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl200534200600%_))))
                 (let ((_%tl200570200692%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e200568200687%_)))
                       (_%hd200569200690%_
                        (let ()
                          (declare (not safe))
                          (##car _%e200568200687%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl200570200692%_))
                       (let ((_%g200525200695%_ _%hd200569200690%_)
                             (_%g200526200696%_ _%body200567200685%_)
                             (_%g200527200697%_ _%arg200558200663%_)
                             (_%g200528200698%_ _%hd200539200614%_))
                         (if (eq? _%g200528200698%_ _%g200525200695%_)
                             (_%__kont206241206242%_
                              _%g200525200695%_
                              _%g200526200696%_
                              _%g200527200697%_
                              _%g200528200698%_)
                             (_%__kont206247206248%_)))
                       (_%__kont206247206248%_))))
               (_%__kont206247206248%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont206247206248%_))
                                               (_%__kont206247206248%_)))))))
                           (_%loop200562200670%_ _%target200559200665%_ '()))
                         (_%__kont206247206248%_))))
                 (_%__kont206247206248%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%loop200553200648%_
                                      _%target200550200643%_
                                      '())))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx206239206240%_))
                                (let ((_%e200529200587%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx206239206240%_))))
                                  (let ((_%tl200531200592%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e200529200587%_)))
                                        (_%hd200530200590%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e200529200587%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd200530200590%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               'letrec
                                               _%hd200530200590%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl200531200592%_))
                                                (let ((_%e200532200595%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl200531200592%_))))
                                                  (let ((_%tl200534200600%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e200532200595%_)))
                                                        (_%hd200533200598%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e200532200595%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd200533200598%_))
                                                        (let ((_%e200535200603%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd200533200598%_))))
                  (let ((_%tl200537200608%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e200535200603%_)))
                        (_%hd200536200606%_
                         (let ()
                           (declare (not safe))
                           (##car _%e200535200603%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd200536200606%_))
                        (let ((_%e200538200611%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd200536200606%_))))
                          (let ((_%tl200540200616%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e200538200611%_)))
                                (_%hd200539200614%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e200538200611%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl200540200616%_))
                                (let ((_%e200541200619%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl200540200616%_))))
                                  (let ((_%tl200543200624%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e200541200619%_)))
                                        (_%hd200542200622%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e200541200619%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd200542200622%_))
                                        (let ((_%e200544200627%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd200542200622%_))))
                                          (let ((_%tl200546200632%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e200544200627%_)))
                                                (_%hd200545200630%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e200544200627%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd200545200630%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       'lambda
                                                       _%hd200545200630%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl200546200632%_))
                                                        (let ((_%e200547200635%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl200546200632%_))))
                  (let ((_%tl200549200640%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e200547200635%_)))
                        (_%hd200548200638%_
                         (let ()
                           (declare (not safe))
                           (##car _%e200547200635%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%hd200548200638%_))
                        (let ((_%__splice206243206244%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice->vector
                                  _%hd200548200638%_
                                  '0))))
                          (let ((_%tl200552200645%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice206243206244%_ '1)))
                                (_%target200550200643%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _%__splice206243206244%_
                                    '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl200552200645%_))
                                (_%__match206306206307%_
                                 _%e200529200587%_
                                 _%hd200530200590%_
                                 _%tl200531200592%_
                                 _%e200532200595%_
                                 _%hd200533200598%_
                                 _%tl200534200600%_
                                 _%e200535200603%_
                                 _%hd200536200606%_
                                 _%tl200537200608%_
                                 _%e200538200611%_
                                 _%hd200539200614%_
                                 _%tl200540200616%_
                                 _%e200541200619%_
                                 _%hd200542200622%_
                                 _%tl200543200624%_
                                 _%e200544200627%_
                                 _%hd200545200630%_
                                 _%tl200546200632%_
                                 _%e200547200635%_
                                 _%hd200548200638%_
                                 _%tl200549200640%_
                                 _%__splice206243206244%_
                                 _%target200550200643%_
                                 _%tl200552200645%_)
                                (_%__kont206247206248%_))))
                        (_%__kont206247206248%_))))
                (_%__kont206247206248%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont206247206248%_))
                                                (_%__kont206247206248%_))))
                                        (_%__kont206247206248%_))))
                                (_%__kont206247206248%_))))
                        (_%__kont206247206248%_))))
                (_%__kont206247206248%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont206247206248%_))
                                            (_%__kont206247206248%_))
                                        (_%__kont206247206248%_))))
                                (_%__kont206247206248%_)))))))))
          (let* ((_%g200227200250%_
                  (lambda (_%g200228200247%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g200228200247%_))))
                 (_%g200226200509%_
                  (lambda (_%g200228200253%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g200228200253%_))
                        (let ((_%e200231200255%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g200228200253%_))))
                          (let ((_%hd200232200258%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e200231200255%_)))
                                (_%tl200233200260%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e200231200255%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl200233200260%_))
                                (let ((_%e200234200263%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl200233200260%_))))
                                  (let ((_%hd200235200266%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e200234200263%_)))
                                        (_%tl200236200268%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e200234200263%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl200236200268%_))
                                        (let ((_g206916_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl200236200268%_
                                                  '0))))
                                          (begin
                                            (let ((_g206917_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g206916_)
                                                         (##values-length
                                                          _g206916_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g206917_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g206917_)))
                                            (let ((_%target200237200271%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g206916_
                                                      0)))
                                                  (_%tl200239200273%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g206916_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl200239200273%_))
                                                  (letrec ((_%loop200240200276%_
                                                            (lambda (_%hd200238200279%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%rand200244200281%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd200238200279%_))
                          (let ((_%e200241200283%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd200238200279%_))))
                            (let ((_%lp-hd200242200286%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e200241200283%_)))
                                  (_%lp-tl200243200288%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e200241200283%_))))
                              (_%loop200240200276%_
                               _%lp-tl200243200288%_
                               (cons _%lp-hd200242200286%_
                                     _%rand200244200281%_))))
                          (let ((_%rand200245200291%_
                                 (reverse _%rand200244200281%_)))
                            ((lambda (_%g200229200293%_ _%g200230200294%_)
                               (if (gxc#current-compile-decls-unsafe?)
                                   (_%compile-call200225%_
                                    _%g200230200294%_
                                    (let ((__tmp206918
                                           (lambda (_%g200311200314%_
                                                    _%g200312200316%_)
                                             (cons _%g200311200314%_
                                                   _%g200312200316%_))))
                                      (declare (not safe))
                                      (foldr__0
                                       __tmp206918
                                       '()
                                       _%g200229200293%_)))
                                   (let* ((_%__stx206355206356%_
                                           _%g200230200294%_)
                                          (_%g200320200332%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%__stx206355206356%_)))))
                                     (let ((_%__kont206357206358%_
                                            (lambda ()
                                              (let ((_%f200369%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self200222%_
                                                        _%g200230200294%_))))
                                                (if (and (let ((__tmp206919
                                                                (symbol->string
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%f200369%_)))
                   (declare (not safe))
                   (##string-prefix? '"##" __tmp206919))
                 (not (let ()
                        (declare (not safe))
                        (##memq _%f200369%_ gxc#checked-primitives))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let _%lp200371%_ ((_%rest200374%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (reverse (let ((__tmp206921
                                                (lambda (_%g200491200494%_
                                                         _%g200492200496%_)
                                                  (cons _%g200491200494%_
                                                        _%g200492200496%_))))
                                           (declare (not safe))
                                           (foldr__0
                                            __tmp206921
                                            '()
                                            _%g200229200293%_))))
                               (_%bind200376%_ '())
                               (_%args200377%_ '()))
              (let* ((_%rest200378200386%_ _%rest200374%_)
                     (_%else200380200394%_
                      (lambda ()
                        (cons 'let
                              (cons _%bind200376%_
                                    (cons '(declare (not safe))
                                          (cons (cons _%f200369%_
                                                      _%args200377%_)
                                                '()))))))
                     (_%K200382200480%_
                      (lambda (_%rest200397%_ _%e200398%_)
                        (let* ((_%__stx206309206310%_ _%e200398%_)
                               (_%g200403200421%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%__stx206309206310%_)))))
                          (let ((_%__kont206311206312%_
                                 (lambda ()
                                   (_%lp200371%_
                                    _%rest200397%_
                                    _%bind200376%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e200398%_))
                                          _%args200377%_))))
                                (_%__kont206313206314%_
                                 (lambda ()
                                   (_%lp200371%_
                                    _%rest200397%_
                                    _%bind200376%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e200398%_))
                                          _%args200377%_))))
                                (_%__kont206315206316%_
                                 (lambda ()
                                   (let ((_%tmp200428%_
                                          (let ((__tmp206920
                                                 (let ()
                                                   (declare (not safe))
                                                   (##gensym '__tmp))))
                                            (declare (not safe))
                                            (make-symbol__0 __tmp206920))))
                                     (_%lp200371%_
                                      _%rest200397%_
                                      (cons (cons _%tmp200428%_
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__0
                                                           _%e200398%_))
                                                        '()))
                                            _%bind200376%_)
                                      (cons _%tmp200428%_ _%args200377%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx206309206310%_))
                                (let ((_%e200405200459%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx206309206310%_))))
                                  (let ((_%tl200407200464%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e200405200459%_)))
                                        (_%hd200406200462%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e200405200459%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd200406200462%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd200406200462%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl200407200464%_))
                                                (let ((_%e200408200467%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl200407200464%_))))
                                                  (let ((_%tl200410200472%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e200408200467%_)))
                                                        (_%hd200409200470%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e200408200467%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl200410200472%_))
                                                        (_%__kont206311206312%_)
                                                        (_%__kont206315206316%_))))
                                                (_%__kont206315206316%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#quote
                                                   _%hd200406200462%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl200407200464%_))
                                                    (let ((_%e200414200444%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl200407200464%_))))
                                                      (let ((_%tl200416200449%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e200414200444%_)))
                    (_%hd200415200447%_
                     (let () (declare (not safe)) (##car _%e200414200444%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl200416200449%_))
                    (_%__kont206313206314%_)
                    (_%__kont206315206316%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont206315206316%_))
                                                (_%__kont206315206316%_)))
                                        (_%__kont206315206316%_))))
                                (_%__kont206315206316%_)))))))
                (if (pair? _%rest200378200386%_)
                    (let ((_%hd200383200483%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest200378200386%_)))
                          (_%tl200384200485%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest200378200386%_))))
                      (let* ((_%e200488%_ _%hd200383200483%_)
                             (_%rest200490%_ _%tl200384200485%_))
                        (_%K200382200480%_ _%rest200490%_ _%e200488%_)))
                    (_%else200380200394%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%compile-call200225%_
                                                     _%g200230200294%_
                                                     (let ((__tmp206922
                                                            (lambda (_%g200498200501%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g200499200503%_)
                      (cons _%g200498200501%_ _%g200499200503%_))))
               (declare (not safe))
               (foldr__0 __tmp206922 '() _%g200229200293%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%__kont206359206360%_
                                            (lambda ()
                                              (_%compile-call200225%_
                                               _%g200230200294%_
                                               (let ((__tmp206923
                                                      (lambda (_%g200338200341%_
                                                               _%g200339200343%_)
                                                        (cons _%g200338200341%_
                                                              _%g200339200343%_))))
                                                 (declare (not safe))
                                                 (foldr__0
                                                  __tmp206923
                                                  '()
                                                  _%g200229200293%_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%__stx206355206356%_))
                                           (let ((_%e200322200351%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%__stx206355206356%_))))
                                             (let ((_%tl200324200356%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e200322200351%_)))
                                                   (_%hd200323200354%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e200322200351%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd200323200354%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#ref
                                                          _%hd200323200354%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl200324200356%_))
                                                           (let ((_%e200325200359%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl200324200356%_))))
                     (let ((_%tl200327200364%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e200325200359%_)))
                           (_%hd200326200362%_
                            (let ()
                              (declare (not safe))
                              (##car _%e200325200359%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl200327200364%_))
                           (_%__kont206357206358%_)
                           (_%__kont206359206360%_))))
                   (_%__kont206359206360%_))
               (_%__kont206359206360%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont206359206360%_))))
                                           (_%__kont206359206360%_))))))
                             _%rand200245200291%_
                             _%hd200235200266%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop200240200276%_
                                                     _%target200237200271%_
                                                     '()))
                                                  (_%g200227200250%_
                                                   _%g200228200253%_)))))
                                        (_%g200227200250%_
                                         _%g200228200253%_))))
                                (_%g200227200250%_ _%g200228200253%_))))
                        (_%g200227200250%_ _%g200228200253%_)))))
            (_%g200226200509%_ _%stx200223%_)))))
    (define gxc#generate-runtime-call-unchecked%
      (lambda (_%self199967%_ _%stx199968%_)
        (let* ((_%__stx206427206428%_ _%stx199968%_)
               (_%g199971200000%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx206427206428%_)))))
          (let ((_%__kont206429206430%_
                 (lambda (_%g199973200066%_ _%g199974200067%_)
                   (if (gxc#current-compile-decls-unsafe?)
                       (gxc#generate-runtime-call%
                        _%self199967%_
                        _%stx199968%_)
                       (let ((_%f200089%_
                              (let ((__tmp206924
                                     (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f '%#ref))
                                           (cons _%g199974200067%_ '()))))
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self199967%_
                                 __tmp206924))))
                         (let _%lp200091%_ ((_%rest200094%_
                                             (reverse (let ((__tmp206926
                                                             (lambda (_%g200211200214%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g200212200216%_)
                       (cons _%g200211200214%_ _%g200212200216%_))))
                (declare (not safe))
                (foldr__0 __tmp206926 '() _%g199973200066%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%bind200096%_ '())
                                            (_%args200097%_ '()))
                           (let* ((_%rest200098200106%_ _%rest200094%_)
                                  (_%else200100200114%_
                                   (lambda ()
                                     (cons 'let
                                           (cons _%bind200096%_
                                                 (cons '(declare (not safe))
                                                       (cons (cons _%f200089%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%args200097%_)
                     '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%K200102200200%_
                                   (lambda (_%rest200117%_ _%e200118%_)
                                     (let* ((_%__stx206381206382%_ _%e200118%_)
                                            (_%g200123200141%_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%__stx206381206382%_)))))
                                       (let ((_%__kont206383206384%_
                                              (lambda ()
                                                (_%lp200091%_
                                                 _%rest200117%_
                                                 _%bind200096%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e200118%_))
                                                       _%args200097%_))))
                                             (_%__kont206385206386%_
                                              (lambda ()
                                                (_%lp200091%_
                                                 _%rest200117%_
                                                 _%bind200096%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e200118%_))
                                                       _%args200097%_))))
                                             (_%__kont206387206388%_
                                              (lambda ()
                                                (let ((_%tmp200148%_
                                                       (let ((__tmp206925
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##gensym '__tmp))))
                 (declare (not safe))
                 (make-symbol__0 __tmp206925))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%lp200091%_
                                                   _%rest200117%_
                                                   (cons (cons _%tmp200148%_
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__0 _%e200118%_))
                             '()))
                 _%bind200096%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _%tmp200148%_
                                                         _%args200097%_))))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%__stx206381206382%_))
                                             (let ((_%e200125200179%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%__stx206381206382%_))))
                                               (let ((_%tl200127200184%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e200125200179%_)))
                                                     (_%hd200126200182%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e200125200179%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd200126200182%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#ref
                                                            _%hd200126200182%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl200127200184%_))
                     (let ((_%e200128200187%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl200127200184%_))))
                       (let ((_%tl200130200192%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e200128200187%_)))
                             (_%hd200129200190%_
                              (let ()
                                (declare (not safe))
                                (##car _%e200128200187%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl200130200192%_))
                             (_%__kont206383206384%_)
                             (_%__kont206387206388%_))))
                     (_%__kont206387206388%_))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-eq? '%#quote _%hd200126200182%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl200127200184%_))
                         (let ((_%e200134200164%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl200127200184%_))))
                           (let ((_%tl200136200169%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e200134200164%_)))
                                 (_%hd200135200167%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e200134200164%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl200136200169%_))
                                 (_%__kont206385206386%_)
                                 (_%__kont206387206388%_))))
                         (_%__kont206387206388%_))
                     (_%__kont206387206388%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont206387206388%_))))
                                             (_%__kont206387206388%_)))))))
                             (if (pair? _%rest200098200106%_)
                                 (let ((_%hd200103200203%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%rest200098200106%_)))
                                       (_%tl200104200205%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest200098200106%_))))
                                   (let* ((_%e200208%_ _%hd200103200203%_)
                                          (_%rest200210%_ _%tl200104200205%_))
                                     (_%K200102200200%_
                                      _%rest200210%_
                                      _%e200208%_)))
                                 (_%else200100200114%_))))))))
                (_%__kont206433206434%_
                 (lambda ()
                   (gxc#generate-runtime-call% _%self199967%_ _%stx199968%_))))
            (let ((_%__match206472206473%_
                   (lambda (_%e199975200012%_
                            _%hd199976200015%_
                            _%tl199977200017%_
                            _%e199978200020%_
                            _%hd199979200023%_
                            _%tl199980200025%_
                            _%e199981200028%_
                            _%hd199982200031%_
                            _%tl199983200033%_
                            _%e199984200036%_
                            _%hd199985200039%_
                            _%tl199986200041%_
                            _%__splice206431206432%_
                            _%target199987200044%_
                            _%tl199989200046%_)
                     (letrec ((_%loop199990200049%_
                               (lambda (_%hd199988200052%_
                                        _%rand199994200054%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd199988200052%_))
                                     (let ((_%e199991200056%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd199988200052%_))))
                                       (let ((_%lp-tl199993200061%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e199991200056%_)))
                                             (_%lp-hd199992200059%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e199991200056%_))))
                                         (_%loop199990200049%_
                                          _%lp-tl199993200061%_
                                          (cons _%lp-hd199992200059%_
                                                _%rand199994200054%_))))
                                     (let ((_%rand199995200064%_
                                            (reverse _%rand199994200054%_)))
                                       (_%__kont206429206430%_
                                        _%rand199995200064%_
                                        _%hd199985200039%_))))))
                       (_%loop199990200049%_ _%target199987200044%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx206427206428%_))
                  (let ((_%e199975200012%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx206427206428%_))))
                    (let ((_%tl199977200017%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e199975200012%_)))
                          (_%hd199976200015%_
                           (let ()
                             (declare (not safe))
                             (##car _%e199975200012%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl199977200017%_))
                          (let ((_%e199978200020%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl199977200017%_))))
                            (let ((_%tl199980200025%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e199978200020%_)))
                                  (_%hd199979200023%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e199978200020%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd199979200023%_))
                                  (let ((_%e199981200028%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd199979200023%_))))
                                    (let ((_%tl199983200033%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e199981200028%_)))
                                          (_%hd199982200031%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e199981200028%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd199982200031%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd199982200031%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl199983200033%_))
                                                  (let ((_%e199984200036%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl199983200033%_))))
                                                    (let ((_%tl199986200041%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e199984200036%_)))
                                                          (_%hd199985200039%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e199984200036%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl199986200041%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl199980200025%_))
                      (let ((_%__splice206431206432%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl199980200025%_
                                '0))))
                        (let ((_%tl199989200046%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice206431206432%_ '1)))
                              (_%target199987200044%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice206431206432%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl199989200046%_))
                              (_%__match206472206473%_
                               _%e199975200012%_
                               _%hd199976200015%_
                               _%tl199977200017%_
                               _%e199978200020%_
                               _%hd199979200023%_
                               _%tl199980200025%_
                               _%e199981200028%_
                               _%hd199982200031%_
                               _%tl199983200033%_
                               _%e199984200036%_
                               _%hd199985200039%_
                               _%tl199986200041%_
                               _%__splice206431206432%_
                               _%target199987200044%_
                               _%tl199989200046%_)
                              (_%__kont206433206434%_))))
                      (_%__kont206433206434%_))
                  (_%__kont206433206434%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont206433206434%_))
                                              (_%__kont206433206434%_))
                                          (_%__kont206433206434%_))))
                                  (_%__kont206433206434%_))))
                          (_%__kont206433206434%_))))
                  (_%__kont206433206434%_)))))))
    (define gxc#generate-runtime-if%
      (lambda (_%self199779%_ _%stx199780%_)
        (letrec ((_%simplify199782%_
                  (lambda (_%code199867%_)
                    (let* ((_%code199868199886%_ _%code199867%_)
                           (_%else199870199894%_ (lambda () _%code199867%_))
                           (_%K199872199930%_
                            (lambda (_%expr199897%_ _%test199898%_)
                              (let* ((_%expr199899199907%_ _%expr199897%_)
                                     (_%else199901199915%_
                                      (lambda ()
                                        (cons 'and
                                              (cons _%test199898%_
                                                    (cons _%expr199897%_
                                                          '())))))
                                     (_%K199903199920%_
                                      (lambda (_%exprs199918%_)
                                        (cons 'and
                                              (cons _%test199898%_
                                                    _%exprs199918%_)))))
                                (if (pair? _%expr199899199907%_)
                                    (let ((_%hd199904199923%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%expr199899199907%_)))
                                          (_%tl199905199925%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%expr199899199907%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _%hd199904199923%_ 'and))
                                          (let ((_%exprs199928%_
                                                 _%tl199905199925%_))
                                            (_%K199903199920%_
                                             _%exprs199928%_))
                                          (_%else199901199915%_)))
                                    (_%else199901199915%_))))))
                      (if (pair? _%code199868199886%_)
                          (let ((_%hd199873199933%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%code199868199886%_)))
                                (_%tl199874199935%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%code199868199886%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##eq? _%hd199873199933%_ 'if))
                                (if (pair? _%tl199874199935%_)
                                    (let ((_%hd199875199938%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl199874199935%_)))
                                          (_%tl199876199940%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl199874199935%_))))
                                      (let ((_%test199943%_
                                             _%hd199875199938%_))
                                        (if (pair? _%tl199876199940%_)
                                            (let ((_%hd199877199945%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl199876199940%_)))
                                                  (_%tl199878199947%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl199876199940%_))))
                                              (let ((_%expr199950%_
                                                     _%hd199877199945%_))
                                                (if (pair? _%tl199878199947%_)
                                                    (let ((_%hd199879199952%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl199878199947%_)))
                                                          (_%tl199880199954%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl199878199947%_))))
                                                      (if (pair? _%hd199879199952%_)
                                                          (let ((_%hd199881199957%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%hd199879199952%_)))
                        (_%tl199882199959%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%hd199879199952%_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _%hd199881199957%_ 'quote))
                        (if (pair? _%tl199882199959%_)
                            (let ((_%hd199883199962%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%tl199882199959%_)))
                                  (_%tl199884199964%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%tl199882199959%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd199883199962%_ '#f))
                                  (if (null? _%tl199884199964%_)
                                      (if (null? _%tl199880199954%_)
                                          (_%K199872199930%_
                                           _%expr199950%_
                                           _%test199943%_)
                                          (_%else199870199894%_))
                                      (_%else199870199894%_))
                                  (_%else199870199894%_)))
                            (_%else199870199894%_))
                        (_%else199870199894%_)))
                  (_%else199870199894%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else199870199894%_))))
                                            (_%else199870199894%_))))
                                    (_%else199870199894%_))
                                (_%else199870199894%_)))
                          (_%else199870199894%_))))))
          (let* ((_%g199784199805%_
                  (lambda (_%g199785199802%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g199785199802%_))))
                 (_%g199783199864%_
                  (lambda (_%g199785199808%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g199785199808%_))
                        (let ((_%e199789199810%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g199785199808%_))))
                          (let ((_%hd199790199813%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e199789199810%_)))
                                (_%tl199791199815%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e199789199810%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl199791199815%_))
                                (let ((_%e199792199818%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl199791199815%_))))
                                  (let ((_%hd199793199821%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e199792199818%_)))
                                        (_%tl199794199823%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e199792199818%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl199794199823%_))
                                        (let ((_%e199795199826%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl199794199823%_))))
                                          (let ((_%hd199796199829%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e199795199826%_)))
                                                (_%tl199797199831%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e199795199826%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl199797199831%_))
                                                (let ((_%e199798199834%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl199797199831%_))))
                                                  (let ((_%hd199799199837%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e199798199834%_)))
                                                        (_%tl199800199839%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e199798199834%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl199800199839%_))
                                                        ((lambda (_%g199786199842%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g199787199843%_
                          _%g199788199844%_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#current-compile-boolean-context))
                       (_%simplify199782%_
                        (cons 'if
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _%self199779%_
                                       _%g199788199844%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self199779%_
                                             _%g199787199843%_))
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self199779%_
                                                   _%g199786199842%_))
                                                '())))))
                       (cons 'if
                             (cons (let ((__tmp206927
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self199779%_
                                               _%g199788199844%_)))))
                                     (declare (not safe))
                                     (call-with-parameters__1
                                      __tmp206927
                                      gxc#current-compile-boolean-context
                                      '#t))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self199779%_
                                            _%g199787199843%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self199779%_
                                                  _%g199786199842%_))
                                               '()))))))
                 _%hd199799199837%_
                 _%hd199796199829%_
                 _%hd199793199821%_)
                (_%g199784199805%_ _%g199785199808%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g199784199805%_
                                                 _%g199785199808%_))))
                                        (_%g199784199805%_
                                         _%g199785199808%_))))
                                (_%g199784199805%_ _%g199785199808%_))))
                        (_%g199784199805%_ _%g199785199808%_)))))
            (_%g199783199864%_ _%stx199780%_)))))
    (define gxc#generate-runtime-ref%
      (lambda (_%self199727%_ _%stx199728%_)
        (let* ((_%g199730199743%_
                (lambda (_%g199731199740%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g199731199740%_))))
               (_%g199729199776%_
                (lambda (_%g199731199746%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g199731199746%_))
                      (let ((_%e199733199748%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g199731199746%_))))
                        (let ((_%hd199734199751%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199733199748%_)))
                              (_%tl199735199753%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199733199748%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl199735199753%_))
                              (let ((_%e199736199756%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl199735199753%_))))
                                (let ((_%hd199737199759%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199736199756%_)))
                                      (_%tl199738199761%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199736199756%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl199738199761%_))
                                      ((lambda (_%g199732199764%_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#generate-runtime-binding-id
                                            _%g199732199764%_)))
                                       _%hd199737199759%_)
                                      (_%g199730199743%_ _%g199731199746%_))))
                              (_%g199730199743%_ _%g199731199746%_))))
                      (_%g199730199743%_ _%g199731199746%_)))))
          (_%g199729199776%_ _%stx199728%_))))
    (define gxc#generate-runtime-setq%
      (lambda (_%self199659%_ _%stx199660%_)
        (let* ((_%g199662199679%_
                (lambda (_%g199663199676%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g199663199676%_))))
               (_%g199661199724%_
                (lambda (_%g199663199682%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g199663199682%_))
                      (let ((_%e199666199684%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g199663199682%_))))
                        (let ((_%hd199667199687%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199666199684%_)))
                              (_%tl199668199689%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199666199684%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl199668199689%_))
                              (let ((_%e199669199692%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl199668199689%_))))
                                (let ((_%hd199670199695%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199669199692%_)))
                                      (_%tl199671199697%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199669199692%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl199671199697%_))
                                      (let ((_%e199672199700%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl199671199697%_))))
                                        (let ((_%hd199673199703%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e199672199700%_)))
                                              (_%tl199674199705%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e199672199700%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl199674199705%_))
                                              ((lambda (_%g199664199708%_
                                                        _%g199665199709%_)
                                                 (cons 'set!
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#generate-runtime-binding-id _%g199665199709%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self199659%_
                              _%g199664199708%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd199673199703%_
                                               _%hd199670199695%_)
                                              (_%g199662199679%_
                                               _%g199663199682%_))))
                                      (_%g199662199679%_ _%g199663199682%_))))
                              (_%g199662199679%_ _%g199663199682%_))))
                      (_%g199662199679%_ _%g199663199682%_)))))
          (_%g199661199724%_ _%stx199660%_))))
    (define gxc#generate-runtime-struct-instancep%
      (lambda (_%self199470%_ _%stx199471%_)
        (let* ((_%g199473199490%_
                (lambda (_%g199474199487%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g199474199487%_))))
               (_%g199472199656%_
                (lambda (_%g199474199493%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g199474199493%_))
                      (let ((_%e199477199495%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g199474199493%_))))
                        (let ((_%hd199478199498%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199477199495%_)))
                              (_%tl199479199500%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199477199495%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl199479199500%_))
                              (let ((_%e199480199503%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl199479199500%_))))
                                (let ((_%hd199481199506%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199480199503%_)))
                                      (_%tl199482199508%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199480199503%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl199482199508%_))
                                      (let ((_%e199483199511%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl199482199508%_))))
                                        (let ((_%hd199484199514%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e199483199511%_)))
                                              (_%tl199485199516%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e199483199511%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl199485199516%_))
                                              ((lambda (_%g199475199519%_
                                                        _%g199476199520%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self199470%_ _%g199475199519%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self199470%_
                                  _%g199476199520%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp199535%_ ((_%rest199538%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%g199476199520%_
                                       (cons _%g199475199519%_ '())))
                                (_%bind199540%_ '())
                                (_%args199541%_ '()))
               (let* ((_%rest199542199550%_ _%rest199538%_)
                      (_%else199544199558%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind199540%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-instance-of?
                                                       _%args199541%_)
                                                 '()))))))
                      (_%K199546199644%_
                       (lambda (_%rest199561%_ _%e199562%_)
                         (let* ((_%__stx206475206476%_ _%e199562%_)
                                (_%g199567199585%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx206475206476%_)))))
                           (let ((_%__kont206477206478%_
                                  (lambda ()
                                    (_%lp199535%_
                                     _%rest199561%_
                                     _%bind199540%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e199562%_))
                                           _%args199541%_))))
                                 (_%__kont206479206480%_
                                  (lambda ()
                                    (_%lp199535%_
                                     _%rest199561%_
                                     _%bind199540%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e199562%_))
                                           _%args199541%_))))
                                 (_%__kont206481206482%_
                                  (lambda ()
                                    (let ((_%tmp199592%_
                                           (let ((__tmp206928
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp206928))))
                                      (_%lp199535%_
                                       _%rest199561%_
                                       (cons (cons _%tmp199592%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e199562%_))
                                                         '()))
                                             _%bind199540%_)
                                       (cons _%tmp199592%_ _%args199541%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx206475206476%_))
                                 (let ((_%e199569199623%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx206475206476%_))))
                                   (let ((_%tl199571199628%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e199569199623%_)))
                                         (_%hd199570199626%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e199569199623%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd199570199626%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd199570199626%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl199571199628%_))
                                                 (let ((_%e199572199631%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl199571199628%_))))
                                                   (let ((_%tl199574199636%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e199572199631%_)))
                                                         (_%hd199573199634%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e199572199631%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl199574199636%_))
                                                         (_%__kont206477206478%_)
                                                         (_%__kont206481206482%_))))
                                                 (_%__kont206481206482%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd199570199626%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl199571199628%_))
                                                     (let ((_%e199578199608%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl199571199628%_))))
                                                       (let ((_%tl199580199613%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e199578199608%_)))
                     (_%hd199579199611%_
                      (let () (declare (not safe)) (##car _%e199578199608%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl199580199613%_))
                     (_%__kont206479206480%_)
                     (_%__kont206481206482%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont206481206482%_))
                                                 (_%__kont206481206482%_)))
                                         (_%__kont206481206482%_))))
                                 (_%__kont206481206482%_)))))))
                 (if (pair? _%rest199542199550%_)
                     (let ((_%hd199547199647%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest199542199550%_)))
                           (_%tl199548199649%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest199542199550%_))))
                       (let* ((_%e199652%_ _%hd199547199647%_)
                              (_%rest199654%_ _%tl199548199649%_))
                         (_%K199546199644%_ _%rest199654%_ _%e199652%_)))
                     (_%else199544199558%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd199484199514%_
                                               _%hd199481199506%_)
                                              (_%g199473199490%_
                                               _%g199474199493%_))))
                                      (_%g199473199490%_ _%g199474199493%_))))
                              (_%g199473199490%_ _%g199474199493%_))))
                      (_%g199473199490%_ _%g199474199493%_)))))
          (_%g199472199656%_ _%stx199471%_))))
    (define gxc#generate-runtime-struct-direct-instancep%
      (lambda (_%self199281%_ _%stx199282%_)
        (let* ((_%g199284199301%_
                (lambda (_%g199285199298%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g199285199298%_))))
               (_%g199283199467%_
                (lambda (_%g199285199304%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g199285199304%_))
                      (let ((_%e199288199306%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g199285199304%_))))
                        (let ((_%hd199289199309%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199288199306%_)))
                              (_%tl199290199311%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199288199306%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl199290199311%_))
                              (let ((_%e199291199314%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl199290199311%_))))
                                (let ((_%hd199292199317%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199291199314%_)))
                                      (_%tl199293199319%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199291199314%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl199293199319%_))
                                      (let ((_%e199294199322%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl199293199319%_))))
                                        (let ((_%hd199295199325%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e199294199322%_)))
                                              (_%tl199296199327%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e199294199322%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl199296199327%_))
                                              ((lambda (_%g199286199330%_
                                                        _%g199287199331%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-direct-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self199281%_ _%g199286199330%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self199281%_
                                  _%g199287199331%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp199346%_ ((_%rest199349%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%g199287199331%_
                                       (cons _%g199286199330%_ '())))
                                (_%bind199351%_ '())
                                (_%args199352%_ '()))
               (let* ((_%rest199353199361%_ _%rest199349%_)
                      (_%else199355199369%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind199351%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-direct-instance-of?
                                                       _%args199352%_)
                                                 '()))))))
                      (_%K199357199455%_
                       (lambda (_%rest199372%_ _%e199373%_)
                         (let* ((_%__stx206521206522%_ _%e199373%_)
                                (_%g199378199396%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx206521206522%_)))))
                           (let ((_%__kont206523206524%_
                                  (lambda ()
                                    (_%lp199346%_
                                     _%rest199372%_
                                     _%bind199351%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e199373%_))
                                           _%args199352%_))))
                                 (_%__kont206525206526%_
                                  (lambda ()
                                    (_%lp199346%_
                                     _%rest199372%_
                                     _%bind199351%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e199373%_))
                                           _%args199352%_))))
                                 (_%__kont206527206528%_
                                  (lambda ()
                                    (let ((_%tmp199403%_
                                           (let ((__tmp206929
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp206929))))
                                      (_%lp199346%_
                                       _%rest199372%_
                                       (cons (cons _%tmp199403%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e199373%_))
                                                         '()))
                                             _%bind199351%_)
                                       (cons _%tmp199403%_ _%args199352%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx206521206522%_))
                                 (let ((_%e199380199434%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx206521206522%_))))
                                   (let ((_%tl199382199439%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e199380199434%_)))
                                         (_%hd199381199437%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e199380199434%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd199381199437%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd199381199437%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl199382199439%_))
                                                 (let ((_%e199383199442%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl199382199439%_))))
                                                   (let ((_%tl199385199447%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e199383199442%_)))
                                                         (_%hd199384199445%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e199383199442%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl199385199447%_))
                                                         (_%__kont206523206524%_)
                                                         (_%__kont206527206528%_))))
                                                 (_%__kont206527206528%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd199381199437%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl199382199439%_))
                                                     (let ((_%e199389199419%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl199382199439%_))))
                                                       (let ((_%tl199391199424%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e199389199419%_)))
                     (_%hd199390199422%_
                      (let () (declare (not safe)) (##car _%e199389199419%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl199391199424%_))
                     (_%__kont206525206526%_)
                     (_%__kont206527206528%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont206527206528%_))
                                                 (_%__kont206527206528%_)))
                                         (_%__kont206527206528%_))))
                                 (_%__kont206527206528%_)))))))
                 (if (pair? _%rest199353199361%_)
                     (let ((_%hd199358199458%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest199353199361%_)))
                           (_%tl199359199460%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest199353199361%_))))
                       (let* ((_%e199463%_ _%hd199358199458%_)
                              (_%rest199465%_ _%tl199359199460%_))
                         (_%K199357199455%_ _%rest199465%_ _%e199463%_)))
                     (_%else199355199369%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd199295199325%_
                                               _%hd199292199317%_)
                                              (_%g199284199301%_
                                               _%g199285199304%_))))
                                      (_%g199284199301%_ _%g199285199304%_))))
                              (_%g199284199301%_ _%g199285199304%_))))
                      (_%g199284199301%_ _%g199285199304%_)))))
          (_%g199283199467%_ _%stx199282%_))))
    (define gxc#generate-runtime-struct-ref%
      (lambda (_%self199197%_ _%stx199198%_)
        (let* ((_%g199200199221%_
                (lambda (_%g199201199218%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g199201199218%_))))
               (_%g199199199278%_
                (lambda (_%g199201199224%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g199201199224%_))
                      (let ((_%e199205199226%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g199201199224%_))))
                        (let ((_%hd199206199229%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199205199226%_)))
                              (_%tl199207199231%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199205199226%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl199207199231%_))
                              (let ((_%e199208199234%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl199207199231%_))))
                                (let ((_%hd199209199237%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199208199234%_)))
                                      (_%tl199210199239%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199208199234%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl199210199239%_))
                                      (let ((_%e199211199242%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl199210199239%_))))
                                        (let ((_%hd199212199245%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e199211199242%_)))
                                              (_%tl199213199247%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e199211199242%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl199213199247%_))
                                              (let ((_%e199214199250%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl199213199247%_))))
                                                (let ((_%hd199215199253%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e199214199250%_)))
                                                      (_%tl199216199255%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e199214199250%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl199216199255%_))
                                                      ((lambda (_%g199202199258%_
                                                                _%g199203199259%_
                                                                _%g199204199260%_)
                                                         (cons '##structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1
                                _%self199197%_
                                _%g199202199258%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self199197%_
                                      _%g199203199259%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self199197%_
                                            _%g199204199260%_))
                                         (cons ''#f '()))))))
               _%hd199215199253%_
               _%hd199212199245%_
               _%hd199209199237%_)
              (_%g199200199221%_ _%g199201199224%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g199200199221%_
                                               _%g199201199224%_))))
                                      (_%g199200199221%_ _%g199201199224%_))))
                              (_%g199200199221%_ _%g199201199224%_))))
                      (_%g199200199221%_ _%g199201199224%_)))))
          (_%g199199199278%_ _%stx199198%_))))
    (define gxc#generate-runtime-struct-setq%
      (lambda (_%self199097%_ _%stx199098%_)
        (let* ((_%g199100199125%_
                (lambda (_%g199101199122%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g199101199122%_))))
               (_%g199099199194%_
                (lambda (_%g199101199128%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g199101199128%_))
                      (let ((_%e199106199130%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g199101199128%_))))
                        (let ((_%hd199107199133%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199106199130%_)))
                              (_%tl199108199135%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199106199130%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl199108199135%_))
                              (let ((_%e199109199138%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl199108199135%_))))
                                (let ((_%hd199110199141%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199109199138%_)))
                                      (_%tl199111199143%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199109199138%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl199111199143%_))
                                      (let ((_%e199112199146%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl199111199143%_))))
                                        (let ((_%hd199113199149%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e199112199146%_)))
                                              (_%tl199114199151%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e199112199146%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl199114199151%_))
                                              (let ((_%e199115199154%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl199114199151%_))))
                                                (let ((_%hd199116199157%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e199115199154%_)))
                                                      (_%tl199117199159%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e199115199154%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl199117199159%_))
                                                      (let ((_%e199118199162%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl199117199159%_))))
                (let ((_%hd199119199165%_
                       (let () (declare (not safe)) (##car _%e199118199162%_)))
                      (_%tl199120199167%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e199118199162%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl199120199167%_))
                      ((lambda (_%g199102199170%_
                                _%g199103199171%_
                                _%g199104199172%_
                                _%g199105199173%_)
                         (cons '##structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self199097%_
                                        _%g199103199171%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self199097%_
                                              _%g199102199170%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self199097%_
                                                    _%g199104199172%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self199097%_
                                                          _%g199105199173%_))
                                                       (cons ''#f '())))))))
                       _%hd199119199165%_
                       _%hd199116199157%_
                       _%hd199113199149%_
                       _%hd199110199141%_)
                      (_%g199100199125%_ _%g199101199128%_))))
              (_%g199100199125%_ _%g199101199128%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g199100199125%_
                                               _%g199101199128%_))))
                                      (_%g199100199125%_ _%g199101199128%_))))
                              (_%g199100199125%_ _%g199101199128%_))))
                      (_%g199100199125%_ _%g199101199128%_)))))
          (_%g199099199194%_ _%stx199098%_))))
    (define gxc#generate-runtime-struct-direct-ref%
      (lambda (_%self199013%_ _%stx199014%_)
        (let* ((_%g199016199037%_
                (lambda (_%g199017199034%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g199017199034%_))))
               (_%g199015199094%_
                (lambda (_%g199017199040%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g199017199040%_))
                      (let ((_%e199021199042%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g199017199040%_))))
                        (let ((_%hd199022199045%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199021199042%_)))
                              (_%tl199023199047%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199021199042%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl199023199047%_))
                              (let ((_%e199024199050%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl199023199047%_))))
                                (let ((_%hd199025199053%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199024199050%_)))
                                      (_%tl199026199055%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199024199050%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl199026199055%_))
                                      (let ((_%e199027199058%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl199026199055%_))))
                                        (let ((_%hd199028199061%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e199027199058%_)))
                                              (_%tl199029199063%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e199027199058%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl199029199063%_))
                                              (let ((_%e199030199066%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl199029199063%_))))
                                                (let ((_%hd199031199069%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e199030199066%_)))
                                                      (_%tl199032199071%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e199030199066%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl199032199071%_))
                                                      ((lambda (_%g199018199074%_
                                                                _%g199019199075%_
                                                                _%g199020199076%_)
                                                         (cons '##direct-structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1
                                _%self199013%_
                                _%g199018199074%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self199013%_
                                      _%g199019199075%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self199013%_
                                            _%g199020199076%_))
                                         (cons ''#f '()))))))
               _%hd199031199069%_
               _%hd199028199061%_
               _%hd199025199053%_)
              (_%g199016199037%_ _%g199017199040%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g199016199037%_
                                               _%g199017199040%_))))
                                      (_%g199016199037%_ _%g199017199040%_))))
                              (_%g199016199037%_ _%g199017199040%_))))
                      (_%g199016199037%_ _%g199017199040%_)))))
          (_%g199015199094%_ _%stx199014%_))))
    (define gxc#generate-runtime-struct-direct-setq%
      (lambda (_%self198913%_ _%stx198914%_)
        (let* ((_%g198916198941%_
                (lambda (_%g198917198938%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198917198938%_))))
               (_%g198915199010%_
                (lambda (_%g198917198944%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198917198944%_))
                      (let ((_%e198922198946%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g198917198944%_))))
                        (let ((_%hd198923198949%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198922198946%_)))
                              (_%tl198924198951%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198922198946%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198924198951%_))
                              (let ((_%e198925198954%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl198924198951%_))))
                                (let ((_%hd198926198957%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198925198954%_)))
                                      (_%tl198927198959%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198925198954%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl198927198959%_))
                                      (let ((_%e198928198962%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl198927198959%_))))
                                        (let ((_%hd198929198965%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198928198962%_)))
                                              (_%tl198930198967%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198928198962%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl198930198967%_))
                                              (let ((_%e198931198970%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl198930198967%_))))
                                                (let ((_%hd198932198973%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e198931198970%_)))
                                                      (_%tl198933198975%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e198931198970%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl198933198975%_))
                                                      (let ((_%e198934198978%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl198933198975%_))))
                (let ((_%hd198935198981%_
                       (let () (declare (not safe)) (##car _%e198934198978%_)))
                      (_%tl198936198983%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e198934198978%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl198936198983%_))
                      ((lambda (_%g198918198986%_
                                _%g198919198987%_
                                _%g198920198988%_
                                _%g198921198989%_)
                         (cons '##direct-structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self198913%_
                                        _%g198919198987%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self198913%_
                                              _%g198918198986%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self198913%_
                                                    _%g198920198988%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self198913%_
                                                          _%g198921198989%_))
                                                       (cons ''#f '())))))))
                       _%hd198935198981%_
                       _%hd198932198973%_
                       _%hd198929198965%_
                       _%hd198926198957%_)
                      (_%g198916198941%_ _%g198917198944%_))))
              (_%g198916198941%_ _%g198917198944%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g198916198941%_
                                               _%g198917198944%_))))
                                      (_%g198916198941%_ _%g198917198944%_))))
                              (_%g198916198941%_ _%g198917198944%_))))
                      (_%g198916198941%_ _%g198917198944%_)))))
          (_%g198915199010%_ _%stx198914%_))))
    (define gxc#generate-runtime-struct-unchecked-ref%
      (lambda (_%self198708%_ _%stx198709%_)
        (let* ((_%g198711198732%_
                (lambda (_%g198712198729%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198712198729%_))))
               (_%g198710198910%_
                (lambda (_%g198712198735%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198712198735%_))
                      (let ((_%e198716198737%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g198712198735%_))))
                        (let ((_%hd198717198740%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198716198737%_)))
                              (_%tl198718198742%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198716198737%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198718198742%_))
                              (let ((_%e198719198745%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl198718198742%_))))
                                (let ((_%hd198720198748%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198719198745%_)))
                                      (_%tl198721198750%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198719198745%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl198721198750%_))
                                      (let ((_%e198722198753%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl198721198750%_))))
                                        (let ((_%hd198723198756%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198722198753%_)))
                                              (_%tl198724198758%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198722198753%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl198724198758%_))
                                              (let ((_%e198725198761%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl198724198758%_))))
                                                (let ((_%hd198726198764%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e198725198761%_)))
                                                      (_%tl198727198766%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e198725198761%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl198727198766%_))
                                                      ((lambda (_%g198713198769%_
                                                                _%g198714198770%_
                                                                _%g198715198771%_)
                                                         (if (gxc#current-compile-decls-unsafe?)
                                                             (cons '##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__1
                                    _%self198708%_
                                    _%g198713198769%_))
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self198708%_
                                          _%g198714198770%_))
                                       (cons ''#f (cons ''#f '())))))
                     (let _%lp198789%_ ((_%rest198792%_
                                         (cons _%g198714198770%_
                                               (cons _%g198713198769%_ '())))
                                        (_%bind198794%_ '())
                                        (_%args198795%_ '()))
                       (let* ((_%rest198796198804%_ _%rest198792%_)
                              (_%else198798198812%_
                               (lambda ()
                                 (cons 'let
                                       (cons _%bind198794%_
                                             (cons '(declare (not safe))
                                                   (cons (cons '##unchecked-structure-ref
                                                               (let ((__tmp206930
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons ''#f (cons ''#f '()))))
                         (declare (not safe))
                         (foldr__0 cons __tmp206930 _%args198795%_)))
                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%K198800198898%_
                               (lambda (_%rest198815%_ _%e198816%_)
                                 (let* ((_%__stx206567206568%_ _%e198816%_)
                                        (_%g198821198839%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx206567206568%_)))))
                                   (let ((_%__kont206569206570%_
                                          (lambda ()
                                            (_%lp198789%_
                                             _%rest198815%_
                                             _%bind198794%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e198816%_))
                                                   _%args198795%_))))
                                         (_%__kont206571206572%_
                                          (lambda ()
                                            (_%lp198789%_
                                             _%rest198815%_
                                             _%bind198794%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e198816%_))
                                                   _%args198795%_))))
                                         (_%__kont206573206574%_
                                          (lambda ()
                                            (let ((_%tmp198846%_
                                                   (let ((__tmp206931
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym
                                                             '__tmp))))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp206931))))
                                              (_%lp198789%_
                                               _%rest198815%_
                                               (cons (cons _%tmp198846%_
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__0 _%e198816%_))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind198794%_)
                                               (cons _%tmp198846%_
                                                     _%args198795%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx206567206568%_))
                                         (let ((_%e198823198877%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx206567206568%_))))
                                           (let ((_%tl198825198882%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e198823198877%_)))
                                                 (_%hd198824198880%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e198823198877%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd198824198880%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#ref
                                                        _%hd198824198880%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl198825198882%_))
                                                         (let ((_%e198826198885%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl198825198882%_))))
                   (let ((_%tl198828198890%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e198826198885%_)))
                         (_%hd198827198888%_
                          (let ()
                            (declare (not safe))
                            (##car _%e198826198885%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl198828198890%_))
                         (_%__kont206569206570%_)
                         (_%__kont206573206574%_))))
                 (_%__kont206573206574%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#quote
                                                            _%hd198824198880%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl198825198882%_))
                     (let ((_%e198832198862%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl198825198882%_))))
                       (let ((_%tl198834198867%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e198832198862%_)))
                             (_%hd198833198865%_
                              (let ()
                                (declare (not safe))
                                (##car _%e198832198862%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl198834198867%_))
                             (_%__kont206571206572%_)
                             (_%__kont206573206574%_))))
                     (_%__kont206573206574%_))
                 (_%__kont206573206574%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont206573206574%_))))
                                         (_%__kont206573206574%_)))))))
                         (if (pair? _%rest198796198804%_)
                             (let ((_%hd198801198901%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest198796198804%_)))
                                   (_%tl198802198903%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest198796198804%_))))
                               (let* ((_%e198906%_ _%hd198801198901%_)
                                      (_%rest198908%_ _%tl198802198903%_))
                                 (_%K198800198898%_
                                  _%rest198908%_
                                  _%e198906%_)))
                             (_%else198798198812%_))))))
               _%hd198726198764%_
               _%hd198723198756%_
               _%hd198720198748%_)
              (_%g198711198732%_ _%g198712198735%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g198711198732%_
                                               _%g198712198735%_))))
                                      (_%g198711198732%_ _%g198712198735%_))))
                              (_%g198711198732%_ _%g198712198735%_))))
                      (_%g198711198732%_ _%g198712198735%_)))))
          (_%g198710198910%_ _%stx198709%_))))
    (define gxc#generate-runtime-struct-unchecked-setq%
      (lambda (_%self198487%_ _%stx198488%_)
        (let* ((_%g198490198515%_
                (lambda (_%g198491198512%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198491198512%_))))
               (_%g198489198705%_
                (lambda (_%g198491198518%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198491198518%_))
                      (let ((_%e198496198520%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g198491198518%_))))
                        (let ((_%hd198497198523%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198496198520%_)))
                              (_%tl198498198525%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198496198520%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198498198525%_))
                              (let ((_%e198499198528%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl198498198525%_))))
                                (let ((_%hd198500198531%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198499198528%_)))
                                      (_%tl198501198533%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198499198528%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl198501198533%_))
                                      (let ((_%e198502198536%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl198501198533%_))))
                                        (let ((_%hd198503198539%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198502198536%_)))
                                              (_%tl198504198541%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198502198536%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl198504198541%_))
                                              (let ((_%e198505198544%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl198504198541%_))))
                                                (let ((_%hd198506198547%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e198505198544%_)))
                                                      (_%tl198507198549%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e198505198544%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl198507198549%_))
                                                      (let ((_%e198508198552%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl198507198549%_))))
                (let ((_%hd198509198555%_
                       (let () (declare (not safe)) (##car _%e198508198552%_)))
                      (_%tl198510198557%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e198508198552%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl198510198557%_))
                      ((lambda (_%g198492198560%_
                                _%g198493198561%_
                                _%g198494198562%_
                                _%g198495198563%_)
                         (if (gxc#current-compile-decls-unsafe?)
                             (cons '##unchecked-structure-set!
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self198487%_
                                            _%g198493198561%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self198487%_
                                                  _%g198492198560%_))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self198487%_
                                                        _%g198494198562%_))
                                                     (cons ''#f
                                                           (cons ''#f '()))))))
                             (let _%lp198584%_ ((_%rest198587%_
                                                 (cons _%g198494198562%_
                                                       (cons _%g198492198560%_
                                                             (cons _%g198493198561%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%bind198589%_ '())
                                                (_%args198590%_ '()))
                               (let* ((_%rest198591198599%_ _%rest198587%_)
                                      (_%else198593198607%_
                                       (lambda ()
                                         (cons 'let
                                               (cons _%bind198589%_
                                                     (cons '(declare
                                                              (not safe))
                                                           (cons (cons '##unchecked-structure-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp206932 (cons ''#f (cons ''#f '()))))
                                 (declare (not safe))
                                 (foldr__0 cons __tmp206932 _%args198590%_)))
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%K198595198693%_
                                       (lambda (_%rest198610%_ _%e198611%_)
                                         (let* ((_%__stx206613206614%_
                                                 _%e198611%_)
                                                (_%g198616198634%_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%__stx206613206614%_)))))
                                           (let ((_%__kont206615206616%_
                                                  (lambda ()
                                                    (_%lp198584%_
                                                     _%rest198610%_
                                                     _%bind198589%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e198611%_))
                                                           _%args198590%_))))
                                                 (_%__kont206617206618%_
                                                  (lambda ()
                                                    (_%lp198584%_
                                                     _%rest198610%_
                                                     _%bind198589%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e198611%_))
                                                           _%args198590%_))))
                                                 (_%__kont206619206620%_
                                                  (lambda ()
                                                    (let ((_%tmp198641%_
                                                           (let ((__tmp206933
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__tmp))))
                     (declare (not safe))
                     (make-symbol__0 __tmp206933))))
              (_%lp198584%_
               _%rest198610%_
               (cons (cons _%tmp198641%_
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__0 _%e198611%_))
                                 '()))
                     _%bind198589%_)
               (cons _%tmp198641%_ _%args198590%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%__stx206613206614%_))
                                                 (let ((_%e198618198672%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%__stx206613206614%_))))
                                                   (let ((_%tl198620198677%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e198618198672%_)))
                                                         (_%hd198619198675%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e198618198672%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _%hd198619198675%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-eq? '%#ref _%hd198619198675%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl198620198677%_))
                         (let ((_%e198621198680%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl198620198677%_))))
                           (let ((_%tl198623198685%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e198621198680%_)))
                                 (_%hd198622198683%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e198621198680%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl198623198685%_))
                                 (_%__kont206615206616%_)
                                 (_%__kont206619206620%_))))
                         (_%__kont206619206620%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-eq? '%#quote _%hd198619198675%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%tl198620198677%_))
                             (let ((_%e198627198657%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%tl198620198677%_))))
                               (let ((_%tl198629198662%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e198627198657%_)))
                                     (_%hd198628198660%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e198627198657%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%tl198629198662%_))
                                     (_%__kont206617206618%_)
                                     (_%__kont206619206620%_))))
                             (_%__kont206619206620%_))
                         (_%__kont206619206620%_)))
                 (_%__kont206619206620%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont206619206620%_)))))))
                                 (if (pair? _%rest198591198599%_)
                                     (let ((_%hd198596198696%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%rest198591198599%_)))
                                           (_%tl198597198698%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%rest198591198599%_))))
                                       (let* ((_%e198701%_ _%hd198596198696%_)
                                              (_%rest198703%_
                                               _%tl198597198698%_))
                                         (_%K198595198693%_
                                          _%rest198703%_
                                          _%e198701%_)))
                                     (_%else198593198607%_))))))
                       _%hd198509198555%_
                       _%hd198506198547%_
                       _%hd198503198539%_
                       _%hd198500198531%_)
                      (_%g198490198515%_ _%g198491198518%_))))
              (_%g198490198515%_ _%g198491198518%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g198490198515%_
                                               _%g198491198518%_))))
                                      (_%g198490198515%_ _%g198491198518%_))))
                              (_%g198490198515%_ _%g198491198518%_))))
                      (_%g198490198515%_ _%g198491198518%_)))))
          (_%g198489198705%_ _%stx198488%_))))
    (define gxc#generate-runtime-loader-import%
      (lambda (_%self198326%_ _%stx198327%_)
        (letrec ((_%import-set-template198329%_
                  (lambda (_%in198432%_ _%phi198433%_)
                    (let ((_%iphi198435%_
                           (fx+ _%phi198433%_
                                (##direct-structure-ref
                                 _%in198432%_
                                 '2
                                 gx#import-set::t
                                 '#f)))
                          (_%imports198436%_
                           (##structure-ref
                            (##direct-structure-ref
                             _%in198432%_
                             '1
                             gx#import-set::t
                             '#f)
                            '8
                            gx#module-context::t
                            '#f)))
                      (let _%lp198438%_ ((_%rest198440%_ _%imports198436%_)
                                         (_%r198441%_ '()))
                        (let* ((_%rest198442198450%_ _%rest198440%_)
                               (_%else198444198458%_ (lambda () _%r198441%_))
                               (_%K198446198475%_
                                (lambda (_%rest198461%_ _%in198462%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%in198462%_
                                         'gx#module-context::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxzero? _%iphi198435%_))
                                          (_%lp198438%_
                                           _%rest198461%_
                                           (cons _%in198462%_ _%r198441%_))
                                          (_%lp198438%_
                                           _%rest198461%_
                                           _%r198441%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%in198462%_
                                             'gx#module-import::t))
                                          (let ((_%iphi198466%_
                                                 (fx+ _%phi198433%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%in198462%_
                                                         '3
                                                         '#f
                                                         '#f)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##fxzero? _%iphi198466%_))
                                                (_%lp198438%_
                                                 _%rest198461%_
                                                 (cons (##direct-structure-ref
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%in198462%_
                                                           '1
                                                           '#f
                                                           '#f))
                                                        '1
                                                        gx#module-export::t
                                                        '#f)
                                                       _%r198441%_))
                                                (_%lp198438%_
                                                 _%rest198461%_
                                                 _%r198441%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 _%in198462%_
                                                 'gx#import-set::t))
                                              (let ((_%xphi198469%_
                                                     (fx+ _%iphi198435%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%in198462%_
                                                             '2
                                                             '#f
                                                             '#f)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##fxzero?
                                                       _%xphi198469%_))
                                                    (_%lp198438%_
                                                     _%rest198461%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in198462%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           _%r198441%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##fxpositive?
                                                           _%xphi198469%_))
                                                        (_%lp198438%_
                                                         _%rest198461%_
                                                         (let ((__tmp206934
                                                                (_%import-set-template198329%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in198462%_
                         _%iphi198435%_)))
                   (declare (not safe))
                   (foldl__0 cons _%r198441%_ __tmp206934)))
                (_%lp198438%_ _%rest198461%_ _%r198441%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%lp198438%_
                                               _%rest198461%_
                                               _%r198441%_)))))))
                          (if (pair? _%rest198442198450%_)
                              (let ((_%hd198447198478%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest198442198450%_)))
                                    (_%tl198448198480%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest198442198450%_))))
                                (let* ((_%in198483%_ _%hd198447198478%_)
                                       (_%rest198485%_ _%tl198448198480%_))
                                  (_%K198446198475%_
                                   _%rest198485%_
                                   _%in198483%_)))
                              (_%else198444198458%_))))))))
          (let* ((_%g198331198341%_
                  (lambda (_%g198332198338%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g198332198338%_))))
                 (_%g198330198429%_
                  (lambda (_%g198332198344%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g198332198344%_))
                        (let ((_%e198334198346%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g198332198344%_))))
                          (let ((_%hd198335198349%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e198334198346%_)))
                                (_%tl198336198351%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e198334198346%_))))
                            ((lambda (_%g198333198354%_)
                               (let ((_%ht198365%_
                                      (let ()
                                        (declare (not safe))
                                        (make-hash-table-eq))))
                                 (let _%lp198367%_ ((_%rest198369%_
                                                     _%g198333198354%_)
                                                    (_%loads198370%_ '()))
                                   (letrec ((_%K198372%_
                                             (lambda (_%ctx198422%_
                                                      _%rest198423%_)
                                               (let ((_%id198425%_
                                                      (##structure-ref
                                                       _%ctx198422%_
                                                       '1
                                                       gx#expander-context::t
                                                       '#f)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (__hash-get
                                                        _%ht198365%_
                                                        _%id198425%_))
                                                     (_%lp198367%_
                                                      _%rest198423%_
                                                      _%loads198370%_)
                                                     (let ((_%rt198427%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#module-id->path-string
                                                               _%id198425%_))))
                                                       (let ()
                                                         (declare (not safe))
                                                         (__hash-put!
                                                          _%ht198365%_
                                                          _%id198425%_
                                                          _%rt198427%_))
                                                       (_%lp198367%_
                                                        _%rest198423%_
                                                        (cons _%rt198427%_
                                                              _%loads198370%_))))))))
                                     (let* ((_%rest198373198381%_
                                             _%rest198369%_)
                                            (_%else198375198393%_
                                             (lambda ()
                                               (cons 'begin
                                                     (let ((__tmp206936
                                                            (lambda (_%g198388198390%_)
                                                              (list 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g198388198390%_)))
                   (__tmp206935 (reverse _%loads198370%_)))
               (declare (not safe))
               (##map __tmp206936 __tmp206935)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%K198377198410%_
                                             (lambda (_%rest198396%_
                                                      _%in198397%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-instance-of?
                                                      _%in198397%_
                                                      'gx#module-context::t))
                                                   (_%K198372%_
                                                    _%in198397%_
                                                    _%rest198396%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          _%in198397%_
                                                          'gx#module-import::t))
                                                       (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%in198397%_
                               '3
                               '#f
                               '#f)))
                   (_%K198372%_
                    (##direct-structure-ref
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%in198397%_ '1 '#f '#f))
                     '1
                     gx#module-export::t
                     '#f)
                    _%rest198396%_)
                   (_%lp198367%_ _%rest198396%_ _%loads198370%_))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%in198397%_
                      'gx#import-set::t))
                   (let ((_%phi198402%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%in198397%_
                             '2
                             '#f
                             '#f))))
                     (if (fxzero? _%phi198402%_)
                         (_%K198372%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%in198397%_
                             '1
                             '#f
                             '#f))
                          _%rest198396%_)
                         (if (fxpositive? _%phi198402%_)
                             (let ((_%deps198406%_
                                    (_%import-set-template198329%_
                                     _%in198397%_
                                     '0)))
                               (_%lp198367%_
                                (let ()
                                  (declare (not safe))
                                  (foldl__0
                                   cons
                                   _%rest198396%_
                                   _%deps198406%_))
                                _%loads198370%_))
                             (_%lp198367%_ _%rest198396%_ _%loads198370%_))))
                   (let ()
                     (declare (not safe))
                     (gxc#raise-compile-error
                      '"Unexpected import"
                      _%stx198327%_
                      _%in198397%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (pair? _%rest198373198381%_)
                                           (let ((_%hd198378198413%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%rest198373198381%_)))
                                                 (_%tl198379198415%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%rest198373198381%_))))
                                             (let* ((_%in198418%_
                                                     _%hd198378198413%_)
                                                    (_%rest198420%_
                                                     _%tl198379198415%_))
                                               (_%K198377198410%_
                                                _%rest198420%_
                                                _%in198418%_)))
                                           (_%else198375198393%_)))))))
                             _%tl198336198351%_)))
                        (_%g198331198341%_ _%g198332198344%_)))))
            (_%g198330198429%_ _%stx198327%_)))))
    (define gxc#generate-runtime-quote-syntax%
      (lambda (_%self198140%_ _%stx198141%_)
        (letrec ((_%add-lift!198143%_
                  (lambda (_%expr198324%_)
                    (set-box!
                     (let () (declare (not safe)) (gxc#current-compile-lift))
                     (cons _%expr198324%_
                           (unbox (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-lift)))))))
                 (_%generate-syntax-quote198144%_
                  (lambda (_%id198321%_ _%marks198322%_)
                    (cons '##structure
                          (cons 'gx#syntax-quote::t
                                (cons (cons 'quote (cons _%id198321%_ '()))
                                      (cons '#f
                                            (cons '(gx#current-expander-context)
                                                  (cons _%marks198322%_
                                                        '()))))))))
                 (_%generate-simple198145%_
                  (lambda (_%stxq198316%_)
                    (let ((_%gid198318%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__% '#t)))
                          (_%qid198319%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier
                              _%stxq198316%_))))
                      (_%add-lift!198143%_
                       (cons 'define
                             (cons _%gid198318%_
                                   (cons (_%generate-syntax-quote198144%_
                                          _%qid198319%_
                                          ''())
                                         '()))))
                      (let ((__tmp206937
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp206937 _%stxq198316%_ _%gid198318%_))
                      _%gid198318%_)))
                 (_%generate-serialized198146%_
                  (lambda (_%stxq198306%_ _%marks198307%_)
                    (let* ((_%mark-refs198309%_
                            (map _%generate-mark198147%_ _%marks198307%_))
                           (_%gid198311%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%qid198313%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-identifier
                               _%stxq198306%_))))
                      (_%add-lift!198143%_
                       (cons 'define
                             (cons _%gid198311%_
                                   (cons (_%generate-syntax-quote198144%_
                                          _%qid198313%_
                                          (cons 'list _%mark-refs198309%_))
                                         '()))))
                      (let ((__tmp206938
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp206938 _%stxq198306%_ _%gid198311%_))
                      _%gid198311%_)))
                 (_%generate-mark198147%_
                  (lambda (_%mark198291%_)
                    (let ((_%$e198293%_
                           (let ((__tmp206939
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-marks))))
                             (declare (not safe))
                             (hash-get __tmp206939 _%mark198291%_))))
                      (if _%$e198293%_
                          _%$e198293%_
                          (let* ((_%gid198297%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-temporary__% '#t)))
                                 (_%repr198299%_
                                  (_%serialize-mark198148%_ _%mark198291%_))
                                 (_%ctx198301%_
                                  (let ((__tmp206940
                                         (##structure-ref
                                          _%mark198291%_
                                          '2
                                          gx#expander-mark::t
                                          '#f)))
                                    (declare (not safe))
                                    (gx#core-context-top__1 __tmp206940)))
                                 (_%ctx-ref198303%_
                                  (if (eq? _%ctx198301%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-context)))
                                      '(gx#current-expander-context)
                                      (cons 'gx#import-module
                                            (cons (cons 'quote
                                                        (cons (_%context-ref198149%_
                                                               _%ctx198301%_)
                                                              '()))
                                                  '())))))
                            (let ((__tmp206941
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-marks))))
                              (declare (not safe))
                              (hash-put!
                               __tmp206941
                               _%mark198291%_
                               _%gid198297%_))
                            (_%add-lift!198143%_
                             (cons 'define
                                   (cons _%gid198297%_
                                         (cons (cons 'gx#core-deserialize-mark
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%repr198299%_ '()))
                   (cons _%ctx-ref198303%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            _%gid198297%_)))))
                 (_%serialize-mark198148%_
                  (lambda (_%mark198239%_)
                    (letrec ((_%quote-e198241%_
                              (lambda (_%sym198289%_)
                                (if (let ()
                                      (declare (not safe))
                                      (interned-symbol? _%sym198289%_))
                                    _%sym198289%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-gensym-reference__0
                                       _%sym198289%_))))))
                      (let* ((_%mark198242198251%_ _%mark198239%_)
                             (_%E198244198254%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%mark198242198251%_
                                         '((expander-mark
                                            subst
                                            ctx
                                            phi
                                            trace))))
                                '#!void))
                             (_%K198245198266%_
                              (lambda (_%trace198257%_
                                       _%phi198258%_
                                       _%ctx198259%_
                                       _%subst198260%_)
                                (let ((_%subs198262%_
                                       (if _%subst198260%_
                                           (let ()
                                             (declare (not safe))
                                             (hash->list _%subst198260%_))
                                           '())))
                                  (cons _%phi198258%_
                                        (let ((__tmp206942
                                               (lambda (_%pair198264%_)
                                                 (cons (_%quote-e198241%_
                                                        (car _%pair198264%_))
                                                       (_%quote-e198241%_
                                                        (cdr _%pair198264%_))))))
                                          (declare (not safe))
                                          (##map __tmp206942
                                                 _%subs198262%_)))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%mark198242198251%_
                               'gx#expander-mark::t))
                            (let* ((_%e198246198269%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark198242198251%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%subst198272%_ _%e198246198269%_)
                                   (_%e198247198274%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark198242198251%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%ctx198277%_ _%e198247198274%_)
                                   (_%e198248198279%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark198242198251%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%phi198282%_ _%e198248198279%_)
                                   (_%e198249198284%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark198242198251%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%trace198287%_ _%e198249198284%_))
                              (_%K198245198266%_
                               _%trace198287%_
                               _%phi198282%_
                               _%ctx198277%_
                               _%subst198272%_))
                            (_%E198244198254%_))))))
                 (_%context-ref198149%_
                  (lambda (_%ctx198226%_)
                    (if (let ((__tmp206943
                               (##structure-ref
                                _%ctx198226%_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (declare (not safe))
                          (##structure-instance-of?
                           __tmp206943
                           'gx#module-context::t))
                        (let ((_%ctx-ref198228%_
                               (_%context-ref-nested198151%_ _%ctx198226%_))
                              (_%ctx-origin198229%_
                               (_%context-ref-origin198150%_ _%ctx198226%_))
                              (_%origin198230%_
                               (_%context-ref-origin198150%_
                                (let ()
                                  (declare (not safe))
                                  (gx#current-expander-context)))))
                          (if (eq? _%origin198230%_ _%ctx-origin198229%_)
                              (let ((_%ref198232%_
                                     (_%context-ref-nested198151%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context)))))
                                (let _%lp198234%_ ((_%ref198236%_
                                                    (cdr _%ref198232%_))
                                                   (_%ctx-ref198237%_
                                                    (cdr _%ctx-ref198228%_)))
                                  (if (and (pair? _%ref198236%_)
                                           (eq? (let ()
                                                  (declare (not safe))
                                                  (##car _%ref198236%_))
                                                (car _%ctx-ref198237%_)))
                                      (_%lp198234%_
                                       (cdr _%ref198236%_)
                                       (cdr _%ctx-ref198237%_))
                                      (cons '#f _%ctx-ref198237%_))))
                              _%ctx-ref198228%_))
                        (let ((__tmp206944
                               (##structure-ref
                                _%ctx198226%_
                                '1
                                gx#expander-context::t
                                '#f)))
                          (declare (not safe))
                          (make-symbol__1 '":" __tmp206944)))))
                 (_%context-ref-origin198150%_
                  (lambda (_%ctx198218%_)
                    (let _%lp198220%_ ((_%ctx198222%_ _%ctx198218%_))
                      (let ((_%super198224%_
                             (##structure-ref
                              _%ctx198222%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super198224%_
                               'gx#module-context::t))
                            (_%lp198220%_ _%super198224%_)
                            _%ctx198222%_)))))
                 (_%context-ref-nested198151%_
                  (lambda (_%ctx198209%_)
                    (let _%lp198211%_ ((_%ctx198213%_ _%ctx198209%_)
                                       (_%r198214%_ '()))
                      (let ((_%super198216%_
                             (##structure-ref
                              _%ctx198213%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super198216%_
                               'gx#module-context::t))
                            (_%lp198211%_
                             _%super198216%_
                             (cons (car (##structure-ref
                                         _%ctx198213%_
                                         '7
                                         gx#module-context::t
                                         '#f))
                                   _%r198214%_))
                            (cons (let ((__tmp206945
                                         (##structure-ref
                                          _%ctx198213%_
                                          '1
                                          gx#expander-context::t
                                          '#f)))
                                    (declare (not safe))
                                    (make-symbol__1 '":" __tmp206945))
                                  _%r198214%_)))))))
          (let* ((_%g198153198166%_
                  (lambda (_%g198154198163%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g198154198163%_))))
                 (_%g198152198206%_
                  (lambda (_%g198154198169%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g198154198169%_))
                        (let ((_%e198156198171%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g198154198169%_))))
                          (let ((_%hd198157198174%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e198156198171%_)))
                                (_%tl198158198176%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e198156198171%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl198158198176%_))
                                (let ((_%e198159198179%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl198158198176%_))))
                                  (let ((_%hd198160198182%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e198159198179%_)))
                                        (_%tl198161198184%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e198159198179%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl198161198184%_))
                                        ((lambda (_%g198155198187%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#identifier?
                                                  _%g198155198187%_))
                                               (let ((_%$e198200%_
                                                      (let ((__tmp206946
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#current-compile-identifiers))))
                (declare (not safe))
                (hash-get __tmp206946 _%g198155198187%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e198200%_
                                                     _%$e198200%_
                                                     (let ((_%marks198204%_
                                                            (##direct-structure-ref
                                                             _%g198155198187%_
                                                             '4
                                                             gx#syntax-quote::t
                                                             '#f)))
                                                       (if (null? _%marks198204%_)
                                                           (_%generate-simple198145%_
                                                            _%g198155198187%_)
                                                           (_%generate-serialized198146%_
                                                            _%g198155198187%_
                                                            _%marks198204%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"Cannot quote non-identifier syntax"
                                                  _%g198155198187%_))))
                                         _%hd198160198182%_)
                                        (_%g198153198166%_
                                         _%g198154198169%_))))
                                (_%g198153198166%_ _%g198154198169%_))))
                        (_%g198153198166%_ _%g198154198169%_)))))
            (_%g198152198206%_ _%stx198141%_)))))
    (define gxc#generate-runtime-phi-define-runtime%
      (lambda (_%self198072%_ _%stx198073%_)
        (let* ((_%g198075198092%_
                (lambda (_%g198076198089%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198076198089%_))))
               (_%g198074198137%_
                (lambda (_%g198076198095%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198076198095%_))
                      (let ((_%e198079198097%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g198076198095%_))))
                        (let ((_%hd198080198100%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198079198097%_)))
                              (_%tl198081198102%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198079198097%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198081198102%_))
                              (let ((_%e198082198105%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl198081198102%_))))
                                (let ((_%hd198083198108%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198082198105%_)))
                                      (_%tl198084198110%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198082198105%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl198084198110%_))
                                      (let ((_%e198085198113%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl198084198110%_))))
                                        (let ((_%hd198086198116%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198085198113%_)))
                                              (_%tl198087198118%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198085198113%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl198087198118%_))
                                              ((lambda (_%g198077198121%_
                                                        _%g198078198122%_)
                                                 (cons 'define
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%g198078198122%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self198072%_
                              _%g198077198121%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd198086198116%_
                                               _%hd198083198108%_)
                                              (_%g198075198092%_
                                               _%g198076198095%_))))
                                      (_%g198075198092%_ _%g198076198095%_))))
                              (_%g198075198092%_ _%g198076198095%_))))
                      (_%g198075198092%_ _%g198076198095%_)))))
          (_%g198074198137%_ _%stx198073%_))))
    (define gxc#generate-meta-begin%
      (lambda (_%self198021%_ _%stx198022%_)
        (let* ((_%g198024198034%_
                (lambda (_%g198025198031%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198025198031%_))))
               (_%g198023198069%_
                (lambda (_%g198025198037%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198025198037%_))
                      (let ((_%e198027198039%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g198025198037%_))))
                        (let ((_%hd198028198042%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198027198039%_)))
                              (_%tl198029198044%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198027198039%_))))
                          ((lambda (_%g198026198047%_)
                             (let* ((_%c-body198061%_
                                     (map (lambda (_%g198056198058%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self198021%_
                                               _%g198056198058%_)))
                                          _%g198026198047%_))
                                    (_%c-body198066%_
                                     (let ((__tmp206947
                                            (lambda (_%$obj198063%_)
                                              (not (eq? _%$obj198063%_
                                                        '#!void)))))
                                       (declare (not safe))
                                       (##filter
                                        __tmp206947
                                        _%c-body198061%_))))
                               (cons '%#begin _%c-body198066%_)))
                           _%tl198029198044%_)))
                      (_%g198024198034%_ _%g198025198037%_)))))
          (_%g198023198069%_ _%stx198022%_))))
    (define gxc#generate-meta-begin-syntax%
      (lambda (_%self197926%_ _%stx197927%_)
        (let* ((_%g197929197939%_
                (lambda (_%g197930197936%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197930197936%_))))
               (_%g197928198018%_
                (lambda (_%g197930197942%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197930197942%_))
                      (let ((_%e197932197944%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g197930197942%_))))
                        (let ((_%hd197933197947%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197932197944%_)))
                              (_%tl197934197949%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197932197944%_))))
                          ((lambda (_%g197931197952%_)
                             (let* ((_%phi197962%_
                                     (let ((__tmp206948
                                            (let ()
                                              (declare (not safe))
                                              (gx#current-expander-phi))))
                                       (declare (not safe))
                                       (##fx+ __tmp206948 '1)))
                                    (_%block197964%_
                                     (gxc#meta-state-begin-phi!
                                      (let ()
                                        (declare (not safe))
                                        (slot-ref__0 _%self197926%_ 'state))
                                      _%phi197962%_))
                                    (_%compiled197967%_
                                     (let ((__tmp206949
                                            (lambda ()
                                              (gxc#apply-generate-meta-phi__%
                                               '#f
                                               (let ()
                                                 (declare (not safe))
                                                 (slot-ref__0
                                                  _%self197926%_
                                                  'state))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#begin))
                                                     _%g197931197952%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp206949
                                        gx#current-expander-phi
                                        _%phi197962%_)))
                                    (_%g197970197980%_
                                     (lambda (_%g197971197977%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g197971197977%_))))
                                    (_%g197969198015%_
                                     (lambda (_%g197971197983%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%g197971197983%_))
                                           (let ((_%e197973197985%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%g197971197983%_))))
                                             (let ((_%hd197974197988%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e197973197985%_)))
                                                   (_%tl197975197990%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e197973197985%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd197974197988%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#begin
                                                          _%hd197974197988%_))
                                                       ((lambda (_%g197972197993%_)
                                                          (let ((_%c-body198010%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (filter (lambda (_%$obj198007%_)
                                   (not (eq? _%$obj198007%_ '#!void)))
                                 _%g197972197993%_)))
                    (if _%block197964%_
                        (cons '%#begin-syntax
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'load-module '()))
                                                (cons (cons '%#quote
                                                            (cons _%block197964%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%c-body198010%_))
                        (if (null? _%c-body198010%_)
                            '#!void
                            (cons '%#begin-syntax _%c-body198010%_)))))
                _%tl197975197990%_)
               (_%g197970197980%_ _%g197971197983%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g197970197980%_
                                                    _%g197971197983%_))))
                                           (_%g197970197980%_
                                            _%g197971197983%_)))))
                               (_%g197969198015%_ _%compiled197967%_)))
                           _%tl197934197949%_)))
                      (_%g197929197939%_ _%g197930197942%_)))))
          (_%g197928198018%_ _%stx197927%_))))
    (define gxc#generate-meta-module%
      (lambda (_%self197857%_ _%stx197858%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self197857%_ 'state)))
        (let* ((_%g197860197874%_
                (lambda (_%g197861197871%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197861197871%_))))
               (_%g197859197923%_
                (lambda (_%g197861197877%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197861197877%_))
                      (let ((_%e197864197879%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g197861197877%_))))
                        (let ((_%hd197865197882%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197864197879%_)))
                              (_%tl197866197884%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197864197879%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197866197884%_))
                              (let ((_%e197867197887%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl197866197884%_))))
                                (let ((_%hd197868197890%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197867197887%_)))
                                      (_%tl197869197892%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197867197887%_))))
                                  ((lambda (_%g197862197895%_
                                            _%g197863197896%_)
                                     (let ((_%key197909%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#core-identifier-key
                                               _%g197863197896%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (interned-symbol? _%key197909%_))
                                           '#!void
                                           (let ()
                                             (declare (not safe))
                                             (gxc#raise-compile-error
                                              '"Cannot compile module with uninterned id"
                                              _%stx197858%_
                                              _%g197863197896%_
                                              _%key197909%_)))
                                       (let* ((_%ctx197911%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-local-e__0
                                                  _%g197863197896%_)))
                                              (_%code197914%_
                                               (let ((__tmp206950
                                                      (lambda ()
                                                        (let ((__tmp206951
                                                               (##structure-ref
                                                                _%ctx197911%_
                                                                '11
                                                                gx#module-context::t
                                                                '#f)))
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self197857%_
                                                           __tmp206951)))))
                                                 (declare (not safe))
                                                 (call-with-parameters__1
                                                  __tmp206950
                                                  gx#current-expander-context
                                                  _%ctx197911%_)))
                                              (_%rt197916%_
                                               (let ((__tmp206952
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#current-compile-runtime-sections))))
                                                 (declare (not safe))
                                                 (hash-get
                                                  __tmp206952
                                                  _%ctx197911%_)))
                                              (_%loader197918%_
                                               (if _%rt197916%_
                                                   (cons (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons 'load-module '()))
                             (cons (cons '%#quote (cons _%rt197916%_ '()))
                                   '())))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                              (_%modid197920%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%g197863197896%_))))
                                         (gxc#meta-state-end-phi!
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self197857%_
                                             'state)))
                                         (cons '%#module
                                               (cons _%modid197920%_
                                                     (cons _%code197914%_
                                                           _%loader197918%_))))))
                                   _%tl197869197892%_
                                   _%hd197868197890%_)))
                              (_%g197860197874%_ _%g197861197877%_))))
                      (_%g197860197874%_ _%g197861197877%_)))))
          (_%g197859197923%_ _%stx197858%_))))
    (define gxc#generate-meta-import-path
      (lambda (_%ctx197844%_ _%context-chain197845%_)
        (let _%lp197847%_ ((_%ctx197849%_ _%ctx197844%_) (_%path197850%_ '()))
          (let ((_%super197852%_
                 (##structure-ref _%ctx197849%_ '3 gx#phi-context::t '#f)))
            (if (memq _%super197852%_ _%context-chain197845%_)
                (cons '#f
                      (cons (car (##structure-ref
                                  _%ctx197849%_
                                  '7
                                  gx#module-context::t
                                  '#f))
                            _%path197850%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%super197852%_
                       'gx#module-context::t))
                    (_%lp197847%_
                     _%super197852%_
                     (cons (car (##structure-ref
                                 _%ctx197849%_
                                 '7
                                 gx#module-context::t
                                 '#f))
                           _%path197850%_))
                    (cons (let ((__tmp206953
                                 (##structure-ref
                                  _%ctx197849%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (make-symbol__1 '":" __tmp206953))
                          _%path197850%_)))))))
    (define gxc#current-context-chain
      (lambda ()
        (let _%lp197837%_ ((_%ctx197839%_
                            (let ()
                              (declare (not safe))
                              (gx#current-expander-context)))
                           (_%r197840%_ '()))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%ctx197839%_ 'gx#module-context::t))
              (_%lp197837%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%ctx197839%_ '3 '#f '#f))
               (cons _%ctx197839%_ _%r197840%_))
              _%r197840%_))))
    (define gxc#generate-meta-import%
      (lambda (_%self197602%_ _%stx197603%_)
        (letrec* ((_%context-chain197605%_ (gxc#current-context-chain))
                  (_%make-import-spec197606%_
                   (lambda (_%in197774%_)
                     (let* ((_%in197775197787%_ _%in197774%_)
                            (_%E197777197790%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%in197775197787%_
                                        '((module-import
                                           (module-export
                                            src-ctx
                                            src-key
                                            src-phi
                                            src-name)
                                           name
                                           phi))))
                               '#!void))
                            (_%K197778197800%_
                             (lambda (_%phi197793%_
                                      _%name197794%_
                                      _%src-name197795%_
                                      _%src-phi197796%_
                                      _%src-key197797%_
                                      _%src-ctx197798%_)
                               (cons _%phi197793%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#generate-runtime-identifier-key
                                              _%name197794%_))
                                           (cons _%src-phi197796%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-identifier-key
                                                          _%src-name197795%_))
                                                       '())))))))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              _%in197775197787%_
                              'gx#module-import::t))
                           (let ((_%e197779197803%_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%in197775197787%_
                                     '1
                                     '#f
                                     '#f))))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    _%e197779197803%_
                                    'gx#module-export::t))
                                 (let* ((_%e197782197806%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e197779197803%_
                                            '1
                                            '#f
                                            '#f)))
                                        (_%src-ctx197809%_ _%e197782197806%_)
                                        (_%e197783197811%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e197779197803%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%src-key197814%_ _%e197783197811%_)
                                        (_%e197784197816%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e197779197803%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%src-phi197819%_ _%e197784197816%_)
                                        (_%e197785197821%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e197779197803%_
                                            '4
                                            '#f
                                            '#f)))
                                        (_%src-name197824%_ _%e197785197821%_)
                                        (_%e197780197826%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in197775197787%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%name197829%_ _%e197780197826%_)
                                        (_%e197781197831%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in197775197787%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%phi197834%_ _%e197781197831%_))
                                   (_%K197778197800%_
                                    _%phi197834%_
                                    _%name197829%_
                                    _%src-name197824%_
                                    _%src-phi197819%_
                                    _%src-key197814%_
                                    _%src-ctx197809%_))
                                 (_%E197777197790%_)))
                           (_%E197777197790%_)))))
                  (_%make-import-path197607%_
                   (lambda (_%ctx197772%_)
                     (gxc#generate-meta-import-path
                      _%ctx197772%_
                      _%context-chain197605%_)))
                  (_%make-import-spec-in197608%_
                   (lambda (_%ctx197769%_ _%in197770%_)
                     (cons 'spec:
                           (cons (_%make-import-path197607%_ _%ctx197769%_)
                                 (reverse _%in197770%_))))))
          (gxc#meta-state-end-phi!
           (let () (declare (not safe)) (slot-ref__0 _%self197602%_ 'state)))
          (let* ((_%g197610197620%_
                  (lambda (_%g197611197617%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g197611197617%_))))
                 (_%g197609197766%_
                  (lambda (_%g197611197623%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g197611197623%_))
                        (let ((_%e197613197625%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g197611197623%_))))
                          (let ((_%hd197614197628%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e197613197625%_)))
                                (_%tl197615197630%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e197613197625%_))))
                            ((lambda (_%g197612197633%_)
                               (let _%lp197644%_ ((_%rest197646%_
                                                   _%g197612197633%_)
                                                  (_%current-src197647%_ '#f)
                                                  (_%current-in197648%_ '())
                                                  (_%r197649%_ '()))
                                 (let* ((_%rest197650197658%_ _%rest197646%_)
                                        (_%else197652197668%_
                                         (lambda ()
                                           (let ((_%r197666%_
                                                  (if _%current-src197647%_
                                                      (cons (_%make-import-spec-in197608%_
                                                             _%current-src197647%_
                                                             _%current-in197648%_)
                                                            _%r197649%_)
                                                      _%r197649%_)))
                                             (cons '%#import
                                                   (reverse _%r197666%_)))))
                                        (_%K197654197754%_
                                         (lambda (_%rest197671%_ _%in197672%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in197672%_
                                                  'gx#module-import::t))
                                               (let* ((_%in197674197681%_
                                                       _%in197672%_)
                                                      (_%E197676197684%_
                                                       (lambda ()
                                                         (let ()
                                                           (declare (not safe))
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%in197674197681%_
                          '((module-import (module-export src-ctx)))))
                 '#!void))
              (_%K197677197692%_
               (lambda (_%src-ctx197687%_)
                 (if (eq? _%current-src197647%_ _%src-ctx197687%_)
                     (_%lp197644%_
                      _%rest197671%_
                      _%current-src197647%_
                      (cons (_%make-import-spec197606%_ _%in197672%_)
                            _%current-in197648%_)
                      _%r197649%_)
                     (if _%current-src197647%_
                         (_%lp197644%_
                          _%rest197671%_
                          _%src-ctx197687%_
                          (cons (_%make-import-spec197606%_ _%in197672%_) '())
                          (cons (_%make-import-spec-in197608%_
                                 _%current-src197647%_
                                 _%current-in197648%_)
                                _%r197649%_))
                         (_%lp197644%_
                          _%rest197671%_
                          _%src-ctx197687%_
                          (cons (_%make-import-spec197606%_ _%in197672%_) '())
                          _%r197649%_)))))
              (_%e197678197695%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%in197674197681%_ '1 '#f '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%e197678197695%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e197679197698%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%e197678197695%_
                        '1
                        '#f
                        '#f)))
                    (_%src-ctx197701%_ _%e197679197698%_))
               (_%K197677197692%_ _%src-ctx197701%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E197676197684%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%in197672%_
                                                      'gx#import-set::t))
                                                   (let* ((_%phi197704%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in197672%_
                                                              '2
                                                              '#f
                                                              '#f)))
                                                          (_%src197706%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in197672%_
                                                              '1
                                                              '#f
                                                              '#f)))
                                                          (_%src-in197746%_
                                                           (let* ((_%g197707197716%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (_%make-import-path197607%_ _%src197706%_))
                          (_%E197710197720%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (error '"No clause matching"
                                      _%g197707197716%_
                                      '([path])
                                      '(path)))
                             '#!void)))
                     (let ((_%K197712197736%_
                            (lambda (_%path197734%_) _%path197734%_))
                           (_%K197711197726%_
                            (lambda (_%path197724%_)
                              (cons 'in: _%path197724%_))))
                       (if (pair? _%g197707197716%_)
                           (let ((_%tl197714197741%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%g197707197716%_)))
                                 (_%hd197713197739%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%g197707197716%_))))
                             (if (null? _%tl197714197741%_)
                                 (let ((_%path197744%_ _%hd197713197739%_))
                                   (_%K197712197736%_ _%path197744%_))
                                 (let ((_%path197729%_ _%g197707197716%_))
                                   (_%K197711197726%_ _%path197729%_))))
                           (let ((_%path197729%_ _%g197707197716%_))
                             (_%K197711197726%_ _%path197729%_))))))
                  (_%r197748%_
                   (if _%current-src197647%_
                       (cons (_%make-import-spec-in197608%_
                              _%current-src197647%_
                              _%current-in197648%_)
                             _%r197649%_)
                       _%r197649%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%lp197644%_
                                                      _%rest197671%_
                                                      '#f
                                                      '()
                                                      (cons (if (fxzero? _%phi197704%_)
                                                                _%src-in197746%_
                                                                (cons 'phi:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%phi197704%_
                                    (cons _%src-in197746%_ '()))))
                    _%r197748%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-instance-of?
                                                          _%in197672%_
                                                          'gx#module-context::t))
                                                       (let ((_%r197752%_
                                                              (if _%current-src197647%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (_%make-import-spec-in197608%_
                                 _%current-src197647%_
                                 _%current-in197648%_)
                                _%r197649%_)
                          _%r197649%_)))
                 (_%lp197644%_
                  _%rest197671%_
                  '#f
                  '()
                  (cons (cons 'runtime:
                              (_%make-import-path197607%_ _%in197672%_))
                        _%r197752%_)))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (pair? _%rest197650197658%_)
                                       (let ((_%hd197655197757%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest197650197658%_)))
                                             (_%tl197656197759%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest197650197658%_))))
                                         (let* ((_%in197762%_
                                                 _%hd197655197757%_)
                                                (_%rest197764%_
                                                 _%tl197656197759%_))
                                           (_%K197654197754%_
                                            _%rest197764%_
                                            _%in197762%_)))
                                       (_%else197652197668%_)))))
                             _%tl197615197630%_)))
                        (_%g197610197620%_ _%g197611197623%_)))))
            (_%g197609197766%_ _%stx197603%_)))))
    (define gxc#generate-meta-export%
      (lambda (_%self197412%_ _%stx197413%_)
        (letrec* ((_%context-chain197415%_ (gxc#current-context-chain))
                  (_%make-import-path197416%_
                   (lambda (_%ctx197600%_)
                     (gxc#generate-meta-import-path
                      _%ctx197600%_
                      _%context-chain197415%_))))
          (let* ((_%g197418197428%_
                  (lambda (_%g197419197425%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g197419197425%_))))
                 (_%g197417197597%_
                  (lambda (_%g197419197431%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g197419197431%_))
                        (let ((_%e197421197433%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g197419197431%_))))
                          (let ((_%hd197422197436%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e197421197433%_)))
                                (_%tl197423197438%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e197421197433%_))))
                            ((lambda (_%g197420197441%_)
                               (let _%lp197452%_ ((_%rest197454%_
                                                   _%g197420197441%_)
                                                  (_%r197455%_ '()))
                                 (let* ((_%rest197456197464%_ _%rest197454%_)
                                        (_%else197458197472%_
                                         (lambda ()
                                           (cons '%#export
                                                 (reverse _%r197455%_))))
                                        (_%K197460197585%_
                                         (lambda (_%rest197475%_ _%out197476%_)
                                           (let* ((_%out197477197490%_
                                                   _%out197476%_)
                                                  (_%E197480197494%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%out197477197490%_
                                                              '((module-export
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _
                         key
                         phi
                         name))
                      '((export-set src phi))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#!void)))
                                             (let ((_%K197484197564%_
                                                    (lambda (_%name197560%_
                                                             _%phi197561%_
                                                             _%key197562%_)
                                                      (_%lp197452%_
                                                       _%rest197475%_
                                                       (cons (cons 'spec:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%phi197561%_
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#generate-runtime-identifier-key
                                          _%key197562%_))
                                       (cons (let ()
                                               (declare (not safe))
                                               (gxc#generate-runtime-identifier-key
                                                _%name197560%_))
                                             '()))))
                     _%r197455%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K197481197544%_
                                                    (lambda (_%phi197498%_
                                                             _%src197499%_)
                                                      (let* ((_%out197539%_
                                                              (if _%src197499%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'import:
                                (cons (let* ((_%g197500197509%_
                                              (_%make-import-path197416%_
                                               _%src197499%_))
                                             (_%E197503197513%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (error '"No clause matching"
                                                         _%g197500197509%_
                                                         '([path])
                                                         '(path)))
                                                '#!void)))
                                        (let ((_%K197505197529%_
                                               (lambda (_%path197527%_)
                                                 _%path197527%_))
                                              (_%K197504197519%_
                                               (lambda (_%path197517%_)
                                                 (cons 'in: _%path197517%_))))
                                          (if (pair? _%g197500197509%_)
                                              (let ((_%tl197507197534%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%g197500197509%_)))
                                                    (_%hd197506197532%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%g197500197509%_))))
                                                (if (null? _%tl197507197534%_)
                                                    (let ((_%path197537%_
                                                           _%hd197506197532%_))
                                                      (_%K197505197529%_
                                                       _%path197537%_))
                                                    (let ((_%path197522%_
                                                           _%g197500197509%_))
                                                      (_%K197504197519%_
                                                       _%path197522%_))))
                                              (let ((_%path197522%_
                                                     _%g197500197509%_))
                                                (_%K197504197519%_
                                                 _%path197522%_)))))
                                      '()))
                          '#t))
                     (_%out197541%_
                      (if (fxzero? _%phi197498%_)
                          _%out197539%_
                          (cons 'phi:
                                (cons _%phi197498%_
                                      (cons _%out197539%_ '()))))))
                (_%lp197452%_
                 _%rest197475%_
                 (cons _%out197541%_ _%r197455%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_%try-match197479197557%_
                                                      (lambda ()
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-direct-instance-of?
                                                               _%out197477197490%_
                                                               'gx#export-set::t))
                                                            (let* ((_%e197482197547%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out197477197490%_
                               '1
                               '#f
                               '#f)))
                           (_%e197483197552%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out197477197490%_
                               '2
                               '#f
                               '#f))))
                      (let ((_%src197550%_ _%e197482197547%_)
                            (_%phi197555%_ _%e197483197552%_))
                        (_%K197481197544%_ _%phi197555%_ _%src197550%_)))
                    (_%E197480197494%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%out197477197490%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e197485197567%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%out197477197490%_
                        '1
                        '#f
                        '#f)))
                    (_%e197486197570%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out197477197490%_
                        '2
                        '#f
                        '#f)))
                    (_%e197487197575%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out197477197490%_
                        '3
                        '#f
                        '#f)))
                    (_%e197488197580%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out197477197490%_
                        '4
                        '#f
                        '#f))))
               (let ((_%key197573%_ _%e197486197570%_)
                     (_%phi197578%_ _%e197487197575%_)
                     (_%name197583%_ _%e197488197580%_))
                 (_%K197484197564%_
                  _%name197583%_
                  _%phi197578%_
                  _%key197573%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%try-match197479197557%_))))))))
                                   (if (pair? _%rest197456197464%_)
                                       (let ((_%hd197461197588%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest197456197464%_)))
                                             (_%tl197462197590%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest197456197464%_))))
                                         (let* ((_%out197593%_
                                                 _%hd197461197588%_)
                                                (_%rest197595%_
                                                 _%tl197462197590%_))
                                           (_%K197460197585%_
                                            _%rest197595%_
                                            _%out197593%_)))
                                       (_%else197458197472%_)))))
                             _%tl197423197438%_)))
                        (_%g197418197428%_ _%g197419197431%_)))))
            (_%g197417197597%_ _%stx197413%_)))))
    (define gxc#generate-meta-provide%
      (lambda (_%self197373%_ _%stx197374%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self197373%_ 'state)))
        (let* ((_%g197376197386%_
                (lambda (_%g197377197383%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197377197383%_))))
               (_%g197375197409%_
                (lambda (_%g197377197389%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197377197389%_))
                      (let ((_%e197379197391%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g197377197389%_))))
                        (let ((_%hd197380197394%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197379197391%_)))
                              (_%tl197381197396%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197379197391%_))))
                          ((lambda (_%g197378197399%_)
                             (cons '%#provide
                                   (map gxc#generate-runtime-identifier
                                        _%g197378197399%_)))
                           _%tl197381197396%_)))
                      (_%g197376197386%_ _%g197377197389%_)))))
          (_%g197375197409%_ _%stx197374%_))))
    (define gxc#generate-meta-extern%
      (lambda (_%self197248%_ _%stx197249%_)
        (letrec ((_%generate1197251%_
                  (lambda (_%id197368%_ _%eid197369%_)
                    (let ((_%eid197371%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%eid197369%_))))
                      (if (let ()
                            (declare (not safe))
                            (interned-symbol? _%eid197371%_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"Cannot compile extern reference"
                             _%stx197249%_
                             _%eid197371%_)))
                      (cons (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-identifier _%id197368%_))
                            (cons _%eid197371%_ '()))))))
          (let* ((_%g197253197281%_
                  (lambda (_%g197254197278%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g197254197278%_))))
                 (_%g197252197365%_
                  (lambda (_%g197254197284%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g197254197284%_))
                        (let ((_%e197257197286%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g197254197284%_))))
                          (let ((_%hd197258197289%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e197257197286%_)))
                                (_%tl197259197291%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e197257197286%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl197259197291%_))
                                (let ((_g206954_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl197259197291%_
                                          '0))))
                                  (begin
                                    (let ((_g206955_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g206954_)
                                                 (##values-length _g206954_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g206955_ 2)))
                                          (error "Context expects 2 values"
                                                 _g206955_)))
                                    (let ((_%target197260197294%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g206954_ 0)))
                                          (_%tl197262197296%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g206954_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl197262197296%_))
                                          (letrec ((_%loop197263197299%_
                                                    (lambda (_%hd197261197302%_
                                                             _%eid197267197304%_
                                                             _%id197268197305%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd197261197302%_))
                                                          (let ((_%e197264197307%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd197261197302%_))))
                    (let ((_%lp-hd197265197310%_
                           (let ()
                             (declare (not safe))
                             (##car _%e197264197307%_)))
                          (_%lp-tl197266197312%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e197264197307%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd197265197310%_))
                          (let ((_%e197271197315%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd197265197310%_))))
                            (let ((_%hd197272197318%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e197271197315%_)))
                                  (_%tl197273197320%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e197271197315%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl197273197320%_))
                                  (let ((_%e197274197323%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl197273197320%_))))
                                    (let ((_%hd197275197326%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e197274197323%_)))
                                          (_%tl197276197328%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e197274197323%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl197276197328%_))
                                          (_%loop197263197299%_
                                           _%lp-tl197266197312%_
                                           (cons _%hd197275197326%_
                                                 _%eid197267197304%_)
                                           (cons _%hd197272197318%_
                                                 _%id197268197305%_))
                                          (_%g197253197281%_
                                           _%g197254197284%_))))
                                  (_%g197253197281%_ _%g197254197284%_))))
                          (_%g197253197281%_ _%g197254197284%_))))
                  (let ((_%eid197269197331%_ (reverse _%eid197267197304%_))
                        (_%id197270197332%_ (reverse _%id197268197305%_)))
                    ((lambda (_%g197255197334%_ _%g197256197335%_)
                       (cons '%#extern
                             (map _%generate1197251%_
                                  (let ((__tmp206956
                                         (lambda (_%g197350197353%_
                                                  _%g197351197355%_)
                                           (cons _%g197350197353%_
                                                 _%g197351197355%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp206956
                                     '()
                                     _%g197256197335%_))
                                  (let ((__tmp206957
                                         (lambda (_%g197357197360%_
                                                  _%g197358197362%_)
                                           (cons _%g197357197360%_
                                                 _%g197358197362%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp206957
                                     '()
                                     _%g197255197334%_)))))
                     _%eid197269197331%_
                     _%id197270197332%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop197263197299%_
                                             _%target197260197294%_
                                             '()
                                             '()))
                                          (_%g197253197281%_
                                           _%g197254197284%_)))))
                                (_%g197253197281%_ _%g197254197284%_))))
                        (_%g197253197281%_ _%g197254197284%_)))))
            (_%g197252197365%_ _%stx197249%_)))))
    (define gxc#generate-meta-define-values%
      (lambda (_%self197037%_ _%stx197038%_)
        (letrec ((_%generate1197040%_
                  (lambda (_%id197242%_)
                    (let ((_%eid197244%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%id197242%_)))
                          (_%ident197245%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier _%id197242%_)))
                          (_%props197246%_
                           (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier-properties
                              _%id197242%_))))
                      (cons '%#define-runtime
                            (cons _%ident197245%_
                                  (cons _%eid197244%_ _%props197246%_))))))
                 (_%generate*197041%_
                  (lambda (_%all197210%_)
                    (let* ((_%all197211197219%_ _%all197210%_)
                           (_%else197213197227%_
                            (lambda () (cons '%#begin _%all197210%_)))
                           (_%K197215197232%_
                            (lambda (_%one197230%_) _%one197230%_)))
                      (if (pair? _%all197211197219%_)
                          (let ((_%hd197216197235%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all197211197219%_)))
                                (_%tl197217197237%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all197211197219%_))))
                            (let ((_%one197240%_ _%hd197216197235%_))
                              (if (null? _%tl197217197237%_)
                                  (_%K197215197232%_ _%one197240%_)
                                  (_%else197213197227%_))))
                          (_%else197213197227%_))))))
          (let* ((_%g197043197060%_
                  (lambda (_%g197044197057%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g197044197057%_))))
                 (_%g197042197207%_
                  (lambda (_%g197044197063%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g197044197063%_))
                        (let ((_%e197047197065%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g197044197063%_))))
                          (let ((_%hd197048197068%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e197047197065%_)))
                                (_%tl197049197070%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e197047197065%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl197049197070%_))
                                (let ((_%e197050197073%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl197049197070%_))))
                                  (let ((_%hd197051197076%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e197050197073%_)))
                                        (_%tl197052197078%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e197050197073%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl197052197078%_))
                                        (let ((_%e197053197081%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl197052197078%_))))
                                          (let ((_%hd197054197084%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e197053197081%_)))
                                                (_%tl197055197086%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e197053197081%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl197055197086%_))
                                                ((lambda (_%g197045197089%_
                                                          _%g197046197090%_)
                                                   (let _%lp197106%_ ((_%rest197108%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g197046197090%_)
                              (_%r197109%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((_%__stx206692206693%_
                                                             _%rest197108%_)
                                                            (_%g197114197131%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%__stx206692206693%_)))))
               (let ((_%__kont206694206695%_
                      (lambda (_%g197116197194%_)
                        (_%lp197106%_ _%g197116197194%_ _%r197109%_)))
                     (_%__kont206696206697%_
                      (lambda (_%g197121197167%_ _%g197122197168%_)
                        (_%lp197106%_
                         _%g197121197167%_
                         (cons (_%generate1197040%_ _%g197122197168%_)
                               _%r197109%_))))
                     (_%__kont206698206699%_
                      (lambda (_%g197126197143%_)
                        (_%generate*197041%_
                         (let ((__tmp206958
                                (cons (_%generate1197040%_ _%g197126197143%_)
                                      '())))
                           (declare (not safe))
                           (foldl__0 cons __tmp206958 _%r197109%_)))))
                     (_%__kont206700206701%_
                      (lambda ()
                        (_%generate*197041%_ (reverse! _%r197109%_)))))
                 (let ((_%g197112197154%_
                        (lambda ()
                          (let ((_%g197126197143%_ _%__stx206692206693%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g197126197143%_))
                                (_%__kont206698206699%_ _%g197126197143%_)
                                (_%__kont206700206701%_))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%__stx206692206693%_))
                       (let ((_%e197117197183%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%__stx206692206693%_))))
                         (let ((_%tl197119197188%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e197117197183%_)))
                               (_%hd197118197186%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e197117197183%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-datum? _%hd197118197186%_))
                               (let ((_%e197120197191%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd197118197186%_))))
                                 (if (equal? _%e197120197191%_ '#f)
                                     (_%__kont206694206695%_
                                      _%tl197119197188%_)
                                     (_%__kont206696206697%_
                                      _%tl197119197188%_
                                      _%hd197118197186%_)))
                               (_%__kont206696206697%_
                                _%tl197119197188%_
                                _%hd197118197186%_))))
                       (let () (declare (not safe)) (_%g197112197154%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd197054197084%_
                                                 _%hd197051197076%_)
                                                (_%g197043197060%_
                                                 _%g197044197063%_))))
                                        (_%g197043197060%_
                                         _%g197044197063%_))))
                                (_%g197043197060%_ _%g197044197063%_))))
                        (_%g197043197060%_ _%g197044197063%_)))))
            (_%g197042197207%_ _%stx197038%_)))))
    (define gxc#generate-meta-define-syntax%
      (lambda (_%self196934%_ _%stx196935%_)
        (let* ((_%g196937196954%_
                (lambda (_%g196938196951%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196938196951%_))))
               (_%g196936197034%_
                (lambda (_%g196938196957%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196938196957%_))
                      (let ((_%e196941196959%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g196938196957%_))))
                        (let ((_%hd196942196962%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196941196959%_)))
                              (_%tl196943196964%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196941196959%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196943196964%_))
                              (let ((_%e196944196967%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl196943196964%_))))
                                (let ((_%hd196945196970%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196944196967%_)))
                                      (_%tl196946196972%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196944196967%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196946196972%_))
                                      (let ((_%e196947196975%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl196946196972%_))))
                                        (let ((_%hd196948196978%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196947196975%_)))
                                              (_%tl196949196980%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196947196975%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl196949196980%_))
                                              ((lambda (_%g196939196983%_
                                                        _%g196940196984%_)
                                                 (let* ((_%eid196999%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#generate-runtime-binding-id
                                                            _%g196940196984%_)))
                                                        (_%phi197001%_
                                                         (let ((__tmp206959
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#current-expander-phi))))
                   (declare (not safe))
                   (##fx+ __tmp206959 '1)))
                (_%block197003%_
                 (gxc#meta-state-begin-phi!
                  (let ()
                    (declare (not safe))
                    (slot-ref__0 _%self196934%_ 'state))
                  _%phi197001%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%g197006197013%_
                                                           (lambda (_%g197007197010%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g197007197010%_))))
                  (_%g197005197031%_
                   (lambda (_%g197007197016%_)
                     ((lambda (_%g197008197018%_)
                        (gxc#meta-state-add-phi!
                         (let ()
                           (declare (not safe))
                           (slot-ref__0 _%self196934%_ 'state))
                         _%phi197001%_
                         (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#define-runtime))
                               (cons _%g197008197018%_
                                     (cons _%g196939196983%_ '())))))
                      _%g197007197016%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g197005197031%_
                                                      _%eid196999%_))
                                                   (if _%block197003%_
                                                       (cons '%#begin
                                                             (cons (cons '%#begin-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons 'load-module
                                                               '()))
                                                   (cons (cons '%#quote
                                                               (cons _%block197003%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons '%#define-syntax
                                       (cons (let ()
                                               (declare (not safe))
                                               (gxc#generate-runtime-identifier
                                                _%g196940196984%_))
                                             (cons _%eid196999%_ '())))
                                 '())))
               (cons '%#define-syntax
                     (cons (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier
                              _%g196940196984%_))
                           (cons _%eid196999%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd196948196978%_
                                               _%hd196945196970%_)
                                              (_%g196937196954%_
                                               _%g196938196957%_))))
                                      (_%g196937196954%_ _%g196938196957%_))))
                              (_%g196937196954%_ _%g196938196957%_))))
                      (_%g196937196954%_ _%g196938196957%_)))))
          (_%g196936197034%_ _%stx196935%_))))
    (define gxc#generate-meta-define-alias%
      (lambda (_%self196866%_ _%stx196867%_)
        (let* ((_%g196869196886%_
                (lambda (_%g196870196883%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196870196883%_))))
               (_%g196868196931%_
                (lambda (_%g196870196889%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196870196889%_))
                      (let ((_%e196873196891%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g196870196889%_))))
                        (let ((_%hd196874196894%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196873196891%_)))
                              (_%tl196875196896%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196873196891%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196875196896%_))
                              (let ((_%e196876196899%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl196875196896%_))))
                                (let ((_%hd196877196902%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196876196899%_)))
                                      (_%tl196878196904%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196876196899%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196878196904%_))
                                      (let ((_%e196879196907%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl196878196904%_))))
                                        (let ((_%hd196880196910%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196879196907%_)))
                                              (_%tl196881196912%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196879196907%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl196881196912%_))
                                              ((lambda (_%g196871196915%_
                                                        _%g196872196916%_)
                                                 (cons '%#define-alias
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#generate-runtime-identifier _%g196872196916%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier
                              _%g196871196915%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd196880196910%_
                                               _%hd196877196902%_)
                                              (_%g196869196886%_
                                               _%g196870196889%_))))
                                      (_%g196869196886%_ _%g196870196889%_))))
                              (_%g196869196886%_ _%g196870196889%_))))
                      (_%g196869196886%_ _%g196870196889%_)))))
          (_%g196868196931%_ _%stx196867%_))))
    (define gxc#generate-meta-phi-define-values%
      (lambda (_%self196863%_ _%stx196864%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self196863%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx196864%_)
        (gxc#generate-meta-define-values% _%self196863%_ _%stx196864%_)))
    (define gxc#generate-meta-phi-expr
      (lambda (_%self196860%_ _%stx196861%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self196860%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx196861%_)
        '#!void))
    (define gxc#meta-state::t
      (let ((__tmp206961 (list)) (__tmp206960 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state::t
         'meta-state
         __tmp206961
         '(src n open blocks)
         __tmp206960
         ':init!)))
    (define gxc#meta-state?
      (let () (declare (not safe)) (__make-class-predicate gxc#meta-state::t)))
    (define gxc#make-meta-state
      (lambda _%$args196857%_
        (apply make-instance gxc#meta-state::t _%$args196857%_)))
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
      (lambda (_%self196843%_ _%ctx196844%_)
        (let ((_%self196847%_ _%self196843%_))
          (if (let ((__tmp206962
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self196847%_))))
                (declare (not safe))
                (##fx< '4 __tmp206962))
              (begin
                (let ((__tmp206963
                       (let ((__tmp206964
                              (##structure-ref
                               _%ctx196844%_
                               '1
                               gx#expander-context::t
                               '#f)))
                         (declare (not safe))
                         (gxc#module-id->path-string __tmp206964))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self196847%_
                   __tmp206963
                   '1
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self196847%_ '1 '2 '#f '#f))
                (let ((__tmp206965
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self196847%_
                   __tmp206965
                   '3
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self196847%_ '() '4 '#f '#f))
                '#!void)
              (let ((__tmp206966
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self196847%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self196847%_
                       '4
                       __tmp206966))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#meta-state::t ':init! gxc#meta-state:::init! '#f))
    (define gxc#meta-state-block::t
      (let ((__tmp206968 (list)) (__tmp206967 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state-block::t
         'meta-state-block
         __tmp206968
         '(ctx phi n code)
         __tmp206967
         '#f)))
    (define gxc#meta-state-block?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#meta-state-block::t)))
    (define gxc#make-meta-state-block
      (lambda _%$args196718%_
        (apply make-instance gxc#meta-state-block::t _%$args196718%_)))
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
      (lambda (_%state196678%_ _%phi196679%_)
        (let* ((_%state196680196688%_ _%state196678%_)
               (_%E196682196691%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%state196680196688%_
                           '((meta-state src n open))))
                  '#!void))
               (_%K196683196700%_
                (lambda (_%open196694%_ _%n196695%_ _%src196696%_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _%open196694%_ _%phi196679%_))
                      '#f
                      (let ((_%block-ref196698%_
                             (let ((__tmp206969 (number->string _%n196695%_)))
                               (declare (not safe))
                               (##string-append
                                _%src196696%_
                                '"~"
                                __tmp206969))))
                        (##structure-set!
                         _%state196678%_
                         (let () (declare (not safe)) (##fx+ _%n196695%_ '1))
                         '2
                         gxc#meta-state::t
                         '#f)
                        (let ((__tmp206970
                               (let ((__tmp206971
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context))))
                                 (declare (not safe))
                                 (##structure
                                  gxc#meta-state-block::t
                                  __tmp206971
                                  _%phi196679%_
                                  _%n196695%_
                                  '()))))
                          (declare (not safe))
                          (hash-put! _%open196694%_ _%phi196679%_ __tmp206970))
                        _%block-ref196698%_)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _%state196680196688%_
                 'gxc#meta-state::t))
              (let* ((_%e196684196703%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state196680196688%_
                         '1
                         '#f
                         '#f)))
                     (_%src196706%_ _%e196684196703%_)
                     (_%e196685196708%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state196680196688%_
                         '2
                         '#f
                         '#f)))
                     (_%n196711%_ _%e196685196708%_)
                     (_%e196686196713%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state196680196688%_
                         '3
                         '#f
                         '#f)))
                     (_%open196716%_ _%e196686196713%_))
                (_%K196683196700%_ _%open196716%_ _%n196711%_ _%src196706%_))
              (_%E196682196691%_)))))
    (define gxc#meta-state-add-phi!
      (lambda (_%state196672%_ _%phi196673%_ _%stx196674%_)
        (let ((_%block196676%_
               (let ((__tmp206972
                      (##structure-ref
                       _%state196672%_
                       '3
                       gxc#meta-state::t
                       '#f)))
                 (declare (not safe))
                 (hash-get __tmp206972 _%phi196673%_))))
          (##structure-set!
           _%block196676%_
           (cons _%stx196674%_
                 (##structure-ref
                  _%block196676%_
                  '4
                  gxc#meta-state-block::t
                  '#f))
           '4
           gxc#meta-state-block::t
           '#f))))
    (define gxc#meta-state-end-phi!
      (lambda (_%state196666%_)
        (##structure-set!
         _%state196666%_
         (let ((__tmp206975
                (lambda (_%_196668%_ _%block196669%_ _%r196670%_)
                  (cons _%block196669%_ _%r196670%_)))
               (__tmp206974
                (##structure-ref _%state196666%_ '4 gxc#meta-state::t '#f))
               (__tmp206973
                (##structure-ref _%state196666%_ '3 gxc#meta-state::t '#f)))
           (declare (not safe))
           (hash-fold __tmp206975 __tmp206974 __tmp206973))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _%state196666%_
         (let () (declare (not safe)) (make-hash-table-eq))
         '3
         gxc#meta-state::t
         '#f)))
    (define gxc#meta-state-end!
      (lambda (_%state196619%_)
        (gxc#meta-state-end-phi! _%state196619%_)
        (let ((__tmp206977
               (lambda (_%block196621%_ _%r196622%_)
                 (let* ((_%block196623196632%_ _%block196621%_)
                        (_%E196625196635%_
                         (lambda ()
                           (let ()
                             (declare (not safe))
                             (error '"No clause matching"
                                    _%block196623196632%_
                                    '((meta-state-block ctx phi n code))))
                           '#!void))
                        (_%K196626196643%_
                         (lambda (_%code196638%_
                                  _%n196639%_
                                  _%phi196640%_
                                  _%ctx196641%_)
                           (if (null? _%code196638%_)
                               _%r196622%_
                               (cons (cons _%ctx196641%_
                                           (cons _%phi196640%_
                                                 (cons _%n196639%_
                                                       (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (reverse _%code196638%_))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%r196622%_)))))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%block196623196632%_
                          'gxc#meta-state-block::t))
                       (let* ((_%e196627196646%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block196623196632%_
                                  '1
                                  '#f
                                  '#f)))
                              (_%ctx196649%_ _%e196627196646%_)
                              (_%e196628196651%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block196623196632%_
                                  '2
                                  '#f
                                  '#f)))
                              (_%phi196654%_ _%e196628196651%_)
                              (_%e196629196656%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block196623196632%_
                                  '3
                                  '#f
                                  '#f)))
                              (_%n196659%_ _%e196629196656%_)
                              (_%e196630196661%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block196623196632%_
                                  '4
                                  '#f
                                  '#f)))
                              (_%code196664%_ _%e196630196661%_))
                         (_%K196626196643%_
                          _%code196664%_
                          _%n196659%_
                          _%phi196654%_
                          _%ctx196649%_))
                       (_%E196625196635%_)))))
              (__tmp206976
               (##structure-ref _%state196619%_ '4 gxc#meta-state::t '#f)))
          (declare (not safe))
          (foldl__0 __tmp206977 '() __tmp206976))))
    (define gxc#collect-expression-refs
      (lambda (_%stx196615%_)
        (let ((_%ht196617%_
               (let () (declare (not safe)) (make-hash-table-eq))))
          (gxc#apply-collect-expression-refs__% '#f _%ht196617%_ _%stx196615%_)
          _%ht196617%_)))
    (define gxc#collect-refs-ref%
      (lambda (_%self196558%_ _%stx196559%_)
        (let* ((_%g196561196574%_
                (lambda (_%g196562196571%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196562196571%_))))
               (_%g196560196612%_
                (lambda (_%g196562196577%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196562196577%_))
                      (let ((_%e196564196579%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g196562196577%_))))
                        (let ((_%hd196565196582%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196564196579%_)))
                              (_%tl196566196584%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196564196579%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196566196584%_))
                              (let ((_%e196567196587%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl196566196584%_))))
                                (let ((_%hd196568196590%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196567196587%_)))
                                      (_%tl196569196592%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196567196587%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl196569196592%_))
                                      ((lambda (_%g196563196595%_)
                                         (let* ((_%bind196607%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#resolve-identifier__0
                                                    _%g196563196595%_)))
                                                (_%eid196609%_
                                                 (if _%bind196607%_
                                                     (##structure-ref
                                                      _%bind196607%_
                                                      '1
                                                      gx#binding::t
                                                      '#f)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%g196563196595%_))))
                                                (__tmp206978
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self196558%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-put!
                                            __tmp206978
                                            _%eid196609%_
                                            _%eid196609%_)))
                                       _%hd196568196590%_)
                                      (_%g196561196574%_ _%g196562196577%_))))
                              (_%g196561196574%_ _%g196562196577%_))))
                      (_%g196561196574%_ _%g196562196577%_)))))
          (_%g196560196612%_ _%stx196559%_))))
    (define gxc#collect-refs-setq%
      (lambda (_%self196485%_ _%stx196486%_)
        (let* ((_%g196488196505%_
                (lambda (_%g196489196502%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196489196502%_))))
               (_%g196487196555%_
                (lambda (_%g196489196508%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196489196508%_))
                      (let ((_%e196492196510%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g196489196508%_))))
                        (let ((_%hd196493196513%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196492196510%_)))
                              (_%tl196494196515%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196492196510%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196494196515%_))
                              (let ((_%e196495196518%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl196494196515%_))))
                                (let ((_%hd196496196521%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196495196518%_)))
                                      (_%tl196497196523%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196495196518%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196497196523%_))
                                      (let ((_%e196498196526%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl196497196523%_))))
                                        (let ((_%hd196499196529%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196498196526%_)))
                                              (_%tl196500196531%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196498196526%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl196500196531%_))
                                              ((lambda (_%g196490196534%_
                                                        _%g196491196535%_)
                                                 (let* ((_%bind196550%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#resolve-identifier__0
                                                            _%g196491196535%_)))
                                                        (_%eid196552%_
                                                         (if _%bind196550%_
                                                             (##structure-ref
                                                              _%bind196550%_
                                                              '1
                                                              gx#binding::t
                                                              '#f)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%g196491196535%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp206979
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self196485%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp206979
                                                      _%eid196552%_
                                                      _%eid196552%_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self196485%_
                                                      _%g196490196534%_))))
                                               _%hd196499196529%_
                                               _%hd196496196521%_)
                                              (_%g196488196505%_
                                               _%g196489196508%_))))
                                      (_%g196488196505%_ _%g196489196508%_))))
                              (_%g196488196505%_ _%g196489196508%_))))
                      (_%g196488196505%_ _%g196489196508%_)))))
          (_%g196487196555%_ _%stx196486%_))))
    (define gxc#find-runtime-begin%
      (lambda (_%self196442%_ _%stx196443%_)
        (let* ((_%g196445196455%_
                (lambda (_%g196446196452%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196446196452%_))))
               (_%g196444196482%_
                (lambda (_%g196446196458%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196446196458%_))
                      (let ((_%e196448196460%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g196446196458%_))))
                        (let ((_%hd196449196463%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196448196460%_)))
                              (_%tl196450196465%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196448196460%_))))
                          ((lambda (_%g196447196468%_)
                             (let ((__tmp206980
                                    (lambda (_%g196477196479%_)
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self196442%_
                                         _%g196477196479%_)))))
                               (declare (not safe))
                               (ormap__0 __tmp206980 _%g196447196468%_)))
                           _%tl196450196465%_)))
                      (_%g196445196455%_ _%g196446196458%_)))))
          (_%g196444196482%_ _%stx196443%_))))
    (define gxc#count-values-single%
      (lambda (_%self196439%_ _%stx196440%_) '1))
    (define gxc#count-values-call%
      (lambda (_%self196307%_ _%stx196308%_)
        (let* ((_%__stx206722206723%_ _%stx196308%_)
               (_%g196311196340%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx206722206723%_)))))
          (let ((_%__kont206724206725%_
                 (lambda (_%g196313196406%_ _%g196314196407%_)
                   (length (let ((__tmp206981
                                  (lambda (_%g196428196431%_ _%g196429196433%_)
                                    (cons _%g196428196431%_
                                          _%g196429196433%_))))
                             (declare (not safe))
                             (foldr__0 __tmp206981 '() _%g196313196406%_)))))
                (_%__kont206728206729%_ (lambda () '#f)))
            (let ((_%__match206767206768%_
                   (lambda (_%e196315196352%_
                            _%hd196316196355%_
                            _%tl196317196357%_
                            _%e196318196360%_
                            _%hd196319196363%_
                            _%tl196320196365%_
                            _%e196321196368%_
                            _%hd196322196371%_
                            _%tl196323196373%_
                            _%e196324196376%_
                            _%hd196325196379%_
                            _%tl196326196381%_
                            _%__splice206726206727%_
                            _%target196327196384%_
                            _%tl196329196386%_)
                     (letrec ((_%loop196330196389%_
                               (lambda (_%hd196328196392%_
                                        _%rand196334196394%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd196328196392%_))
                                     (let ((_%e196331196396%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd196328196392%_))))
                                       (let ((_%lp-tl196333196401%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e196331196396%_)))
                                             (_%lp-hd196332196399%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e196331196396%_))))
                                         (_%loop196330196389%_
                                          _%lp-tl196333196401%_
                                          (cons _%lp-hd196332196399%_
                                                _%rand196334196394%_))))
                                     (let ((_%rand196335196404%_
                                            (reverse _%rand196334196394%_)))
                                       (let ((_%g196313196406%_
                                              _%rand196335196404%_)
                                             (_%g196314196407%_
                                              _%hd196325196379%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%g196314196407%_
                                                'values))
                                             (_%__kont206724206725%_
                                              _%g196313196406%_
                                              _%g196314196407%_)
                                             (_%__kont206728206729%_))))))))
                       (_%loop196330196389%_ _%target196327196384%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx206722206723%_))
                  (let ((_%e196315196352%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx206722206723%_))))
                    (let ((_%tl196317196357%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e196315196352%_)))
                          (_%hd196316196355%_
                           (let ()
                             (declare (not safe))
                             (##car _%e196315196352%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl196317196357%_))
                          (let ((_%e196318196360%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl196317196357%_))))
                            (let ((_%tl196320196365%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e196318196360%_)))
                                  (_%hd196319196363%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e196318196360%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd196319196363%_))
                                  (let ((_%e196321196368%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd196319196363%_))))
                                    (let ((_%tl196323196373%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e196321196368%_)))
                                          (_%hd196322196371%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e196321196368%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd196322196371%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd196322196371%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl196323196373%_))
                                                  (let ((_%e196324196376%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl196323196373%_))))
                                                    (let ((_%tl196326196381%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e196324196376%_)))
                                                          (_%hd196325196379%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e196324196376%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl196326196381%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl196320196365%_))
                      (let ((_%__splice206726206727%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl196320196365%_
                                '0))))
                        (let ((_%tl196329196386%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice206726206727%_ '1)))
                              (_%target196327196384%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice206726206727%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl196329196386%_))
                              (_%__match206767206768%_
                               _%e196315196352%_
                               _%hd196316196355%_
                               _%tl196317196357%_
                               _%e196318196360%_
                               _%hd196319196363%_
                               _%tl196320196365%_
                               _%e196321196368%_
                               _%hd196322196371%_
                               _%tl196323196373%_
                               _%e196324196376%_
                               _%hd196325196379%_
                               _%tl196326196381%_
                               _%__splice206726206727%_
                               _%target196327196384%_
                               _%tl196329196386%_)
                              (_%__kont206728206729%_))))
                      (_%__kont206728206729%_))
                  (_%__kont206728206729%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont206728206729%_))
                                              (_%__kont206728206729%_))
                                          (_%__kont206728206729%_))))
                                  (_%__kont206728206729%_))))
                          (_%__kont206728206729%_))))
                  (_%__kont206728206729%_)))))))
    (define gxc#count-values-if%
      (lambda (_%self196212%_ _%stx196213%_)
        (let* ((_%g196215196236%_
                (lambda (_%g196216196233%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196216196233%_))))
               (_%g196214196304%_
                (lambda (_%g196216196239%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196216196239%_))
                      (let ((_%e196220196241%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g196216196239%_))))
                        (let ((_%hd196221196244%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196220196241%_)))
                              (_%tl196222196246%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196220196241%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196222196246%_))
                              (let ((_%e196223196249%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl196222196246%_))))
                                (let ((_%hd196224196252%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196223196249%_)))
                                      (_%tl196225196254%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196223196249%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196225196254%_))
                                      (let ((_%e196226196257%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl196225196254%_))))
                                        (let ((_%hd196227196260%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196226196257%_)))
                                              (_%tl196228196262%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196226196257%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl196228196262%_))
                                              (let ((_%e196229196265%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl196228196262%_))))
                                                (let ((_%hd196230196268%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e196229196265%_)))
                                                      (_%tl196231196270%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e196229196265%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl196231196270%_))
                                                      ((lambda (_%g196217196273%_
                                                                _%g196218196274%_
                                                                _%g196219196275%_)
                                                         (let ((_%c1196292196294%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1
                           _%self196212%_
                           _%g196218196274%_))))
                   (if _%c1196292196294%_
                       (let* ((_%c1196296%_ _%c1196292196294%_)
                              (_%c2196297196299%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self196212%_
                                  _%g196217196273%_))))
                         (if _%c2196297196299%_
                             (let ((_%c2196301%_ _%c2196297196299%_))
                               (if (fx= _%c1196296%_ _%c2196301%_)
                                   _%c1196296%_
                                   '#f))
                             '#f))
                       '#f)))
               _%hd196230196268%_
               _%hd196227196260%_
               _%hd196224196252%_)
              (_%g196215196236%_ _%g196216196239%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g196215196236%_
                                               _%g196216196239%_))))
                                      (_%g196215196236%_ _%g196216196239%_))))
                              (_%g196215196236%_ _%g196216196239%_))))
                      (_%g196215196236%_ _%g196216196239%_)))))
          (_%g196214196304%_ _%stx196213%_))))))
