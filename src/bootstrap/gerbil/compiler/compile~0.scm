(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/compile::timestamp 1773012986)
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
      (let ((__tmp206805 (list gxc#::void::t))
            (__tmp206804 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-bindings::t
         '::collect-bindings
         __tmp206805
         '()
         __tmp206804
         '#f)))
    (define gxc#::collect-bindings?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-bindings::t)))
    (define gxc#make-::collect-bindings
      (lambda _%$args205419%_
        (apply make-instance gxc#::collect-bindings::t _%$args205419%_)))
    (define gxc#::collect-bindings-bind-methods!
      (let ((__tmp206806
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
        (__make-atomic-promise __tmp206806)))
    (define gxc#apply-collect-bindings
      (lambda (_%stx205411%_)
        (force gxc#::collect-bindings-bind-methods!)
        (let* ((_%self205414%_
                (let ((__obj206780
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-bindings::t))))
                  __obj206780))
               (__tmp206807
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self205414%_ _%stx205411%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp206807
           gxc#current-compile-method
           _%self205414%_))))
    (define gxc#::lift-modules::t
      (let ((__tmp206809 (list gxc#::void::t))
            (__tmp206808 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::lift-modules::t
         '::lift-modules
         __tmp206809
         '(modules)
         __tmp206808
         '#f)))
    (define gxc#::lift-modules?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::lift-modules::t)))
    (define gxc#make-::lift-modules
      (lambda _%$args205408%_
        (apply make-instance gxc#::lift-modules::t _%$args205408%_)))
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
      (let ((__tmp206810
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
        (__make-atomic-promise __tmp206810)))
    (define gxc#apply-lift-modules__%
      (lambda (_%@@keywords205383%_ _%modules205380205384%_ _%stx205385%_)
        (let ((_%modules205388%_
               (if (eq? _%modules205380205384%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'modules:))
                   _%modules205380205384%_)))
          (force gxc#::lift-modules-bind-methods!)
          (let* ((_%self205390%_
                  (let ((__obj206782
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::lift-modules::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj206782
                       _%modules205388%_
                       '1
                       '#f
                       '#f))
                    __obj206782))
                 (__tmp206811
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self205390%_ _%stx205385%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp206811
             gxc#current-compile-method
             _%self205390%_)))))
    (define gxc#apply-lift-modules__@
      (lambda (_%@@keywords205397%_ . _%args205398%_)
        (apply gxc#apply-lift-modules__%
               _%@@keywords205397%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords205397%_
                  'modules:
                  absent-value))
               _%args205398%_)))
    (define gxc#apply-lift-modules
      (lambda _%args205381205404%_
        (apply keyword-dispatch
               '#(modules:)
               gxc#apply-lift-modules__@
               _%args205381205404%_)))
    (define gxc#::find-runtime-code::t
      (let ((__tmp206813 (list)) (__tmp206812 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-runtime-code::t
         '::find-runtime-code
         __tmp206813
         '()
         __tmp206812
         '#f)))
    (define gxc#::find-runtime-code?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-runtime-code::t)))
    (define gxc#make-::find-runtime-code
      (lambda _%$args205376%_
        (apply make-instance gxc#::find-runtime-code::t _%$args205376%_)))
    (define gxc#::find-runtime-code-bind-methods!
      (let ((__tmp206814
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
        (__make-atomic-promise __tmp206814)))
    (define gxc#apply-find-runtime-code
      (lambda (_%stx205368%_)
        (force gxc#::find-runtime-code-bind-methods!)
        (let* ((_%self205371%_
                (let ((__obj206784
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-runtime-code::t))))
                  __obj206784))
               (__tmp206815
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self205371%_ _%stx205368%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp206815
           gxc#current-compile-method
           _%self205371%_))))
    (define gxc#::find-lambda-expression::t
      (let ((__tmp206817 (list gxc#::false::t))
            (__tmp206816 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-lambda-expression::t
         '::find-lambda-expression
         __tmp206817
         '()
         __tmp206816
         '#f)))
    (define gxc#::find-lambda-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-lambda-expression::t)))
    (define gxc#make-::find-lambda-expression
      (lambda _%$args205365%_
        (apply make-instance gxc#::find-lambda-expression::t _%$args205365%_)))
    (define gxc#::find-lambda-expression-bind-methods!
      (let ((__tmp206818
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
        (__make-atomic-promise __tmp206818)))
    (define gxc#apply-find-lambda-expression
      (lambda (_%stx205357%_)
        (force gxc#::find-lambda-expression-bind-methods!)
        (let* ((_%self205360%_
                (let ((__obj206786
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-lambda-expression::t))))
                  __obj206786))
               (__tmp206819
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self205360%_ _%stx205357%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp206819
           gxc#current-compile-method
           _%self205360%_))))
    (define gxc#::count-values::t
      (let ((__tmp206821 (list gxc#::false-expression::t))
            (__tmp206820 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::count-values::t
         '::count-values
         __tmp206821
         '()
         __tmp206820
         '#f)))
    (define gxc#::count-values?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::count-values::t)))
    (define gxc#make-::count-values
      (lambda _%$args205354%_
        (apply make-instance gxc#::count-values::t _%$args205354%_)))
    (define gxc#::count-values-bind-methods!
      (let ((__tmp206822
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
        (__make-atomic-promise __tmp206822)))
    (define gxc#apply-count-values
      (lambda (_%stx205346%_)
        (force gxc#::count-values-bind-methods!)
        (let* ((_%self205349%_
                (let ((__obj206788
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::count-values::t))))
                  __obj206788))
               (__tmp206823
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self205349%_ _%stx205346%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp206823
           gxc#current-compile-method
           _%self205349%_))))
    (define gxc#::generate-runtime-empty::t
      (let ((__tmp206824 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-empty::t
         '::generate-runtime-empty
         __tmp206824
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime-empty?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-empty::t)))
    (define gxc#make-::generate-runtime-empty
      (lambda _%$args205343%_
        (apply make-instance gxc#::generate-runtime-empty::t _%$args205343%_)))
    (define gxc#::generate-runtime-empty-bind-methods!
      (let ((__tmp206825
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
        (__make-atomic-promise __tmp206825)))
    (define gxc#::generate-loader::t
      (let ((__tmp206827 (list gxc#::generate-runtime-empty::t))
            (__tmp206826 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-loader::t
         '::generate-loader
         __tmp206827
         '()
         __tmp206826
         '#f)))
    (define gxc#::generate-loader?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-loader::t)))
    (define gxc#make-::generate-loader
      (lambda _%$args205339%_
        (apply make-instance gxc#::generate-loader::t _%$args205339%_)))
    (define gxc#::generate-loader-bind-methods!
      (let ((__tmp206828
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
        (__make-atomic-promise __tmp206828)))
    (define gxc#apply-generate-loader
      (lambda (_%stx205331%_)
        (force gxc#::generate-loader-bind-methods!)
        (let* ((_%self205334%_
                (let ((__obj206791
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-loader::t))))
                  __obj206791))
               (__tmp206829
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self205334%_ _%stx205331%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp206829
           gxc#current-compile-method
           _%self205334%_))))
    (define gxc#::generate-runtime::t
      (let ((__tmp206830 (list gxc#::generate-runtime-empty::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime::t
         '::generate-runtime
         __tmp206830
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime::t)))
    (define gxc#make-::generate-runtime
      (lambda _%$args205328%_
        (apply make-instance gxc#::generate-runtime::t _%$args205328%_)))
    (define gxc#::generate-runtime-bind-methods!
      (let ((__tmp206831
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
        (__make-atomic-promise __tmp206831)))
    (define gxc#apply-generate-runtime
      (lambda (_%stx205320%_)
        (force gxc#::generate-runtime-bind-methods!)
        (let* ((_%self205323%_
                (let ((__obj206793
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime::t))))
                  __obj206793))
               (__tmp206832
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self205323%_ _%stx205320%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp206832
           gxc#current-compile-method
           _%self205323%_))))
    (define gxc#::generate-runtime-phi::t
      (let ((__tmp206834 (list gxc#::generate-runtime::t))
            (__tmp206833 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-phi::t
         '::generate-runtime-phi
         __tmp206834
         '()
         __tmp206833
         '#f)))
    (define gxc#::generate-runtime-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-phi::t)))
    (define gxc#make-::generate-runtime-phi
      (lambda _%$args205317%_
        (apply make-instance gxc#::generate-runtime-phi::t _%$args205317%_)))
    (define gxc#::generate-runtime-phi-bind-methods!
      (let ((__tmp206835
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
        (__make-atomic-promise __tmp206835)))
    (define gxc#apply-generate-runtime-phi
      (lambda (_%stx205309%_)
        (force gxc#::generate-runtime-phi-bind-methods!)
        (let* ((_%self205312%_
                (let ((__obj206795
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime-phi::t))))
                  __obj206795))
               (__tmp206836
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self205312%_ _%stx205309%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp206836
           gxc#current-compile-method
           _%self205312%_))))
    (define gxc#::collect-expression-refs::t
      (let ((__tmp206837 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-expression-refs::t
         '::collect-expression-refs
         __tmp206837
         '(table)
         '()
         '#f)))
    (define gxc#::collect-expression-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-expression-refs::t)))
    (define gxc#make-::collect-expression-refs
      (lambda _%$args205306%_
        (apply make-instance
               gxc#::collect-expression-refs::t
               _%$args205306%_)))
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
      (let ((__tmp206838
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
        (__make-atomic-promise __tmp206838)))
    (define gxc#apply-collect-expression-refs__%
      (lambda (_%@@keywords205281%_ _%table205278205282%_ _%stx205283%_)
        (let ((_%table205286%_
               (if (eq? _%table205278205282%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table205278205282%_)))
          (force gxc#::collect-expression-refs-bind-methods!)
          (let* ((_%self205288%_
                  (let ((__obj206797
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#::collect-expression-refs::t
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj206797
                       _%table205286%_
                       '1
                       '#f
                       '#f))
                    __obj206797))
                 (__tmp206839
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self205288%_ _%stx205283%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp206839
             gxc#current-compile-method
             _%self205288%_)))))
    (define gxc#apply-collect-expression-refs__@
      (lambda (_%@@keywords205295%_ . _%args205296%_)
        (apply gxc#apply-collect-expression-refs__%
               _%@@keywords205295%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords205295%_
                  'table:
                  absent-value))
               _%args205296%_)))
    (define gxc#apply-collect-expression-refs
      (lambda _%args205279205302%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-expression-refs__@
               _%args205279205302%_)))
    (define gxc#::generate-meta::t
      (let ((__tmp206841 (list gxc#::void-expression::t))
            (__tmp206840 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta::t
         '::generate-meta
         __tmp206841
         '(state)
         __tmp206840
         '#f)))
    (define gxc#::generate-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta::t)))
    (define gxc#make-::generate-meta
      (lambda _%$args205274%_
        (apply make-instance gxc#::generate-meta::t _%$args205274%_)))
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
      (let ((__tmp206842
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
        (__make-atomic-promise __tmp206842)))
    (define gxc#apply-generate-meta__%
      (lambda (_%@@keywords205249%_ _%state205246205250%_ _%stx205251%_)
        (let ((_%state205254%_
               (if (eq? _%state205246205250%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state205246205250%_)))
          (force gxc#::generate-meta-bind-methods!)
          (let* ((_%self205256%_
                  (let ((__obj206799
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj206799
                       _%state205254%_
                       '1
                       '#f
                       '#f))
                    __obj206799))
                 (__tmp206843
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self205256%_ _%stx205251%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp206843
             gxc#current-compile-method
             _%self205256%_)))))
    (define gxc#apply-generate-meta__@
      (lambda (_%@@keywords205263%_ . _%args205264%_)
        (apply gxc#apply-generate-meta__%
               _%@@keywords205263%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords205263%_
                  'state:
                  absent-value))
               _%args205264%_)))
    (define gxc#apply-generate-meta
      (lambda _%args205247205270%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta__@
               _%args205247205270%_)))
    (define gxc#::generate-meta-phi::t
      (let ((__tmp206845 (list)) (__tmp206844 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta-phi::t
         '::generate-meta-phi
         __tmp206845
         '(state)
         __tmp206844
         '#f)))
    (define gxc#::generate-meta-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta-phi::t)))
    (define gxc#make-::generate-meta-phi
      (lambda _%$args205242%_
        (apply make-instance gxc#::generate-meta-phi::t _%$args205242%_)))
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
      (let ((__tmp206846
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
        (__make-atomic-promise __tmp206846)))
    (define gxc#apply-generate-meta-phi__%
      (lambda (_%@@keywords205217%_ _%state205214205218%_ _%stx205219%_)
        (let ((_%state205222%_
               (if (eq? _%state205214205218%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state205214205218%_)))
          (force gxc#::generate-meta-phi-bind-methods!)
          (let* ((_%self205224%_
                  (let ((__obj206801
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta-phi::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj206801
                       _%state205222%_
                       '1
                       '#f
                       '#f))
                    __obj206801))
                 (__tmp206847
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self205224%_ _%stx205219%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp206847
             gxc#current-compile-method
             _%self205224%_)))))
    (define gxc#apply-generate-meta-phi__@
      (lambda (_%@@keywords205231%_ . _%args205232%_)
        (apply gxc#apply-generate-meta-phi__%
               _%@@keywords205231%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords205231%_
                  'state:
                  absent-value))
               _%args205232%_)))
    (define gxc#apply-generate-meta-phi
      (lambda _%args205215205238%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta-phi__@
               _%args205215205238%_)))
    (define gxc#collect-bindings-define-values%
      (lambda (_%self205143%_ _%stx205144%_)
        (let* ((_%g205146205163%_
                (lambda (_%g205147205160%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g205147205160%_))))
               (_%g205145205210%_
                (lambda (_%g205147205166%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g205147205166%_))
                      (let ((_%e205150205168%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g205147205166%_))))
                        (let ((_%hd205151205171%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205150205168%_)))
                              (_%tl205152205173%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205150205168%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl205152205173%_))
                              (let ((_%e205153205176%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl205152205173%_))))
                                (let ((_%hd205154205179%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e205153205176%_)))
                                      (_%tl205155205181%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e205153205176%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl205155205181%_))
                                      (let ((_%e205156205184%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl205155205181%_))))
                                        (let ((_%hd205157205187%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e205156205184%_)))
                                              (_%tl205158205189%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e205156205184%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl205158205189%_))
                                              ((lambda (_%g205148205192%_
                                                        _%g205149205193%_)
                                                 (let ((__tmp206848
                                                        (lambda (_%bind205208%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#identifier? _%bind205208%_))
                      (gxc#add-module-binding! _%bind205208%_ '#f)
                      '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#stx-for-each1
                                                    __tmp206848
                                                    _%g205149205193%_)))
                                               _%hd205157205187%_
                                               _%hd205154205179%_)
                                              (_%g205146205163%_
                                               _%g205147205166%_))))
                                      (_%g205146205163%_ _%g205147205166%_))))
                              (_%g205146205163%_ _%g205147205166%_))))
                      (_%g205146205163%_ _%g205147205166%_)))))
          (_%g205145205210%_ _%stx205144%_))))
    (define gxc#collect-bindings-define-syntax%
      (lambda (_%self205075%_ _%stx205076%_)
        (let* ((_%g205078205095%_
                (lambda (_%g205079205092%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g205079205092%_))))
               (_%g205077205140%_
                (lambda (_%g205079205098%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g205079205098%_))
                      (let ((_%e205082205100%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g205079205098%_))))
                        (let ((_%hd205083205103%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205082205100%_)))
                              (_%tl205084205105%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205082205100%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl205084205105%_))
                              (let ((_%e205085205108%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl205084205105%_))))
                                (let ((_%hd205086205111%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e205085205108%_)))
                                      (_%tl205087205113%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e205085205108%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl205087205113%_))
                                      (let ((_%e205088205116%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl205087205113%_))))
                                        (let ((_%hd205089205119%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e205088205116%_)))
                                              (_%tl205090205121%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e205088205116%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl205090205121%_))
                                              ((lambda (_%g205080205124%_
                                                        _%g205081205125%_)
                                                 (gxc#add-module-binding!
                                                  _%g205081205125%_
                                                  '#t))
                                               _%hd205089205119%_
                                               _%hd205086205111%_)
                                              (_%g205078205095%_
                                               _%g205079205098%_))))
                                      (_%g205078205095%_ _%g205079205098%_))))
                              (_%g205078205095%_ _%g205079205098%_))))
                      (_%g205078205095%_ _%g205079205098%_)))))
          (_%g205077205140%_ _%stx205076%_))))
    (define gxc#lift-modules-module%
      (lambda (_%self205017%_ _%stx205018%_)
        (let* ((_%g205020205034%_
                (lambda (_%g205021205031%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g205021205031%_))))
               (_%g205019205072%_
                (lambda (_%g205021205037%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g205021205037%_))
                      (let ((_%e205024205039%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g205021205037%_))))
                        (let ((_%hd205025205042%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e205024205039%_)))
                              (_%tl205026205044%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e205024205039%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl205026205044%_))
                              (let ((_%e205027205047%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl205026205044%_))))
                                (let ((_%hd205028205050%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e205027205047%_)))
                                      (_%tl205029205052%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e205027205047%_))))
                                  ((lambda (_%g205022205055%_
                                            _%g205023205056%_)
                                     (let ((_%ctx205069%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-local-e__0
                                               _%g205023205056%_))))
                                       (set-box!
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self205017%_
                                           'modules))
                                        (cons _%ctx205069%_
                                              (unbox (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self205017%_
                                                        'modules)))))
                                       (let ((__tmp206849
                                              (lambda ()
                                                (let ((__tmp206850
                                                       (##structure-ref
                                                        _%ctx205069%_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self205017%_
                                                   __tmp206850)))))
                                         (declare (not safe))
                                         (call-with-parameters__1
                                          __tmp206849
                                          gx#current-expander-context
                                          _%ctx205069%_))))
                                   _%tl205029205052%_
                                   _%hd205028205050%_)))
                              (_%g205020205034%_ _%g205021205037%_))))
                      (_%g205020205034%_ _%g205021205037%_)))))
          (_%g205019205072%_ _%stx205018%_))))
    (define gxc#current-compile-decls-unsafe?
      (lambda ()
        (let ((_%decls204971204973%_
               (let () (declare (not safe)) (gxc#current-compile-decls))))
          (if _%decls204971204973%_
              (let ((_%decls204975%_ _%decls204971204973%_))
                (let _%lp204977%_ ((_%rest204979%_ _%decls204975%_))
                  (let* ((_%rest204980204988%_ _%rest204979%_)
                         (_%else204982204996%_ (lambda () '#f))
                         (_%K204984205005%_
                          (lambda (_%decls204999%_ _%decl205000%_)
                            (if (equal? _%decl205000%_ '(not safe))
                                '#t
                                (if (equal? _%decl205000%_ '(safe))
                                    '#f
                                    (_%lp204977%_ _%decls204999%_))))))
                    (if (pair? _%rest204980204988%_)
                        (let ((_%hd204985205008%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest204980204988%_)))
                              (_%tl204986205010%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest204980204988%_))))
                          (let* ((_%decl205013%_ _%hd204985205008%_)
                                 (_%decls205015%_ _%tl204986205010%_))
                            (_%K204984205005%_
                             _%decls205015%_
                             _%decl205013%_)))
                        (_%else204982204996%_)))))
              '#f))))
    (define gxc#add-module-binding!
      (lambda (_%id204965%_ _%syntax?204966%_)
        (let ((_%eid204968%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id204965%_))
                '1
                gx#binding::t
                '#f))
              (_%ht204969%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-symbol-table))
                '2
                gxc#symbol-table::t
                '#f)))
          (if (let () (declare (not safe)) (interned-symbol? _%eid204968%_))
              '#!void
              (let ((__tmp206851
                     (let ((__tmp206852
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__0
                               _%eid204968%_))))
                       (declare (not safe))
                       (gx#make-binding-id__1 __tmp206852 _%syntax?204966%_))))
                (declare (not safe))
                (hash-put! _%ht204969%_ _%eid204968%_ __tmp206851))))))
    (define gxc#generate-runtime-empty
      (lambda (_%self204962%_ _%stx204963%_) '(begin)))
    (define gxc#generate-runtime-begin%
      (lambda (_%self204809%_ _%stx204810%_)
        (letrec ((_%simplify204812%_
                  (lambda (_%body204860%_)
                    (let _%lp204862%_ ((_%rest204864%_ _%body204860%_)
                                       (_%r204865%_ '()))
                      (let* ((_%rest204866204874%_ _%rest204864%_)
                             (_%else204868204882%_
                              (lambda () (reverse _%r204865%_)))
                             (_%K204870204950%_
                              (lambda (_%rest204885%_ _%hd204886%_)
                                (let* ((_%hd204887204903%_ _%hd204886%_)
                                       (_%else204891204911%_
                                        (lambda ()
                                          (_%lp204862%_
                                           _%rest204885%_
                                           (cons _%hd204886%_ _%r204865%_)))))
                                  (let ((_%K204899204940%_
                                         (lambda (_%exprs204938%_)
                                           (_%lp204862%_
                                            (let ()
                                              (declare (not safe))
                                              (foldr__0
                                               cons
                                               _%rest204885%_
                                               _%exprs204938%_))
                                            _%r204865%_)))
                                        (_%K204894204924%_
                                         (lambda ()
                                           (if (null? _%rest204885%_)
                                               (_%lp204862%_
                                                _%rest204885%_
                                                (cons _%hd204886%_
                                                      _%r204865%_))
                                               (_%lp204862%_
                                                _%rest204885%_
                                                _%r204865%_))))
                                        (_%K204893204916%_
                                         (lambda ()
                                           (if (null? _%rest204885%_)
                                               (_%lp204862%_
                                                _%rest204885%_
                                                (cons _%hd204886%_
                                                      _%r204865%_))
                                               (_%lp204862%_
                                                _%rest204885%_
                                                _%r204865%_)))))
                                    (let ((_%try-match204890204919%_
                                           (lambda ()
                                             (if (symbol? _%hd204887204903%_)
                                                 (_%K204893204916%_)
                                                 (_%else204891204911%_)))))
                                      (if (pair? _%hd204887204903%_)
                                          (let ((_%tl204901204945%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd204887204903%_)))
                                                (_%hd204900204943%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd204887204903%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd204900204943%_
                                                         'begin))
                                                (let ((_%exprs204948%_
                                                       _%tl204901204945%_))
                                                  (_%K204899204940%_
                                                   _%exprs204948%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd204900204943%_
                                                             'quote))
                                                    (if (pair? _%tl204901204945%_)
                                                        (let ((_%tl204898204932%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%tl204901204945%_))))
                  (if (null? _%tl204898204932%_)
                      (_%K204894204924%_)
                      (_%try-match204890204919%_)))
                (_%try-match204890204919%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%try-match204890204919%_))))
                                          (_%try-match204890204919%_))))))))
                        (if (pair? _%rest204866204874%_)
                            (let ((_%hd204871204953%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest204866204874%_)))
                                  (_%tl204872204955%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest204866204874%_))))
                              (let* ((_%hd204958%_ _%hd204871204953%_)
                                     (_%rest204960%_ _%tl204872204955%_))
                                (_%K204870204950%_
                                 _%rest204960%_
                                 _%hd204958%_)))
                            (_%else204868204882%_)))))))
          (let* ((_%g204814204824%_
                  (lambda (_%g204815204821%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g204815204821%_))))
                 (_%g204813204857%_
                  (lambda (_%g204815204827%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g204815204827%_))
                        (let ((_%e204817204829%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g204815204827%_))))
                          (let ((_%hd204818204832%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e204817204829%_)))
                                (_%tl204819204834%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e204817204829%_))))
                            ((lambda (_%g204816204837%_)
                               (let* ((_%body204852%_
                                       (map (lambda (_%g204847204849%_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%self204809%_
                                                 _%g204847204849%_)))
                                            _%g204816204837%_))
                                      (_%body204854%_
                                       (_%simplify204812%_ _%body204852%_)))
                                 (if (let ((__tmp206853
                                            (length _%body204854%_)))
                                       (declare (not safe))
                                       (##fx= __tmp206853 '1))
                                     (car _%body204854%_)
                                     (cons 'begin _%body204854%_))))
                             _%tl204819204834%_)))
                        (_%g204814204824%_ _%g204815204827%_)))))
            (_%g204813204857%_ _%stx204810%_)))))
    (define gxc#generate-runtime-begin-foreign%
      (lambda (_%self204770%_ _%stx204771%_)
        (let* ((_%g204773204783%_
                (lambda (_%g204774204780%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204774204780%_))))
               (_%g204772204806%_
                (lambda (_%g204774204786%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204774204786%_))
                      (let ((_%e204776204788%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g204774204786%_))))
                        (let ((_%hd204777204791%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204776204788%_)))
                              (_%tl204778204793%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204776204788%_))))
                          ((lambda (_%g204775204796%_)
                             (cons 'begin
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax->datum _%g204775204796%_))))
                           _%tl204778204793%_)))
                      (_%g204773204783%_ _%g204774204786%_)))))
          (_%g204772204806%_ _%stx204771%_))))
    (define gxc#generate-runtime-begin-annotation%
      (lambda (_%self204536%_ _%stx204537%_)
        (let* ((_%__stx205443205444%_ _%stx204537%_)
               (_%g204541204593%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx205443205444%_)))))
          (let ((_%__kont205445205446%_
                 (lambda (_%g204543204752%_ _%g204544204753%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self204536%_ _%g204543204752%_))))
                (_%__kont205447205448%_
                 (lambda (_%g204554204700%_
                          _%g204555204701%_
                          _%g204556204702%_)
                   (if (let ((__tmp206854
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%g204556204702%_))))
                         (declare (not safe))
                         (##memq __tmp206854 '(@inline)))
                       '(begin)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1
                          _%self204536%_
                          _%g204554204700%_)))))
                (_%__kont205451205452%_
                 (lambda (_%g204578204622%_ _%g204579204623%_)
                   (let ((_%decls204638%_
                          (map gx#syntax->datum _%g204579204623%_)))
                     (let ((__tmp206857
                            (lambda ()
                              (cons 'begin
                                    (cons (cons 'declare _%decls204638%_)
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self204536%_
                                                   _%g204578204622%_))
                                                '())))))
                           (__tmp206855
                            (let ((__tmp206856
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-decls))))
                              (declare (not safe))
                              (foldr__0 cons __tmp206856 _%decls204638%_))))
                       (declare (not safe))
                       (call-with-parameters__1
                        __tmp206857
                        gxc#current-compile-decls
                        __tmp206855))))))
            (let* ((_%__match205498205499%_
                    (lambda (_%e204557204646%_
                             _%hd204558204649%_
                             _%tl204559204651%_
                             _%e204560204654%_
                             _%hd204561204657%_
                             _%tl204562204659%_
                             _%e204563204662%_
                             _%hd204564204665%_
                             _%tl204565204667%_
                             _%__splice205449205450%_
                             _%target204566204670%_
                             _%tl204568204672%_)
                      (letrec ((_%loop204569204675%_
                                (lambda (_%hd204567204678%_
                                         _%param204573204680%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd204567204678%_))
                                      (let ((_%e204570204682%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd204567204678%_))))
                                        (let ((_%lp-tl204572204687%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204570204682%_)))
                                              (_%lp-hd204571204685%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204570204682%_))))
                                          (_%loop204569204675%_
                                           _%lp-tl204572204687%_
                                           (cons _%lp-hd204571204685%_
                                                 _%param204573204680%_))))
                                      (let ((_%param204574204690%_
                                             (reverse _%param204573204680%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl204562204659%_))
                                            (let ((_%e204575204692%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl204562204659%_))))
                                              (let ((_%tl204577204697%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e204575204692%_)))
                                                    (_%hd204576204695%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e204575204692%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl204577204697%_))
                                                    (let ((_%g204554204700%_
                                                           _%hd204576204695%_)
                                                          (_%g204555204701%_
                                                           _%param204574204690%_)
                                                          (_%g204556204702%_
                                                           _%hd204564204665%_))
                                                      (if (and (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier? _%g204556204702%_))
                       (not (let ((__tmp206858
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%g204556204702%_))))
                              (declare (not safe))
                              (##memq __tmp206858 gxc#gambit-annotations))))
                  (_%__kont205447205448%_
                   _%g204554204700%_
                   _%g204555204701%_
                   _%g204556204702%_)
                  (_%__kont205451205452%_
                   _%hd204576204695%_
                   _%hd204561204657%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g204541204593%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g204541204593%_))))))))
                        (_%loop204569204675%_ _%target204566204670%_ '()))))
                   (_%__match205472205473%_
                    (lambda (_%e204545204728%_
                             _%hd204546204731%_
                             _%tl204547204733%_
                             _%e204548204736%_
                             _%hd204549204739%_
                             _%tl204550204741%_
                             _%e204551204744%_
                             _%hd204552204747%_
                             _%tl204553204749%_)
                      (let ((_%g204543204752%_ _%hd204552204747%_)
                            (_%g204544204753%_ _%hd204549204739%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%g204544204753%_))
                            (_%__kont205445205446%_
                             _%g204543204752%_
                             _%g204544204753%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd204549204739%_))
                                (let ((_%e204563204662%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd204549204739%_))))
                                  (let ((_%tl204565204667%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e204563204662%_)))
                                        (_%hd204564204665%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e204563204662%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl204565204667%_))
                                        (let ((_%__splice205449205450%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%tl204565204667%_
                                                  '0))))
                                          (let ((_%tl204568204672%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice205449205450%_
                                                    '1)))
                                                (_%target204566204670%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice205449205450%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl204568204672%_))
                                                (_%__match205498205499%_
                                                 _%e204545204728%_
                                                 _%hd204546204731%_
                                                 _%tl204547204733%_
                                                 _%e204548204736%_
                                                 _%hd204549204739%_
                                                 _%tl204550204741%_
                                                 _%e204563204662%_
                                                 _%hd204564204665%_
                                                 _%tl204565204667%_
                                                 _%__splice205449205450%_
                                                 _%target204566204670%_
                                                 _%tl204568204672%_)
                                                (_%__kont205451205452%_
                                                 _%hd204552204747%_
                                                 _%hd204549204739%_))))
                                        (_%__kont205451205452%_
                                         _%hd204552204747%_
                                         _%hd204549204739%_))))
                                (_%__kont205451205452%_
                                 _%hd204552204747%_
                                 _%hd204549204739%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx205443205444%_))
                  (let ((_%e204545204728%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx205443205444%_))))
                    (let ((_%tl204547204733%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e204545204728%_)))
                          (_%hd204546204731%_
                           (let ()
                             (declare (not safe))
                             (##car _%e204545204728%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl204547204733%_))
                          (let ((_%e204548204736%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl204547204733%_))))
                            (let ((_%tl204550204741%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e204548204736%_)))
                                  (_%hd204549204739%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e204548204736%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl204550204741%_))
                                  (let ((_%e204551204744%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl204550204741%_))))
                                    (let ((_%tl204553204749%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e204551204744%_)))
                                          (_%hd204552204747%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e204551204744%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl204553204749%_))
                                          (_%__match205472205473%_
                                           _%e204545204728%_
                                           _%hd204546204731%_
                                           _%tl204547204733%_
                                           _%e204548204736%_
                                           _%hd204549204739%_
                                           _%tl204550204741%_
                                           _%e204551204744%_
                                           _%hd204552204747%_
                                           _%tl204553204749%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd204549204739%_))
                                              (let ((_%e204563204662%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd204549204739%_))))
                                                (let ((_%tl204565204667%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e204563204662%_)))
                                                      (_%hd204564204665%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e204563204662%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl204565204667%_))
                                                      (let ((_%__splice205449205450%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl204565204667%_
                        '0))))
                (let ((_%tl204568204672%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice205449205450%_ '1)))
                      (_%target204566204670%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice205449205450%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl204568204672%_))
                      (_%__match205498205499%_
                       _%e204545204728%_
                       _%hd204546204731%_
                       _%tl204547204733%_
                       _%e204548204736%_
                       _%hd204549204739%_
                       _%tl204550204741%_
                       _%e204563204662%_
                       _%hd204564204665%_
                       _%tl204565204667%_
                       _%__splice205449205450%_
                       _%target204566204670%_
                       _%tl204568204672%_)
                      (let () (declare (not safe)) (_%g204541204593%_)))))
              (let () (declare (not safe)) (_%g204541204593%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g204541204593%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd204549204739%_))
                                      (let ((_%e204563204662%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd204549204739%_))))
                                        (let ((_%tl204565204667%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204563204662%_)))
                                              (_%hd204564204665%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204563204662%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl204565204667%_))
                                              (let ((_%__splice205449205450%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl204565204667%_
                                                        '0))))
                                                (let ((_%tl204568204672%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice205449205450%_
                                                          '1)))
                                                      (_%target204566204670%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice205449205450%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl204568204672%_))
                                                      (_%__match205498205499%_
                                                       _%e204545204728%_
                                                       _%hd204546204731%_
                                                       _%tl204547204733%_
                                                       _%e204548204736%_
                                                       _%hd204549204739%_
                                                       _%tl204550204741%_
                                                       _%e204563204662%_
                                                       _%hd204564204665%_
                                                       _%tl204565204667%_
                                                       _%__splice205449205450%_
                                                       _%target204566204670%_
                                                       _%tl204568204672%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g204541204593%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g204541204593%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g204541204593%_))))))
                          (let () (declare (not safe)) (_%g204541204593%_)))))
                  (let () (declare (not safe)) (_%g204541204593%_))))))))
    (define gxc#generate-runtime-declare%
      (lambda (_%self204495%_ _%stx204496%_)
        (let* ((_%g204498204508%_
                (lambda (_%g204499204505%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204499204505%_))))
               (_%g204497204533%_
                (lambda (_%g204499204511%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204499204511%_))
                      (let ((_%e204501204513%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g204499204511%_))))
                        (let ((_%hd204502204516%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204501204513%_)))
                              (_%tl204503204518%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204501204513%_))))
                          ((lambda (_%g204500204521%_)
                             (let ((_%decls204531%_
                                    (map gx#syntax->datum _%g204500204521%_)))
                               (let ((__tmp206859
                                      (let ((__tmp206860
                                             (let ()
                                               (declare (not safe))
                                               (gxc#current-compile-decls))))
                                        (declare (not safe))
                                        (foldr__0
                                         cons
                                         __tmp206860
                                         _%decls204531%_))))
                                 (declare (not safe))
                                 (gxc#current-compile-decls __tmp206859))
                               (cons 'declare _%decls204531%_)))
                           _%tl204503204518%_)))
                      (_%g204498204508%_ _%g204499204511%_)))))
          (_%g204497204533%_ _%stx204496%_))))
    (define gxc#generate-runtime-define-values%
      (lambda (_%self204242%_ _%stx204243%_)
        (let* ((_%g204245204262%_
                (lambda (_%g204246204259%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204246204259%_))))
               (_%g204244204492%_
                (lambda (_%g204246204265%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204246204265%_))
                      (let ((_%e204249204267%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g204246204265%_))))
                        (let ((_%hd204250204270%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204249204267%_)))
                              (_%tl204251204272%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204249204267%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204251204272%_))
                              (let ((_%e204252204275%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl204251204272%_))))
                                (let ((_%hd204253204278%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204252204275%_)))
                                      (_%tl204254204280%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204252204275%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl204254204280%_))
                                      (let ((_%e204255204283%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl204254204280%_))))
                                        (let ((_%hd204256204286%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204255204283%_)))
                                              (_%tl204257204288%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204255204283%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl204257204288%_))
                                              ((lambda (_%g204247204291%_
                                                        _%g204248204292%_)
                                                 (let* ((_%__stx205551205552%_
                                                         _%g204248204292%_)
                                                        (_%g204309204323%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx205551205552%_)))))
                                                   (let ((_%__kont205553205554%_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _%self204242%_
                                                               _%g204247204291%_))))
                                                         (_%__kont205555205556%_
                                                          (lambda (_%g204315204455%_)
                                                            (let ((_%eid204464%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id
                              _%g204315204455%_))))
                      (let ((_%lambda-expr204465204467%_
                             (gxc#apply-find-lambda-expression
                              _%g204247204291%_)))
                        (if _%lambda-expr204465204467%_
                            (let* ((_%lambda-expr204469%_
                                    _%lambda-expr204465204467%_)
                                   (__tmp206861
                                    (let ()
                                      (declare (not safe))
                                      (gxc#current-compile-runtime-names))))
                              (declare (not safe))
                              (hash-put!
                               __tmp206861
                               _%lambda-expr204469%_
                               _%eid204464%_))
                            '#f))
                      (cons 'define
                            (cons _%eid204464%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__1
                                           _%self204242%_
                                           _%g204247204291%_))
                                        '()))))))
                 (_%__kont205557205558%_
                  (lambda ()
                    (let* ((_%tmp204330%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%body204439%_
                            (let _%lp204332%_ ((_%rest204334%_
                                                _%g204248204292%_)
                                               (_%k204335%_ '0)
                                               (_%r204336%_ '()))
                              (let* ((_%__stx205521205522%_ _%rest204334%_)
                                     (_%g204341204358%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx205521205522%_)))))
                                (let ((_%__kont205523205524%_
                                       (lambda (_%g204343204426%_)
                                         (_%lp204332%_
                                          _%g204343204426%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k204335%_ '1))
                                          _%r204336%_)))
                                      (_%__kont205525205526%_
                                       (lambda (_%g204348204399%_
                                                _%g204349204400%_)
                                         (_%lp204332%_
                                          _%g204348204399%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k204335%_ '1))
                                          (cons (cons 'define
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#generate-runtime-binding-id
                                                               _%g204349204400%_))
                                                            (cons (gxc#generate-runtime-values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tmp204330%_
                           _%k204335%_
                           _%g204348204399%_)
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%r204336%_))))
                                      (_%__kont205527205528%_
                                       (lambda (_%g204353204370%_)
                                         (let ((__tmp206862
                                                (cons (cons 'define
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#generate-runtime-binding-id
                             _%g204353204370%_))
                          (cons (gxc#generate-runtime-values->list
                                 _%tmp204330%_
                                 _%k204335%_)
                                '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (foldl__0
                                            cons
                                            __tmp206862
                                            _%r204336%_))))
                                      (_%__kont205529205530%_
                                       (lambda () (reverse _%r204336%_))))
                                  (let ((_%g204339204386%_
                                         (lambda ()
                                           (let ((_%g204353204370%_
                                                  _%__stx205521205522%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%g204353204370%_))
                                                 (_%__kont205527205528%_
                                                  _%g204353204370%_)
                                                 (_%__kont205529205530%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx205521205522%_))
                                        (let ((_%e204344204415%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx205521205522%_))))
                                          (let ((_%tl204346204420%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e204344204415%_)))
                                                (_%hd204345204418%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e204344204415%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd204345204418%_))
                                                (let ((_%e204347204423%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd204345204418%_))))
                                                  (if (equal? _%e204347204423%_
                                                              '#f)
                                                      (_%__kont205523205524%_
                                                       _%tl204346204420%_)
                                                      (_%__kont205525205526%_
                                                       _%tl204346204420%_
                                                       _%hd204345204418%_)))
                                                (_%__kont205525205526%_
                                                 _%tl204346204420%_
                                                 _%hd204345204418%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g204339204386%_)))))))))
                      (cons 'begin
                            (cons (cons 'define
                                        (cons _%tmp204330%_
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self204242%_
                                                       _%g204247204291%_))
                                                    '())))
                                  (cons (gxc#generate-runtime-check-values
                                         _%tmp204330%_
                                         _%g204248204292%_
                                         _%g204247204291%_)
                                        _%body204439%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx205551205552%_))
                                                         (let ((_%e204311204476%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx205551205552%_))))
                   (let ((_%tl204313204481%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e204311204476%_)))
                         (_%hd204312204479%_
                          (let ()
                            (declare (not safe))
                            (##car _%e204311204476%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-datum? _%hd204312204479%_))
                         (let ((_%e204314204484%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd204312204479%_))))
                           (if (equal? _%e204314204484%_ '#f)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl204313204481%_))
                                   (_%__kont205553205554%_)
                                   (_%__kont205557205558%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl204313204481%_))
                                   (_%__kont205555205556%_ _%hd204312204479%_)
                                   (_%__kont205557205558%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl204313204481%_))
                             (_%__kont205555205556%_ _%hd204312204479%_)
                             (_%__kont205557205558%_)))))
                 (_%__kont205557205558%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd204256204286%_
                                               _%hd204253204278%_)
                                              (_%g204245204262%_
                                               _%g204246204265%_))))
                                      (_%g204245204262%_ _%g204246204265%_))))
                              (_%g204245204262%_ _%g204246204265%_))))
                      (_%g204245204262%_ _%g204246204265%_)))))
          (_%g204244204492%_ _%stx204243%_))))
    (define gxc#generate-runtime-check-values
      (lambda (_%vals204217%_ _%hd204218%_ _%expr204219%_)
        (let ((_%$e204221%_ (gxc#apply-count-values _%expr204219%_)))
          (if _%$e204221%_
              ((lambda (_%count204224%_)
                 (let ((_%len204226%_
                        (let ()
                          (declare (not safe))
                          (gx#stx-length _%hd204218%_)))
                       (_%cmp204227%_
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-list? _%hd204218%_))
                            fx=
                            fx>=)))
                   (if (or (let ()
                             (declare (not safe))
                             (##fx= _%len204226%_ '0))
                           (_%cmp204227%_ _%count204224%_ _%len204226%_))
                       '#!void
                       (let ()
                         (declare (not safe))
                         (gxc#raise-compile-error
                          '"Value count mismatch"
                          _%expr204219%_
                          _%hd204218%_)))))
               _%$e204221%_)
              (let* ((_%len204233%_
                      (let ()
                        (declare (not safe))
                        (gx#stx-length _%hd204218%_)))
                     (_%cmp204235%_
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-list? _%hd204218%_))
                          '##fx=
                          '##fx>=))
                     (_%errmsg204237%_
                      (let ((__tmp206864
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-list? _%hd204218%_))
                                 '"Context expects "
                                 '"Context expects at least "))
                            (__tmp206863 (number->string _%len204233%_)))
                        (declare (not safe))
                        (##string-append __tmp206864 __tmp206863 '" values")))
                     (_%count204239%_
                      (let ()
                        (declare (not safe))
                        (gxc#generate-runtime-temporary__0))))
                (if (if (let ()
                          (declare (not safe))
                          (gx#stx-list? _%hd204218%_))
                        '#f
                        (let () (declare (not safe)) (##fx= _%len204233%_ '0)))
                    '#!void
                    (cons 'let
                          (cons (cons (cons _%count204239%_
                                            (cons (gxc#generate-runtime-values-count
                                                   _%vals204217%_)
                                                  '()))
                                      '())
                                (cons (cons 'if
                                            (cons (cons 'not
                                                        (cons (if (gxc#current-compile-decls-unsafe?)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%cmp204235%_
                                (cons _%count204239%_
                                      (cons _%len204233%_ '())))
                          (cons 'let
                                (cons '()
                                      (cons '(declare (not safe))
                                            (cons (cons _%cmp204235%_
                                                        (cons _%count204239%_
                                                              (cons _%len204233%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons 'error
                                                              (cons _%errmsg204237%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%count204239%_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))))))))
    (define gxc#generate-runtime-values-count
      (lambda (_%var204212%_)
        (letrec ((_%generate-inline204214%_
                  (lambda ()
                    (cons 'if
                          (cons (cons '##values? (cons _%var204212%_ '()))
                                (cons (cons '##values-length
                                            (cons _%var204212%_ '()))
                                      (cons '1 '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline204214%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline204214%_) '()))))))))
    (define gxc#generate-runtime-values-ref
      (lambda (_%var204205%_ _%i204206%_ _%rest204207%_)
        (letrec ((_%generate-inline204209%_
                  (lambda ()
                    (if (and (let ()
                               (declare (not safe))
                               (##fx= _%i204206%_ '0))
                             (not (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%rest204207%_))))
                        (cons 'if
                              (cons (cons '##values? (cons _%var204205%_ '()))
                                    (cons (cons '##values-ref
                                                (cons _%var204205%_
                                                      (cons '0 '())))
                                          (cons _%var204205%_ '()))))
                        (cons '##values-ref
                              (cons _%var204205%_ (cons _%i204206%_ '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline204209%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline204209%_) '()))))))))
    (define gxc#generate-runtime-values->list
      (lambda (_%var204199%_ _%i204200%_)
        (if (let () (declare (not safe)) (##fx= _%i204200%_ '0))
            (if (gxc#current-compile-decls-unsafe?)
                (cons 'if
                      (cons (cons '##values? (cons _%var204199%_ '()))
                            (cons (cons '##values->list
                                        (cons _%var204199%_ '()))
                                  (cons (cons 'list (cons _%var204199%_ '()))
                                        '()))))
                (cons 'let
                      (cons '()
                            (cons '(declare (not safe))
                                  (cons (cons 'if
                                              (cons (cons '##values?
                                                          (cons _%var204199%_
                                                                '()))
                                                    (cons (cons '##values->list
                                                                (cons _%var204199%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons 'list (cons _%var204199%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
            (if (let () (declare (not safe)) (##fx= _%i204200%_ '1))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons 'if
                          (cons (cons '##values? (cons _%var204199%_ '()))
                                (cons (cons '##cdr
                                            (cons (cons '##values->list
                                                        (cons _%var204199%_
                                                              '()))
                                                  '()))
                                      (cons ''() '()))))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons 'if
                                                  (cons (cons '##values?
                                                              (cons _%var204199%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '##cdr
                            (cons (cons '##values->list
                                        (cons _%var204199%_ '()))
                                  '()))
                      (cons ''() '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons '##list-tail
                          (cons (cons '##values->list (cons _%var204199%_ '()))
                                (cons _%i204200%_ '())))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons '##list-tail
                                                  (cons (cons '##values->list
                                                              (cons _%var204199%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _%i204200%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))))))
    (define gxc#generate-runtime-lambda%
      (lambda (_%self204131%_ _%stx204132%_)
        (let* ((_%g204134204151%_
                (lambda (_%g204135204148%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g204135204148%_))))
               (_%g204133204196%_
                (lambda (_%g204135204154%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g204135204154%_))
                      (let ((_%e204138204156%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g204135204154%_))))
                        (let ((_%hd204139204159%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e204138204156%_)))
                              (_%tl204140204161%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e204138204156%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl204140204161%_))
                              (let ((_%e204141204164%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl204140204161%_))))
                                (let ((_%hd204142204167%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e204141204164%_)))
                                      (_%tl204143204169%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e204141204164%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl204143204169%_))
                                      (let ((_%e204144204172%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl204143204169%_))))
                                        (let ((_%hd204145204175%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e204144204172%_)))
                                              (_%tl204146204177%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e204144204172%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl204146204177%_))
                                              ((lambda (_%g204136204180%_
                                                        _%g204137204181%_)
                                                 (gxc#generate-runtime-lambda-form
                                                  _%self204131%_
                                                  _%g204137204181%_
                                                  _%g204136204180%_))
                                               _%hd204145204175%_
                                               _%hd204142204167%_)
                                              (_%g204134204151%_
                                               _%g204135204154%_))))
                                      (_%g204134204151%_ _%g204135204154%_))))
                              (_%g204134204151%_ _%g204135204154%_))))
                      (_%g204134204151%_ _%g204135204154%_)))))
          (_%g204133204196%_ _%stx204132%_))))
    (define gxc#generate-runtime-lambda-form
      (lambda (_%self204090%_ _%hd204091%_ _%body204092%_)
        (let* ((_%hd204094%_ (gxc#generate-runtime-lambda-head _%hd204091%_))
               (_%body204096%_
                (let ()
                  (declare (not safe))
                  (gxc#compile-e__1 _%self204090%_ _%body204092%_)))
               (_%body204128%_
                (let* ((_%body204097204105%_ _%body204096%_)
                       (_%else204099204113%_
                        (lambda () (cons _%body204096%_ '())))
                       (_%K204101204118%_
                        (lambda (_%exprs204116%_) _%exprs204116%_)))
                  (if (pair? _%body204097204105%_)
                      (let ((_%hd204102204121%_
                             (let ()
                               (declare (not safe))
                               (##car _%body204097204105%_)))
                            (_%tl204103204123%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%body204097204105%_))))
                        (if (let ()
                              (declare (not safe))
                              (##eq? _%hd204102204121%_ 'begin))
                            (let ((_%exprs204126%_ _%tl204103204123%_))
                              (_%K204101204118%_ _%exprs204126%_))
                            (_%else204099204113%_)))
                      (_%else204099204113%_)))))
          (cons 'lambda (cons _%hd204094%_ _%body204128%_)))))
    (define gxc#generate-runtime-lambda-head
      (lambda (_%hd204088%_)
        (let ()
          (declare (not safe))
          (gx#stx-map1 gxc#generate-runtime-binding-id* _%hd204088%_))))
    (define gxc#generate-runtime-case-lambda%
      (lambda (_%self202645%_ _%stx202646%_)
        (letrec ((_%dispatch-case?202648%_
                  (lambda (_%hd203326%_ _%body203327%_)
                    (let* ((_%form203329%_
                            (cons _%hd203326%_ (cons _%body203327%_ '())))
                           (_%__stx205583205584%_ _%form203329%_)
                           (_%g203334203491%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx205583205584%_)))))
                      (let ((_%__kont205585205586%_
                             (lambda (_%g203336204008%_
                                      _%g203337204009%_
                                      _%g203338204010%_)
                               '#t))
                            (_%__kont205591205592%_
                             (lambda (_%g203381203800%_
                                      _%g203382203801%_
                                      _%g203383203802%_
                                      _%g203384203803%_
                                      _%g203385203804%_
                                      _%g203386203805%_)
                               '#t))
                            (_%__kont205597205598%_
                             (lambda (_%g203447203599%_
                                      _%g203448203600%_
                                      _%g203449203601%_
                                      _%g203450203602%_)
                               '#t))
                            (_%__kont205599205600%_ (lambda () '#f)))
                        (let* ((_%__match205724205725%_
                                (lambda (_%e203451203503%_
                                         _%hd203452203506%_
                                         _%tl203453203508%_
                                         _%e203454203511%_
                                         _%hd203455203514%_
                                         _%tl203456203516%_
                                         _%e203457203519%_
                                         _%hd203458203522%_
                                         _%tl203459203524%_
                                         _%e203460203527%_
                                         _%hd203461203530%_
                                         _%tl203462203532%_
                                         _%e203463203535%_
                                         _%hd203464203538%_
                                         _%tl203465203540%_
                                         _%e203466203543%_
                                         _%hd203467203546%_
                                         _%tl203468203548%_
                                         _%e203469203551%_
                                         _%hd203470203554%_
                                         _%tl203471203556%_
                                         _%e203472203559%_
                                         _%hd203473203562%_
                                         _%tl203474203564%_
                                         _%e203475203567%_
                                         _%hd203476203570%_
                                         _%tl203477203572%_
                                         _%e203478203575%_
                                         _%hd203479203578%_
                                         _%tl203480203580%_
                                         _%e203481203583%_
                                         _%hd203482203586%_
                                         _%tl203483203588%_
                                         _%e203484203591%_
                                         _%hd203485203594%_
                                         _%tl203486203596%_)
                                  (let ((_%g203447203599%_ _%hd203485203594%_)
                                        (_%g203448203600%_ _%hd203476203570%_)
                                        (_%g203449203601%_ _%hd203467203546%_)
                                        (_%g203450203602%_ _%hd203452203506%_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (gx#identifier?
                                                _%g203450203602%_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#runtime-identifier=?
                                                _%g203449203601%_
                                                'apply))
                                             (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%g203450203602%_
                                                _%g203447203599%_))
                                             (not (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%g203448203600%_
                                                     _%g203450203602%_))))
                                        (_%__kont205597205598%_
                                         _%g203447203599%_
                                         _%g203448203600%_
                                         _%g203449203601%_
                                         _%g203450203602%_)
                                        (_%__kont205599205600%_)))))
                               (_%__match205696205697%_
                                (lambda (_%e203451203503%_
                                         _%hd203452203506%_
                                         _%tl203453203508%_
                                         _%e203454203511%_
                                         _%hd203455203514%_
                                         _%tl203456203516%_
                                         _%e203457203519%_
                                         _%hd203458203522%_
                                         _%tl203459203524%_
                                         _%e203460203527%_
                                         _%hd203461203530%_
                                         _%tl203462203532%_
                                         _%e203463203535%_
                                         _%hd203464203538%_
                                         _%tl203465203540%_
                                         _%e203466203543%_
                                         _%hd203467203546%_
                                         _%tl203468203548%_
                                         _%e203469203551%_
                                         _%hd203470203554%_
                                         _%tl203471203556%_
                                         _%e203472203559%_
                                         _%hd203473203562%_
                                         _%tl203474203564%_
                                         _%e203475203567%_
                                         _%hd203476203570%_
                                         _%tl203477203572%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl203471203556%_))
                                      (let ((_%e203478203575%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl203471203556%_))))
                                        (let ((_%tl203480203580%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e203478203575%_)))
                                              (_%hd203479203578%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e203478203575%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd203479203578%_))
                                              (let ((_%e203481203583%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd203479203578%_))))
                                                (let ((_%tl203483203588%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e203481203583%_)))
                                                      (_%hd203482203586%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e203481203583%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd203482203586%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _%hd203482203586%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl203483203588%_))
                      (let ((_%e203484203591%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl203483203588%_))))
                        (let ((_%tl203486203596%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203484203591%_)))
                              (_%hd203485203594%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203484203591%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl203486203596%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl203480203580%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl203456203516%_))
                                      (_%__match205724205725%_
                                       _%e203451203503%_
                                       _%hd203452203506%_
                                       _%tl203453203508%_
                                       _%e203454203511%_
                                       _%hd203455203514%_
                                       _%tl203456203516%_
                                       _%e203457203519%_
                                       _%hd203458203522%_
                                       _%tl203459203524%_
                                       _%e203460203527%_
                                       _%hd203461203530%_
                                       _%tl203462203532%_
                                       _%e203463203535%_
                                       _%hd203464203538%_
                                       _%tl203465203540%_
                                       _%e203466203543%_
                                       _%hd203467203546%_
                                       _%tl203468203548%_
                                       _%e203469203551%_
                                       _%hd203470203554%_
                                       _%tl203471203556%_
                                       _%e203472203559%_
                                       _%hd203473203562%_
                                       _%tl203474203564%_
                                       _%e203475203567%_
                                       _%hd203476203570%_
                                       _%tl203477203572%_
                                       _%e203478203575%_
                                       _%hd203479203578%_
                                       _%tl203480203580%_
                                       _%e203481203583%_
                                       _%hd203482203586%_
                                       _%tl203483203588%_
                                       _%e203484203591%_
                                       _%hd203485203594%_
                                       _%tl203486203596%_)
                                      (_%__kont205599205600%_))
                                  (_%__kont205599205600%_))
                              (_%__kont205599205600%_))))
                      (_%__kont205599205600%_))
                  (_%__kont205599205600%_))
              (_%__kont205599205600%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont205599205600%_))))
                                      (_%__kont205599205600%_))))
                               (_%__match205626205627%_
                                (lambda (_%e203387203644%_
                                         _%hd203388203647%_
                                         _%tl203389203649%_
                                         _%__splice205593205594%_
                                         _%target203390203652%_
                                         _%tl203392203654%_)
                                  (letrec ((_%loop203393203657%_
                                            (lambda (_%hd203391203660%_
                                                     _%arg203397203662%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd203391203660%_))
                                                  (let ((_%e203394203664%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd203391203660%_))))
                                                    (let ((_%lp-tl203396203669%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e203394203664%_)))
                                                          (_%lp-hd203395203667%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e203394203664%_))))
                                                      (_%loop203393203657%_
                                                       _%lp-tl203396203669%_
                                                       (cons _%lp-hd203395203667%_
                                                             _%arg203397203662%_))))
                                                  (let ((_%arg203398203672%_
                                                         (reverse _%arg203397203662%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl203389203649%_))
                                                        (let ((_%e203399203674%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl203389203649%_))))
                  (let ((_%tl203401203679%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e203399203674%_)))
                        (_%hd203400203677%_
                         (let ()
                           (declare (not safe))
                           (##car _%e203399203674%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd203400203677%_))
                        (let ((_%e203402203682%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd203400203677%_))))
                          (let ((_%tl203404203687%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e203402203682%_)))
                                (_%hd203403203685%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e203402203682%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd203403203685%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd203403203685%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl203404203687%_))
                                        (let ((_%e203405203690%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl203404203687%_))))
                                          (let ((_%tl203407203695%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e203405203690%_)))
                                                (_%hd203406203693%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e203405203690%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd203406203693%_))
                                                (let ((_%e203408203698%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd203406203693%_))))
                                                  (let ((_%tl203410203703%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e203408203698%_)))
                                                        (_%hd203409203701%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e203408203698%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd203409203701%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd203409203701%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl203410203703%_))
                        (let ((_%e203411203706%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl203410203703%_))))
                          (let ((_%tl203413203711%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e203411203706%_)))
                                (_%hd203412203709%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e203411203706%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl203413203711%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl203407203695%_))
                                    (let ((_%e203414203714%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl203407203695%_))))
                                      (let ((_%tl203416203719%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e203414203714%_)))
                                            (_%hd203415203717%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e203414203714%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd203415203717%_))
                                            (let ((_%e203417203722%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd203415203717%_))))
                                              (let ((_%tl203419203727%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e203417203722%_)))
                                                    (_%hd203418203725%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e203417203722%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd203418203725%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd203418203725%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl203419203727%_))
                                                            (let ((_%e203420203730%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl203419203727%_))))
                      (let ((_%tl203422203735%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e203420203730%_)))
                            (_%hd203421203733%_
                             (let ()
                               (declare (not safe))
                               (##car _%e203420203730%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl203422203735%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl203416203719%_))
                                (if (let ((__tmp206865
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-length
                                              _%tl203416203719%_))))
                                      (declare (not safe))
                                      (##fx>= __tmp206865 '1))
                                    (let ((_%__splice205595205596%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl203416203719%_
                                              '1))))
                                      (let ((_%tl203425203740%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice205595205596%_
                                                '1)))
                                            (_%target203423203738%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice205595205596%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl203425203740%_))
                                            (let ((_%e203432203743%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl203425203740%_))))
                                              (let ((_%tl203434203748%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e203432203743%_)))
                                                    (_%hd203433203746%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e203432203743%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd203433203746%_))
                                                    (let ((_%e203435203751%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd203433203746%_))))
                                                      (let ((_%tl203437203756%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e203435203751%_)))
                    (_%hd203436203754%_
                     (let () (declare (not safe)) (##car _%e203435203751%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd203436203754%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _%hd203436203754%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl203437203756%_))
                            (let ((_%e203438203759%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl203437203756%_))))
                              (let ((_%tl203440203764%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e203438203759%_)))
                                    (_%hd203439203762%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e203438203759%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl203440203764%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl203434203748%_))
                                        (letrec ((_%loop203426203767%_
                                                  (lambda (_%hd203424203770%_
                                                           _%xarg203430203772%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd203424203770%_))
                                                        (let ((_%e203427203774%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd203424203770%_))))
                  (let ((_%lp-tl203429203779%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e203427203774%_)))
                        (_%lp-hd203428203777%_
                         (let ()
                           (declare (not safe))
                           (##car _%e203427203774%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd203428203777%_))
                        (let ((_%e203441203782%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd203428203777%_))))
                          (let ((_%tl203443203787%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e203441203782%_)))
                                (_%hd203442203785%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e203441203782%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd203442203785%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _%hd203442203785%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl203443203787%_))
                                        (let ((_%e203444203790%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl203443203787%_))))
                                          (let ((_%tl203446203795%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e203444203790%_)))
                                                (_%hd203445203793%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e203444203790%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl203446203795%_))
                                                (_%loop203426203767%_
                                                 _%lp-tl203429203779%_
                                                 (cons _%hd203445203793%_
                                                       _%xarg203430203772%_))
                                                (_%__match205696205697%_
                                                 _%e203387203644%_
                                                 _%hd203388203647%_
                                                 _%tl203389203649%_
                                                 _%e203399203674%_
                                                 _%hd203400203677%_
                                                 _%tl203401203679%_
                                                 _%e203402203682%_
                                                 _%hd203403203685%_
                                                 _%tl203404203687%_
                                                 _%e203405203690%_
                                                 _%hd203406203693%_
                                                 _%tl203407203695%_
                                                 _%e203408203698%_
                                                 _%hd203409203701%_
                                                 _%tl203410203703%_
                                                 _%e203411203706%_
                                                 _%hd203412203709%_
                                                 _%tl203413203711%_
                                                 _%e203414203714%_
                                                 _%hd203415203717%_
                                                 _%tl203416203719%_
                                                 _%e203417203722%_
                                                 _%hd203418203725%_
                                                 _%tl203419203727%_
                                                 _%e203420203730%_
                                                 _%hd203421203733%_
                                                 _%tl203422203735%_))))
                                        (_%__match205696205697%_
                                         _%e203387203644%_
                                         _%hd203388203647%_
                                         _%tl203389203649%_
                                         _%e203399203674%_
                                         _%hd203400203677%_
                                         _%tl203401203679%_
                                         _%e203402203682%_
                                         _%hd203403203685%_
                                         _%tl203404203687%_
                                         _%e203405203690%_
                                         _%hd203406203693%_
                                         _%tl203407203695%_
                                         _%e203408203698%_
                                         _%hd203409203701%_
                                         _%tl203410203703%_
                                         _%e203411203706%_
                                         _%hd203412203709%_
                                         _%tl203413203711%_
                                         _%e203414203714%_
                                         _%hd203415203717%_
                                         _%tl203416203719%_
                                         _%e203417203722%_
                                         _%hd203418203725%_
                                         _%tl203419203727%_
                                         _%e203420203730%_
                                         _%hd203421203733%_
                                         _%tl203422203735%_))
                                    (_%__match205696205697%_
                                     _%e203387203644%_
                                     _%hd203388203647%_
                                     _%tl203389203649%_
                                     _%e203399203674%_
                                     _%hd203400203677%_
                                     _%tl203401203679%_
                                     _%e203402203682%_
                                     _%hd203403203685%_
                                     _%tl203404203687%_
                                     _%e203405203690%_
                                     _%hd203406203693%_
                                     _%tl203407203695%_
                                     _%e203408203698%_
                                     _%hd203409203701%_
                                     _%tl203410203703%_
                                     _%e203411203706%_
                                     _%hd203412203709%_
                                     _%tl203413203711%_
                                     _%e203414203714%_
                                     _%hd203415203717%_
                                     _%tl203416203719%_
                                     _%e203417203722%_
                                     _%hd203418203725%_
                                     _%tl203419203727%_
                                     _%e203420203730%_
                                     _%hd203421203733%_
                                     _%tl203422203735%_))
                                (_%__match205696205697%_
                                 _%e203387203644%_
                                 _%hd203388203647%_
                                 _%tl203389203649%_
                                 _%e203399203674%_
                                 _%hd203400203677%_
                                 _%tl203401203679%_
                                 _%e203402203682%_
                                 _%hd203403203685%_
                                 _%tl203404203687%_
                                 _%e203405203690%_
                                 _%hd203406203693%_
                                 _%tl203407203695%_
                                 _%e203408203698%_
                                 _%hd203409203701%_
                                 _%tl203410203703%_
                                 _%e203411203706%_
                                 _%hd203412203709%_
                                 _%tl203413203711%_
                                 _%e203414203714%_
                                 _%hd203415203717%_
                                 _%tl203416203719%_
                                 _%e203417203722%_
                                 _%hd203418203725%_
                                 _%tl203419203727%_
                                 _%e203420203730%_
                                 _%hd203421203733%_
                                 _%tl203422203735%_))))
                        (_%__match205696205697%_
                         _%e203387203644%_
                         _%hd203388203647%_
                         _%tl203389203649%_
                         _%e203399203674%_
                         _%hd203400203677%_
                         _%tl203401203679%_
                         _%e203402203682%_
                         _%hd203403203685%_
                         _%tl203404203687%_
                         _%e203405203690%_
                         _%hd203406203693%_
                         _%tl203407203695%_
                         _%e203408203698%_
                         _%hd203409203701%_
                         _%tl203410203703%_
                         _%e203411203706%_
                         _%hd203412203709%_
                         _%tl203413203711%_
                         _%e203414203714%_
                         _%hd203415203717%_
                         _%tl203416203719%_
                         _%e203417203722%_
                         _%hd203418203725%_
                         _%tl203419203727%_
                         _%e203420203730%_
                         _%hd203421203733%_
                         _%tl203422203735%_))))
                (let ((_%xarg203431203798%_ (reverse _%xarg203430203772%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl203401203679%_))
                      (let ((_%g203381203800%_ _%hd203439203762%_)
                            (_%g203382203801%_ _%xarg203431203798%_)
                            (_%g203383203802%_ _%hd203421203733%_)
                            (_%g203384203803%_ _%hd203412203709%_)
                            (_%g203385203804%_ _%tl203392203654%_)
                            (_%g203386203805%_ _%arg203398203672%_))
                        (if (and (let ((__tmp206866
                                        (let ((__tmp206867
                                               (lambda (_%g203848203851%_
                                                        _%g203849203853%_)
                                                 (cons _%g203848203851%_
                                                       _%g203849203853%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp206867
                                           '()
                                           _%g203386203805%_))))
                                   (declare (not safe))
                                   (gx#identifier-list? __tmp206866))
                                 (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%g203385203804%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _%g203384203803%_
                                    'apply))
                                 (let ((__tmp206870
                                        (length (let ((__tmp206871
                                                       (lambda (_%g203855203858%_
                                                                _%g203856203860%_)
                                                         (cons _%g203855203858%_
                                                               _%g203856203860%_))))
                                                  (declare (not safe))
                                                  (foldr__0
                                                   __tmp206871
                                                   '()
                                                   _%g203386203805%_))))
                                       (__tmp206868
                                        (length (let ((__tmp206869
                                                       (lambda (_%g203862203865%_
                                                                _%g203863203867%_)
                                                         (cons _%g203862203865%_
                                                               _%g203863203867%_))))
                                                  (declare (not safe))
                                                  (foldr__0
                                                   __tmp206869
                                                   '()
                                                   _%g203382203801%_)))))
                                   (declare (not safe))
                                   (##fx= __tmp206870 __tmp206868))
                                 (let ((__tmp206874
                                        (let ((__tmp206875
                                               (lambda (_%g203869203872%_
                                                        _%g203870203874%_)
                                                 (cons _%g203869203872%_
                                                       _%g203870203874%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp206875
                                           '()
                                           _%g203386203805%_)))
                                       (__tmp206872
                                        (let ((__tmp206873
                                               (lambda (_%g203876203879%_
                                                        _%g203877203881%_)
                                                 (cons _%g203876203879%_
                                                       _%g203877203881%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp206873
                                           '()
                                           _%g203382203801%_))))
                                   (declare (not safe))
                                   (andmap__1
                                    gx#free-identifier=?
                                    __tmp206874
                                    __tmp206872))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%g203385203804%_
                                    _%g203381203800%_))
                                 (not (let ((__tmp206879
                                             (lambda (_%g203883203885%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#free-identifier=?
                                                  _%g203883203885%_
                                                  _%g203383203802%_))))
                                            (__tmp206876
                                             (let ((__tmp206878
                                                    (lambda (_%g203887203890%_
                                                             _%g203888203892%_)
                                                      (cons _%g203887203890%_
                                                            _%g203888203892%_)))
                                                   (__tmp206877
                                                    (cons _%g203385203804%_
                                                          '())))
                                               (declare (not safe))
                                               (foldr__0
                                                __tmp206878
                                                __tmp206877
                                                _%g203386203805%_))))
                                        (declare (not safe))
                                        (__find __tmp206879 __tmp206876))))
                            (_%__kont205591205592%_
                             _%g203381203800%_
                             _%g203382203801%_
                             _%g203383203802%_
                             _%g203384203803%_
                             _%g203385203804%_
                             _%g203386203805%_)
                            (_%__match205696205697%_
                             _%e203387203644%_
                             _%hd203388203647%_
                             _%tl203389203649%_
                             _%e203399203674%_
                             _%hd203400203677%_
                             _%tl203401203679%_
                             _%e203402203682%_
                             _%hd203403203685%_
                             _%tl203404203687%_
                             _%e203405203690%_
                             _%hd203406203693%_
                             _%tl203407203695%_
                             _%e203408203698%_
                             _%hd203409203701%_
                             _%tl203410203703%_
                             _%e203411203706%_
                             _%hd203412203709%_
                             _%tl203413203711%_
                             _%e203414203714%_
                             _%hd203415203717%_
                             _%tl203416203719%_
                             _%e203417203722%_
                             _%hd203418203725%_
                             _%tl203419203727%_
                             _%e203420203730%_
                             _%hd203421203733%_
                             _%tl203422203735%_)))
                      (_%__match205696205697%_
                       _%e203387203644%_
                       _%hd203388203647%_
                       _%tl203389203649%_
                       _%e203399203674%_
                       _%hd203400203677%_
                       _%tl203401203679%_
                       _%e203402203682%_
                       _%hd203403203685%_
                       _%tl203404203687%_
                       _%e203405203690%_
                       _%hd203406203693%_
                       _%tl203407203695%_
                       _%e203408203698%_
                       _%hd203409203701%_
                       _%tl203410203703%_
                       _%e203411203706%_
                       _%hd203412203709%_
                       _%tl203413203711%_
                       _%e203414203714%_
                       _%hd203415203717%_
                       _%tl203416203719%_
                       _%e203417203722%_
                       _%hd203418203725%_
                       _%tl203419203727%_
                       _%e203420203730%_
                       _%hd203421203733%_
                       _%tl203422203735%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop203426203767%_
                                           _%target203423203738%_
                                           '()))
                                        (_%__match205696205697%_
                                         _%e203387203644%_
                                         _%hd203388203647%_
                                         _%tl203389203649%_
                                         _%e203399203674%_
                                         _%hd203400203677%_
                                         _%tl203401203679%_
                                         _%e203402203682%_
                                         _%hd203403203685%_
                                         _%tl203404203687%_
                                         _%e203405203690%_
                                         _%hd203406203693%_
                                         _%tl203407203695%_
                                         _%e203408203698%_
                                         _%hd203409203701%_
                                         _%tl203410203703%_
                                         _%e203411203706%_
                                         _%hd203412203709%_
                                         _%tl203413203711%_
                                         _%e203414203714%_
                                         _%hd203415203717%_
                                         _%tl203416203719%_
                                         _%e203417203722%_
                                         _%hd203418203725%_
                                         _%tl203419203727%_
                                         _%e203420203730%_
                                         _%hd203421203733%_
                                         _%tl203422203735%_))
                                    (_%__match205696205697%_
                                     _%e203387203644%_
                                     _%hd203388203647%_
                                     _%tl203389203649%_
                                     _%e203399203674%_
                                     _%hd203400203677%_
                                     _%tl203401203679%_
                                     _%e203402203682%_
                                     _%hd203403203685%_
                                     _%tl203404203687%_
                                     _%e203405203690%_
                                     _%hd203406203693%_
                                     _%tl203407203695%_
                                     _%e203408203698%_
                                     _%hd203409203701%_
                                     _%tl203410203703%_
                                     _%e203411203706%_
                                     _%hd203412203709%_
                                     _%tl203413203711%_
                                     _%e203414203714%_
                                     _%hd203415203717%_
                                     _%tl203416203719%_
                                     _%e203417203722%_
                                     _%hd203418203725%_
                                     _%tl203419203727%_
                                     _%e203420203730%_
                                     _%hd203421203733%_
                                     _%tl203422203735%_))))
                            (_%__match205696205697%_
                             _%e203387203644%_
                             _%hd203388203647%_
                             _%tl203389203649%_
                             _%e203399203674%_
                             _%hd203400203677%_
                             _%tl203401203679%_
                             _%e203402203682%_
                             _%hd203403203685%_
                             _%tl203404203687%_
                             _%e203405203690%_
                             _%hd203406203693%_
                             _%tl203407203695%_
                             _%e203408203698%_
                             _%hd203409203701%_
                             _%tl203410203703%_
                             _%e203411203706%_
                             _%hd203412203709%_
                             _%tl203413203711%_
                             _%e203414203714%_
                             _%hd203415203717%_
                             _%tl203416203719%_
                             _%e203417203722%_
                             _%hd203418203725%_
                             _%tl203419203727%_
                             _%e203420203730%_
                             _%hd203421203733%_
                             _%tl203422203735%_))
                        (_%__match205696205697%_
                         _%e203387203644%_
                         _%hd203388203647%_
                         _%tl203389203649%_
                         _%e203399203674%_
                         _%hd203400203677%_
                         _%tl203401203679%_
                         _%e203402203682%_
                         _%hd203403203685%_
                         _%tl203404203687%_
                         _%e203405203690%_
                         _%hd203406203693%_
                         _%tl203407203695%_
                         _%e203408203698%_
                         _%hd203409203701%_
                         _%tl203410203703%_
                         _%e203411203706%_
                         _%hd203412203709%_
                         _%tl203413203711%_
                         _%e203414203714%_
                         _%hd203415203717%_
                         _%tl203416203719%_
                         _%e203417203722%_
                         _%hd203418203725%_
                         _%tl203419203727%_
                         _%e203420203730%_
                         _%hd203421203733%_
                         _%tl203422203735%_))
                    (_%__match205696205697%_
                     _%e203387203644%_
                     _%hd203388203647%_
                     _%tl203389203649%_
                     _%e203399203674%_
                     _%hd203400203677%_
                     _%tl203401203679%_
                     _%e203402203682%_
                     _%hd203403203685%_
                     _%tl203404203687%_
                     _%e203405203690%_
                     _%hd203406203693%_
                     _%tl203407203695%_
                     _%e203408203698%_
                     _%hd203409203701%_
                     _%tl203410203703%_
                     _%e203411203706%_
                     _%hd203412203709%_
                     _%tl203413203711%_
                     _%e203414203714%_
                     _%hd203415203717%_
                     _%tl203416203719%_
                     _%e203417203722%_
                     _%hd203418203725%_
                     _%tl203419203727%_
                     _%e203420203730%_
                     _%hd203421203733%_
                     _%tl203422203735%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match205696205697%_
                                                     _%e203387203644%_
                                                     _%hd203388203647%_
                                                     _%tl203389203649%_
                                                     _%e203399203674%_
                                                     _%hd203400203677%_
                                                     _%tl203401203679%_
                                                     _%e203402203682%_
                                                     _%hd203403203685%_
                                                     _%tl203404203687%_
                                                     _%e203405203690%_
                                                     _%hd203406203693%_
                                                     _%tl203407203695%_
                                                     _%e203408203698%_
                                                     _%hd203409203701%_
                                                     _%tl203410203703%_
                                                     _%e203411203706%_
                                                     _%hd203412203709%_
                                                     _%tl203413203711%_
                                                     _%e203414203714%_
                                                     _%hd203415203717%_
                                                     _%tl203416203719%_
                                                     _%e203417203722%_
                                                     _%hd203418203725%_
                                                     _%tl203419203727%_
                                                     _%e203420203730%_
                                                     _%hd203421203733%_
                                                     _%tl203422203735%_))))
                                            (_%__match205696205697%_
                                             _%e203387203644%_
                                             _%hd203388203647%_
                                             _%tl203389203649%_
                                             _%e203399203674%_
                                             _%hd203400203677%_
                                             _%tl203401203679%_
                                             _%e203402203682%_
                                             _%hd203403203685%_
                                             _%tl203404203687%_
                                             _%e203405203690%_
                                             _%hd203406203693%_
                                             _%tl203407203695%_
                                             _%e203408203698%_
                                             _%hd203409203701%_
                                             _%tl203410203703%_
                                             _%e203411203706%_
                                             _%hd203412203709%_
                                             _%tl203413203711%_
                                             _%e203414203714%_
                                             _%hd203415203717%_
                                             _%tl203416203719%_
                                             _%e203417203722%_
                                             _%hd203418203725%_
                                             _%tl203419203727%_
                                             _%e203420203730%_
                                             _%hd203421203733%_
                                             _%tl203422203735%_))))
                                    (_%__match205696205697%_
                                     _%e203387203644%_
                                     _%hd203388203647%_
                                     _%tl203389203649%_
                                     _%e203399203674%_
                                     _%hd203400203677%_
                                     _%tl203401203679%_
                                     _%e203402203682%_
                                     _%hd203403203685%_
                                     _%tl203404203687%_
                                     _%e203405203690%_
                                     _%hd203406203693%_
                                     _%tl203407203695%_
                                     _%e203408203698%_
                                     _%hd203409203701%_
                                     _%tl203410203703%_
                                     _%e203411203706%_
                                     _%hd203412203709%_
                                     _%tl203413203711%_
                                     _%e203414203714%_
                                     _%hd203415203717%_
                                     _%tl203416203719%_
                                     _%e203417203722%_
                                     _%hd203418203725%_
                                     _%tl203419203727%_
                                     _%e203420203730%_
                                     _%hd203421203733%_
                                     _%tl203422203735%_))
                                (_%__match205696205697%_
                                 _%e203387203644%_
                                 _%hd203388203647%_
                                 _%tl203389203649%_
                                 _%e203399203674%_
                                 _%hd203400203677%_
                                 _%tl203401203679%_
                                 _%e203402203682%_
                                 _%hd203403203685%_
                                 _%tl203404203687%_
                                 _%e203405203690%_
                                 _%hd203406203693%_
                                 _%tl203407203695%_
                                 _%e203408203698%_
                                 _%hd203409203701%_
                                 _%tl203410203703%_
                                 _%e203411203706%_
                                 _%hd203412203709%_
                                 _%tl203413203711%_
                                 _%e203414203714%_
                                 _%hd203415203717%_
                                 _%tl203416203719%_
                                 _%e203417203722%_
                                 _%hd203418203725%_
                                 _%tl203419203727%_
                                 _%e203420203730%_
                                 _%hd203421203733%_
                                 _%tl203422203735%_))
                            (_%__kont205599205600%_))))
                    (_%__kont205599205600%_))
                (_%__kont205599205600%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont205599205600%_))))
                                            (_%__kont205599205600%_))))
                                    (_%__kont205599205600%_))
                                (_%__kont205599205600%_))))
                        (_%__kont205599205600%_))
                    (_%__kont205599205600%_))
                (_%__kont205599205600%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont205599205600%_))))
                                        (_%__kont205599205600%_))
                                    (_%__kont205599205600%_))
                                (_%__kont205599205600%_))))
                        (_%__kont205599205600%_))))
                (_%__kont205599205600%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop203393203657%_
                                     _%target203390203652%_
                                     '()))))
                               (_%__match205614205615%_
                                (lambda (_%e203339203900%_
                                         _%hd203340203903%_
                                         _%tl203341203905%_
                                         _%__splice205587205588%_
                                         _%target203342203908%_
                                         _%tl203344203910%_)
                                  (letrec ((_%loop203345203913%_
                                            (lambda (_%hd203343203916%_
                                                     _%arg203349203918%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd203343203916%_))
                                                  (let ((_%e203346203920%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd203343203916%_))))
                                                    (let ((_%lp-tl203348203925%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e203346203920%_)))
                                                          (_%lp-hd203347203923%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e203346203920%_))))
                                                      (_%loop203345203913%_
                                                       _%lp-tl203348203925%_
                                                       (cons _%lp-hd203347203923%_
                                                             _%arg203349203918%_))))
                                                  (let ((_%arg203350203928%_
                                                         (reverse _%arg203349203918%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl203341203905%_))
                                                        (let ((_%e203351203930%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl203341203905%_))))
                  (let ((_%tl203353203935%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e203351203930%_)))
                        (_%hd203352203933%_
                         (let ()
                           (declare (not safe))
                           (##car _%e203351203930%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd203352203933%_))
                        (let ((_%e203354203938%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd203352203933%_))))
                          (let ((_%tl203356203943%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e203354203938%_)))
                                (_%hd203355203941%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e203354203938%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd203355203941%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd203355203941%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl203356203943%_))
                                        (let ((_%e203357203946%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl203356203943%_))))
                                          (let ((_%tl203359203951%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e203357203946%_)))
                                                (_%hd203358203949%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e203357203946%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd203358203949%_))
                                                (let ((_%e203360203954%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd203358203949%_))))
                                                  (let ((_%tl203362203959%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e203360203954%_)))
                                                        (_%hd203361203957%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e203360203954%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd203361203957%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd203361203957%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl203362203959%_))
                        (let ((_%e203363203962%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl203362203959%_))))
                          (let ((_%tl203365203967%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e203363203962%_)))
                                (_%hd203364203965%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e203363203962%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl203365203967%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl203359203951%_))
                                    (let ((_%__splice205589205590%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl203359203951%_
                                              '0))))
                                      (let ((_%tl203368203972%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice205589205590%_
                                                '1)))
                                            (_%target203366203970%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice205589205590%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl203368203972%_))
                                            (letrec ((_%loop203369203975%_
                                                      (lambda (_%hd203367203978%_
                                                               _%xarg203373203980%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd203367203978%_))
                                                            (let ((_%e203370203982%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd203367203978%_))))
                      (let ((_%lp-tl203372203987%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e203370203982%_)))
                            (_%lp-hd203371203985%_
                             (let ()
                               (declare (not safe))
                               (##car _%e203370203982%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd203371203985%_))
                            (let ((_%e203375203990%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd203371203985%_))))
                              (let ((_%tl203377203995%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e203375203990%_)))
                                    (_%hd203376203993%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e203375203990%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd203376203993%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd203376203993%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl203377203995%_))
                                            (let ((_%e203378203998%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl203377203995%_))))
                                              (let ((_%tl203380204003%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e203378203998%_)))
                                                    (_%hd203379204001%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e203378203998%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl203380204003%_))
                                                    (_%loop203369203975%_
                                                     _%lp-tl203372203987%_
                                                     (cons _%hd203379204001%_
                                                           _%xarg203373203980%_))
                                                    (_%__match205626205627%_
                                                     _%e203339203900%_
                                                     _%hd203340203903%_
                                                     _%tl203341203905%_
                                                     _%__splice205587205588%_
                                                     _%target203342203908%_
                                                     _%tl203344203910%_))))
                                            (_%__match205626205627%_
                                             _%e203339203900%_
                                             _%hd203340203903%_
                                             _%tl203341203905%_
                                             _%__splice205587205588%_
                                             _%target203342203908%_
                                             _%tl203344203910%_))
                                        (_%__match205626205627%_
                                         _%e203339203900%_
                                         _%hd203340203903%_
                                         _%tl203341203905%_
                                         _%__splice205587205588%_
                                         _%target203342203908%_
                                         _%tl203344203910%_))
                                    (_%__match205626205627%_
                                     _%e203339203900%_
                                     _%hd203340203903%_
                                     _%tl203341203905%_
                                     _%__splice205587205588%_
                                     _%target203342203908%_
                                     _%tl203344203910%_))))
                            (_%__match205626205627%_
                             _%e203339203900%_
                             _%hd203340203903%_
                             _%tl203341203905%_
                             _%__splice205587205588%_
                             _%target203342203908%_
                             _%tl203344203910%_))))
                    (let ((_%xarg203374204006%_
                           (reverse _%xarg203373203980%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl203353203935%_))
                          (let ((_%g203336204008%_ _%xarg203374204006%_)
                                (_%g203337204009%_ _%hd203364203965%_)
                                (_%g203338204010%_ _%arg203350203928%_))
                            (if (and (let ((__tmp206880
                                            (let ((__tmp206881
                                                   (lambda (_%g204038204041%_
                                                            _%g204039204043%_)
                                                     (cons _%g204038204041%_
                                                           _%g204039204043%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp206881
                                               '()
                                               _%g203338204010%_))))
                                       (declare (not safe))
                                       (gx#identifier-list? __tmp206880))
                                     (let ((__tmp206884
                                            (length (let ((__tmp206885
                                                           (lambda (_%g204045204048%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g204046204050%_)
                     (cons _%g204045204048%_ _%g204046204050%_))))
              (declare (not safe))
              (foldr__0 __tmp206885 '() _%g203338204010%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (__tmp206882
                                            (length (let ((__tmp206883
                                                           (lambda (_%g204052204055%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g204053204057%_)
                     (cons _%g204052204055%_ _%g204053204057%_))))
              (declare (not safe))
              (foldr__0 __tmp206883 '() _%g203336204008%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp206884 __tmp206882))
                                     (let ((__tmp206888
                                            (let ((__tmp206889
                                                   (lambda (_%g204059204062%_
                                                            _%g204060204064%_)
                                                     (cons _%g204059204062%_
                                                           _%g204060204064%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp206889
                                               '()
                                               _%g203338204010%_)))
                                           (__tmp206886
                                            (let ((__tmp206887
                                                   (lambda (_%g204066204069%_
                                                            _%g204067204071%_)
                                                     (cons _%g204066204069%_
                                                           _%g204067204071%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp206887
                                               '()
                                               _%g203336204008%_))))
                                       (declare (not safe))
                                       (andmap__1
                                        gx#free-identifier=?
                                        __tmp206888
                                        __tmp206886))
                                     (not (let ((__tmp206892
                                                 (lambda (_%g204073204075%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g204073204075%_
                                                      _%g203337204009%_))))
                                                (__tmp206890
                                                 (let ((__tmp206891
                                                        (lambda (_%g204077204080%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g204078204082%_)
                  (cons _%g204077204080%_ _%g204078204082%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (foldr__0
                                                    __tmp206891
                                                    '()
                                                    _%g203338204010%_))))
                                            (declare (not safe))
                                            (__find __tmp206892 __tmp206890))))
                                (_%__kont205585205586%_
                                 _%g203336204008%_
                                 _%g203337204009%_
                                 _%g203338204010%_)
                                (_%__match205626205627%_
                                 _%e203339203900%_
                                 _%hd203340203903%_
                                 _%tl203341203905%_
                                 _%__splice205587205588%_
                                 _%target203342203908%_
                                 _%tl203344203910%_)))
                          (_%__match205626205627%_
                           _%e203339203900%_
                           _%hd203340203903%_
                           _%tl203341203905%_
                           _%__splice205587205588%_
                           _%target203342203908%_
                           _%tl203344203910%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop203369203975%_
                                               _%target203366203970%_
                                               '()))
                                            (_%__match205626205627%_
                                             _%e203339203900%_
                                             _%hd203340203903%_
                                             _%tl203341203905%_
                                             _%__splice205587205588%_
                                             _%target203342203908%_
                                             _%tl203344203910%_))))
                                    (_%__match205626205627%_
                                     _%e203339203900%_
                                     _%hd203340203903%_
                                     _%tl203341203905%_
                                     _%__splice205587205588%_
                                     _%target203342203908%_
                                     _%tl203344203910%_))
                                (_%__match205626205627%_
                                 _%e203339203900%_
                                 _%hd203340203903%_
                                 _%tl203341203905%_
                                 _%__splice205587205588%_
                                 _%target203342203908%_
                                 _%tl203344203910%_))))
                        (_%__match205626205627%_
                         _%e203339203900%_
                         _%hd203340203903%_
                         _%tl203341203905%_
                         _%__splice205587205588%_
                         _%target203342203908%_
                         _%tl203344203910%_))
                    (_%__match205626205627%_
                     _%e203339203900%_
                     _%hd203340203903%_
                     _%tl203341203905%_
                     _%__splice205587205588%_
                     _%target203342203908%_
                     _%tl203344203910%_))
                (_%__match205626205627%_
                 _%e203339203900%_
                 _%hd203340203903%_
                 _%tl203341203905%_
                 _%__splice205587205588%_
                 _%target203342203908%_
                 _%tl203344203910%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match205626205627%_
                                                 _%e203339203900%_
                                                 _%hd203340203903%_
                                                 _%tl203341203905%_
                                                 _%__splice205587205588%_
                                                 _%target203342203908%_
                                                 _%tl203344203910%_))))
                                        (_%__match205626205627%_
                                         _%e203339203900%_
                                         _%hd203340203903%_
                                         _%tl203341203905%_
                                         _%__splice205587205588%_
                                         _%target203342203908%_
                                         _%tl203344203910%_))
                                    (_%__match205626205627%_
                                     _%e203339203900%_
                                     _%hd203340203903%_
                                     _%tl203341203905%_
                                     _%__splice205587205588%_
                                     _%target203342203908%_
                                     _%tl203344203910%_))
                                (_%__match205626205627%_
                                 _%e203339203900%_
                                 _%hd203340203903%_
                                 _%tl203341203905%_
                                 _%__splice205587205588%_
                                 _%target203342203908%_
                                 _%tl203344203910%_))))
                        (_%__match205626205627%_
                         _%e203339203900%_
                         _%hd203340203903%_
                         _%tl203341203905%_
                         _%__splice205587205588%_
                         _%target203342203908%_
                         _%tl203344203910%_))))
                (_%__match205626205627%_
                 _%e203339203900%_
                 _%hd203340203903%_
                 _%tl203341203905%_
                 _%__splice205587205588%_
                 _%target203342203908%_
                 _%tl203344203910%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop203345203913%_
                                     _%target203342203908%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx205583205584%_))
                              (let ((_%e203339203900%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx205583205584%_))))
                                (let ((_%tl203341203905%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203339203900%_)))
                                      (_%hd203340203903%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203339203900%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd203340203903%_))
                                      (let ((_%__splice205587205588%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%hd203340203903%_
                                                '0))))
                                        (let ((_%tl203344203910%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice205587205588%_
                                                  '1)))
                                              (_%target203342203908%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice205587205588%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl203344203910%_))
                                              (_%__match205614205615%_
                                               _%e203339203900%_
                                               _%hd203340203903%_
                                               _%tl203341203905%_
                                               _%__splice205587205588%_
                                               _%target203342203908%_
                                               _%tl203344203910%_)
                                              (_%__match205626205627%_
                                               _%e203339203900%_
                                               _%hd203340203903%_
                                               _%tl203341203905%_
                                               _%__splice205587205588%_
                                               _%target203342203908%_
                                               _%tl203344203910%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl203341203905%_))
                                          (let ((_%e203454203511%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl203341203905%_))))
                                            (let ((_%tl203456203516%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e203454203511%_)))
                                                  (_%hd203455203514%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e203454203511%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd203455203514%_))
                                                  (let ((_%e203457203519%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd203455203514%_))))
                                                    (let ((_%tl203459203524%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e203457203519%_)))
                                                          (_%hd203458203522%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e203457203519%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd203458203522%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd203458203522%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl203459203524%_))
                          (let ((_%e203460203527%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl203459203524%_))))
                            (let ((_%tl203462203532%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e203460203527%_)))
                                  (_%hd203461203530%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e203460203527%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd203461203530%_))
                                  (let ((_%e203463203535%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd203461203530%_))))
                                    (let ((_%tl203465203540%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e203463203535%_)))
                                          (_%hd203464203538%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e203463203535%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd203464203538%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd203464203538%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl203465203540%_))
                                                  (let ((_%e203466203543%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl203465203540%_))))
                                                    (let ((_%tl203468203548%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e203466203543%_)))
                                                          (_%hd203467203546%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e203466203543%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl203468203548%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl203462203532%_))
                      (let ((_%e203469203551%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl203462203532%_))))
                        (let ((_%tl203471203556%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203469203551%_)))
                              (_%hd203470203554%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203469203551%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd203470203554%_))
                              (let ((_%e203472203559%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd203470203554%_))))
                                (let ((_%tl203474203564%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e203472203559%_)))
                                      (_%hd203473203562%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e203472203559%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd203473203562%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd203473203562%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl203474203564%_))
                                              (let ((_%e203475203567%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl203474203564%_))))
                                                (let ((_%tl203477203572%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e203475203567%_)))
                                                      (_%hd203476203570%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e203475203567%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl203477203572%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl203471203556%_))
                                                          (let ((_%e203478203575%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl203471203556%_))))
                    (let ((_%tl203480203580%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e203478203575%_)))
                          (_%hd203479203578%_
                           (let ()
                             (declare (not safe))
                             (##car _%e203478203575%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd203479203578%_))
                          (let ((_%e203481203583%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd203479203578%_))))
                            (let ((_%tl203483203588%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e203481203583%_)))
                                  (_%hd203482203586%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e203481203583%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd203482203586%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _%hd203482203586%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl203483203588%_))
                                          (let ((_%e203484203591%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl203483203588%_))))
                                            (let ((_%tl203486203596%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e203484203591%_)))
                                                  (_%hd203485203594%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e203484203591%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl203486203596%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl203480203580%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl203456203516%_))
                                                          (_%__match205724205725%_
                                                           _%e203339203900%_
                                                           _%hd203340203903%_
                                                           _%tl203341203905%_
                                                           _%e203454203511%_
                                                           _%hd203455203514%_
                                                           _%tl203456203516%_
                                                           _%e203457203519%_
                                                           _%hd203458203522%_
                                                           _%tl203459203524%_
                                                           _%e203460203527%_
                                                           _%hd203461203530%_
                                                           _%tl203462203532%_
                                                           _%e203463203535%_
                                                           _%hd203464203538%_
                                                           _%tl203465203540%_
                                                           _%e203466203543%_
                                                           _%hd203467203546%_
                                                           _%tl203468203548%_
                                                           _%e203469203551%_
                                                           _%hd203470203554%_
                                                           _%tl203471203556%_
                                                           _%e203472203559%_
                                                           _%hd203473203562%_
                                                           _%tl203474203564%_
                                                           _%e203475203567%_
                                                           _%hd203476203570%_
                                                           _%tl203477203572%_
                                                           _%e203478203575%_
                                                           _%hd203479203578%_
                                                           _%tl203480203580%_
                                                           _%e203481203583%_
                                                           _%hd203482203586%_
                                                           _%tl203483203588%_
                                                           _%e203484203591%_
                                                           _%hd203485203594%_
                                                           _%tl203486203596%_)
                                                          (_%__kont205599205600%_))
                                                      (_%__kont205599205600%_))
                                                  (_%__kont205599205600%_))))
                                          (_%__kont205599205600%_))
                                      (_%__kont205599205600%_))
                                  (_%__kont205599205600%_))))
                          (_%__kont205599205600%_))))
                  (_%__kont205599205600%_))
              (_%__kont205599205600%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont205599205600%_))
                                          (_%__kont205599205600%_))
                                      (_%__kont205599205600%_))))
                              (_%__kont205599205600%_))))
                      (_%__kont205599205600%_))
                  (_%__kont205599205600%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont205599205600%_))
                                              (_%__kont205599205600%_))
                                          (_%__kont205599205600%_))))
                                  (_%__kont205599205600%_))))
                          (_%__kont205599205600%_))
                      (_%__kont205599205600%_))
                  (_%__kont205599205600%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont205599205600%_))))
                                          (_%__kont205599205600%_)))))
                              (_%__kont205599205600%_)))))))
                 (_%dispatch-case-e202649%_
                  (lambda (_%hd202796%_ _%body202797%_)
                    (let* ((_%form202799%_
                            (cons _%hd202796%_ (cons _%body202797%_ '())))
                           (_%__stx205727205728%_ _%form202799%_)
                           (_%g202803202927%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx205727205728%_)))))
                      (let ((_%__kont205729205730%_
                             (lambda (_%g202805203292%_
                                      _%g202806203293%_
                                      _%g202807203294%_)
                               (let ((__tmp206893
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%g202806203293%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self202645%_
                                  __tmp206893))))
                            (_%__kont205735205736%_
                             (lambda (_%g202850203144%_
                                      _%g202851203145%_
                                      _%g202852203146%_
                                      _%g202853203147%_)
                               (let ((__tmp206894
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%g202850203144%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self202645%_
                                  __tmp206894))))
                            (_%__kont205739205740%_
                             (lambda (_%g202890203012%_
                                      _%g202891203013%_
                                      _%g202892203014%_)
                               (let ((__tmp206895
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%g202890203012%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self202645%_
                                  __tmp206895)))))
                        (let* ((_%__match205836205837%_
                                (lambda (_%e202893202932%_
                                         _%hd202894202935%_
                                         _%tl202895202937%_
                                         _%e202896202940%_
                                         _%hd202897202943%_
                                         _%tl202898202945%_
                                         _%e202899202948%_
                                         _%hd202900202951%_
                                         _%tl202901202953%_
                                         _%e202902202956%_
                                         _%hd202903202959%_
                                         _%tl202904202961%_
                                         _%e202905202964%_
                                         _%hd202906202967%_
                                         _%tl202907202969%_
                                         _%e202908202972%_
                                         _%hd202909202975%_
                                         _%tl202910202977%_
                                         _%e202911202980%_
                                         _%hd202912202983%_
                                         _%tl202913202985%_
                                         _%e202914202988%_
                                         _%hd202915202991%_
                                         _%tl202916202993%_
                                         _%e202917202996%_
                                         _%hd202918202999%_
                                         _%tl202919203001%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl202913202985%_))
                                      (let ((_%e202920203004%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl202913202985%_))))
                                        (let ((_%tl202922203009%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e202920203004%_)))
                                              (_%hd202921203007%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e202920203004%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl202922203009%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl202898202945%_))
                                                  (_%__kont205739205740%_
                                                   _%hd202918202999%_
                                                   _%hd202909202975%_
                                                   _%hd202894202935%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g202803202927%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g202803202927%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g202803202927%_)))))
                               (_%__match205766205767%_
                                (lambda (_%e202854203050%_
                                         _%hd202855203053%_
                                         _%tl202856203055%_
                                         _%__splice205737205738%_
                                         _%target202857203058%_
                                         _%tl202859203060%_)
                                  (letrec ((_%loop202860203063%_
                                            (lambda (_%hd202858203066%_
                                                     _%arg202864203068%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd202858203066%_))
                                                  (let ((_%e202861203070%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd202858203066%_))))
                                                    (let ((_%lp-tl202863203075%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e202861203070%_)))
                                                          (_%lp-hd202862203073%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e202861203070%_))))
                                                      (_%loop202860203063%_
                                                       _%lp-tl202863203075%_
                                                       (cons _%lp-hd202862203073%_
                                                             _%arg202864203068%_))))
                                                  (let ((_%arg202865203078%_
                                                         (reverse _%arg202864203068%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl202856203055%_))
                                                        (let ((_%e202866203080%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl202856203055%_))))
                  (let ((_%tl202868203085%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e202866203080%_)))
                        (_%hd202867203083%_
                         (let ()
                           (declare (not safe))
                           (##car _%e202866203080%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd202867203083%_))
                        (let ((_%e202869203088%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd202867203083%_))))
                          (let ((_%tl202871203093%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e202869203088%_)))
                                (_%hd202870203091%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e202869203088%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd202870203091%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd202870203091%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl202871203093%_))
                                        (let ((_%e202872203096%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl202871203093%_))))
                                          (let ((_%tl202874203101%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e202872203096%_)))
                                                (_%hd202873203099%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e202872203096%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd202873203099%_))
                                                (let ((_%e202875203104%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd202873203099%_))))
                                                  (let ((_%tl202877203109%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e202875203104%_)))
                                                        (_%hd202876203107%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e202875203104%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd202876203107%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd202876203107%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl202877203109%_))
                        (let ((_%e202878203112%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl202877203109%_))))
                          (let ((_%tl202880203117%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e202878203112%_)))
                                (_%hd202879203115%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e202878203112%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl202880203117%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl202874203101%_))
                                    (let ((_%e202881203120%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl202874203101%_))))
                                      (let ((_%tl202883203125%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e202881203120%_)))
                                            (_%hd202882203123%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e202881203120%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd202882203123%_))
                                            (let ((_%e202884203128%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd202882203123%_))))
                                              (let ((_%tl202886203133%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e202884203128%_)))
                                                    (_%hd202885203131%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e202884203128%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd202885203131%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd202885203131%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl202886203133%_))
                                                            (let ((_%e202887203136%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl202886203133%_))))
                      (let ((_%tl202889203141%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e202887203136%_)))
                            (_%hd202888203139%_
                             (let ()
                               (declare (not safe))
                               (##car _%e202887203136%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl202889203141%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl202868203085%_))
                                (_%__kont205735205736%_
                                 _%hd202888203139%_
                                 _%hd202879203115%_
                                 _%tl202859203060%_
                                 _%arg202865203078%_)
                                (_%__match205836205837%_
                                 _%e202854203050%_
                                 _%hd202855203053%_
                                 _%tl202856203055%_
                                 _%e202866203080%_
                                 _%hd202867203083%_
                                 _%tl202868203085%_
                                 _%e202869203088%_
                                 _%hd202870203091%_
                                 _%tl202871203093%_
                                 _%e202872203096%_
                                 _%hd202873203099%_
                                 _%tl202874203101%_
                                 _%e202875203104%_
                                 _%hd202876203107%_
                                 _%tl202877203109%_
                                 _%e202878203112%_
                                 _%hd202879203115%_
                                 _%tl202880203117%_
                                 _%e202881203120%_
                                 _%hd202882203123%_
                                 _%tl202883203125%_
                                 _%e202884203128%_
                                 _%hd202885203131%_
                                 _%tl202886203133%_
                                 _%e202887203136%_
                                 _%hd202888203139%_
                                 _%tl202889203141%_))
                            (let ()
                              (declare (not safe))
                              (_%g202803202927%_)))))
                    (let () (declare (not safe)) (_%g202803202927%_)))
                (let () (declare (not safe)) (_%g202803202927%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g202803202927%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g202803202927%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g202803202927%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g202803202927%_)))))
                        (let () (declare (not safe)) (_%g202803202927%_)))
                    (let () (declare (not safe)) (_%g202803202927%_)))
                (let () (declare (not safe)) (_%g202803202927%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g202803202927%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g202803202927%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g202803202927%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g202803202927%_)))))
                        (let () (declare (not safe)) (_%g202803202927%_)))))
                (let () (declare (not safe)) (_%g202803202927%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop202860203063%_
                                     _%target202857203058%_
                                     '()))))
                               (_%__match205754205755%_
                                (lambda (_%e202808203184%_
                                         _%hd202809203187%_
                                         _%tl202810203189%_
                                         _%__splice205731205732%_
                                         _%target202811203192%_
                                         _%tl202813203194%_)
                                  (letrec ((_%loop202814203197%_
                                            (lambda (_%hd202812203200%_
                                                     _%arg202818203202%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd202812203200%_))
                                                  (let ((_%e202815203204%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd202812203200%_))))
                                                    (let ((_%lp-tl202817203209%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e202815203204%_)))
                                                          (_%lp-hd202816203207%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e202815203204%_))))
                                                      (_%loop202814203197%_
                                                       _%lp-tl202817203209%_
                                                       (cons _%lp-hd202816203207%_
                                                             _%arg202818203202%_))))
                                                  (let ((_%arg202819203212%_
                                                         (reverse _%arg202818203202%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl202810203189%_))
                                                        (let ((_%e202820203214%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl202810203189%_))))
                  (let ((_%tl202822203219%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e202820203214%_)))
                        (_%hd202821203217%_
                         (let ()
                           (declare (not safe))
                           (##car _%e202820203214%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd202821203217%_))
                        (let ((_%e202823203222%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd202821203217%_))))
                          (let ((_%tl202825203227%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e202823203222%_)))
                                (_%hd202824203225%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e202823203222%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd202824203225%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd202824203225%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl202825203227%_))
                                        (let ((_%e202826203230%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl202825203227%_))))
                                          (let ((_%tl202828203235%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e202826203230%_)))
                                                (_%hd202827203233%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e202826203230%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd202827203233%_))
                                                (let ((_%e202829203238%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd202827203233%_))))
                                                  (let ((_%tl202831203243%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e202829203238%_)))
                                                        (_%hd202830203241%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e202829203238%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd202830203241%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd202830203241%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl202831203243%_))
                        (let ((_%e202832203246%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl202831203243%_))))
                          (let ((_%tl202834203251%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e202832203246%_)))
                                (_%hd202833203249%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e202832203246%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl202834203251%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl202828203235%_))
                                    (let ((_%__splice205733205734%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl202828203235%_
                                              '0))))
                                      (let ((_%tl202837203256%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice205733205734%_
                                                '1)))
                                            (_%target202835203254%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice205733205734%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl202837203256%_))
                                            (letrec ((_%loop202838203259%_
                                                      (lambda (_%hd202836203262%_
                                                               _%xarg202842203264%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd202836203262%_))
                                                            (let ((_%e202839203266%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd202836203262%_))))
                      (let ((_%lp-tl202841203271%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e202839203266%_)))
                            (_%lp-hd202840203269%_
                             (let ()
                               (declare (not safe))
                               (##car _%e202839203266%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd202840203269%_))
                            (let ((_%e202844203274%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd202840203269%_))))
                              (let ((_%tl202846203279%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e202844203274%_)))
                                    (_%hd202845203277%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e202844203274%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd202845203277%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd202845203277%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl202846203279%_))
                                            (let ((_%e202847203282%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl202846203279%_))))
                                              (let ((_%tl202849203287%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e202847203282%_)))
                                                    (_%hd202848203285%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e202847203282%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl202849203287%_))
                                                    (_%loop202838203259%_
                                                     _%lp-tl202841203271%_
                                                     (cons _%hd202848203285%_
                                                           _%xarg202842203264%_))
                                                    (_%__match205766205767%_
                                                     _%e202808203184%_
                                                     _%hd202809203187%_
                                                     _%tl202810203189%_
                                                     _%__splice205731205732%_
                                                     _%target202811203192%_
                                                     _%tl202813203194%_))))
                                            (_%__match205766205767%_
                                             _%e202808203184%_
                                             _%hd202809203187%_
                                             _%tl202810203189%_
                                             _%__splice205731205732%_
                                             _%target202811203192%_
                                             _%tl202813203194%_))
                                        (_%__match205766205767%_
                                         _%e202808203184%_
                                         _%hd202809203187%_
                                         _%tl202810203189%_
                                         _%__splice205731205732%_
                                         _%target202811203192%_
                                         _%tl202813203194%_))
                                    (_%__match205766205767%_
                                     _%e202808203184%_
                                     _%hd202809203187%_
                                     _%tl202810203189%_
                                     _%__splice205731205732%_
                                     _%target202811203192%_
                                     _%tl202813203194%_))))
                            (_%__match205766205767%_
                             _%e202808203184%_
                             _%hd202809203187%_
                             _%tl202810203189%_
                             _%__splice205731205732%_
                             _%target202811203192%_
                             _%tl202813203194%_))))
                    (let ((_%xarg202843203290%_
                           (reverse _%xarg202842203264%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl202822203219%_))
                          (_%__kont205729205730%_
                           _%xarg202843203290%_
                           _%hd202833203249%_
                           _%arg202819203212%_)
                          (_%__match205766205767%_
                           _%e202808203184%_
                           _%hd202809203187%_
                           _%tl202810203189%_
                           _%__splice205731205732%_
                           _%target202811203192%_
                           _%tl202813203194%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop202838203259%_
                                               _%target202835203254%_
                                               '()))
                                            (_%__match205766205767%_
                                             _%e202808203184%_
                                             _%hd202809203187%_
                                             _%tl202810203189%_
                                             _%__splice205731205732%_
                                             _%target202811203192%_
                                             _%tl202813203194%_))))
                                    (_%__match205766205767%_
                                     _%e202808203184%_
                                     _%hd202809203187%_
                                     _%tl202810203189%_
                                     _%__splice205731205732%_
                                     _%target202811203192%_
                                     _%tl202813203194%_))
                                (_%__match205766205767%_
                                 _%e202808203184%_
                                 _%hd202809203187%_
                                 _%tl202810203189%_
                                 _%__splice205731205732%_
                                 _%target202811203192%_
                                 _%tl202813203194%_))))
                        (_%__match205766205767%_
                         _%e202808203184%_
                         _%hd202809203187%_
                         _%tl202810203189%_
                         _%__splice205731205732%_
                         _%target202811203192%_
                         _%tl202813203194%_))
                    (_%__match205766205767%_
                     _%e202808203184%_
                     _%hd202809203187%_
                     _%tl202810203189%_
                     _%__splice205731205732%_
                     _%target202811203192%_
                     _%tl202813203194%_))
                (_%__match205766205767%_
                 _%e202808203184%_
                 _%hd202809203187%_
                 _%tl202810203189%_
                 _%__splice205731205732%_
                 _%target202811203192%_
                 _%tl202813203194%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match205766205767%_
                                                 _%e202808203184%_
                                                 _%hd202809203187%_
                                                 _%tl202810203189%_
                                                 _%__splice205731205732%_
                                                 _%target202811203192%_
                                                 _%tl202813203194%_))))
                                        (_%__match205766205767%_
                                         _%e202808203184%_
                                         _%hd202809203187%_
                                         _%tl202810203189%_
                                         _%__splice205731205732%_
                                         _%target202811203192%_
                                         _%tl202813203194%_))
                                    (_%__match205766205767%_
                                     _%e202808203184%_
                                     _%hd202809203187%_
                                     _%tl202810203189%_
                                     _%__splice205731205732%_
                                     _%target202811203192%_
                                     _%tl202813203194%_))
                                (_%__match205766205767%_
                                 _%e202808203184%_
                                 _%hd202809203187%_
                                 _%tl202810203189%_
                                 _%__splice205731205732%_
                                 _%target202811203192%_
                                 _%tl202813203194%_))))
                        (_%__match205766205767%_
                         _%e202808203184%_
                         _%hd202809203187%_
                         _%tl202810203189%_
                         _%__splice205731205732%_
                         _%target202811203192%_
                         _%tl202813203194%_))))
                (_%__match205766205767%_
                 _%e202808203184%_
                 _%hd202809203187%_
                 _%tl202810203189%_
                 _%__splice205731205732%_
                 _%target202811203192%_
                 _%tl202813203194%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop202814203197%_
                                     _%target202811203192%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx205727205728%_))
                              (let ((_%e202808203184%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx205727205728%_))))
                                (let ((_%tl202810203189%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202808203184%_)))
                                      (_%hd202809203187%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202808203184%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd202809203187%_))
                                      (let ((_%__splice205731205732%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%hd202809203187%_
                                                '0))))
                                        (let ((_%tl202813203194%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice205731205732%_
                                                  '1)))
                                              (_%target202811203192%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice205731205732%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl202813203194%_))
                                              (_%__match205754205755%_
                                               _%e202808203184%_
                                               _%hd202809203187%_
                                               _%tl202810203189%_
                                               _%__splice205731205732%_
                                               _%target202811203192%_
                                               _%tl202813203194%_)
                                              (_%__match205766205767%_
                                               _%e202808203184%_
                                               _%hd202809203187%_
                                               _%tl202810203189%_
                                               _%__splice205731205732%_
                                               _%target202811203192%_
                                               _%tl202813203194%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl202810203189%_))
                                          (let ((_%e202896202940%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl202810203189%_))))
                                            (let ((_%tl202898202945%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e202896202940%_)))
                                                  (_%hd202897202943%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e202896202940%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd202897202943%_))
                                                  (let ((_%e202899202948%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd202897202943%_))))
                                                    (let ((_%tl202901202953%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e202899202948%_)))
                                                          (_%hd202900202951%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e202899202948%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd202900202951%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd202900202951%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl202901202953%_))
                          (let ((_%e202902202956%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl202901202953%_))))
                            (let ((_%tl202904202961%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e202902202956%_)))
                                  (_%hd202903202959%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e202902202956%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd202903202959%_))
                                  (let ((_%e202905202964%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd202903202959%_))))
                                    (let ((_%tl202907202969%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e202905202964%_)))
                                          (_%hd202906202967%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e202905202964%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd202906202967%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd202906202967%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl202907202969%_))
                                                  (let ((_%e202908202972%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl202907202969%_))))
                                                    (let ((_%tl202910202977%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e202908202972%_)))
                                                          (_%hd202909202975%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e202908202972%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl202910202977%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl202904202961%_))
                      (let ((_%e202911202980%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl202904202961%_))))
                        (let ((_%tl202913202985%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202911202980%_)))
                              (_%hd202912202983%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202911202980%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd202912202983%_))
                              (let ((_%e202914202988%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd202912202983%_))))
                                (let ((_%tl202916202993%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202914202988%_)))
                                      (_%hd202915202991%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202914202988%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd202915202991%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd202915202991%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl202916202993%_))
                                              (let ((_%e202917202996%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl202916202993%_))))
                                                (let ((_%tl202919203001%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e202917202996%_)))
                                                      (_%hd202918202999%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e202917202996%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl202919203001%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl202913202985%_))
                                                          (let ((_%e202920203004%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl202913202985%_))))
                    (let ((_%tl202922203009%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e202920203004%_)))
                          (_%hd202921203007%_
                           (let ()
                             (declare (not safe))
                             (##car _%e202920203004%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl202922203009%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl202898202945%_))
                              (_%__kont205739205740%_
                               _%hd202918202999%_
                               _%hd202909202975%_
                               _%hd202809203187%_)
                              (let ()
                                (declare (not safe))
                                (_%g202803202927%_)))
                          (let () (declare (not safe)) (_%g202803202927%_)))))
                  (let () (declare (not safe)) (_%g202803202927%_)))
              (let () (declare (not safe)) (_%g202803202927%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g202803202927%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g202803202927%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g202803202927%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g202803202927%_)))))
                      (let () (declare (not safe)) (_%g202803202927%_)))
                  (let () (declare (not safe)) (_%g202803202927%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g202803202927%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g202803202927%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g202803202927%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g202803202927%_)))))
                          (let () (declare (not safe)) (_%g202803202927%_)))
                      (let () (declare (not safe)) (_%g202803202927%_)))
                  (let () (declare (not safe)) (_%g202803202927%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g202803202927%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g202803202927%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g202803202927%_))))))))
                 (_%generate1202650%_
                  (lambda (_%args202781%_
                           _%arglen202782%_
                           _%hd202783%_
                           _%body202784%_)
                    (let* ((_%len202786%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-length _%hd202783%_)))
                           (_%condition202791%_
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _%hd202783%_))
                                (if (gxc#current-compile-decls-unsafe?)
                                    (cons '##fx=
                                          (cons _%arglen202782%_
                                                (cons _%len202786%_ '())))
                                    (cons 'let
                                          (cons '()
                                                (cons '(declare (not safe))
                                                      (cons (cons '##fx=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%arglen202782%_ (cons _%len202786%_ '())))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (if (> _%len202786%_ '0)
                                    (if (gxc#current-compile-decls-unsafe?)
                                        (cons '##fx>=
                                              (cons _%arglen202782%_
                                                    (cons _%len202786%_ '())))
                                        (cons 'let
                                              (cons '()
                                                    (cons '(declare (not safe))
                                                          (cons (cons '##fx>=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%arglen202782%_ (cons _%len202786%_ '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '#t)))
                           (_%dispatch202793%_
                            (if (_%dispatch-case?202648%_
                                 _%hd202783%_
                                 _%body202784%_)
                                (_%dispatch-case-e202649%_
                                 _%hd202783%_
                                 _%body202784%_)
                                (gxc#generate-runtime-lambda-form
                                 _%self202645%_
                                 _%hd202783%_
                                 _%body202784%_))))
                      (cons _%condition202791%_
                            (cons (cons 'apply
                                        (cons _%dispatch202793%_
                                              (cons _%args202781%_ '())))
                                  '()))))))
          (let* ((_%g202652202680%_
                  (lambda (_%g202653202677%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g202653202677%_))))
                 (_%g202651202778%_
                  (lambda (_%g202653202683%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g202653202683%_))
                        (let ((_%e202656202685%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g202653202683%_))))
                          (let ((_%hd202657202688%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e202656202685%_)))
                                (_%tl202658202690%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e202656202685%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl202658202690%_))
                                (let ((_g206896_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl202658202690%_
                                          '0))))
                                  (begin
                                    (let ((_g206897_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g206896_)
                                                 (##values-length _g206896_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g206897_ 2)))
                                          (error "Context expects 2 values"
                                                 _g206897_)))
                                    (let ((_%target202659202693%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g206896_ 0)))
                                          (_%tl202661202695%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g206896_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl202661202695%_))
                                          (letrec ((_%loop202662202698%_
                                                    (lambda (_%hd202660202701%_
                                                             _%body202666202703%_
                                                             _%hd202667202704%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd202660202701%_))
                                                          (let ((_%e202663202706%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd202660202701%_))))
                    (let ((_%lp-hd202664202709%_
                           (let ()
                             (declare (not safe))
                             (##car _%e202663202706%_)))
                          (_%lp-tl202665202711%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e202663202706%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd202664202709%_))
                          (let ((_%e202670202714%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd202664202709%_))))
                            (let ((_%hd202671202717%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e202670202714%_)))
                                  (_%tl202672202719%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e202670202714%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl202672202719%_))
                                  (let ((_%e202673202722%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl202672202719%_))))
                                    (let ((_%hd202674202725%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e202673202722%_)))
                                          (_%tl202675202727%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e202673202722%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl202675202727%_))
                                          (_%loop202662202698%_
                                           _%lp-tl202665202711%_
                                           (cons _%hd202674202725%_
                                                 _%body202666202703%_)
                                           (cons _%hd202671202717%_
                                                 _%hd202667202704%_))
                                          (_%g202652202680%_
                                           _%g202653202683%_))))
                                  (_%g202652202680%_ _%g202653202683%_))))
                          (_%g202652202680%_ _%g202653202683%_))))
                  (let ((_%body202668202730%_ (reverse _%body202666202703%_))
                        (_%hd202669202731%_ (reverse _%hd202667202704%_)))
                    ((lambda (_%g202654202733%_ _%g202655202734%_)
                       (let ((_%args202753%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%arglen202754%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%name202755%_
                              (let ((_%$e202750%_
                                     (let ((__tmp206898
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-runtime-names))))
                                       (declare (not safe))
                                       (hash-get __tmp206898 _%stx202646%_))))
                                (if _%$e202750%_
                                    _%$e202750%_
                                    ''case-lambda-dispatch))))
                         (cons 'lambda
                               (cons _%args202753%_
                                     (cons (cons 'let
                                                 (cons (cons (cons _%arglen202754%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (gxc#current-compile-decls-unsafe?)
                                     (cons '##length (cons _%args202753%_ '()))
                                     (cons 'let
                                           (cons '()
                                                 (cons '(declare (not safe))
                                                       (cons (cons '##length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%args202753%_ '()))
                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 '()))
                     '())
               (cons (cons 'cond
                           (let ((__tmp206902
                                  (cons (cons 'else
                                              (cons (cons '##raise-wrong-number-of-arguments-exception
                                                          (cons _%name202755%_
                                                                (cons _%args202753%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '()))
                                 (__tmp206899
                                  (map (lambda (_%g202756202759%_
                                                _%g202757202761%_)
                                         (_%generate1202650%_
                                          _%args202753%_
                                          _%arglen202754%_
                                          _%g202756202759%_
                                          _%g202757202761%_))
                                       (let ((__tmp206900
                                              (lambda (_%g202763202766%_
                                                       _%g202764202768%_)
                                                (cons _%g202763202766%_
                                                      _%g202764202768%_))))
                                         (declare (not safe))
                                         (foldr__0
                                          __tmp206900
                                          '()
                                          _%g202655202734%_))
                                       (let ((__tmp206901
                                              (lambda (_%g202770202773%_
                                                       _%g202771202775%_)
                                                (cons _%g202770202773%_
                                                      _%g202771202775%_))))
                                         (declare (not safe))
                                         (foldr__0
                                          __tmp206901
                                          '()
                                          _%g202654202733%_)))))
                             (declare (not safe))
                             (foldr__0 cons __tmp206902 __tmp206899)))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))
                     _%body202668202730%_
                     _%hd202669202731%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop202662202698%_
                                             _%target202659202693%_
                                             '()
                                             '()))
                                          (_%g202652202680%_
                                           _%g202653202683%_)))))
                                (_%g202652202680%_ _%g202653202683%_))))
                        (_%g202652202680%_ _%g202653202683%_)))))
            (_%g202651202778%_ _%stx202646%_)))))
    (define gxc#generate-runtime-let-values%__%
      (lambda (_%self201882%_ _%stx201883%_ _%compiled-body?201884%_)
        (letrec ((_%generate-simple201886%_
                  (lambda (_%hd202630%_ _%body202631%_)
                    (_%coalesce-boolean201887%_
                     (_%simplify-let201888%_
                      (gxc#generate-runtime-simple-let
                       _%self201882%_
                       'let
                       _%hd202630%_
                       _%body202631%_
                       _%compiled-body?201884%_)))))
                 (_%coalesce-boolean201887%_
                  (lambda (_%code202491%_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-boolean-context))
                        (let* ((_%code202492202518%_ _%code202491%_)
                               (_%else202494202526%_
                                (lambda () _%code202491%_))
                               (_%K202496202563%_
                                (lambda (_%expr2202529%_
                                         _%expr1202530%_
                                         _%id202531%_)
                                  (let* ((_%expr2202532202540%_
                                          _%expr2202529%_)
                                         (_%else202534202548%_
                                          (lambda ()
                                            (cons 'or
                                                  (cons _%expr1202530%_
                                                        (cons _%expr2202529%_
                                                              '())))))
                                         (_%K202536202553%_
                                          (lambda (_%exprs202551%_)
                                            (cons 'or
                                                  (cons _%expr1202530%_
                                                        _%exprs202551%_)))))
                                    (if (pair? _%expr2202532202540%_)
                                        (let ((_%hd202537202556%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%expr2202532202540%_)))
                                              (_%tl202538202558%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%expr2202532202540%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd202537202556%_ 'or))
                                              (let ((_%exprs202561%_
                                                     _%tl202538202558%_))
                                                (_%K202536202553%_
                                                 _%exprs202561%_))
                                              (_%else202534202548%_)))
                                        (_%else202534202548%_))))))
                          (if (pair? _%code202492202518%_)
                              (let ((_%hd202497202566%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%code202492202518%_)))
                                    (_%tl202498202568%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%code202492202518%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%hd202497202566%_ 'let))
                                    (if (pair? _%tl202498202568%_)
                                        (let ((_%hd202499202571%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%tl202498202568%_)))
                                              (_%tl202500202573%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%tl202498202568%_))))
                                          (if (pair? _%hd202499202571%_)
                                              (let ((_%hd202511202576%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%hd202499202571%_)))
                                                    (_%tl202512202578%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%hd202499202571%_))))
                                                (if (pair? _%hd202511202576%_)
                                                    (let ((_%hd202513202581%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%hd202511202576%_)))
                                                          (_%tl202514202583%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%hd202511202576%_))))
                                                      (let ((_%id202586%_
                                                             _%hd202513202581%_))
                                                        (if (pair? _%tl202514202583%_)
                                                            (let ((_%hd202515202588%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##car _%tl202514202583%_)))
                          (_%tl202516202590%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl202514202583%_))))
                      (let ((_%expr1202593%_ _%hd202515202588%_))
                        (if (null? _%tl202516202590%_)
                            (if (null? _%tl202512202578%_)
                                (if (pair? _%tl202500202573%_)
                                    (let ((_%hd202501202595%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl202500202573%_)))
                                          (_%tl202502202597%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl202500202573%_))))
                                      (if (pair? _%hd202501202595%_)
                                          (let ((_%hd202503202600%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd202501202595%_)))
                                                (_%tl202504202602%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd202501202595%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd202503202600%_
                                                         'if))
                                                (if (pair? _%tl202504202602%_)
                                                    (let ((_%hd202505202605%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl202504202602%_)))
                                                          (_%tl202506202607%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl202504202602%_))))
                                                      (if ((lambda (_%g202609202611%_)
                                                             (eq? _%g202609202611%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id202586%_))
                   _%hd202505202605%_)
                  (if (pair? _%tl202506202607%_)
                      (let ((_%hd202507202614%_
                             (let ()
                               (declare (not safe))
                               (##car _%tl202506202607%_)))
                            (_%tl202508202616%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%tl202506202607%_))))
                        (if ((lambda (_%g202618202620%_)
                               (eq? _%g202618202620%_ _%id202586%_))
                             _%hd202507202614%_)
                            (if (pair? _%tl202508202616%_)
                                (let ((_%hd202509202623%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl202508202616%_)))
                                      (_%tl202510202625%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl202508202616%_))))
                                  (let ((_%expr2202628%_ _%hd202509202623%_))
                                    (if (null? _%tl202510202625%_)
                                        (if (null? _%tl202502202597%_)
                                            (_%K202496202563%_
                                             _%expr2202628%_
                                             _%expr1202593%_
                                             _%id202586%_)
                                            (_%else202494202526%_))
                                        (_%else202494202526%_))))
                                (_%else202494202526%_))
                            (_%else202494202526%_)))
                      (_%else202494202526%_))
                  (_%else202494202526%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else202494202526%_))
                                                (_%else202494202526%_)))
                                          (_%else202494202526%_)))
                                    (_%else202494202526%_))
                                (_%else202494202526%_))
                            (_%else202494202526%_))))
                    (_%else202494202526%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else202494202526%_)))
                                              (_%else202494202526%_)))
                                        (_%else202494202526%_))
                                    (_%else202494202526%_)))
                              (_%else202494202526%_)))
                        _%code202491%_)))
                 (_%simplify-let201888%_
                  (lambda (_%code202190%_)
                    (let* ((_%code202191202263%_ _%code202190%_)
                           (_%else202196202271%_ (lambda () _%code202190%_)))
                      (let ((_%K202255202471%_
                             (lambda (_%expr202469%_) _%expr202469%_))
                            (_%K202238202417%_
                             (lambda (_%body202413%_
                                      _%expr202414%_
                                      _%id202415%_)
                               (cons 'let
                                     (cons (cons (cons _%id202415%_
                                                       (cons _%expr202414%_
                                                             '()))
                                                 '())
                                           _%body202413%_))))
                            (_%K202215202341%_
                             (lambda (_%body202335%_
                                      _%expr2202336%_
                                      _%id2202337%_
                                      _%expr1202338%_
                                      _%id1202339%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1202339%_
                                                       (cons _%expr1202338%_
                                                             '()))
                                                 (cons (cons _%id2202337%_
                                                             (cons _%expr2202336%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body202335%_))))
                            (_%K202198202280%_
                             (lambda (_%body202275%_
                                      _%bind202276%_
                                      _%expr1202277%_
                                      _%id1202278%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1202278%_
                                                       (cons _%expr1202277%_
                                                             '()))
                                                 _%bind202276%_)
                                           _%body202275%_)))))
                        (if (pair? _%code202191202263%_)
                            (let ((_%tl202257202476%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%code202191202263%_)))
                                  (_%hd202256202474%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%code202191202263%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd202256202474%_ 'let))
                                  (if (pair? _%tl202257202476%_)
                                      (let ((_%tl202259202481%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%tl202257202476%_)))
                                            (_%hd202258202479%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%tl202257202476%_))))
                                        (if (null? _%hd202258202479%_)
                                            (if (pair? _%tl202259202481%_)
                                                (let ((_%tl202261202486%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%tl202259202481%_)))
                                                      (_%hd202260202484%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%tl202259202481%_))))
                                                  (if (null? _%tl202261202486%_)
                                                      (let ((_%expr202489%_
                                                             _%hd202260202484%_))
                                                        (_%K202255202471%_
                                                         _%expr202489%_))
                                                      (_%else202196202271%_)))
                                                (_%else202196202271%_))
                                            (if (pair? _%hd202258202479%_)
                                                (let ((_%tl202250202432%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd202258202479%_)))
                                                      (_%hd202249202430%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd202258202479%_))))
                                                  (if (pair? _%hd202249202430%_)
                                                      (let ((_%tl202252202437%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%hd202249202430%_)))
                    (_%hd202251202435%_
                     (let () (declare (not safe)) (##car _%hd202249202430%_))))
                (if (pair? _%tl202252202437%_)
                    (let ((_%tl202254202444%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl202252202437%_)))
                          (_%hd202253202442%_
                           (let ()
                             (declare (not safe))
                             (##car _%tl202252202437%_))))
                      (if (null? _%tl202254202444%_)
                          (if (null? _%tl202250202432%_)
                              (if (pair? _%tl202259202481%_)
                                  (let ((_%tl202244202451%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl202259202481%_)))
                                        (_%hd202243202449%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl202259202481%_))))
                                    (if (pair? _%hd202243202449%_)
                                        (let ((_%tl202246202456%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%hd202243202449%_)))
                                              (_%hd202245202454%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%hd202243202449%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd202245202454%_
                                                       'let))
                                              (if (pair? _%tl202246202456%_)
                                                  (let ((_%tl202248202461%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl202246202456%_)))
                                                        (_%hd202247202459%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl202246202456%_))))
                                                    (if (null? _%hd202247202459%_)
                                                        (if (null? _%tl202244202451%_)
                                                            (let ((_%id202440%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%hd202251202435%_)
                          (_%expr202447%_ _%hd202253202442%_)
                          (_%body202464%_ _%tl202248202461%_))
                      (_%K202238202417%_
                       _%body202464%_
                       _%expr202447%_
                       _%id202440%_))
                    (_%else202196202271%_))
                (if (pair? _%hd202247202459%_)
                    (let ((_%tl202227202390%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%hd202247202459%_)))
                          (_%hd202226202388%_
                           (let ()
                             (declare (not safe))
                             (##car _%hd202247202459%_))))
                      (if (pair? _%hd202226202388%_)
                          (let ((_%tl202229202395%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd202226202388%_)))
                                (_%hd202228202393%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd202226202388%_))))
                            (if (pair? _%tl202229202395%_)
                                (let ((_%tl202231202402%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl202229202395%_)))
                                      (_%hd202230202400%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl202229202395%_))))
                                  (if (null? _%tl202231202402%_)
                                      (if (null? _%tl202227202390%_)
                                          (if (null? _%tl202244202451%_)
                                              (let ((_%id1202364%_
                                                     _%hd202251202435%_)
                                                    (_%expr1202371%_
                                                     _%hd202253202442%_)
                                                    (_%id2202398%_
                                                     _%hd202228202393%_)
                                                    (_%expr2202405%_
                                                     _%hd202230202400%_)
                                                    (_%body202407%_
                                                     _%tl202248202461%_))
                                                (_%K202215202341%_
                                                 _%body202407%_
                                                 _%expr2202405%_
                                                 _%id2202398%_
                                                 _%expr1202371%_
                                                 _%id1202364%_))
                                              (_%else202196202271%_))
                                          (_%else202196202271%_))
                                      (_%else202196202271%_)))
                                (_%else202196202271%_)))
                          (_%else202196202271%_)))
                    (_%else202196202271%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else202196202271%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##eq? _%hd202245202454%_
                                                           'let*))
                                                  (if (pair? _%tl202246202456%_)
                                                      (let ((_%tl202208202324%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%tl202246202456%_)))
                    (_%hd202207202322%_
                     (let () (declare (not safe)) (##car _%tl202246202456%_))))
                (if (null? _%tl202244202451%_)
                    (let ((_%id1202303%_ _%hd202251202435%_)
                          (_%expr1202310%_ _%hd202253202442%_)
                          (_%bind202327%_ _%hd202207202322%_)
                          (_%body202329%_ _%tl202208202324%_))
                      (_%K202198202280%_
                       _%body202329%_
                       _%bind202327%_
                       _%expr1202310%_
                       _%id1202303%_))
                    (_%else202196202271%_)))
              (_%else202196202271%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else202196202271%_))))
                                        (_%else202196202271%_)))
                                  (_%else202196202271%_))
                              (_%else202196202271%_))
                          (_%else202196202271%_)))
                    (_%else202196202271%_)))
              (_%else202196202271%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else202196202271%_))))
                                      (_%else202196202271%_))
                                  (_%else202196202271%_)))
                            (_%else202196202271%_))))))
                 (_%generate-values201889%_
                  (lambda (_%hd202003%_ _%body202004%_)
                    (let _%lp202006%_ ((_%rest202008%_ _%hd202003%_)
                                       (_%bind202009%_ '())
                                       (_%check202010%_ '())
                                       (_%post202011%_ '()))
                      (let* ((_%__stx206056206057%_ _%rest202008%_)
                             (_%g202014202025%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx206056206057%_)))))
                        (let ((_%__kont206058206059%_
                               (lambda (_%g202016202052%_ _%g202017202053%_)
                                 (let* ((_%__stx206012206013%_
                                         _%g202017202053%_)
                                        (_%g202068202093%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx206012206013%_)))))
                                   (let ((_%__kont206014206015%_
                                          (lambda (_%g202070202166%_
                                                   _%g202071202167%_)
                                            (let ((_%eid202181%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%g202071202167%_)))
                                                  (_%expr202182%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self201882%_
                                                      _%g202070202166%_))))
                                              (_%lp202006%_
                                               _%g202016202052%_
                                               (cons (cons _%eid202181%_
                                                           (cons _%expr202182%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind202009%_)
                                               _%check202010%_
                                               _%post202011%_))))
                                         (_%__kont206016206017%_
                                          (lambda (_%g202081202114%_
                                                   _%g202082202115%_)
                                            (let* ((_%vals202128%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values202130%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals202128%_
                                                     _%g202082202115%_
                                                     _%g202081202114%_))
                                                   (_%refs202132%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals202128%_
                                                     _%g202082202115%_))
                                                   (_%expr202134%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self201882%_
                                                       _%g202081202114%_))))
                                              (_%lp202006%_
                                               _%g202016202052%_
                                               (cons (cons _%vals202128%_
                                                           (cons _%expr202134%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind202009%_)
                                               (cons _%check-values202130%_
                                                     _%check202010%_)
                                               (cons _%refs202132%_
                                                     _%post202011%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx206012206013%_))
                                         (let ((_%e202072202142%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx206012206013%_))))
                                           (let ((_%tl202074202147%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e202072202142%_)))
                                                 (_%hd202073202145%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e202072202142%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd202073202145%_))
                                                 (let ((_%e202075202150%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd202073202145%_))))
                                                   (let ((_%tl202077202155%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e202075202150%_)))
                                                         (_%hd202076202153%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e202075202150%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl202077202155%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl202074202147%_))
                     (let ((_%e202078202158%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl202074202147%_))))
                       (let ((_%tl202080202163%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e202078202158%_)))
                             (_%hd202079202161%_
                              (let ()
                                (declare (not safe))
                                (##car _%e202078202158%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl202080202163%_))
                             (_%__kont206014206015%_
                              _%hd202079202161%_
                              _%hd202076202153%_)
                             (let ()
                               (declare (not safe))
                               (_%g202068202093%_)))))
                     (let () (declare (not safe)) (_%g202068202093%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl202074202147%_))
                     (let ((_%e202086202106%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl202074202147%_))))
                       (let ((_%tl202088202111%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e202086202106%_)))
                             (_%hd202087202109%_
                              (let ()
                                (declare (not safe))
                                (##car _%e202086202106%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl202088202111%_))
                             (_%__kont206016206017%_
                              _%hd202087202109%_
                              _%hd202073202145%_)
                             (let ()
                               (declare (not safe))
                               (_%g202068202093%_)))))
                     (let () (declare (not safe)) (_%g202068202093%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl202074202147%_))
                                                     (let ((_%e202086202106%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl202074202147%_))))
                                                       (let ((_%tl202088202111%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e202086202106%_)))
                     (_%hd202087202109%_
                      (let () (declare (not safe)) (##car _%e202086202106%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl202088202111%_))
                     (_%__kont206016206017%_
                      _%hd202087202109%_
                      _%hd202073202145%_)
                     (let () (declare (not safe)) (_%g202068202093%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g202068202093%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g202068202093%_)))))))
                              (_%__kont206060206061%_
                               (lambda ()
                                 (let* ((_%body202032%_
                                         (if _%compiled-body?201884%_
                                             _%body202004%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self201882%_
                                                _%body202004%_))))
                                        (_%body202034%_
                                         (_%generate-values-post201890%_
                                          _%post202011%_
                                          _%body202032%_))
                                        (_%body202036%_
                                         (_%generate-values-check201891%_
                                          _%check202010%_
                                          _%body202034%_)))
                                   (cons 'let
                                         (cons (reverse _%bind202009%_)
                                               (cons _%body202036%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx206056206057%_))
                              (let ((_%e202018202044%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx206056206057%_))))
                                (let ((_%tl202020202049%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202018202044%_)))
                                      (_%hd202019202047%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202018202044%_))))
                                  (_%__kont206058206059%_
                                   _%tl202020202049%_
                                   _%hd202019202047%_)))
                              (_%__kont206060206061%_)))))))
                 (_%generate-values-post201890%_
                  (lambda (_%post201962%_ _%body201963%_)
                    (let _%lp201965%_ ((_%rest201967%_ _%post201962%_)
                                       (_%body201968%_ _%body201963%_))
                      (let* ((_%rest201969201977%_ _%rest201967%_)
                             (_%else201971201985%_ (lambda () _%body201968%_))
                             (_%K201973201991%_
                              (lambda (_%rest201988%_ _%bind201989%_)
                                (_%lp201965%_
                                 _%rest201988%_
                                 (cons 'let
                                       (cons _%bind201989%_
                                             (cons _%body201968%_ '())))))))
                        (if (pair? _%rest201969201977%_)
                            (let ((_%hd201974201994%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest201969201977%_)))
                                  (_%tl201975201996%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest201969201977%_))))
                              (let* ((_%bind201999%_ _%hd201974201994%_)
                                     (_%rest202001%_ _%tl201975201996%_))
                                (_%K201973201991%_
                                 _%rest202001%_
                                 _%bind201999%_)))
                            (_%else201971201985%_))))))
                 (_%generate-values-check201891%_
                  (lambda (_%check201959%_ _%body201960%_)
                    (cons 'begin
                          (let ((__tmp206904 (cons _%body201960%_ '()))
                                (__tmp206903 (reverse _%check201959%_)))
                            (declare (not safe))
                            (foldr__0 cons __tmp206904 __tmp206903))))))
          (let* ((_%g201893201910%_
                  (lambda (_%g201894201907%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g201894201907%_))))
                 (_%g201892201956%_
                  (lambda (_%g201894201913%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g201894201913%_))
                        (let ((_%e201897201915%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g201894201913%_))))
                          (let ((_%hd201898201918%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e201897201915%_)))
                                (_%tl201899201920%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e201897201915%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl201899201920%_))
                                (let ((_%e201900201923%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl201899201920%_))))
                                  (let ((_%hd201901201926%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e201900201923%_)))
                                        (_%tl201902201928%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e201900201923%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl201902201928%_))
                                        (let ((_%e201903201931%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl201902201928%_))))
                                          (let ((_%hd201904201934%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e201903201931%_)))
                                                (_%tl201905201936%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e201903201931%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl201905201936%_))
                                                ((lambda (_%g201895201939%_
                                                          _%g201896201940%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%g201896201940%_)
                                                       (_%generate-simple201886%_
                                                        _%g201896201940%_
                                                        _%g201895201939%_)
                                                       (_%generate-values201889%_
                                                        _%g201896201940%_
                                                        _%g201895201939%_)))
                                                 _%hd201904201934%_
                                                 _%hd201901201926%_)
                                                (_%g201893201910%_
                                                 _%g201894201913%_))))
                                        (_%g201893201910%_
                                         _%g201894201913%_))))
                                (_%g201893201910%_ _%g201894201913%_))))
                        (_%g201893201910%_ _%g201894201913%_)))))
            (_%g201892201956%_ _%stx201883%_)))))
    (define gxc#generate-runtime-let-values%__0
      (lambda (_%self202636%_ _%stx202637%_)
        (let ((_%compiled-body?202639%_ '#f))
          (gxc#generate-runtime-let-values%__%
           _%self202636%_
           _%stx202637%_
           _%compiled-body?202639%_))))
    (define gxc#generate-runtime-let-values%
      (lambda _g206905_
        (let ((_g206906_ (let () (declare (not safe)) (##length _g206905_))))
          (cond ((let () (declare (not safe)) (##fx= _g206906_ 2))
                 (apply gxc#generate-runtime-let-values%__0 _g206905_))
                ((let () (declare (not safe)) (##fx= _g206906_ 3))
                 (apply gxc#generate-runtime-let-values%__% _g206905_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-let-values%
                  _g206905_))))))
    (define gxc#generate-runtime-let-values-bind
      (lambda (_%vals201776%_ _%hd201777%_)
        (let _%lp201779%_ ((_%rest201781%_ _%hd201777%_)
                           (_%k201782%_ '0)
                           (_%r201783%_ '()))
          (let* ((_%__stx206070206071%_ _%rest201781%_)
                 (_%g201788201805%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx206070206071%_)))))
            (let ((_%__kont206072206073%_
                   (lambda (_%g201790201868%_)
                     (_%lp201779%_
                      _%g201790201868%_
                      (let () (declare (not safe)) (##fx+ _%k201782%_ '1))
                      _%r201783%_)))
                  (_%__kont206074206075%_
                   (lambda (_%g201795201841%_ _%g201796201842%_)
                     (_%lp201779%_
                      _%g201795201841%_
                      (let () (declare (not safe)) (##fx+ _%k201782%_ '1))
                      (cons (cons (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-binding-id
                                     _%g201796201842%_))
                                  (cons (gxc#generate-runtime-values-ref
                                         _%vals201776%_
                                         _%k201782%_
                                         _%g201795201841%_)
                                        '()))
                            _%r201783%_))))
                  (_%__kont206076206077%_
                   (lambda (_%g201800201817%_)
                     (let ((__tmp206907
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-binding-id
                                           _%g201800201817%_))
                                        (cons (gxc#generate-runtime-values->list
                                               _%vals201776%_
                                               _%k201782%_)
                                              '()))
                                  '())))
                       (declare (not safe))
                       (foldl__0 cons __tmp206907 _%r201783%_))))
                  (_%__kont206078206079%_ (lambda () (reverse _%r201783%_))))
              (let ((_%g201786201828%_
                     (lambda ()
                       (let ((_%g201800201817%_ _%__stx206070206071%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%g201800201817%_))
                             (_%__kont206076206077%_ _%g201800201817%_)
                             (_%__kont206078206079%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx206070206071%_))
                    (let ((_%e201791201857%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx206070206071%_))))
                      (let ((_%tl201793201862%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e201791201857%_)))
                            (_%hd201792201860%_
                             (let ()
                               (declare (not safe))
                               (##car _%e201791201857%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _%hd201792201860%_))
                            (let ((_%e201794201865%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd201792201860%_))))
                              (if (equal? _%e201794201865%_ '#f)
                                  (_%__kont206072206073%_ _%tl201793201862%_)
                                  (_%__kont206074206075%_
                                   _%tl201793201862%_
                                   _%hd201792201860%_)))
                            (_%__kont206074206075%_
                             _%tl201793201862%_
                             _%hd201792201860%_))))
                    (let () (declare (not safe)) (_%g201786201828%_)))))))))
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_%self201455%_ _%stx201456%_ _%compiled-body?201457%_)
        (letrec ((_%generate-simple201459%_
                  (lambda (_%hd201761%_ _%body201762%_)
                    (gxc#generate-runtime-simple-let
                     _%self201455%_
                     'letrec
                     _%hd201761%_
                     _%body201762%_
                     _%compiled-body?201457%_)))
                 (_%generate-values201460%_
                  (lambda (_%hd201540%_ _%body201541%_)
                    (let _%lp201543%_ ((_%rest201545%_ _%hd201540%_)
                                       (_%bind201546%_ '())
                                       (_%check201547%_ '())
                                       (_%post201548%_ '()))
                      (let* ((_%__stx206144206145%_ _%rest201545%_)
                             (_%g201551201562%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx206144206145%_)))))
                        (let ((_%__kont206146206147%_
                               (lambda (_%g201553201589%_ _%g201554201590%_)
                                 (let* ((_%__stx206100206101%_
                                         _%g201554201590%_)
                                        (_%g201605201630%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx206100206101%_)))))
                                   (let ((_%__kont206102206103%_
                                          (lambda (_%g201607201737%_
                                                   _%g201608201738%_)
                                            (let ((_%eid201752%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%g201608201738%_)))
                                                  (_%expr201753%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self201455%_
                                                      _%g201607201737%_))))
                                              (_%lp201543%_
                                               _%g201553201589%_
                                               (cons (cons _%eid201752%_
                                                           (cons _%expr201753%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind201546%_)
                                               _%check201547%_
                                               _%post201548%_))))
                                         (_%__kont206104206105%_
                                          (lambda (_%g201618201651%_
                                                   _%g201619201652%_)
                                            (let* ((_%vals201665%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values201667%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals201665%_
                                                     _%g201619201652%_
                                                     _%g201618201651%_))
                                                   (_%refs201669%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals201665%_
                                                     _%g201619201652%_))
                                                   (_%expr201671%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self201455%_
                                                       _%g201618201651%_))))
                                              (_%lp201543%_
                                               _%g201553201589%_
                                               (let ((__tmp206909
                                                      (cons (cons _%vals201665%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr201671%_ '()))
                    _%bind201546%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp206908
                                                      (map (lambda (_%e201673201675%_)
                                                             (let* ((_%e201673201677201686%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%e201673201675%_)
                            (_%E201679201690%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%e201673201677201686%_
                                        '([eid _])))
                               '#!void))
                            (_%K201680201695%_
                             (lambda (_%eid201693%_)
                               (cons _%eid201693%_ (cons '#!void '())))))
                       (if (pair? _%e201673201677201686%_)
                           (let ((_%hd201681201698%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e201673201677201686%_)))
                                 (_%tl201682201700%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e201673201677201686%_))))
                             (let ((_%eid201703%_ _%hd201681201698%_))
                               (if (pair? _%tl201682201700%_)
                                   (let ((_%tl201684201705%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%tl201682201700%_))))
                                     (if (null? _%tl201684201705%_)
                                         (_%K201680201695%_ _%eid201703%_)
                                         (_%E201679201690%_)))
                                   (_%E201679201690%_))))
                           (_%E201679201690%_))))
                   _%refs201669%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldl__0
                                                  cons
                                                  __tmp206909
                                                  __tmp206908))
                                               (cons _%check-values201667%_
                                                     _%check201547%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (foldl__0
                                                  cons
                                                  _%refs201669%_
                                                  _%post201548%_)))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx206100206101%_))
                                         (let ((_%e201609201713%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx206100206101%_))))
                                           (let ((_%tl201611201718%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e201609201713%_)))
                                                 (_%hd201610201716%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e201609201713%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd201610201716%_))
                                                 (let ((_%e201612201721%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd201610201716%_))))
                                                   (let ((_%tl201614201726%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e201612201721%_)))
                                                         (_%hd201613201724%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e201612201721%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl201614201726%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl201611201718%_))
                     (let ((_%e201615201729%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl201611201718%_))))
                       (let ((_%tl201617201734%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e201615201729%_)))
                             (_%hd201616201732%_
                              (let ()
                                (declare (not safe))
                                (##car _%e201615201729%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl201617201734%_))
                             (_%__kont206102206103%_
                              _%hd201616201732%_
                              _%hd201613201724%_)
                             (let ()
                               (declare (not safe))
                               (_%g201605201630%_)))))
                     (let () (declare (not safe)) (_%g201605201630%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl201611201718%_))
                     (let ((_%e201623201643%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl201611201718%_))))
                       (let ((_%tl201625201648%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e201623201643%_)))
                             (_%hd201624201646%_
                              (let ()
                                (declare (not safe))
                                (##car _%e201623201643%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl201625201648%_))
                             (_%__kont206104206105%_
                              _%hd201624201646%_
                              _%hd201610201716%_)
                             (let ()
                               (declare (not safe))
                               (_%g201605201630%_)))))
                     (let () (declare (not safe)) (_%g201605201630%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl201611201718%_))
                                                     (let ((_%e201623201643%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl201611201718%_))))
                                                       (let ((_%tl201625201648%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e201623201643%_)))
                     (_%hd201624201646%_
                      (let () (declare (not safe)) (##car _%e201623201643%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl201625201648%_))
                     (_%__kont206104206105%_
                      _%hd201624201646%_
                      _%hd201610201716%_)
                     (let () (declare (not safe)) (_%g201605201630%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g201605201630%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g201605201630%_)))))))
                              (_%__kont206148206149%_
                               (lambda ()
                                 (let* ((_%body201569%_
                                         (if _%compiled-body?201457%_
                                             _%body201541%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self201455%_
                                                _%body201541%_))))
                                        (_%body201571%_
                                         (_%generate-values-post201462%_
                                          _%post201548%_
                                          _%body201569%_))
                                        (_%body201573%_
                                         (_%generate-values-check201461%_
                                          _%check201547%_
                                          _%body201571%_)))
                                   (cons 'letrec
                                         (cons (reverse _%bind201546%_)
                                               (cons _%body201573%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx206144206145%_))
                              (let ((_%e201555201581%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx206144206145%_))))
                                (let ((_%tl201557201586%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e201555201581%_)))
                                      (_%hd201556201584%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e201555201581%_))))
                                  (_%__kont206146206147%_
                                   _%tl201557201586%_
                                   _%hd201556201584%_)))
                              (_%__kont206148206149%_)))))))
                 (_%generate-values-check201461%_
                  (lambda (_%check201537%_ _%body201538%_)
                    (cons 'begin
                          (let ((__tmp206911 (cons _%body201538%_ '()))
                                (__tmp206910 (reverse _%check201537%_)))
                            (declare (not safe))
                            (foldr__0 cons __tmp206911 __tmp206910)))))
                 (_%generate-values-post201462%_
                  (lambda (_%post201530%_ _%body201531%_)
                    (cons 'begin
                          (let ((__tmp206915 (cons _%body201531%_ '()))
                                (__tmp206912
                                 (let ((__tmp206914
                                        (lambda (_%g201532201534%_)
                                          (cons 'set! _%g201532201534%_)))
                                       (__tmp206913 (reverse _%post201530%_)))
                                   (declare (not safe))
                                   (##map __tmp206914 __tmp206913))))
                            (declare (not safe))
                            (foldr__0 cons __tmp206915 __tmp206912))))))
          (let* ((_%g201464201481%_
                  (lambda (_%g201465201478%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g201465201478%_))))
                 (_%g201463201527%_
                  (lambda (_%g201465201484%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g201465201484%_))
                        (let ((_%e201468201486%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g201465201484%_))))
                          (let ((_%hd201469201489%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e201468201486%_)))
                                (_%tl201470201491%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e201468201486%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl201470201491%_))
                                (let ((_%e201471201494%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl201470201491%_))))
                                  (let ((_%hd201472201497%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e201471201494%_)))
                                        (_%tl201473201499%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e201471201494%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl201473201499%_))
                                        (let ((_%e201474201502%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl201473201499%_))))
                                          (let ((_%hd201475201505%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e201474201502%_)))
                                                (_%tl201476201507%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e201474201502%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl201476201507%_))
                                                ((lambda (_%g201466201510%_
                                                          _%g201467201511%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%g201467201511%_)
                                                       (_%generate-simple201459%_
                                                        _%g201467201511%_
                                                        _%g201466201510%_)
                                                       (_%generate-values201460%_
                                                        _%g201467201511%_
                                                        _%g201466201510%_)))
                                                 _%hd201475201505%_
                                                 _%hd201472201497%_)
                                                (_%g201464201481%_
                                                 _%g201465201484%_))))
                                        (_%g201464201481%_
                                         _%g201465201484%_))))
                                (_%g201464201481%_ _%g201465201484%_))))
                        (_%g201464201481%_ _%g201465201484%_)))))
            (_%g201463201527%_ _%stx201456%_)))))
    (define gxc#generate-runtime-letrec-values%__0
      (lambda (_%self201767%_ _%stx201768%_)
        (let ((_%compiled-body?201770%_ '#f))
          (gxc#generate-runtime-letrec-values%__%
           _%self201767%_
           _%stx201768%_
           _%compiled-body?201770%_))))
    (define gxc#generate-runtime-letrec-values%
      (lambda _g206916_
        (let ((_g206917_ (let () (declare (not safe)) (##length _g206916_))))
          (cond ((let () (declare (not safe)) (##fx= _g206917_ 2))
                 (apply gxc#generate-runtime-letrec-values%__0 _g206916_))
                ((let () (declare (not safe)) (##fx= _g206917_ 3))
                 (apply gxc#generate-runtime-letrec-values%__% _g206916_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-letrec-values%
                  _g206916_))))))
    (define gxc#generate-runtime-letrec*-values%
      (lambda (_%self201036%_ _%stx201037%_)
        (letrec ((_%generate-values201039%_
                  (lambda (_%hd201282%_ _%body201283%_)
                    (let _%lp201285%_ ((_%rest201287%_ _%hd201282%_)
                                       (_%bind201288%_ '()))
                      (let* ((_%rest201289201297%_ _%rest201287%_)
                             (_%else201291201308%_
                              (lambda ()
                                (let ((_%bind201305%_ (reverse _%bind201288%_))
                                      (_%body201306%_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self201036%_
                                          _%body201283%_))))
                                  (cons 'letrec*
                                        (cons _%bind201305%_
                                              (cons _%body201306%_ '()))))))
                             (_%K201293201442%_
                              (lambda (_%rest201311%_ _%hd-bind201312%_)
                                (let* ((_%__stx206158206159%_
                                        _%hd-bind201312%_)
                                       (_%g201315201340%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx206158206159%_)))))
                                  (let ((_%__kont206160206161%_
                                         (lambda (_%g201317201421%_
                                                  _%g201318201422%_)
                                           (let ((_%eid201436%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-binding-id*
                                                     _%g201318201422%_)))
                                                 (_%expr201437%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self201036%_
                                                     _%g201317201421%_))))
                                             (_%lp201285%_
                                              _%rest201311%_
                                              (cons (cons _%eid201436%_
                                                          (cons _%expr201437%_
                                                                '()))
                                                    _%bind201288%_)))))
                                        (_%__kont206162206163%_
                                         (lambda (_%g201328201361%_
                                                  _%g201329201362%_)
                                           (let* ((_%vals201381%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%tmp201383%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%check-values201385%_
                                                   (gxc#generate-runtime-check-values
                                                    _%tmp201383%_
                                                    _%g201329201362%_
                                                    _%g201328201361%_))
                                                  (_%refs201387%_
                                                   (gxc#generate-runtime-let-values-bind
                                                    _%vals201381%_
                                                    _%g201329201362%_))
                                                  (_%expr201389%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self201036%_
                                                      _%g201328201361%_))))
                                             (_%lp201285%_
                                              _%rest201311%_
                                              (let ((__tmp206918
                                                     (cons (cons _%vals201381%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'let
                                     (cons (cons (cons _%tmp201383%_
                                                       (cons _%expr201389%_
                                                             '()))
                                                 '())
                                           (cons _%check-values201385%_
                                                 (cons _%tmp201383%_ '()))))
                               '()))
                   _%bind201288%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (foldl__0
                                                 cons
                                                 __tmp206918
                                                 _%refs201387%_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx206158206159%_))
                                        (let ((_%e201319201397%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx206158206159%_))))
                                          (let ((_%tl201321201402%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e201319201397%_)))
                                                (_%hd201320201400%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e201319201397%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd201320201400%_))
                                                (let ((_%e201322201405%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd201320201400%_))))
                                                  (let ((_%tl201324201410%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e201322201405%_)))
                                                        (_%hd201323201408%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e201322201405%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl201324201410%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl201321201402%_))
                                                            (let ((_%e201325201413%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl201321201402%_))))
                      (let ((_%tl201327201418%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e201325201413%_)))
                            (_%hd201326201416%_
                             (let ()
                               (declare (not safe))
                               (##car _%e201325201413%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl201327201418%_))
                            (_%__kont206160206161%_
                             _%hd201326201416%_
                             _%hd201323201408%_)
                            (let ()
                              (declare (not safe))
                              (_%g201315201340%_)))))
                    (let () (declare (not safe)) (_%g201315201340%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl201321201402%_))
                    (let ((_%e201333201353%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl201321201402%_))))
                      (let ((_%tl201335201358%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e201333201353%_)))
                            (_%hd201334201356%_
                             (let ()
                               (declare (not safe))
                               (##car _%e201333201353%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl201335201358%_))
                            (_%__kont206162206163%_
                             _%hd201334201356%_
                             _%hd201320201400%_)
                            (let ()
                              (declare (not safe))
                              (_%g201315201340%_)))))
                    (let () (declare (not safe)) (_%g201315201340%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl201321201402%_))
                                                    (let ((_%e201333201353%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl201321201402%_))))
                                                      (let ((_%tl201335201358%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e201333201353%_)))
                    (_%hd201334201356%_
                     (let () (declare (not safe)) (##car _%e201333201353%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl201335201358%_))
                    (_%__kont206162206163%_
                     _%hd201334201356%_
                     _%hd201320201400%_)
                    (let () (declare (not safe)) (_%g201315201340%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g201315201340%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g201315201340%_))))))))
                        (if (pair? _%rest201289201297%_)
                            (let ((_%hd201294201445%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest201289201297%_)))
                                  (_%tl201295201447%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest201289201297%_))))
                              (let* ((_%hd-bind201450%_ _%hd201294201445%_)
                                     (_%rest201452%_ _%tl201295201447%_))
                                (_%K201293201442%_
                                 _%rest201452%_
                                 _%hd-bind201450%_)))
                            (_%else201291201308%_))))))
                 (_%generate-letrec?201040%_
                  (lambda (_%hd201172%_)
                    (let _%lp201174%_ ((_%rest201176%_ _%hd201172%_))
                      (let* ((_%rest201177201185%_ _%rest201176%_)
                             (_%else201179201193%_ (lambda () '#t))
                             (_%K201181201270%_
                              (lambda (_%rest201196%_ _%hd-bind201197%_)
                                (let* ((_%g201199201216%_
                                        (lambda (_%g201200201213%_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g201200201213%_))))
                                       (_%g201198201267%_
                                        (lambda (_%g201200201219%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%g201200201219%_))
                                              (let ((_%e201203201221%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%g201200201219%_))))
                                                (let ((_%hd201204201224%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e201203201221%_)))
                                                      (_%tl201205201226%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e201203201221%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd201204201224%_))
                                                      (let ((_%e201206201229%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd201204201224%_))))
                (let ((_%hd201207201232%_
                       (let () (declare (not safe)) (##car _%e201206201229%_)))
                      (_%tl201208201234%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e201206201229%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl201208201234%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl201205201226%_))
                          (let ((_%e201209201237%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl201205201226%_))))
                            (let ((_%hd201210201240%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e201209201237%_)))
                                  (_%tl201211201242%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e201209201237%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl201211201242%_))
                                  ((lambda (_%g201201201245%_
                                            _%g201202201246%_)
                                     (if (_%is-lambda-expr?201041%_
                                          _%g201201201245%_)
                                         (_%lp201174%_ _%rest201196%_)
                                         '#f))
                                   _%hd201210201240%_
                                   _%hd201207201232%_)
                                  (_%g201199201216%_ _%g201200201219%_))))
                          (_%g201199201216%_ _%g201200201219%_))
                      (_%g201199201216%_ _%g201200201219%_))))
              (_%g201199201216%_ _%g201200201219%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g201199201216%_
                                               _%g201200201219%_)))))
                                  (_%g201198201267%_ _%hd-bind201197%_)))))
                        (if (pair? _%rest201177201185%_)
                            (let ((_%hd201182201273%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest201177201185%_)))
                                  (_%tl201183201275%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest201177201185%_))))
                              (let* ((_%hd-bind201278%_ _%hd201182201273%_)
                                     (_%rest201280%_ _%tl201183201275%_))
                                (_%K201181201270%_
                                 _%rest201280%_
                                 _%hd-bind201278%_)))
                            (_%else201179201193%_))))))
                 (_%is-lambda-expr?201041%_
                  (lambda (_%expr201109%_)
                    (let* ((_%__stx206202206203%_ _%expr201109%_)
                           (_%g201112201126%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx206202206203%_)))))
                      (let ((_%__kont206204206205%_
                             (lambda (_%g201114201154%_ _%g201115201155%_)
                               '#t))
                            (_%__kont206206206207%_ (lambda () '#f)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%__stx206202206203%_))
                            (let ((_%e201116201138%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%__stx206202206203%_))))
                              (let ((_%tl201118201143%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e201116201138%_)))
                                    (_%hd201117201141%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e201116201138%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd201117201141%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd201117201141%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl201118201143%_))
                                            (let ((_%e201119201146%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl201118201143%_))))
                                              (let ((_%tl201121201151%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e201119201146%_)))
                                                    (_%hd201120201149%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e201119201146%_))))
                                                (_%__kont206204206205%_
                                                 _%tl201121201151%_
                                                 _%hd201120201149%_)))
                                            (_%__kont206206206207%_))
                                        (_%__kont206206206207%_))
                                    (_%__kont206206206207%_))))
                            (_%__kont206206206207%_)))))))
          (let* ((_%g201043201060%_
                  (lambda (_%g201044201057%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g201044201057%_))))
                 (_%g201042201106%_
                  (lambda (_%g201044201063%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g201044201063%_))
                        (let ((_%e201047201065%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g201044201063%_))))
                          (let ((_%hd201048201068%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e201047201065%_)))
                                (_%tl201049201070%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e201047201065%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl201049201070%_))
                                (let ((_%e201050201073%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl201049201070%_))))
                                  (let ((_%hd201051201076%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e201050201073%_)))
                                        (_%tl201052201078%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e201050201073%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl201052201078%_))
                                        (let ((_%e201053201081%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl201052201078%_))))
                                          (let ((_%hd201054201084%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e201053201081%_)))
                                                (_%tl201055201086%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e201053201081%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl201055201086%_))
                                                ((lambda (_%g201045201089%_
                                                          _%g201046201090%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%g201046201090%_)
                                                       (if (_%generate-letrec?201040%_
                                                            _%g201046201090%_)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self201036%_
                                                            'letrec
                                                            _%g201046201090%_
                                                            _%g201045201089%_
                                                            '#f)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self201036%_
                                                            'letrec*
                                                            _%g201046201090%_
                                                            _%g201045201089%_
                                                            '#f))
                                                       (_%generate-values201039%_
                                                        _%g201046201090%_
                                                        _%g201045201089%_)))
                                                 _%hd201054201084%_
                                                 _%hd201051201076%_)
                                                (_%g201043201060%_
                                                 _%g201044201063%_))))
                                        (_%g201043201060%_
                                         _%g201044201063%_))))
                                (_%g201043201060%_ _%g201044201063%_))))
                        (_%g201043201060%_ _%g201044201063%_)))))
            (_%g201042201106%_ _%stx201037%_)))))
    (define gxc#generate-runtime-simple-let?
      (lambda (_%hd200973%_)
        (let _%lp200975%_ ((_%rest200977%_ _%hd200973%_))
          (let* ((_%rest200978200994%_ _%rest200977%_)
                 (_%else200981201002%_ (lambda () '#f)))
            (let ((_%K200984201015%_
                   (lambda (_%rest201013%_) (_%lp200975%_ _%rest201013%_)))
                  (_%K200983201007%_ (lambda () '#t)))
              (let ((_%try-match200980201010%_
                     (lambda ()
                       (if (null? _%rest200978200994%_)
                           (_%K200983201007%_)
                           (_%else200981201002%_)))))
                (if (pair? _%rest200978200994%_)
                    (let ((_%tl200986201020%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest200978200994%_)))
                          (_%hd200985201018%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest200978200994%_))))
                      (if (pair? _%hd200985201018%_)
                          (let ((_%tl200988201025%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd200985201018%_)))
                                (_%hd200987201023%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd200985201018%_))))
                            (if (pair? _%hd200987201023%_)
                                (let ((_%tl200992201028%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd200987201023%_))))
                                  (if (null? _%tl200992201028%_)
                                      (if (pair? _%tl200988201025%_)
                                          (let ((_%tl200990201031%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl200988201025%_))))
                                            (if (null? _%tl200990201031%_)
                                                (let ((_%rest201034%_
                                                       _%tl200986201020%_))
                                                  (_%lp200975%_
                                                   _%rest201034%_))
                                                (_%else200981201002%_)))
                                          (_%else200981201002%_))
                                      (_%else200981201002%_)))
                                (_%else200981201002%_)))
                          (_%else200981201002%_)))
                    (_%try-match200980201010%_))))))))
    (define gxc#generate-runtime-simple-let
      (lambda (_%self200885%_
               _%form200886%_
               _%hd200887%_
               _%body200888%_
               _%compiled-body?200889%_)
        (letrec ((_%generate1200891%_
                  (lambda (_%bind200930%_)
                    (let* ((_%bind200931200942%_ _%bind200930%_)
                           (_%E200933200945%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%bind200931200942%_
                                       '([[id] expr])))
                              '#!void))
                           (_%K200934200951%_
                            (lambda (_%expr200948%_ _%id200949%_)
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-binding-id*
                                       _%id200949%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self200885%_
                                             _%expr200948%_))
                                          '())))))
                      (if (pair? _%bind200931200942%_)
                          (let ((_%hd200935200954%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%bind200931200942%_)))
                                (_%tl200936200956%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%bind200931200942%_))))
                            (if (pair? _%hd200935200954%_)
                                (let ((_%hd200939200959%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd200935200954%_)))
                                      (_%tl200940200961%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd200935200954%_))))
                                  (let ((_%id200964%_ _%hd200939200959%_))
                                    (if (null? _%tl200940200961%_)
                                        (if (pair? _%tl200936200956%_)
                                            (let ((_%hd200937200966%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl200936200956%_)))
                                                  (_%tl200938200968%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl200936200956%_))))
                                              (let ((_%expr200971%_
                                                     _%hd200937200966%_))
                                                (if (null? _%tl200938200968%_)
                                                    (_%K200934200951%_
                                                     _%expr200971%_
                                                     _%id200964%_)
                                                    (_%E200933200945%_))))
                                            (_%E200933200945%_))
                                        (_%E200933200945%_))))
                                (_%E200933200945%_)))
                          (_%E200933200945%_))))))
          (let* ((_%bind200893%_ (map _%generate1200891%_ _%hd200887%_))
                 (_%body200895%_
                  (if _%compiled-body?200889%_
                      _%body200888%_
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self200885%_ _%body200888%_))))
                 (_%body200927%_
                  (let* ((_%body200896200904%_ _%body200895%_)
                         (_%else200898200912%_
                          (lambda () (cons _%body200895%_ '())))
                         (_%K200900200917%_
                          (lambda (_%exprs200915%_) _%exprs200915%_)))
                    (if (pair? _%body200896200904%_)
                        (let ((_%hd200901200920%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%body200896200904%_)))
                              (_%tl200902200922%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%body200896200904%_))))
                          (if (let ()
                                (declare (not safe))
                                (##eq? _%hd200901200920%_ 'begin))
                              (let ((_%exprs200925%_ _%tl200902200922%_))
                                (_%K200900200917%_ _%exprs200925%_))
                              (_%else200898200912%_)))
                        (_%else200898200912%_)))))
            (cons _%form200886%_ (cons _%bind200893%_ _%body200927%_))))))
    (define gxc#generate-runtime-quote%
      (lambda (_%self200785%_ _%stx200786%_)
        (letrec ((_%generate1200788%_
                  (lambda (_%datum200840%_)
                    (if (or (null? _%datum200840%_)
                            (let ()
                              (declare (not safe))
                              (interned-symbol? _%datum200840%_))
                            (let ()
                              (declare (not safe))
                              (gx#self-quoting? _%datum200840%_))
                            (eof-object? _%datum200840%_))
                        _%datum200840%_
                        (if (uninterned-symbol? _%datum200840%_)
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__%
                               _%datum200840%_
                               '#t))
                            (if (pair? _%datum200840%_)
                                (cons (_%generate1200788%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%datum200840%_)))
                                      (_%generate1200788%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%datum200840%_))))
                                (if (box? _%datum200840%_)
                                    (box (_%generate1200788%_
                                          (unbox _%datum200840%_)))
                                    (if (vector? _%datum200840%_)
                                        (vector-map
                                         _%generate1200788%_
                                         _%datum200840%_)
                                        (if (or (s8vector? _%datum200840%_)
                                                (u8vector? _%datum200840%_)
                                                (s16vector? _%datum200840%_)
                                                (u16vector? _%datum200840%_)
                                                (s32vector? _%datum200840%_)
                                                (u32vector? _%datum200840%_)
                                                (s64vector? _%datum200840%_)
                                                (u64vector? _%datum200840%_)
                                                (f32vector? _%datum200840%_)
                                                (f64vector? _%datum200840%_))
                                            _%datum200840%_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot compile non-primitive quote"
                                               _%stx200786%_)))))))))))
          (let* ((_%g200790200803%_
                  (lambda (_%g200791200800%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g200791200800%_))))
                 (_%g200789200837%_
                  (lambda (_%g200791200806%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g200791200806%_))
                        (let ((_%e200793200808%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g200791200806%_))))
                          (let ((_%hd200794200811%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e200793200808%_)))
                                (_%tl200795200813%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e200793200808%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl200795200813%_))
                                (let ((_%e200796200816%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl200795200813%_))))
                                  (let ((_%hd200797200819%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e200796200816%_)))
                                        (_%tl200798200821%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e200796200816%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl200798200821%_))
                                        ((lambda (_%g200792200824%_)
                                           (cons 'quote
                                                 (cons (_%generate1200788%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%g200792200824%_)))
                                                       '())))
                                         _%hd200797200819%_)
                                        (_%g200790200803%_
                                         _%g200791200806%_))))
                                (_%g200790200803%_ _%g200791200806%_))))
                        (_%g200790200803%_ _%g200791200806%_)))))
            (_%g200789200837%_ _%stx200786%_)))))
    (define gxc#generate-runtime-call%
      (lambda (_%self200232%_ _%stx200233%_)
        (letrec ((_%compile-call200235%_
                  (lambda (_%rator200522%_ _%rands200523%_)
                    (let ((_%rator200529%_
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self200232%_
                              _%rator200522%_)))
                          (_%rands200530%_
                           (map (lambda (_%g200524200526%_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%self200232%_
                                     _%g200524200526%_)))
                                _%rands200523%_)))
                      (let* ((_%__stx206249206250%_ _%rator200529%_)
                             (_%g200533200585%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx206249206250%_)))))
                        (let ((_%__kont206251206252%_
                               (lambda (_%g200535200705%_
                                        _%g200536200706%_
                                        _%g200537200707%_
                                        _%g200538200708%_)
                                 (if (let ((__tmp206921
                                            (let ()
                                              (declare (not safe))
                                              (##length _%rands200530%_)))
                                           (__tmp206919
                                            (length (let ((__tmp206920
                                                           (lambda (_%g200744200747%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g200745200749%_)
                     (cons _%g200744200747%_ _%g200745200749%_))))
              (declare (not safe))
              (foldr__0 __tmp206920 '() _%g200537200707%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp206921 __tmp206919))
                                     (let* ((_%id200752%_ _%g200538200708%_)
                                            (_%args200761%_
                                             (let ((__tmp206922
                                                    (lambda (_%g200753200756%_
                                                             _%g200754200758%_)
                                                      (cons _%g200753200756%_
                                                            _%g200754200758%_))))
                                               (declare (not safe))
                                               (foldr__0
                                                __tmp206922
                                                '()
                                                _%g200537200707%_)))
                                            (_%body200770%_
                                             (let ((__tmp206923
                                                    (lambda (_%g200762200765%_
                                                             _%g200763200767%_)
                                                      (cons _%g200762200765%_
                                                            _%g200763200767%_))))
                                               (declare (not safe))
                                               (foldr__0
                                                __tmp206923
                                                '()
                                                _%g200536200706%_)))
                                            (_%init200772%_
                                             (map list
                                                  _%args200761%_
                                                  _%rands200530%_)))
                                       (cons 'let
                                             (cons _%id200752%_
                                                   (cons _%init200772%_
                                                         _%body200770%_))))
                                     (let ((__tmp206924
                                            (let ((__tmp206925
                                                   (lambda (_%g200774200777%_
                                                            _%g200775200779%_)
                                                     (cons _%g200774200777%_
                                                           _%g200775200779%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp206925
                                               '()
                                               _%g200537200707%_))))
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Illegal loop application; arity mismatch"
                                        _%stx200233%_
                                        __tmp206924
                                        _%rands200530%_)))))
                              (_%__kont206257206258%_
                               (lambda ()
                                 (cons _%rator200529%_ _%rands200530%_))))
                          (let ((_%__match206316206317%_
                                 (lambda (_%e200539200597%_
                                          _%hd200540200600%_
                                          _%tl200541200602%_
                                          _%e200542200605%_
                                          _%hd200543200608%_
                                          _%tl200544200610%_
                                          _%e200545200613%_
                                          _%hd200546200616%_
                                          _%tl200547200618%_
                                          _%e200548200621%_
                                          _%hd200549200624%_
                                          _%tl200550200626%_
                                          _%e200551200629%_
                                          _%hd200552200632%_
                                          _%tl200553200634%_
                                          _%e200554200637%_
                                          _%hd200555200640%_
                                          _%tl200556200642%_
                                          _%e200557200645%_
                                          _%hd200558200648%_
                                          _%tl200559200650%_
                                          _%__splice206253206254%_
                                          _%target200560200653%_
                                          _%tl200562200655%_)
                                   (letrec ((_%loop200563200658%_
                                             (lambda (_%hd200561200661%_
                                                      _%arg200567200663%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%hd200561200661%_))
                                                   (let ((_%e200564200665%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%hd200561200661%_))))
                                                     (let ((_%lp-tl200566200670%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e200564200665%_)))
                                                           (_%lp-hd200565200668%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e200564200665%_))))
                                                       (_%loop200563200658%_
                                                        _%lp-tl200566200670%_
                                                        (cons _%lp-hd200565200668%_
                                                              _%arg200567200663%_))))
                                                   (let ((_%arg200568200673%_
                                                          (reverse _%arg200567200663%_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _%tl200559200650%_))
                                                         (let ((_%__splice206255206256%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice->vector
                           _%tl200559200650%_
                           '0))))
                   (let ((_%tl200571200677%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice206255206256%_ '1)))
                         (_%target200569200675%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice206255206256%_ '0))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl200571200677%_))
                         (letrec ((_%loop200572200680%_
                                   (lambda (_%hd200570200683%_
                                            _%body200576200685%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd200570200683%_))
                                         (let ((_%e200573200687%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd200570200683%_))))
                                           (let ((_%lp-tl200575200692%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e200573200687%_)))
                                                 (_%lp-hd200574200690%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e200573200687%_))))
                                             (_%loop200572200680%_
                                              _%lp-tl200575200692%_
                                              (cons _%lp-hd200574200690%_
                                                    _%body200576200685%_))))
                                         (let ((_%body200577200695%_
                                                (reverse _%body200576200685%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%tl200553200634%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl200547200618%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl200544200610%_))
                                                       (let ((_%e200578200697%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl200544200610%_))))
                 (let ((_%tl200580200702%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e200578200697%_)))
                       (_%hd200579200700%_
                        (let ()
                          (declare (not safe))
                          (##car _%e200578200697%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl200580200702%_))
                       (let ((_%g200535200705%_ _%hd200579200700%_)
                             (_%g200536200706%_ _%body200577200695%_)
                             (_%g200537200707%_ _%arg200568200673%_)
                             (_%g200538200708%_ _%hd200549200624%_))
                         (if (eq? _%g200538200708%_ _%g200535200705%_)
                             (_%__kont206251206252%_
                              _%g200535200705%_
                              _%g200536200706%_
                              _%g200537200707%_
                              _%g200538200708%_)
                             (_%__kont206257206258%_)))
                       (_%__kont206257206258%_))))
               (_%__kont206257206258%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont206257206258%_))
                                               (_%__kont206257206258%_)))))))
                           (_%loop200572200680%_ _%target200569200675%_ '()))
                         (_%__kont206257206258%_))))
                 (_%__kont206257206258%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%loop200563200658%_
                                      _%target200560200653%_
                                      '())))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx206249206250%_))
                                (let ((_%e200539200597%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx206249206250%_))))
                                  (let ((_%tl200541200602%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e200539200597%_)))
                                        (_%hd200540200600%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e200539200597%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd200540200600%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               'letrec
                                               _%hd200540200600%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl200541200602%_))
                                                (let ((_%e200542200605%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl200541200602%_))))
                                                  (let ((_%tl200544200610%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e200542200605%_)))
                                                        (_%hd200543200608%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e200542200605%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd200543200608%_))
                                                        (let ((_%e200545200613%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd200543200608%_))))
                  (let ((_%tl200547200618%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e200545200613%_)))
                        (_%hd200546200616%_
                         (let ()
                           (declare (not safe))
                           (##car _%e200545200613%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd200546200616%_))
                        (let ((_%e200548200621%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd200546200616%_))))
                          (let ((_%tl200550200626%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e200548200621%_)))
                                (_%hd200549200624%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e200548200621%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl200550200626%_))
                                (let ((_%e200551200629%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl200550200626%_))))
                                  (let ((_%tl200553200634%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e200551200629%_)))
                                        (_%hd200552200632%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e200551200629%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd200552200632%_))
                                        (let ((_%e200554200637%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd200552200632%_))))
                                          (let ((_%tl200556200642%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e200554200637%_)))
                                                (_%hd200555200640%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e200554200637%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd200555200640%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       'lambda
                                                       _%hd200555200640%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl200556200642%_))
                                                        (let ((_%e200557200645%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl200556200642%_))))
                  (let ((_%tl200559200650%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e200557200645%_)))
                        (_%hd200558200648%_
                         (let ()
                           (declare (not safe))
                           (##car _%e200557200645%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%hd200558200648%_))
                        (let ((_%__splice206253206254%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice->vector
                                  _%hd200558200648%_
                                  '0))))
                          (let ((_%tl200562200655%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice206253206254%_ '1)))
                                (_%target200560200653%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _%__splice206253206254%_
                                    '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl200562200655%_))
                                (_%__match206316206317%_
                                 _%e200539200597%_
                                 _%hd200540200600%_
                                 _%tl200541200602%_
                                 _%e200542200605%_
                                 _%hd200543200608%_
                                 _%tl200544200610%_
                                 _%e200545200613%_
                                 _%hd200546200616%_
                                 _%tl200547200618%_
                                 _%e200548200621%_
                                 _%hd200549200624%_
                                 _%tl200550200626%_
                                 _%e200551200629%_
                                 _%hd200552200632%_
                                 _%tl200553200634%_
                                 _%e200554200637%_
                                 _%hd200555200640%_
                                 _%tl200556200642%_
                                 _%e200557200645%_
                                 _%hd200558200648%_
                                 _%tl200559200650%_
                                 _%__splice206253206254%_
                                 _%target200560200653%_
                                 _%tl200562200655%_)
                                (_%__kont206257206258%_))))
                        (_%__kont206257206258%_))))
                (_%__kont206257206258%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont206257206258%_))
                                                (_%__kont206257206258%_))))
                                        (_%__kont206257206258%_))))
                                (_%__kont206257206258%_))))
                        (_%__kont206257206258%_))))
                (_%__kont206257206258%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont206257206258%_))
                                            (_%__kont206257206258%_))
                                        (_%__kont206257206258%_))))
                                (_%__kont206257206258%_)))))))))
          (let* ((_%g200237200260%_
                  (lambda (_%g200238200257%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g200238200257%_))))
                 (_%g200236200519%_
                  (lambda (_%g200238200263%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g200238200263%_))
                        (let ((_%e200241200265%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g200238200263%_))))
                          (let ((_%hd200242200268%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e200241200265%_)))
                                (_%tl200243200270%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e200241200265%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl200243200270%_))
                                (let ((_%e200244200273%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl200243200270%_))))
                                  (let ((_%hd200245200276%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e200244200273%_)))
                                        (_%tl200246200278%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e200244200273%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl200246200278%_))
                                        (let ((_g206926_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl200246200278%_
                                                  '0))))
                                          (begin
                                            (let ((_g206927_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g206926_)
                                                         (##values-length
                                                          _g206926_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g206927_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g206927_)))
                                            (let ((_%target200247200281%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g206926_
                                                      0)))
                                                  (_%tl200249200283%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g206926_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl200249200283%_))
                                                  (letrec ((_%loop200250200286%_
                                                            (lambda (_%hd200248200289%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%rand200254200291%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd200248200289%_))
                          (let ((_%e200251200293%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd200248200289%_))))
                            (let ((_%lp-hd200252200296%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e200251200293%_)))
                                  (_%lp-tl200253200298%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e200251200293%_))))
                              (_%loop200250200286%_
                               _%lp-tl200253200298%_
                               (cons _%lp-hd200252200296%_
                                     _%rand200254200291%_))))
                          (let ((_%rand200255200301%_
                                 (reverse _%rand200254200291%_)))
                            ((lambda (_%g200239200303%_ _%g200240200304%_)
                               (if (gxc#current-compile-decls-unsafe?)
                                   (_%compile-call200235%_
                                    _%g200240200304%_
                                    (let ((__tmp206928
                                           (lambda (_%g200321200324%_
                                                    _%g200322200326%_)
                                             (cons _%g200321200324%_
                                                   _%g200322200326%_))))
                                      (declare (not safe))
                                      (foldr__0
                                       __tmp206928
                                       '()
                                       _%g200239200303%_)))
                                   (let* ((_%__stx206365206366%_
                                           _%g200240200304%_)
                                          (_%g200330200342%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%__stx206365206366%_)))))
                                     (let ((_%__kont206367206368%_
                                            (lambda ()
                                              (let ((_%f200379%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self200232%_
                                                        _%g200240200304%_))))
                                                (if (and (let ((__tmp206929
                                                                (symbol->string
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%f200379%_)))
                   (declare (not safe))
                   (##string-prefix? '"##" __tmp206929))
                 (not (let ()
                        (declare (not safe))
                        (##memq _%f200379%_ gxc#checked-primitives))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let _%lp200381%_ ((_%rest200384%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (reverse (let ((__tmp206931
                                                (lambda (_%g200501200504%_
                                                         _%g200502200506%_)
                                                  (cons _%g200501200504%_
                                                        _%g200502200506%_))))
                                           (declare (not safe))
                                           (foldr__0
                                            __tmp206931
                                            '()
                                            _%g200239200303%_))))
                               (_%bind200386%_ '())
                               (_%args200387%_ '()))
              (let* ((_%rest200388200396%_ _%rest200384%_)
                     (_%else200390200404%_
                      (lambda ()
                        (cons 'let
                              (cons _%bind200386%_
                                    (cons '(declare (not safe))
                                          (cons (cons _%f200379%_
                                                      _%args200387%_)
                                                '()))))))
                     (_%K200392200490%_
                      (lambda (_%rest200407%_ _%e200408%_)
                        (let* ((_%__stx206319206320%_ _%e200408%_)
                               (_%g200413200431%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%__stx206319206320%_)))))
                          (let ((_%__kont206321206322%_
                                 (lambda ()
                                   (_%lp200381%_
                                    _%rest200407%_
                                    _%bind200386%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e200408%_))
                                          _%args200387%_))))
                                (_%__kont206323206324%_
                                 (lambda ()
                                   (_%lp200381%_
                                    _%rest200407%_
                                    _%bind200386%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e200408%_))
                                          _%args200387%_))))
                                (_%__kont206325206326%_
                                 (lambda ()
                                   (let ((_%tmp200438%_
                                          (let ((__tmp206930
                                                 (let ()
                                                   (declare (not safe))
                                                   (##gensym '__tmp))))
                                            (declare (not safe))
                                            (make-symbol__0 __tmp206930))))
                                     (_%lp200381%_
                                      _%rest200407%_
                                      (cons (cons _%tmp200438%_
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__0
                                                           _%e200408%_))
                                                        '()))
                                            _%bind200386%_)
                                      (cons _%tmp200438%_ _%args200387%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx206319206320%_))
                                (let ((_%e200415200469%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx206319206320%_))))
                                  (let ((_%tl200417200474%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e200415200469%_)))
                                        (_%hd200416200472%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e200415200469%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd200416200472%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd200416200472%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl200417200474%_))
                                                (let ((_%e200418200477%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl200417200474%_))))
                                                  (let ((_%tl200420200482%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e200418200477%_)))
                                                        (_%hd200419200480%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e200418200477%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl200420200482%_))
                                                        (_%__kont206321206322%_)
                                                        (_%__kont206325206326%_))))
                                                (_%__kont206325206326%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#quote
                                                   _%hd200416200472%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl200417200474%_))
                                                    (let ((_%e200424200454%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl200417200474%_))))
                                                      (let ((_%tl200426200459%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e200424200454%_)))
                    (_%hd200425200457%_
                     (let () (declare (not safe)) (##car _%e200424200454%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl200426200459%_))
                    (_%__kont206323206324%_)
                    (_%__kont206325206326%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont206325206326%_))
                                                (_%__kont206325206326%_)))
                                        (_%__kont206325206326%_))))
                                (_%__kont206325206326%_)))))))
                (if (pair? _%rest200388200396%_)
                    (let ((_%hd200393200493%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest200388200396%_)))
                          (_%tl200394200495%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest200388200396%_))))
                      (let* ((_%e200498%_ _%hd200393200493%_)
                             (_%rest200500%_ _%tl200394200495%_))
                        (_%K200392200490%_ _%rest200500%_ _%e200498%_)))
                    (_%else200390200404%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%compile-call200235%_
                                                     _%g200240200304%_
                                                     (let ((__tmp206932
                                                            (lambda (_%g200508200511%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g200509200513%_)
                      (cons _%g200508200511%_ _%g200509200513%_))))
               (declare (not safe))
               (foldr__0 __tmp206932 '() _%g200239200303%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%__kont206369206370%_
                                            (lambda ()
                                              (_%compile-call200235%_
                                               _%g200240200304%_
                                               (let ((__tmp206933
                                                      (lambda (_%g200348200351%_
                                                               _%g200349200353%_)
                                                        (cons _%g200348200351%_
                                                              _%g200349200353%_))))
                                                 (declare (not safe))
                                                 (foldr__0
                                                  __tmp206933
                                                  '()
                                                  _%g200239200303%_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%__stx206365206366%_))
                                           (let ((_%e200332200361%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%__stx206365206366%_))))
                                             (let ((_%tl200334200366%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e200332200361%_)))
                                                   (_%hd200333200364%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e200332200361%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd200333200364%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#ref
                                                          _%hd200333200364%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl200334200366%_))
                                                           (let ((_%e200335200369%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl200334200366%_))))
                     (let ((_%tl200337200374%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e200335200369%_)))
                           (_%hd200336200372%_
                            (let ()
                              (declare (not safe))
                              (##car _%e200335200369%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl200337200374%_))
                           (_%__kont206367206368%_)
                           (_%__kont206369206370%_))))
                   (_%__kont206369206370%_))
               (_%__kont206369206370%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont206369206370%_))))
                                           (_%__kont206369206370%_))))))
                             _%rand200255200301%_
                             _%hd200245200276%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop200250200286%_
                                                     _%target200247200281%_
                                                     '()))
                                                  (_%g200237200260%_
                                                   _%g200238200263%_)))))
                                        (_%g200237200260%_
                                         _%g200238200263%_))))
                                (_%g200237200260%_ _%g200238200263%_))))
                        (_%g200237200260%_ _%g200238200263%_)))))
            (_%g200236200519%_ _%stx200233%_)))))
    (define gxc#generate-runtime-call-unchecked%
      (lambda (_%self199977%_ _%stx199978%_)
        (let* ((_%__stx206437206438%_ _%stx199978%_)
               (_%g199981200010%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx206437206438%_)))))
          (let ((_%__kont206439206440%_
                 (lambda (_%g199983200076%_ _%g199984200077%_)
                   (if (gxc#current-compile-decls-unsafe?)
                       (gxc#generate-runtime-call%
                        _%self199977%_
                        _%stx199978%_)
                       (let ((_%f200099%_
                              (let ((__tmp206934
                                     (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f '%#ref))
                                           (cons _%g199984200077%_ '()))))
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self199977%_
                                 __tmp206934))))
                         (let _%lp200101%_ ((_%rest200104%_
                                             (reverse (let ((__tmp206936
                                                             (lambda (_%g200221200224%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g200222200226%_)
                       (cons _%g200221200224%_ _%g200222200226%_))))
                (declare (not safe))
                (foldr__0 __tmp206936 '() _%g199983200076%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%bind200106%_ '())
                                            (_%args200107%_ '()))
                           (let* ((_%rest200108200116%_ _%rest200104%_)
                                  (_%else200110200124%_
                                   (lambda ()
                                     (cons 'let
                                           (cons _%bind200106%_
                                                 (cons '(declare (not safe))
                                                       (cons (cons _%f200099%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%args200107%_)
                     '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%K200112200210%_
                                   (lambda (_%rest200127%_ _%e200128%_)
                                     (let* ((_%__stx206391206392%_ _%e200128%_)
                                            (_%g200133200151%_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%__stx206391206392%_)))))
                                       (let ((_%__kont206393206394%_
                                              (lambda ()
                                                (_%lp200101%_
                                                 _%rest200127%_
                                                 _%bind200106%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e200128%_))
                                                       _%args200107%_))))
                                             (_%__kont206395206396%_
                                              (lambda ()
                                                (_%lp200101%_
                                                 _%rest200127%_
                                                 _%bind200106%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e200128%_))
                                                       _%args200107%_))))
                                             (_%__kont206397206398%_
                                              (lambda ()
                                                (let ((_%tmp200158%_
                                                       (let ((__tmp206935
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##gensym '__tmp))))
                 (declare (not safe))
                 (make-symbol__0 __tmp206935))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%lp200101%_
                                                   _%rest200127%_
                                                   (cons (cons _%tmp200158%_
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__0 _%e200128%_))
                             '()))
                 _%bind200106%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _%tmp200158%_
                                                         _%args200107%_))))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%__stx206391206392%_))
                                             (let ((_%e200135200189%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%__stx206391206392%_))))
                                               (let ((_%tl200137200194%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e200135200189%_)))
                                                     (_%hd200136200192%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e200135200189%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd200136200192%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#ref
                                                            _%hd200136200192%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl200137200194%_))
                     (let ((_%e200138200197%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl200137200194%_))))
                       (let ((_%tl200140200202%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e200138200197%_)))
                             (_%hd200139200200%_
                              (let ()
                                (declare (not safe))
                                (##car _%e200138200197%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl200140200202%_))
                             (_%__kont206393206394%_)
                             (_%__kont206397206398%_))))
                     (_%__kont206397206398%_))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-eq? '%#quote _%hd200136200192%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl200137200194%_))
                         (let ((_%e200144200174%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl200137200194%_))))
                           (let ((_%tl200146200179%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e200144200174%_)))
                                 (_%hd200145200177%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e200144200174%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl200146200179%_))
                                 (_%__kont206395206396%_)
                                 (_%__kont206397206398%_))))
                         (_%__kont206397206398%_))
                     (_%__kont206397206398%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont206397206398%_))))
                                             (_%__kont206397206398%_)))))))
                             (if (pair? _%rest200108200116%_)
                                 (let ((_%hd200113200213%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%rest200108200116%_)))
                                       (_%tl200114200215%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest200108200116%_))))
                                   (let* ((_%e200218%_ _%hd200113200213%_)
                                          (_%rest200220%_ _%tl200114200215%_))
                                     (_%K200112200210%_
                                      _%rest200220%_
                                      _%e200218%_)))
                                 (_%else200110200124%_))))))))
                (_%__kont206443206444%_
                 (lambda ()
                   (gxc#generate-runtime-call% _%self199977%_ _%stx199978%_))))
            (let ((_%__match206482206483%_
                   (lambda (_%e199985200022%_
                            _%hd199986200025%_
                            _%tl199987200027%_
                            _%e199988200030%_
                            _%hd199989200033%_
                            _%tl199990200035%_
                            _%e199991200038%_
                            _%hd199992200041%_
                            _%tl199993200043%_
                            _%e199994200046%_
                            _%hd199995200049%_
                            _%tl199996200051%_
                            _%__splice206441206442%_
                            _%target199997200054%_
                            _%tl199999200056%_)
                     (letrec ((_%loop200000200059%_
                               (lambda (_%hd199998200062%_
                                        _%rand200004200064%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd199998200062%_))
                                     (let ((_%e200001200066%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd199998200062%_))))
                                       (let ((_%lp-tl200003200071%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e200001200066%_)))
                                             (_%lp-hd200002200069%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e200001200066%_))))
                                         (_%loop200000200059%_
                                          _%lp-tl200003200071%_
                                          (cons _%lp-hd200002200069%_
                                                _%rand200004200064%_))))
                                     (let ((_%rand200005200074%_
                                            (reverse _%rand200004200064%_)))
                                       (_%__kont206439206440%_
                                        _%rand200005200074%_
                                        _%hd199995200049%_))))))
                       (_%loop200000200059%_ _%target199997200054%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx206437206438%_))
                  (let ((_%e199985200022%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx206437206438%_))))
                    (let ((_%tl199987200027%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e199985200022%_)))
                          (_%hd199986200025%_
                           (let ()
                             (declare (not safe))
                             (##car _%e199985200022%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl199987200027%_))
                          (let ((_%e199988200030%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl199987200027%_))))
                            (let ((_%tl199990200035%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e199988200030%_)))
                                  (_%hd199989200033%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e199988200030%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd199989200033%_))
                                  (let ((_%e199991200038%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd199989200033%_))))
                                    (let ((_%tl199993200043%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e199991200038%_)))
                                          (_%hd199992200041%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e199991200038%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd199992200041%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd199992200041%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl199993200043%_))
                                                  (let ((_%e199994200046%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl199993200043%_))))
                                                    (let ((_%tl199996200051%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e199994200046%_)))
                                                          (_%hd199995200049%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e199994200046%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl199996200051%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl199990200035%_))
                      (let ((_%__splice206441206442%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl199990200035%_
                                '0))))
                        (let ((_%tl199999200056%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice206441206442%_ '1)))
                              (_%target199997200054%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice206441206442%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl199999200056%_))
                              (_%__match206482206483%_
                               _%e199985200022%_
                               _%hd199986200025%_
                               _%tl199987200027%_
                               _%e199988200030%_
                               _%hd199989200033%_
                               _%tl199990200035%_
                               _%e199991200038%_
                               _%hd199992200041%_
                               _%tl199993200043%_
                               _%e199994200046%_
                               _%hd199995200049%_
                               _%tl199996200051%_
                               _%__splice206441206442%_
                               _%target199997200054%_
                               _%tl199999200056%_)
                              (_%__kont206443206444%_))))
                      (_%__kont206443206444%_))
                  (_%__kont206443206444%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont206443206444%_))
                                              (_%__kont206443206444%_))
                                          (_%__kont206443206444%_))))
                                  (_%__kont206443206444%_))))
                          (_%__kont206443206444%_))))
                  (_%__kont206443206444%_)))))))
    (define gxc#generate-runtime-if%
      (lambda (_%self199789%_ _%stx199790%_)
        (letrec ((_%simplify199792%_
                  (lambda (_%code199877%_)
                    (let* ((_%code199878199896%_ _%code199877%_)
                           (_%else199880199904%_ (lambda () _%code199877%_))
                           (_%K199882199940%_
                            (lambda (_%expr199907%_ _%test199908%_)
                              (let* ((_%expr199909199917%_ _%expr199907%_)
                                     (_%else199911199925%_
                                      (lambda ()
                                        (cons 'and
                                              (cons _%test199908%_
                                                    (cons _%expr199907%_
                                                          '())))))
                                     (_%K199913199930%_
                                      (lambda (_%exprs199928%_)
                                        (cons 'and
                                              (cons _%test199908%_
                                                    _%exprs199928%_)))))
                                (if (pair? _%expr199909199917%_)
                                    (let ((_%hd199914199933%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%expr199909199917%_)))
                                          (_%tl199915199935%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%expr199909199917%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _%hd199914199933%_ 'and))
                                          (let ((_%exprs199938%_
                                                 _%tl199915199935%_))
                                            (_%K199913199930%_
                                             _%exprs199938%_))
                                          (_%else199911199925%_)))
                                    (_%else199911199925%_))))))
                      (if (pair? _%code199878199896%_)
                          (let ((_%hd199883199943%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%code199878199896%_)))
                                (_%tl199884199945%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%code199878199896%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##eq? _%hd199883199943%_ 'if))
                                (if (pair? _%tl199884199945%_)
                                    (let ((_%hd199885199948%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl199884199945%_)))
                                          (_%tl199886199950%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl199884199945%_))))
                                      (let ((_%test199953%_
                                             _%hd199885199948%_))
                                        (if (pair? _%tl199886199950%_)
                                            (let ((_%hd199887199955%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl199886199950%_)))
                                                  (_%tl199888199957%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl199886199950%_))))
                                              (let ((_%expr199960%_
                                                     _%hd199887199955%_))
                                                (if (pair? _%tl199888199957%_)
                                                    (let ((_%hd199889199962%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl199888199957%_)))
                                                          (_%tl199890199964%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl199888199957%_))))
                                                      (if (pair? _%hd199889199962%_)
                                                          (let ((_%hd199891199967%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%hd199889199962%_)))
                        (_%tl199892199969%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%hd199889199962%_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _%hd199891199967%_ 'quote))
                        (if (pair? _%tl199892199969%_)
                            (let ((_%hd199893199972%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%tl199892199969%_)))
                                  (_%tl199894199974%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%tl199892199969%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd199893199972%_ '#f))
                                  (if (null? _%tl199894199974%_)
                                      (if (null? _%tl199890199964%_)
                                          (_%K199882199940%_
                                           _%expr199960%_
                                           _%test199953%_)
                                          (_%else199880199904%_))
                                      (_%else199880199904%_))
                                  (_%else199880199904%_)))
                            (_%else199880199904%_))
                        (_%else199880199904%_)))
                  (_%else199880199904%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else199880199904%_))))
                                            (_%else199880199904%_))))
                                    (_%else199880199904%_))
                                (_%else199880199904%_)))
                          (_%else199880199904%_))))))
          (let* ((_%g199794199815%_
                  (lambda (_%g199795199812%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g199795199812%_))))
                 (_%g199793199874%_
                  (lambda (_%g199795199818%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g199795199818%_))
                        (let ((_%e199799199820%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g199795199818%_))))
                          (let ((_%hd199800199823%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e199799199820%_)))
                                (_%tl199801199825%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e199799199820%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl199801199825%_))
                                (let ((_%e199802199828%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl199801199825%_))))
                                  (let ((_%hd199803199831%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e199802199828%_)))
                                        (_%tl199804199833%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e199802199828%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl199804199833%_))
                                        (let ((_%e199805199836%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl199804199833%_))))
                                          (let ((_%hd199806199839%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e199805199836%_)))
                                                (_%tl199807199841%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e199805199836%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl199807199841%_))
                                                (let ((_%e199808199844%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl199807199841%_))))
                                                  (let ((_%hd199809199847%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e199808199844%_)))
                                                        (_%tl199810199849%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e199808199844%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl199810199849%_))
                                                        ((lambda (_%g199796199852%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g199797199853%_
                          _%g199798199854%_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#current-compile-boolean-context))
                       (_%simplify199792%_
                        (cons 'if
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _%self199789%_
                                       _%g199798199854%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self199789%_
                                             _%g199797199853%_))
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self199789%_
                                                   _%g199796199852%_))
                                                '())))))
                       (cons 'if
                             (cons (let ((__tmp206937
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self199789%_
                                               _%g199798199854%_)))))
                                     (declare (not safe))
                                     (call-with-parameters__1
                                      __tmp206937
                                      gxc#current-compile-boolean-context
                                      '#t))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self199789%_
                                            _%g199797199853%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self199789%_
                                                  _%g199796199852%_))
                                               '()))))))
                 _%hd199809199847%_
                 _%hd199806199839%_
                 _%hd199803199831%_)
                (_%g199794199815%_ _%g199795199818%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g199794199815%_
                                                 _%g199795199818%_))))
                                        (_%g199794199815%_
                                         _%g199795199818%_))))
                                (_%g199794199815%_ _%g199795199818%_))))
                        (_%g199794199815%_ _%g199795199818%_)))))
            (_%g199793199874%_ _%stx199790%_)))))
    (define gxc#generate-runtime-ref%
      (lambda (_%self199737%_ _%stx199738%_)
        (let* ((_%g199740199753%_
                (lambda (_%g199741199750%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g199741199750%_))))
               (_%g199739199786%_
                (lambda (_%g199741199756%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g199741199756%_))
                      (let ((_%e199743199758%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g199741199756%_))))
                        (let ((_%hd199744199761%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199743199758%_)))
                              (_%tl199745199763%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199743199758%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl199745199763%_))
                              (let ((_%e199746199766%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl199745199763%_))))
                                (let ((_%hd199747199769%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199746199766%_)))
                                      (_%tl199748199771%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199746199766%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl199748199771%_))
                                      ((lambda (_%g199742199774%_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#generate-runtime-binding-id
                                            _%g199742199774%_)))
                                       _%hd199747199769%_)
                                      (_%g199740199753%_ _%g199741199756%_))))
                              (_%g199740199753%_ _%g199741199756%_))))
                      (_%g199740199753%_ _%g199741199756%_)))))
          (_%g199739199786%_ _%stx199738%_))))
    (define gxc#generate-runtime-setq%
      (lambda (_%self199669%_ _%stx199670%_)
        (let* ((_%g199672199689%_
                (lambda (_%g199673199686%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g199673199686%_))))
               (_%g199671199734%_
                (lambda (_%g199673199692%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g199673199692%_))
                      (let ((_%e199676199694%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g199673199692%_))))
                        (let ((_%hd199677199697%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199676199694%_)))
                              (_%tl199678199699%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199676199694%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl199678199699%_))
                              (let ((_%e199679199702%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl199678199699%_))))
                                (let ((_%hd199680199705%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199679199702%_)))
                                      (_%tl199681199707%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199679199702%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl199681199707%_))
                                      (let ((_%e199682199710%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl199681199707%_))))
                                        (let ((_%hd199683199713%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e199682199710%_)))
                                              (_%tl199684199715%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e199682199710%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl199684199715%_))
                                              ((lambda (_%g199674199718%_
                                                        _%g199675199719%_)
                                                 (cons 'set!
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#generate-runtime-binding-id _%g199675199719%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self199669%_
                              _%g199674199718%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd199683199713%_
                                               _%hd199680199705%_)
                                              (_%g199672199689%_
                                               _%g199673199692%_))))
                                      (_%g199672199689%_ _%g199673199692%_))))
                              (_%g199672199689%_ _%g199673199692%_))))
                      (_%g199672199689%_ _%g199673199692%_)))))
          (_%g199671199734%_ _%stx199670%_))))
    (define gxc#generate-runtime-struct-instancep%
      (lambda (_%self199480%_ _%stx199481%_)
        (let* ((_%g199483199500%_
                (lambda (_%g199484199497%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g199484199497%_))))
               (_%g199482199666%_
                (lambda (_%g199484199503%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g199484199503%_))
                      (let ((_%e199487199505%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g199484199503%_))))
                        (let ((_%hd199488199508%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199487199505%_)))
                              (_%tl199489199510%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199487199505%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl199489199510%_))
                              (let ((_%e199490199513%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl199489199510%_))))
                                (let ((_%hd199491199516%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199490199513%_)))
                                      (_%tl199492199518%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199490199513%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl199492199518%_))
                                      (let ((_%e199493199521%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl199492199518%_))))
                                        (let ((_%hd199494199524%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e199493199521%_)))
                                              (_%tl199495199526%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e199493199521%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl199495199526%_))
                                              ((lambda (_%g199485199529%_
                                                        _%g199486199530%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self199480%_ _%g199485199529%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self199480%_
                                  _%g199486199530%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp199545%_ ((_%rest199548%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%g199486199530%_
                                       (cons _%g199485199529%_ '())))
                                (_%bind199550%_ '())
                                (_%args199551%_ '()))
               (let* ((_%rest199552199560%_ _%rest199548%_)
                      (_%else199554199568%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind199550%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-instance-of?
                                                       _%args199551%_)
                                                 '()))))))
                      (_%K199556199654%_
                       (lambda (_%rest199571%_ _%e199572%_)
                         (let* ((_%__stx206485206486%_ _%e199572%_)
                                (_%g199577199595%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx206485206486%_)))))
                           (let ((_%__kont206487206488%_
                                  (lambda ()
                                    (_%lp199545%_
                                     _%rest199571%_
                                     _%bind199550%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e199572%_))
                                           _%args199551%_))))
                                 (_%__kont206489206490%_
                                  (lambda ()
                                    (_%lp199545%_
                                     _%rest199571%_
                                     _%bind199550%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e199572%_))
                                           _%args199551%_))))
                                 (_%__kont206491206492%_
                                  (lambda ()
                                    (let ((_%tmp199602%_
                                           (let ((__tmp206938
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp206938))))
                                      (_%lp199545%_
                                       _%rest199571%_
                                       (cons (cons _%tmp199602%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e199572%_))
                                                         '()))
                                             _%bind199550%_)
                                       (cons _%tmp199602%_ _%args199551%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx206485206486%_))
                                 (let ((_%e199579199633%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx206485206486%_))))
                                   (let ((_%tl199581199638%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e199579199633%_)))
                                         (_%hd199580199636%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e199579199633%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd199580199636%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd199580199636%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl199581199638%_))
                                                 (let ((_%e199582199641%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl199581199638%_))))
                                                   (let ((_%tl199584199646%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e199582199641%_)))
                                                         (_%hd199583199644%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e199582199641%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl199584199646%_))
                                                         (_%__kont206487206488%_)
                                                         (_%__kont206491206492%_))))
                                                 (_%__kont206491206492%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd199580199636%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl199581199638%_))
                                                     (let ((_%e199588199618%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl199581199638%_))))
                                                       (let ((_%tl199590199623%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e199588199618%_)))
                     (_%hd199589199621%_
                      (let () (declare (not safe)) (##car _%e199588199618%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl199590199623%_))
                     (_%__kont206489206490%_)
                     (_%__kont206491206492%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont206491206492%_))
                                                 (_%__kont206491206492%_)))
                                         (_%__kont206491206492%_))))
                                 (_%__kont206491206492%_)))))))
                 (if (pair? _%rest199552199560%_)
                     (let ((_%hd199557199657%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest199552199560%_)))
                           (_%tl199558199659%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest199552199560%_))))
                       (let* ((_%e199662%_ _%hd199557199657%_)
                              (_%rest199664%_ _%tl199558199659%_))
                         (_%K199556199654%_ _%rest199664%_ _%e199662%_)))
                     (_%else199554199568%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd199494199524%_
                                               _%hd199491199516%_)
                                              (_%g199483199500%_
                                               _%g199484199503%_))))
                                      (_%g199483199500%_ _%g199484199503%_))))
                              (_%g199483199500%_ _%g199484199503%_))))
                      (_%g199483199500%_ _%g199484199503%_)))))
          (_%g199482199666%_ _%stx199481%_))))
    (define gxc#generate-runtime-struct-direct-instancep%
      (lambda (_%self199291%_ _%stx199292%_)
        (let* ((_%g199294199311%_
                (lambda (_%g199295199308%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g199295199308%_))))
               (_%g199293199477%_
                (lambda (_%g199295199314%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g199295199314%_))
                      (let ((_%e199298199316%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g199295199314%_))))
                        (let ((_%hd199299199319%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199298199316%_)))
                              (_%tl199300199321%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199298199316%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl199300199321%_))
                              (let ((_%e199301199324%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl199300199321%_))))
                                (let ((_%hd199302199327%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199301199324%_)))
                                      (_%tl199303199329%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199301199324%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl199303199329%_))
                                      (let ((_%e199304199332%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl199303199329%_))))
                                        (let ((_%hd199305199335%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e199304199332%_)))
                                              (_%tl199306199337%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e199304199332%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl199306199337%_))
                                              ((lambda (_%g199296199340%_
                                                        _%g199297199341%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-direct-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self199291%_ _%g199296199340%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self199291%_
                                  _%g199297199341%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp199356%_ ((_%rest199359%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%g199297199341%_
                                       (cons _%g199296199340%_ '())))
                                (_%bind199361%_ '())
                                (_%args199362%_ '()))
               (let* ((_%rest199363199371%_ _%rest199359%_)
                      (_%else199365199379%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind199361%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-direct-instance-of?
                                                       _%args199362%_)
                                                 '()))))))
                      (_%K199367199465%_
                       (lambda (_%rest199382%_ _%e199383%_)
                         (let* ((_%__stx206531206532%_ _%e199383%_)
                                (_%g199388199406%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx206531206532%_)))))
                           (let ((_%__kont206533206534%_
                                  (lambda ()
                                    (_%lp199356%_
                                     _%rest199382%_
                                     _%bind199361%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e199383%_))
                                           _%args199362%_))))
                                 (_%__kont206535206536%_
                                  (lambda ()
                                    (_%lp199356%_
                                     _%rest199382%_
                                     _%bind199361%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e199383%_))
                                           _%args199362%_))))
                                 (_%__kont206537206538%_
                                  (lambda ()
                                    (let ((_%tmp199413%_
                                           (let ((__tmp206939
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp206939))))
                                      (_%lp199356%_
                                       _%rest199382%_
                                       (cons (cons _%tmp199413%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e199383%_))
                                                         '()))
                                             _%bind199361%_)
                                       (cons _%tmp199413%_ _%args199362%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx206531206532%_))
                                 (let ((_%e199390199444%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx206531206532%_))))
                                   (let ((_%tl199392199449%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e199390199444%_)))
                                         (_%hd199391199447%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e199390199444%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd199391199447%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd199391199447%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl199392199449%_))
                                                 (let ((_%e199393199452%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl199392199449%_))))
                                                   (let ((_%tl199395199457%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e199393199452%_)))
                                                         (_%hd199394199455%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e199393199452%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl199395199457%_))
                                                         (_%__kont206533206534%_)
                                                         (_%__kont206537206538%_))))
                                                 (_%__kont206537206538%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd199391199447%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl199392199449%_))
                                                     (let ((_%e199399199429%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl199392199449%_))))
                                                       (let ((_%tl199401199434%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e199399199429%_)))
                     (_%hd199400199432%_
                      (let () (declare (not safe)) (##car _%e199399199429%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl199401199434%_))
                     (_%__kont206535206536%_)
                     (_%__kont206537206538%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont206537206538%_))
                                                 (_%__kont206537206538%_)))
                                         (_%__kont206537206538%_))))
                                 (_%__kont206537206538%_)))))))
                 (if (pair? _%rest199363199371%_)
                     (let ((_%hd199368199468%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest199363199371%_)))
                           (_%tl199369199470%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest199363199371%_))))
                       (let* ((_%e199473%_ _%hd199368199468%_)
                              (_%rest199475%_ _%tl199369199470%_))
                         (_%K199367199465%_ _%rest199475%_ _%e199473%_)))
                     (_%else199365199379%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd199305199335%_
                                               _%hd199302199327%_)
                                              (_%g199294199311%_
                                               _%g199295199314%_))))
                                      (_%g199294199311%_ _%g199295199314%_))))
                              (_%g199294199311%_ _%g199295199314%_))))
                      (_%g199294199311%_ _%g199295199314%_)))))
          (_%g199293199477%_ _%stx199292%_))))
    (define gxc#generate-runtime-struct-ref%
      (lambda (_%self199207%_ _%stx199208%_)
        (let* ((_%g199210199231%_
                (lambda (_%g199211199228%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g199211199228%_))))
               (_%g199209199288%_
                (lambda (_%g199211199234%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g199211199234%_))
                      (let ((_%e199215199236%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g199211199234%_))))
                        (let ((_%hd199216199239%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199215199236%_)))
                              (_%tl199217199241%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199215199236%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl199217199241%_))
                              (let ((_%e199218199244%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl199217199241%_))))
                                (let ((_%hd199219199247%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199218199244%_)))
                                      (_%tl199220199249%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199218199244%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl199220199249%_))
                                      (let ((_%e199221199252%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl199220199249%_))))
                                        (let ((_%hd199222199255%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e199221199252%_)))
                                              (_%tl199223199257%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e199221199252%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl199223199257%_))
                                              (let ((_%e199224199260%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl199223199257%_))))
                                                (let ((_%hd199225199263%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e199224199260%_)))
                                                      (_%tl199226199265%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e199224199260%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl199226199265%_))
                                                      ((lambda (_%g199212199268%_
                                                                _%g199213199269%_
                                                                _%g199214199270%_)
                                                         (cons '##structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1
                                _%self199207%_
                                _%g199212199268%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self199207%_
                                      _%g199213199269%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self199207%_
                                            _%g199214199270%_))
                                         (cons ''#f '()))))))
               _%hd199225199263%_
               _%hd199222199255%_
               _%hd199219199247%_)
              (_%g199210199231%_ _%g199211199234%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g199210199231%_
                                               _%g199211199234%_))))
                                      (_%g199210199231%_ _%g199211199234%_))))
                              (_%g199210199231%_ _%g199211199234%_))))
                      (_%g199210199231%_ _%g199211199234%_)))))
          (_%g199209199288%_ _%stx199208%_))))
    (define gxc#generate-runtime-struct-setq%
      (lambda (_%self199107%_ _%stx199108%_)
        (let* ((_%g199110199135%_
                (lambda (_%g199111199132%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g199111199132%_))))
               (_%g199109199204%_
                (lambda (_%g199111199138%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g199111199138%_))
                      (let ((_%e199116199140%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g199111199138%_))))
                        (let ((_%hd199117199143%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199116199140%_)))
                              (_%tl199118199145%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199116199140%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl199118199145%_))
                              (let ((_%e199119199148%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl199118199145%_))))
                                (let ((_%hd199120199151%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199119199148%_)))
                                      (_%tl199121199153%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199119199148%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl199121199153%_))
                                      (let ((_%e199122199156%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl199121199153%_))))
                                        (let ((_%hd199123199159%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e199122199156%_)))
                                              (_%tl199124199161%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e199122199156%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl199124199161%_))
                                              (let ((_%e199125199164%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl199124199161%_))))
                                                (let ((_%hd199126199167%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e199125199164%_)))
                                                      (_%tl199127199169%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e199125199164%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl199127199169%_))
                                                      (let ((_%e199128199172%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl199127199169%_))))
                (let ((_%hd199129199175%_
                       (let () (declare (not safe)) (##car _%e199128199172%_)))
                      (_%tl199130199177%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e199128199172%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl199130199177%_))
                      ((lambda (_%g199112199180%_
                                _%g199113199181%_
                                _%g199114199182%_
                                _%g199115199183%_)
                         (cons '##structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self199107%_
                                        _%g199113199181%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self199107%_
                                              _%g199112199180%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self199107%_
                                                    _%g199114199182%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self199107%_
                                                          _%g199115199183%_))
                                                       (cons ''#f '())))))))
                       _%hd199129199175%_
                       _%hd199126199167%_
                       _%hd199123199159%_
                       _%hd199120199151%_)
                      (_%g199110199135%_ _%g199111199138%_))))
              (_%g199110199135%_ _%g199111199138%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g199110199135%_
                                               _%g199111199138%_))))
                                      (_%g199110199135%_ _%g199111199138%_))))
                              (_%g199110199135%_ _%g199111199138%_))))
                      (_%g199110199135%_ _%g199111199138%_)))))
          (_%g199109199204%_ _%stx199108%_))))
    (define gxc#generate-runtime-struct-direct-ref%
      (lambda (_%self199023%_ _%stx199024%_)
        (let* ((_%g199026199047%_
                (lambda (_%g199027199044%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g199027199044%_))))
               (_%g199025199104%_
                (lambda (_%g199027199050%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g199027199050%_))
                      (let ((_%e199031199052%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g199027199050%_))))
                        (let ((_%hd199032199055%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199031199052%_)))
                              (_%tl199033199057%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199031199052%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl199033199057%_))
                              (let ((_%e199034199060%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl199033199057%_))))
                                (let ((_%hd199035199063%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199034199060%_)))
                                      (_%tl199036199065%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199034199060%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl199036199065%_))
                                      (let ((_%e199037199068%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl199036199065%_))))
                                        (let ((_%hd199038199071%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e199037199068%_)))
                                              (_%tl199039199073%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e199037199068%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl199039199073%_))
                                              (let ((_%e199040199076%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl199039199073%_))))
                                                (let ((_%hd199041199079%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e199040199076%_)))
                                                      (_%tl199042199081%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e199040199076%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl199042199081%_))
                                                      ((lambda (_%g199028199084%_
                                                                _%g199029199085%_
                                                                _%g199030199086%_)
                                                         (cons '##direct-structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1
                                _%self199023%_
                                _%g199028199084%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self199023%_
                                      _%g199029199085%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self199023%_
                                            _%g199030199086%_))
                                         (cons ''#f '()))))))
               _%hd199041199079%_
               _%hd199038199071%_
               _%hd199035199063%_)
              (_%g199026199047%_ _%g199027199050%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g199026199047%_
                                               _%g199027199050%_))))
                                      (_%g199026199047%_ _%g199027199050%_))))
                              (_%g199026199047%_ _%g199027199050%_))))
                      (_%g199026199047%_ _%g199027199050%_)))))
          (_%g199025199104%_ _%stx199024%_))))
    (define gxc#generate-runtime-struct-direct-setq%
      (lambda (_%self198923%_ _%stx198924%_)
        (let* ((_%g198926198951%_
                (lambda (_%g198927198948%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198927198948%_))))
               (_%g198925199020%_
                (lambda (_%g198927198954%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198927198954%_))
                      (let ((_%e198932198956%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g198927198954%_))))
                        (let ((_%hd198933198959%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198932198956%_)))
                              (_%tl198934198961%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198932198956%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198934198961%_))
                              (let ((_%e198935198964%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl198934198961%_))))
                                (let ((_%hd198936198967%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198935198964%_)))
                                      (_%tl198937198969%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198935198964%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl198937198969%_))
                                      (let ((_%e198938198972%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl198937198969%_))))
                                        (let ((_%hd198939198975%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198938198972%_)))
                                              (_%tl198940198977%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198938198972%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl198940198977%_))
                                              (let ((_%e198941198980%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl198940198977%_))))
                                                (let ((_%hd198942198983%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e198941198980%_)))
                                                      (_%tl198943198985%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e198941198980%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl198943198985%_))
                                                      (let ((_%e198944198988%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl198943198985%_))))
                (let ((_%hd198945198991%_
                       (let () (declare (not safe)) (##car _%e198944198988%_)))
                      (_%tl198946198993%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e198944198988%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl198946198993%_))
                      ((lambda (_%g198928198996%_
                                _%g198929198997%_
                                _%g198930198998%_
                                _%g198931198999%_)
                         (cons '##direct-structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self198923%_
                                        _%g198929198997%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self198923%_
                                              _%g198928198996%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self198923%_
                                                    _%g198930198998%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self198923%_
                                                          _%g198931198999%_))
                                                       (cons ''#f '())))))))
                       _%hd198945198991%_
                       _%hd198942198983%_
                       _%hd198939198975%_
                       _%hd198936198967%_)
                      (_%g198926198951%_ _%g198927198954%_))))
              (_%g198926198951%_ _%g198927198954%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g198926198951%_
                                               _%g198927198954%_))))
                                      (_%g198926198951%_ _%g198927198954%_))))
                              (_%g198926198951%_ _%g198927198954%_))))
                      (_%g198926198951%_ _%g198927198954%_)))))
          (_%g198925199020%_ _%stx198924%_))))
    (define gxc#generate-runtime-struct-unchecked-ref%
      (lambda (_%self198718%_ _%stx198719%_)
        (let* ((_%g198721198742%_
                (lambda (_%g198722198739%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198722198739%_))))
               (_%g198720198920%_
                (lambda (_%g198722198745%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198722198745%_))
                      (let ((_%e198726198747%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g198722198745%_))))
                        (let ((_%hd198727198750%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198726198747%_)))
                              (_%tl198728198752%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198726198747%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198728198752%_))
                              (let ((_%e198729198755%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl198728198752%_))))
                                (let ((_%hd198730198758%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198729198755%_)))
                                      (_%tl198731198760%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198729198755%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl198731198760%_))
                                      (let ((_%e198732198763%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl198731198760%_))))
                                        (let ((_%hd198733198766%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198732198763%_)))
                                              (_%tl198734198768%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198732198763%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl198734198768%_))
                                              (let ((_%e198735198771%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl198734198768%_))))
                                                (let ((_%hd198736198774%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e198735198771%_)))
                                                      (_%tl198737198776%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e198735198771%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl198737198776%_))
                                                      ((lambda (_%g198723198779%_
                                                                _%g198724198780%_
                                                                _%g198725198781%_)
                                                         (if (gxc#current-compile-decls-unsafe?)
                                                             (cons '##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__1
                                    _%self198718%_
                                    _%g198723198779%_))
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self198718%_
                                          _%g198724198780%_))
                                       (cons ''#f (cons ''#f '())))))
                     (let _%lp198799%_ ((_%rest198802%_
                                         (cons _%g198724198780%_
                                               (cons _%g198723198779%_ '())))
                                        (_%bind198804%_ '())
                                        (_%args198805%_ '()))
                       (let* ((_%rest198806198814%_ _%rest198802%_)
                              (_%else198808198822%_
                               (lambda ()
                                 (cons 'let
                                       (cons _%bind198804%_
                                             (cons '(declare (not safe))
                                                   (cons (cons '##unchecked-structure-ref
                                                               (let ((__tmp206940
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons ''#f (cons ''#f '()))))
                         (declare (not safe))
                         (foldr__0 cons __tmp206940 _%args198805%_)))
                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%K198810198908%_
                               (lambda (_%rest198825%_ _%e198826%_)
                                 (let* ((_%__stx206577206578%_ _%e198826%_)
                                        (_%g198831198849%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx206577206578%_)))))
                                   (let ((_%__kont206579206580%_
                                          (lambda ()
                                            (_%lp198799%_
                                             _%rest198825%_
                                             _%bind198804%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e198826%_))
                                                   _%args198805%_))))
                                         (_%__kont206581206582%_
                                          (lambda ()
                                            (_%lp198799%_
                                             _%rest198825%_
                                             _%bind198804%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e198826%_))
                                                   _%args198805%_))))
                                         (_%__kont206583206584%_
                                          (lambda ()
                                            (let ((_%tmp198856%_
                                                   (let ((__tmp206941
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym
                                                             '__tmp))))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp206941))))
                                              (_%lp198799%_
                                               _%rest198825%_
                                               (cons (cons _%tmp198856%_
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__0 _%e198826%_))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind198804%_)
                                               (cons _%tmp198856%_
                                                     _%args198805%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx206577206578%_))
                                         (let ((_%e198833198887%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx206577206578%_))))
                                           (let ((_%tl198835198892%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e198833198887%_)))
                                                 (_%hd198834198890%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e198833198887%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd198834198890%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#ref
                                                        _%hd198834198890%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl198835198892%_))
                                                         (let ((_%e198836198895%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl198835198892%_))))
                   (let ((_%tl198838198900%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e198836198895%_)))
                         (_%hd198837198898%_
                          (let ()
                            (declare (not safe))
                            (##car _%e198836198895%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl198838198900%_))
                         (_%__kont206579206580%_)
                         (_%__kont206583206584%_))))
                 (_%__kont206583206584%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#quote
                                                            _%hd198834198890%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl198835198892%_))
                     (let ((_%e198842198872%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl198835198892%_))))
                       (let ((_%tl198844198877%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e198842198872%_)))
                             (_%hd198843198875%_
                              (let ()
                                (declare (not safe))
                                (##car _%e198842198872%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl198844198877%_))
                             (_%__kont206581206582%_)
                             (_%__kont206583206584%_))))
                     (_%__kont206583206584%_))
                 (_%__kont206583206584%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont206583206584%_))))
                                         (_%__kont206583206584%_)))))))
                         (if (pair? _%rest198806198814%_)
                             (let ((_%hd198811198911%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest198806198814%_)))
                                   (_%tl198812198913%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest198806198814%_))))
                               (let* ((_%e198916%_ _%hd198811198911%_)
                                      (_%rest198918%_ _%tl198812198913%_))
                                 (_%K198810198908%_
                                  _%rest198918%_
                                  _%e198916%_)))
                             (_%else198808198822%_))))))
               _%hd198736198774%_
               _%hd198733198766%_
               _%hd198730198758%_)
              (_%g198721198742%_ _%g198722198745%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g198721198742%_
                                               _%g198722198745%_))))
                                      (_%g198721198742%_ _%g198722198745%_))))
                              (_%g198721198742%_ _%g198722198745%_))))
                      (_%g198721198742%_ _%g198722198745%_)))))
          (_%g198720198920%_ _%stx198719%_))))
    (define gxc#generate-runtime-struct-unchecked-setq%
      (lambda (_%self198497%_ _%stx198498%_)
        (let* ((_%g198500198525%_
                (lambda (_%g198501198522%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198501198522%_))))
               (_%g198499198715%_
                (lambda (_%g198501198528%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198501198528%_))
                      (let ((_%e198506198530%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g198501198528%_))))
                        (let ((_%hd198507198533%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198506198530%_)))
                              (_%tl198508198535%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198506198530%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198508198535%_))
                              (let ((_%e198509198538%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl198508198535%_))))
                                (let ((_%hd198510198541%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198509198538%_)))
                                      (_%tl198511198543%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198509198538%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl198511198543%_))
                                      (let ((_%e198512198546%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl198511198543%_))))
                                        (let ((_%hd198513198549%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198512198546%_)))
                                              (_%tl198514198551%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198512198546%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl198514198551%_))
                                              (let ((_%e198515198554%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl198514198551%_))))
                                                (let ((_%hd198516198557%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e198515198554%_)))
                                                      (_%tl198517198559%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e198515198554%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl198517198559%_))
                                                      (let ((_%e198518198562%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl198517198559%_))))
                (let ((_%hd198519198565%_
                       (let () (declare (not safe)) (##car _%e198518198562%_)))
                      (_%tl198520198567%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e198518198562%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl198520198567%_))
                      ((lambda (_%g198502198570%_
                                _%g198503198571%_
                                _%g198504198572%_
                                _%g198505198573%_)
                         (if (gxc#current-compile-decls-unsafe?)
                             (cons '##unchecked-structure-set!
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self198497%_
                                            _%g198503198571%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self198497%_
                                                  _%g198502198570%_))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self198497%_
                                                        _%g198504198572%_))
                                                     (cons ''#f
                                                           (cons ''#f '()))))))
                             (let _%lp198594%_ ((_%rest198597%_
                                                 (cons _%g198504198572%_
                                                       (cons _%g198502198570%_
                                                             (cons _%g198503198571%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%bind198599%_ '())
                                                (_%args198600%_ '()))
                               (let* ((_%rest198601198609%_ _%rest198597%_)
                                      (_%else198603198617%_
                                       (lambda ()
                                         (cons 'let
                                               (cons _%bind198599%_
                                                     (cons '(declare
                                                              (not safe))
                                                           (cons (cons '##unchecked-structure-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp206942 (cons ''#f (cons ''#f '()))))
                                 (declare (not safe))
                                 (foldr__0 cons __tmp206942 _%args198600%_)))
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%K198605198703%_
                                       (lambda (_%rest198620%_ _%e198621%_)
                                         (let* ((_%__stx206623206624%_
                                                 _%e198621%_)
                                                (_%g198626198644%_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%__stx206623206624%_)))))
                                           (let ((_%__kont206625206626%_
                                                  (lambda ()
                                                    (_%lp198594%_
                                                     _%rest198620%_
                                                     _%bind198599%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e198621%_))
                                                           _%args198600%_))))
                                                 (_%__kont206627206628%_
                                                  (lambda ()
                                                    (_%lp198594%_
                                                     _%rest198620%_
                                                     _%bind198599%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e198621%_))
                                                           _%args198600%_))))
                                                 (_%__kont206629206630%_
                                                  (lambda ()
                                                    (let ((_%tmp198651%_
                                                           (let ((__tmp206943
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__tmp))))
                     (declare (not safe))
                     (make-symbol__0 __tmp206943))))
              (_%lp198594%_
               _%rest198620%_
               (cons (cons _%tmp198651%_
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__0 _%e198621%_))
                                 '()))
                     _%bind198599%_)
               (cons _%tmp198651%_ _%args198600%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%__stx206623206624%_))
                                                 (let ((_%e198628198682%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%__stx206623206624%_))))
                                                   (let ((_%tl198630198687%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e198628198682%_)))
                                                         (_%hd198629198685%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e198628198682%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _%hd198629198685%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-eq? '%#ref _%hd198629198685%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl198630198687%_))
                         (let ((_%e198631198690%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl198630198687%_))))
                           (let ((_%tl198633198695%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e198631198690%_)))
                                 (_%hd198632198693%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e198631198690%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl198633198695%_))
                                 (_%__kont206625206626%_)
                                 (_%__kont206629206630%_))))
                         (_%__kont206629206630%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-eq? '%#quote _%hd198629198685%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%tl198630198687%_))
                             (let ((_%e198637198667%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%tl198630198687%_))))
                               (let ((_%tl198639198672%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e198637198667%_)))
                                     (_%hd198638198670%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e198637198667%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%tl198639198672%_))
                                     (_%__kont206627206628%_)
                                     (_%__kont206629206630%_))))
                             (_%__kont206629206630%_))
                         (_%__kont206629206630%_)))
                 (_%__kont206629206630%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont206629206630%_)))))))
                                 (if (pair? _%rest198601198609%_)
                                     (let ((_%hd198606198706%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%rest198601198609%_)))
                                           (_%tl198607198708%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%rest198601198609%_))))
                                       (let* ((_%e198711%_ _%hd198606198706%_)
                                              (_%rest198713%_
                                               _%tl198607198708%_))
                                         (_%K198605198703%_
                                          _%rest198713%_
                                          _%e198711%_)))
                                     (_%else198603198617%_))))))
                       _%hd198519198565%_
                       _%hd198516198557%_
                       _%hd198513198549%_
                       _%hd198510198541%_)
                      (_%g198500198525%_ _%g198501198528%_))))
              (_%g198500198525%_ _%g198501198528%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g198500198525%_
                                               _%g198501198528%_))))
                                      (_%g198500198525%_ _%g198501198528%_))))
                              (_%g198500198525%_ _%g198501198528%_))))
                      (_%g198500198525%_ _%g198501198528%_)))))
          (_%g198499198715%_ _%stx198498%_))))
    (define gxc#generate-runtime-loader-import%
      (lambda (_%self198336%_ _%stx198337%_)
        (letrec ((_%import-set-template198339%_
                  (lambda (_%in198442%_ _%phi198443%_)
                    (let ((_%iphi198445%_
                           (fx+ _%phi198443%_
                                (##direct-structure-ref
                                 _%in198442%_
                                 '2
                                 gx#import-set::t
                                 '#f)))
                          (_%imports198446%_
                           (##structure-ref
                            (##direct-structure-ref
                             _%in198442%_
                             '1
                             gx#import-set::t
                             '#f)
                            '8
                            gx#module-context::t
                            '#f)))
                      (let _%lp198448%_ ((_%rest198450%_ _%imports198446%_)
                                         (_%r198451%_ '()))
                        (let* ((_%rest198452198460%_ _%rest198450%_)
                               (_%else198454198468%_ (lambda () _%r198451%_))
                               (_%K198456198485%_
                                (lambda (_%rest198471%_ _%in198472%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%in198472%_
                                         'gx#module-context::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxzero? _%iphi198445%_))
                                          (_%lp198448%_
                                           _%rest198471%_
                                           (cons _%in198472%_ _%r198451%_))
                                          (_%lp198448%_
                                           _%rest198471%_
                                           _%r198451%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%in198472%_
                                             'gx#module-import::t))
                                          (let ((_%iphi198476%_
                                                 (fx+ _%phi198443%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%in198472%_
                                                         '3
                                                         '#f
                                                         '#f)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##fxzero? _%iphi198476%_))
                                                (_%lp198448%_
                                                 _%rest198471%_
                                                 (cons (##direct-structure-ref
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%in198472%_
                                                           '1
                                                           '#f
                                                           '#f))
                                                        '1
                                                        gx#module-export::t
                                                        '#f)
                                                       _%r198451%_))
                                                (_%lp198448%_
                                                 _%rest198471%_
                                                 _%r198451%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 _%in198472%_
                                                 'gx#import-set::t))
                                              (let ((_%xphi198479%_
                                                     (fx+ _%iphi198445%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%in198472%_
                                                             '2
                                                             '#f
                                                             '#f)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##fxzero?
                                                       _%xphi198479%_))
                                                    (_%lp198448%_
                                                     _%rest198471%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in198472%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           _%r198451%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##fxpositive?
                                                           _%xphi198479%_))
                                                        (_%lp198448%_
                                                         _%rest198471%_
                                                         (let ((__tmp206944
                                                                (_%import-set-template198339%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in198472%_
                         _%iphi198445%_)))
                   (declare (not safe))
                   (foldl__0 cons _%r198451%_ __tmp206944)))
                (_%lp198448%_ _%rest198471%_ _%r198451%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%lp198448%_
                                               _%rest198471%_
                                               _%r198451%_)))))))
                          (if (pair? _%rest198452198460%_)
                              (let ((_%hd198457198488%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest198452198460%_)))
                                    (_%tl198458198490%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest198452198460%_))))
                                (let* ((_%in198493%_ _%hd198457198488%_)
                                       (_%rest198495%_ _%tl198458198490%_))
                                  (_%K198456198485%_
                                   _%rest198495%_
                                   _%in198493%_)))
                              (_%else198454198468%_))))))))
          (let* ((_%g198341198351%_
                  (lambda (_%g198342198348%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g198342198348%_))))
                 (_%g198340198439%_
                  (lambda (_%g198342198354%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g198342198354%_))
                        (let ((_%e198344198356%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g198342198354%_))))
                          (let ((_%hd198345198359%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e198344198356%_)))
                                (_%tl198346198361%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e198344198356%_))))
                            ((lambda (_%g198343198364%_)
                               (let ((_%ht198375%_
                                      (let ()
                                        (declare (not safe))
                                        (make-hash-table-eq))))
                                 (let _%lp198377%_ ((_%rest198379%_
                                                     _%g198343198364%_)
                                                    (_%loads198380%_ '()))
                                   (letrec ((_%K198382%_
                                             (lambda (_%ctx198432%_
                                                      _%rest198433%_)
                                               (let ((_%id198435%_
                                                      (##structure-ref
                                                       _%ctx198432%_
                                                       '1
                                                       gx#expander-context::t
                                                       '#f)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (__hash-get
                                                        _%ht198375%_
                                                        _%id198435%_))
                                                     (_%lp198377%_
                                                      _%rest198433%_
                                                      _%loads198380%_)
                                                     (let ((_%rt198437%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#module-id->path-string
                                                               _%id198435%_))))
                                                       (let ()
                                                         (declare (not safe))
                                                         (__hash-put!
                                                          _%ht198375%_
                                                          _%id198435%_
                                                          _%rt198437%_))
                                                       (_%lp198377%_
                                                        _%rest198433%_
                                                        (cons _%rt198437%_
                                                              _%loads198380%_))))))))
                                     (let* ((_%rest198383198391%_
                                             _%rest198379%_)
                                            (_%else198385198403%_
                                             (lambda ()
                                               (cons 'begin
                                                     (let ((__tmp206946
                                                            (lambda (_%g198398198400%_)
                                                              (list 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g198398198400%_)))
                   (__tmp206945 (reverse _%loads198380%_)))
               (declare (not safe))
               (##map __tmp206946 __tmp206945)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%K198387198420%_
                                             (lambda (_%rest198406%_
                                                      _%in198407%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-instance-of?
                                                      _%in198407%_
                                                      'gx#module-context::t))
                                                   (_%K198382%_
                                                    _%in198407%_
                                                    _%rest198406%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          _%in198407%_
                                                          'gx#module-import::t))
                                                       (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%in198407%_
                               '3
                               '#f
                               '#f)))
                   (_%K198382%_
                    (##direct-structure-ref
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%in198407%_ '1 '#f '#f))
                     '1
                     gx#module-export::t
                     '#f)
                    _%rest198406%_)
                   (_%lp198377%_ _%rest198406%_ _%loads198380%_))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%in198407%_
                      'gx#import-set::t))
                   (let ((_%phi198412%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%in198407%_
                             '2
                             '#f
                             '#f))))
                     (if (fxzero? _%phi198412%_)
                         (_%K198382%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%in198407%_
                             '1
                             '#f
                             '#f))
                          _%rest198406%_)
                         (if (fxpositive? _%phi198412%_)
                             (let ((_%deps198416%_
                                    (_%import-set-template198339%_
                                     _%in198407%_
                                     '0)))
                               (_%lp198377%_
                                (let ()
                                  (declare (not safe))
                                  (foldl__0
                                   cons
                                   _%rest198406%_
                                   _%deps198416%_))
                                _%loads198380%_))
                             (_%lp198377%_ _%rest198406%_ _%loads198380%_))))
                   (let ()
                     (declare (not safe))
                     (gxc#raise-compile-error
                      '"Unexpected import"
                      _%stx198337%_
                      _%in198407%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (pair? _%rest198383198391%_)
                                           (let ((_%hd198388198423%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%rest198383198391%_)))
                                                 (_%tl198389198425%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%rest198383198391%_))))
                                             (let* ((_%in198428%_
                                                     _%hd198388198423%_)
                                                    (_%rest198430%_
                                                     _%tl198389198425%_))
                                               (_%K198387198420%_
                                                _%rest198430%_
                                                _%in198428%_)))
                                           (_%else198385198403%_)))))))
                             _%tl198346198361%_)))
                        (_%g198341198351%_ _%g198342198354%_)))))
            (_%g198340198439%_ _%stx198337%_)))))
    (define gxc#generate-runtime-quote-syntax%
      (lambda (_%self198150%_ _%stx198151%_)
        (letrec ((_%add-lift!198153%_
                  (lambda (_%expr198334%_)
                    (set-box!
                     (let () (declare (not safe)) (gxc#current-compile-lift))
                     (cons _%expr198334%_
                           (unbox (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-lift)))))))
                 (_%generate-syntax-quote198154%_
                  (lambda (_%id198331%_ _%marks198332%_)
                    (cons '##structure
                          (cons 'gx#syntax-quote::t
                                (cons (cons 'quote (cons _%id198331%_ '()))
                                      (cons '#f
                                            (cons '(gx#current-expander-context)
                                                  (cons _%marks198332%_
                                                        '()))))))))
                 (_%generate-simple198155%_
                  (lambda (_%stxq198326%_)
                    (let ((_%gid198328%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__% '#t)))
                          (_%qid198329%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier
                              _%stxq198326%_))))
                      (_%add-lift!198153%_
                       (cons 'define
                             (cons _%gid198328%_
                                   (cons (_%generate-syntax-quote198154%_
                                          _%qid198329%_
                                          ''())
                                         '()))))
                      (let ((__tmp206947
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp206947 _%stxq198326%_ _%gid198328%_))
                      _%gid198328%_)))
                 (_%generate-serialized198156%_
                  (lambda (_%stxq198316%_ _%marks198317%_)
                    (let* ((_%mark-refs198319%_
                            (map _%generate-mark198157%_ _%marks198317%_))
                           (_%gid198321%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%qid198323%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-identifier
                               _%stxq198316%_))))
                      (_%add-lift!198153%_
                       (cons 'define
                             (cons _%gid198321%_
                                   (cons (_%generate-syntax-quote198154%_
                                          _%qid198323%_
                                          (cons 'list _%mark-refs198319%_))
                                         '()))))
                      (let ((__tmp206948
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp206948 _%stxq198316%_ _%gid198321%_))
                      _%gid198321%_)))
                 (_%generate-mark198157%_
                  (lambda (_%mark198301%_)
                    (let ((_%$e198303%_
                           (let ((__tmp206949
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-marks))))
                             (declare (not safe))
                             (hash-get __tmp206949 _%mark198301%_))))
                      (if _%$e198303%_
                          _%$e198303%_
                          (let* ((_%gid198307%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-temporary__% '#t)))
                                 (_%repr198309%_
                                  (_%serialize-mark198158%_ _%mark198301%_))
                                 (_%ctx198311%_
                                  (let ((__tmp206950
                                         (##structure-ref
                                          _%mark198301%_
                                          '2
                                          gx#expander-mark::t
                                          '#f)))
                                    (declare (not safe))
                                    (gx#core-context-top__1 __tmp206950)))
                                 (_%ctx-ref198313%_
                                  (if (eq? _%ctx198311%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-context)))
                                      '(gx#current-expander-context)
                                      (cons 'gx#import-module
                                            (cons (cons 'quote
                                                        (cons (_%context-ref198159%_
                                                               _%ctx198311%_)
                                                              '()))
                                                  '())))))
                            (let ((__tmp206951
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-marks))))
                              (declare (not safe))
                              (hash-put!
                               __tmp206951
                               _%mark198301%_
                               _%gid198307%_))
                            (_%add-lift!198153%_
                             (cons 'define
                                   (cons _%gid198307%_
                                         (cons (cons 'gx#core-deserialize-mark
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%repr198309%_ '()))
                   (cons _%ctx-ref198313%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            _%gid198307%_)))))
                 (_%serialize-mark198158%_
                  (lambda (_%mark198249%_)
                    (letrec ((_%quote-e198251%_
                              (lambda (_%sym198299%_)
                                (if (let ()
                                      (declare (not safe))
                                      (interned-symbol? _%sym198299%_))
                                    _%sym198299%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-gensym-reference__0
                                       _%sym198299%_))))))
                      (let* ((_%mark198252198261%_ _%mark198249%_)
                             (_%E198254198264%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%mark198252198261%_
                                         '((expander-mark
                                            subst
                                            ctx
                                            phi
                                            trace))))
                                '#!void))
                             (_%K198255198276%_
                              (lambda (_%trace198267%_
                                       _%phi198268%_
                                       _%ctx198269%_
                                       _%subst198270%_)
                                (let ((_%subs198272%_
                                       (if _%subst198270%_
                                           (let ()
                                             (declare (not safe))
                                             (hash->list _%subst198270%_))
                                           '())))
                                  (cons _%phi198268%_
                                        (let ((__tmp206952
                                               (lambda (_%pair198274%_)
                                                 (cons (_%quote-e198251%_
                                                        (car _%pair198274%_))
                                                       (_%quote-e198251%_
                                                        (cdr _%pair198274%_))))))
                                          (declare (not safe))
                                          (##map __tmp206952
                                                 _%subs198272%_)))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%mark198252198261%_
                               'gx#expander-mark::t))
                            (let* ((_%e198256198279%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark198252198261%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%subst198282%_ _%e198256198279%_)
                                   (_%e198257198284%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark198252198261%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%ctx198287%_ _%e198257198284%_)
                                   (_%e198258198289%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark198252198261%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%phi198292%_ _%e198258198289%_)
                                   (_%e198259198294%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark198252198261%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%trace198297%_ _%e198259198294%_))
                              (_%K198255198276%_
                               _%trace198297%_
                               _%phi198292%_
                               _%ctx198287%_
                               _%subst198282%_))
                            (_%E198254198264%_))))))
                 (_%context-ref198159%_
                  (lambda (_%ctx198236%_)
                    (if (let ((__tmp206953
                               (##structure-ref
                                _%ctx198236%_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (declare (not safe))
                          (##structure-instance-of?
                           __tmp206953
                           'gx#module-context::t))
                        (let ((_%ctx-ref198238%_
                               (_%context-ref-nested198161%_ _%ctx198236%_))
                              (_%ctx-origin198239%_
                               (_%context-ref-origin198160%_ _%ctx198236%_))
                              (_%origin198240%_
                               (_%context-ref-origin198160%_
                                (let ()
                                  (declare (not safe))
                                  (gx#current-expander-context)))))
                          (if (eq? _%origin198240%_ _%ctx-origin198239%_)
                              (let ((_%ref198242%_
                                     (_%context-ref-nested198161%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context)))))
                                (let _%lp198244%_ ((_%ref198246%_
                                                    (cdr _%ref198242%_))
                                                   (_%ctx-ref198247%_
                                                    (cdr _%ctx-ref198238%_)))
                                  (if (and (pair? _%ref198246%_)
                                           (eq? (let ()
                                                  (declare (not safe))
                                                  (##car _%ref198246%_))
                                                (car _%ctx-ref198247%_)))
                                      (_%lp198244%_
                                       (cdr _%ref198246%_)
                                       (cdr _%ctx-ref198247%_))
                                      (cons '#f _%ctx-ref198247%_))))
                              _%ctx-ref198238%_))
                        (let ((__tmp206954
                               (##structure-ref
                                _%ctx198236%_
                                '1
                                gx#expander-context::t
                                '#f)))
                          (declare (not safe))
                          (make-symbol__1 '":" __tmp206954)))))
                 (_%context-ref-origin198160%_
                  (lambda (_%ctx198228%_)
                    (let _%lp198230%_ ((_%ctx198232%_ _%ctx198228%_))
                      (let ((_%super198234%_
                             (##structure-ref
                              _%ctx198232%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super198234%_
                               'gx#module-context::t))
                            (_%lp198230%_ _%super198234%_)
                            _%ctx198232%_)))))
                 (_%context-ref-nested198161%_
                  (lambda (_%ctx198219%_)
                    (let _%lp198221%_ ((_%ctx198223%_ _%ctx198219%_)
                                       (_%r198224%_ '()))
                      (let ((_%super198226%_
                             (##structure-ref
                              _%ctx198223%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super198226%_
                               'gx#module-context::t))
                            (_%lp198221%_
                             _%super198226%_
                             (cons (car (##structure-ref
                                         _%ctx198223%_
                                         '7
                                         gx#module-context::t
                                         '#f))
                                   _%r198224%_))
                            (cons (let ((__tmp206955
                                         (##structure-ref
                                          _%ctx198223%_
                                          '1
                                          gx#expander-context::t
                                          '#f)))
                                    (declare (not safe))
                                    (make-symbol__1 '":" __tmp206955))
                                  _%r198224%_)))))))
          (let* ((_%g198163198176%_
                  (lambda (_%g198164198173%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g198164198173%_))))
                 (_%g198162198216%_
                  (lambda (_%g198164198179%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g198164198179%_))
                        (let ((_%e198166198181%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g198164198179%_))))
                          (let ((_%hd198167198184%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e198166198181%_)))
                                (_%tl198168198186%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e198166198181%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl198168198186%_))
                                (let ((_%e198169198189%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl198168198186%_))))
                                  (let ((_%hd198170198192%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e198169198189%_)))
                                        (_%tl198171198194%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e198169198189%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl198171198194%_))
                                        ((lambda (_%g198165198197%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#identifier?
                                                  _%g198165198197%_))
                                               (let ((_%$e198210%_
                                                      (let ((__tmp206956
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#current-compile-identifiers))))
                (declare (not safe))
                (hash-get __tmp206956 _%g198165198197%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e198210%_
                                                     _%$e198210%_
                                                     (let ((_%marks198214%_
                                                            (##direct-structure-ref
                                                             _%g198165198197%_
                                                             '4
                                                             gx#syntax-quote::t
                                                             '#f)))
                                                       (if (null? _%marks198214%_)
                                                           (_%generate-simple198155%_
                                                            _%g198165198197%_)
                                                           (_%generate-serialized198156%_
                                                            _%g198165198197%_
                                                            _%marks198214%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"Cannot quote non-identifier syntax"
                                                  _%g198165198197%_))))
                                         _%hd198170198192%_)
                                        (_%g198163198176%_
                                         _%g198164198179%_))))
                                (_%g198163198176%_ _%g198164198179%_))))
                        (_%g198163198176%_ _%g198164198179%_)))))
            (_%g198162198216%_ _%stx198151%_)))))
    (define gxc#generate-runtime-phi-define-runtime%
      (lambda (_%self198082%_ _%stx198083%_)
        (let* ((_%g198085198102%_
                (lambda (_%g198086198099%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198086198099%_))))
               (_%g198084198147%_
                (lambda (_%g198086198105%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198086198105%_))
                      (let ((_%e198089198107%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g198086198105%_))))
                        (let ((_%hd198090198110%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198089198107%_)))
                              (_%tl198091198112%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198089198107%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198091198112%_))
                              (let ((_%e198092198115%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl198091198112%_))))
                                (let ((_%hd198093198118%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198092198115%_)))
                                      (_%tl198094198120%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198092198115%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl198094198120%_))
                                      (let ((_%e198095198123%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl198094198120%_))))
                                        (let ((_%hd198096198126%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198095198123%_)))
                                              (_%tl198097198128%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198095198123%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl198097198128%_))
                                              ((lambda (_%g198087198131%_
                                                        _%g198088198132%_)
                                                 (cons 'define
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%g198088198132%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self198082%_
                              _%g198087198131%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd198096198126%_
                                               _%hd198093198118%_)
                                              (_%g198085198102%_
                                               _%g198086198105%_))))
                                      (_%g198085198102%_ _%g198086198105%_))))
                              (_%g198085198102%_ _%g198086198105%_))))
                      (_%g198085198102%_ _%g198086198105%_)))))
          (_%g198084198147%_ _%stx198083%_))))
    (define gxc#generate-meta-begin%
      (lambda (_%self198031%_ _%stx198032%_)
        (let* ((_%g198034198044%_
                (lambda (_%g198035198041%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198035198041%_))))
               (_%g198033198079%_
                (lambda (_%g198035198047%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198035198047%_))
                      (let ((_%e198037198049%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g198035198047%_))))
                        (let ((_%hd198038198052%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198037198049%_)))
                              (_%tl198039198054%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198037198049%_))))
                          ((lambda (_%g198036198057%_)
                             (let* ((_%c-body198071%_
                                     (map (lambda (_%g198066198068%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self198031%_
                                               _%g198066198068%_)))
                                          _%g198036198057%_))
                                    (_%c-body198076%_
                                     (let ((__tmp206957
                                            (lambda (_%$obj198073%_)
                                              (not (eq? _%$obj198073%_
                                                        '#!void)))))
                                       (declare (not safe))
                                       (##filter
                                        __tmp206957
                                        _%c-body198071%_))))
                               (cons '%#begin _%c-body198076%_)))
                           _%tl198039198054%_)))
                      (_%g198034198044%_ _%g198035198047%_)))))
          (_%g198033198079%_ _%stx198032%_))))
    (define gxc#generate-meta-begin-syntax%
      (lambda (_%self197936%_ _%stx197937%_)
        (let* ((_%g197939197949%_
                (lambda (_%g197940197946%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197940197946%_))))
               (_%g197938198028%_
                (lambda (_%g197940197952%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197940197952%_))
                      (let ((_%e197942197954%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g197940197952%_))))
                        (let ((_%hd197943197957%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197942197954%_)))
                              (_%tl197944197959%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197942197954%_))))
                          ((lambda (_%g197941197962%_)
                             (let* ((_%phi197972%_
                                     (let ((__tmp206958
                                            (let ()
                                              (declare (not safe))
                                              (gx#current-expander-phi))))
                                       (declare (not safe))
                                       (##fx+ __tmp206958 '1)))
                                    (_%block197974%_
                                     (gxc#meta-state-begin-phi!
                                      (let ()
                                        (declare (not safe))
                                        (slot-ref__0 _%self197936%_ 'state))
                                      _%phi197972%_))
                                    (_%compiled197977%_
                                     (let ((__tmp206959
                                            (lambda ()
                                              (gxc#apply-generate-meta-phi__%
                                               '#f
                                               (let ()
                                                 (declare (not safe))
                                                 (slot-ref__0
                                                  _%self197936%_
                                                  'state))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#begin))
                                                     _%g197941197962%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp206959
                                        gx#current-expander-phi
                                        _%phi197972%_)))
                                    (_%g197980197990%_
                                     (lambda (_%g197981197987%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g197981197987%_))))
                                    (_%g197979198025%_
                                     (lambda (_%g197981197993%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%g197981197993%_))
                                           (let ((_%e197983197995%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%g197981197993%_))))
                                             (let ((_%hd197984197998%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e197983197995%_)))
                                                   (_%tl197985198000%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e197983197995%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd197984197998%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#begin
                                                          _%hd197984197998%_))
                                                       ((lambda (_%g197982198003%_)
                                                          (let ((_%c-body198020%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (filter (lambda (_%$obj198017%_)
                                   (not (eq? _%$obj198017%_ '#!void)))
                                 _%g197982198003%_)))
                    (if _%block197974%_
                        (cons '%#begin-syntax
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'load-module '()))
                                                (cons (cons '%#quote
                                                            (cons _%block197974%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%c-body198020%_))
                        (if (null? _%c-body198020%_)
                            '#!void
                            (cons '%#begin-syntax _%c-body198020%_)))))
                _%tl197985198000%_)
               (_%g197980197990%_ _%g197981197993%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g197980197990%_
                                                    _%g197981197993%_))))
                                           (_%g197980197990%_
                                            _%g197981197993%_)))))
                               (_%g197979198025%_ _%compiled197977%_)))
                           _%tl197944197959%_)))
                      (_%g197939197949%_ _%g197940197952%_)))))
          (_%g197938198028%_ _%stx197937%_))))
    (define gxc#generate-meta-module%
      (lambda (_%self197867%_ _%stx197868%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self197867%_ 'state)))
        (let* ((_%g197870197884%_
                (lambda (_%g197871197881%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197871197881%_))))
               (_%g197869197933%_
                (lambda (_%g197871197887%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197871197887%_))
                      (let ((_%e197874197889%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g197871197887%_))))
                        (let ((_%hd197875197892%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197874197889%_)))
                              (_%tl197876197894%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197874197889%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197876197894%_))
                              (let ((_%e197877197897%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl197876197894%_))))
                                (let ((_%hd197878197900%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197877197897%_)))
                                      (_%tl197879197902%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197877197897%_))))
                                  ((lambda (_%g197872197905%_
                                            _%g197873197906%_)
                                     (let ((_%key197919%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#core-identifier-key
                                               _%g197873197906%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (interned-symbol? _%key197919%_))
                                           '#!void
                                           (let ()
                                             (declare (not safe))
                                             (gxc#raise-compile-error
                                              '"Cannot compile module with uninterned id"
                                              _%stx197868%_
                                              _%g197873197906%_
                                              _%key197919%_)))
                                       (let* ((_%ctx197921%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-local-e__0
                                                  _%g197873197906%_)))
                                              (_%code197924%_
                                               (let ((__tmp206960
                                                      (lambda ()
                                                        (let ((__tmp206961
                                                               (##structure-ref
                                                                _%ctx197921%_
                                                                '11
                                                                gx#module-context::t
                                                                '#f)))
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self197867%_
                                                           __tmp206961)))))
                                                 (declare (not safe))
                                                 (call-with-parameters__1
                                                  __tmp206960
                                                  gx#current-expander-context
                                                  _%ctx197921%_)))
                                              (_%rt197926%_
                                               (let ((__tmp206962
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#current-compile-runtime-sections))))
                                                 (declare (not safe))
                                                 (hash-get
                                                  __tmp206962
                                                  _%ctx197921%_)))
                                              (_%loader197928%_
                                               (if _%rt197926%_
                                                   (cons (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons 'load-module '()))
                             (cons (cons '%#quote (cons _%rt197926%_ '()))
                                   '())))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                              (_%modid197930%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%g197873197906%_))))
                                         (gxc#meta-state-end-phi!
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self197867%_
                                             'state)))
                                         (cons '%#module
                                               (cons _%modid197930%_
                                                     (cons _%code197924%_
                                                           _%loader197928%_))))))
                                   _%tl197879197902%_
                                   _%hd197878197900%_)))
                              (_%g197870197884%_ _%g197871197887%_))))
                      (_%g197870197884%_ _%g197871197887%_)))))
          (_%g197869197933%_ _%stx197868%_))))
    (define gxc#generate-meta-import-path
      (lambda (_%ctx197854%_ _%context-chain197855%_)
        (let _%lp197857%_ ((_%ctx197859%_ _%ctx197854%_) (_%path197860%_ '()))
          (let ((_%super197862%_
                 (##structure-ref _%ctx197859%_ '3 gx#phi-context::t '#f)))
            (if (memq _%super197862%_ _%context-chain197855%_)
                (cons '#f
                      (cons (car (##structure-ref
                                  _%ctx197859%_
                                  '7
                                  gx#module-context::t
                                  '#f))
                            _%path197860%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%super197862%_
                       'gx#module-context::t))
                    (_%lp197857%_
                     _%super197862%_
                     (cons (car (##structure-ref
                                 _%ctx197859%_
                                 '7
                                 gx#module-context::t
                                 '#f))
                           _%path197860%_))
                    (cons (let ((__tmp206963
                                 (##structure-ref
                                  _%ctx197859%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (make-symbol__1 '":" __tmp206963))
                          _%path197860%_)))))))
    (define gxc#current-context-chain
      (lambda ()
        (let _%lp197847%_ ((_%ctx197849%_
                            (let ()
                              (declare (not safe))
                              (gx#current-expander-context)))
                           (_%r197850%_ '()))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%ctx197849%_ 'gx#module-context::t))
              (_%lp197847%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%ctx197849%_ '3 '#f '#f))
               (cons _%ctx197849%_ _%r197850%_))
              _%r197850%_))))
    (define gxc#generate-meta-import%
      (lambda (_%self197612%_ _%stx197613%_)
        (letrec* ((_%context-chain197615%_ (gxc#current-context-chain))
                  (_%make-import-spec197616%_
                   (lambda (_%in197784%_)
                     (let* ((_%in197785197797%_ _%in197784%_)
                            (_%E197787197800%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%in197785197797%_
                                        '((module-import
                                           (module-export
                                            src-ctx
                                            src-key
                                            src-phi
                                            src-name)
                                           name
                                           phi))))
                               '#!void))
                            (_%K197788197810%_
                             (lambda (_%phi197803%_
                                      _%name197804%_
                                      _%src-name197805%_
                                      _%src-phi197806%_
                                      _%src-key197807%_
                                      _%src-ctx197808%_)
                               (cons _%phi197803%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#generate-runtime-identifier-key
                                              _%name197804%_))
                                           (cons _%src-phi197806%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#generate-runtime-identifier-key
                                                          _%src-name197805%_))
                                                       '())))))))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              _%in197785197797%_
                              'gx#module-import::t))
                           (let ((_%e197789197813%_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%in197785197797%_
                                     '1
                                     '#f
                                     '#f))))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    _%e197789197813%_
                                    'gx#module-export::t))
                                 (let* ((_%e197792197816%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e197789197813%_
                                            '1
                                            '#f
                                            '#f)))
                                        (_%src-ctx197819%_ _%e197792197816%_)
                                        (_%e197793197821%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e197789197813%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%src-key197824%_ _%e197793197821%_)
                                        (_%e197794197826%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e197789197813%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%src-phi197829%_ _%e197794197826%_)
                                        (_%e197795197831%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e197789197813%_
                                            '4
                                            '#f
                                            '#f)))
                                        (_%src-name197834%_ _%e197795197831%_)
                                        (_%e197790197836%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in197785197797%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%name197839%_ _%e197790197836%_)
                                        (_%e197791197841%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in197785197797%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%phi197844%_ _%e197791197841%_))
                                   (_%K197788197810%_
                                    _%phi197844%_
                                    _%name197839%_
                                    _%src-name197834%_
                                    _%src-phi197829%_
                                    _%src-key197824%_
                                    _%src-ctx197819%_))
                                 (_%E197787197800%_)))
                           (_%E197787197800%_)))))
                  (_%make-import-path197617%_
                   (lambda (_%ctx197782%_)
                     (gxc#generate-meta-import-path
                      _%ctx197782%_
                      _%context-chain197615%_)))
                  (_%make-import-spec-in197618%_
                   (lambda (_%ctx197779%_ _%in197780%_)
                     (cons 'spec:
                           (cons (_%make-import-path197617%_ _%ctx197779%_)
                                 (reverse _%in197780%_))))))
          (gxc#meta-state-end-phi!
           (let () (declare (not safe)) (slot-ref__0 _%self197612%_ 'state)))
          (let* ((_%g197620197630%_
                  (lambda (_%g197621197627%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g197621197627%_))))
                 (_%g197619197776%_
                  (lambda (_%g197621197633%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g197621197633%_))
                        (let ((_%e197623197635%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g197621197633%_))))
                          (let ((_%hd197624197638%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e197623197635%_)))
                                (_%tl197625197640%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e197623197635%_))))
                            ((lambda (_%g197622197643%_)
                               (let _%lp197654%_ ((_%rest197656%_
                                                   _%g197622197643%_)
                                                  (_%current-src197657%_ '#f)
                                                  (_%current-in197658%_ '())
                                                  (_%r197659%_ '()))
                                 (let* ((_%rest197660197668%_ _%rest197656%_)
                                        (_%else197662197678%_
                                         (lambda ()
                                           (let ((_%r197676%_
                                                  (if _%current-src197657%_
                                                      (cons (_%make-import-spec-in197618%_
                                                             _%current-src197657%_
                                                             _%current-in197658%_)
                                                            _%r197659%_)
                                                      _%r197659%_)))
                                             (cons '%#import
                                                   (reverse _%r197676%_)))))
                                        (_%K197664197764%_
                                         (lambda (_%rest197681%_ _%in197682%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in197682%_
                                                  'gx#module-import::t))
                                               (let* ((_%in197684197691%_
                                                       _%in197682%_)
                                                      (_%E197686197694%_
                                                       (lambda ()
                                                         (let ()
                                                           (declare (not safe))
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%in197684197691%_
                          '((module-import (module-export src-ctx)))))
                 '#!void))
              (_%K197687197702%_
               (lambda (_%src-ctx197697%_)
                 (if (eq? _%current-src197657%_ _%src-ctx197697%_)
                     (_%lp197654%_
                      _%rest197681%_
                      _%current-src197657%_
                      (cons (_%make-import-spec197616%_ _%in197682%_)
                            _%current-in197658%_)
                      _%r197659%_)
                     (if _%current-src197657%_
                         (_%lp197654%_
                          _%rest197681%_
                          _%src-ctx197697%_
                          (cons (_%make-import-spec197616%_ _%in197682%_) '())
                          (cons (_%make-import-spec-in197618%_
                                 _%current-src197657%_
                                 _%current-in197658%_)
                                _%r197659%_))
                         (_%lp197654%_
                          _%rest197681%_
                          _%src-ctx197697%_
                          (cons (_%make-import-spec197616%_ _%in197682%_) '())
                          _%r197659%_)))))
              (_%e197688197705%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%in197684197691%_ '1 '#f '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%e197688197705%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e197689197708%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%e197688197705%_
                        '1
                        '#f
                        '#f)))
                    (_%src-ctx197711%_ _%e197689197708%_))
               (_%K197687197702%_ _%src-ctx197711%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E197686197694%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%in197682%_
                                                      'gx#import-set::t))
                                                   (let* ((_%phi197714%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in197682%_
                                                              '2
                                                              '#f
                                                              '#f)))
                                                          (_%src197716%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in197682%_
                                                              '1
                                                              '#f
                                                              '#f)))
                                                          (_%src-in197756%_
                                                           (let* ((_%g197717197726%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (_%make-import-path197617%_ _%src197716%_))
                          (_%E197720197730%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (error '"No clause matching"
                                      _%g197717197726%_
                                      '([path])
                                      '(path)))
                             '#!void)))
                     (let ((_%K197722197746%_
                            (lambda (_%path197744%_) _%path197744%_))
                           (_%K197721197736%_
                            (lambda (_%path197734%_)
                              (cons 'in: _%path197734%_))))
                       (if (pair? _%g197717197726%_)
                           (let ((_%tl197724197751%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%g197717197726%_)))
                                 (_%hd197723197749%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%g197717197726%_))))
                             (if (null? _%tl197724197751%_)
                                 (let ((_%path197754%_ _%hd197723197749%_))
                                   (_%K197722197746%_ _%path197754%_))
                                 (let ((_%path197739%_ _%g197717197726%_))
                                   (_%K197721197736%_ _%path197739%_))))
                           (let ((_%path197739%_ _%g197717197726%_))
                             (_%K197721197736%_ _%path197739%_))))))
                  (_%r197758%_
                   (if _%current-src197657%_
                       (cons (_%make-import-spec-in197618%_
                              _%current-src197657%_
                              _%current-in197658%_)
                             _%r197659%_)
                       _%r197659%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%lp197654%_
                                                      _%rest197681%_
                                                      '#f
                                                      '()
                                                      (cons (if (fxzero? _%phi197714%_)
                                                                _%src-in197756%_
                                                                (cons 'phi:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%phi197714%_
                                    (cons _%src-in197756%_ '()))))
                    _%r197758%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-instance-of?
                                                          _%in197682%_
                                                          'gx#module-context::t))
                                                       (let ((_%r197762%_
                                                              (if _%current-src197657%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (_%make-import-spec-in197618%_
                                 _%current-src197657%_
                                 _%current-in197658%_)
                                _%r197659%_)
                          _%r197659%_)))
                 (_%lp197654%_
                  _%rest197681%_
                  '#f
                  '()
                  (cons (cons 'runtime:
                              (_%make-import-path197617%_ _%in197682%_))
                        _%r197762%_)))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (pair? _%rest197660197668%_)
                                       (let ((_%hd197665197767%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest197660197668%_)))
                                             (_%tl197666197769%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest197660197668%_))))
                                         (let* ((_%in197772%_
                                                 _%hd197665197767%_)
                                                (_%rest197774%_
                                                 _%tl197666197769%_))
                                           (_%K197664197764%_
                                            _%rest197774%_
                                            _%in197772%_)))
                                       (_%else197662197678%_)))))
                             _%tl197625197640%_)))
                        (_%g197620197630%_ _%g197621197633%_)))))
            (_%g197619197776%_ _%stx197613%_)))))
    (define gxc#generate-meta-export%
      (lambda (_%self197422%_ _%stx197423%_)
        (letrec* ((_%context-chain197425%_ (gxc#current-context-chain))
                  (_%make-import-path197426%_
                   (lambda (_%ctx197610%_)
                     (gxc#generate-meta-import-path
                      _%ctx197610%_
                      _%context-chain197425%_))))
          (let* ((_%g197428197438%_
                  (lambda (_%g197429197435%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g197429197435%_))))
                 (_%g197427197607%_
                  (lambda (_%g197429197441%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g197429197441%_))
                        (let ((_%e197431197443%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g197429197441%_))))
                          (let ((_%hd197432197446%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e197431197443%_)))
                                (_%tl197433197448%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e197431197443%_))))
                            ((lambda (_%g197430197451%_)
                               (let _%lp197462%_ ((_%rest197464%_
                                                   _%g197430197451%_)
                                                  (_%r197465%_ '()))
                                 (let* ((_%rest197466197474%_ _%rest197464%_)
                                        (_%else197468197482%_
                                         (lambda ()
                                           (cons '%#export
                                                 (reverse _%r197465%_))))
                                        (_%K197470197595%_
                                         (lambda (_%rest197485%_ _%out197486%_)
                                           (let* ((_%out197487197500%_
                                                   _%out197486%_)
                                                  (_%E197490197504%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%out197487197500%_
                                                              '((module-export
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _
                         key
                         phi
                         name))
                      '((export-set src phi))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#!void)))
                                             (let ((_%K197494197574%_
                                                    (lambda (_%name197570%_
                                                             _%phi197571%_
                                                             _%key197572%_)
                                                      (_%lp197462%_
                                                       _%rest197485%_
                                                       (cons (cons 'spec:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%phi197571%_
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#generate-runtime-identifier-key
                                          _%key197572%_))
                                       (cons (let ()
                                               (declare (not safe))
                                               (gxc#generate-runtime-identifier-key
                                                _%name197570%_))
                                             '()))))
                     _%r197465%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K197491197554%_
                                                    (lambda (_%phi197508%_
                                                             _%src197509%_)
                                                      (let* ((_%out197549%_
                                                              (if _%src197509%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'import:
                                (cons (let* ((_%g197510197519%_
                                              (_%make-import-path197426%_
                                               _%src197509%_))
                                             (_%E197513197523%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (error '"No clause matching"
                                                         _%g197510197519%_
                                                         '([path])
                                                         '(path)))
                                                '#!void)))
                                        (let ((_%K197515197539%_
                                               (lambda (_%path197537%_)
                                                 _%path197537%_))
                                              (_%K197514197529%_
                                               (lambda (_%path197527%_)
                                                 (cons 'in: _%path197527%_))))
                                          (if (pair? _%g197510197519%_)
                                              (let ((_%tl197517197544%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%g197510197519%_)))
                                                    (_%hd197516197542%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%g197510197519%_))))
                                                (if (null? _%tl197517197544%_)
                                                    (let ((_%path197547%_
                                                           _%hd197516197542%_))
                                                      (_%K197515197539%_
                                                       _%path197547%_))
                                                    (let ((_%path197532%_
                                                           _%g197510197519%_))
                                                      (_%K197514197529%_
                                                       _%path197532%_))))
                                              (let ((_%path197532%_
                                                     _%g197510197519%_))
                                                (_%K197514197529%_
                                                 _%path197532%_)))))
                                      '()))
                          '#t))
                     (_%out197551%_
                      (if (fxzero? _%phi197508%_)
                          _%out197549%_
                          (cons 'phi:
                                (cons _%phi197508%_
                                      (cons _%out197549%_ '()))))))
                (_%lp197462%_
                 _%rest197485%_
                 (cons _%out197551%_ _%r197465%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_%try-match197489197567%_
                                                      (lambda ()
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-direct-instance-of?
                                                               _%out197487197500%_
                                                               'gx#export-set::t))
                                                            (let* ((_%e197492197557%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out197487197500%_
                               '1
                               '#f
                               '#f)))
                           (_%e197493197562%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out197487197500%_
                               '2
                               '#f
                               '#f))))
                      (let ((_%src197560%_ _%e197492197557%_)
                            (_%phi197565%_ _%e197493197562%_))
                        (_%K197491197554%_ _%phi197565%_ _%src197560%_)))
                    (_%E197490197504%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%out197487197500%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e197495197577%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%out197487197500%_
                        '1
                        '#f
                        '#f)))
                    (_%e197496197580%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out197487197500%_
                        '2
                        '#f
                        '#f)))
                    (_%e197497197585%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out197487197500%_
                        '3
                        '#f
                        '#f)))
                    (_%e197498197590%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out197487197500%_
                        '4
                        '#f
                        '#f))))
               (let ((_%key197583%_ _%e197496197580%_)
                     (_%phi197588%_ _%e197497197585%_)
                     (_%name197593%_ _%e197498197590%_))
                 (_%K197494197574%_
                  _%name197593%_
                  _%phi197588%_
                  _%key197583%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%try-match197489197567%_))))))))
                                   (if (pair? _%rest197466197474%_)
                                       (let ((_%hd197471197598%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest197466197474%_)))
                                             (_%tl197472197600%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest197466197474%_))))
                                         (let* ((_%out197603%_
                                                 _%hd197471197598%_)
                                                (_%rest197605%_
                                                 _%tl197472197600%_))
                                           (_%K197470197595%_
                                            _%rest197605%_
                                            _%out197603%_)))
                                       (_%else197468197482%_)))))
                             _%tl197433197448%_)))
                        (_%g197428197438%_ _%g197429197441%_)))))
            (_%g197427197607%_ _%stx197423%_)))))
    (define gxc#generate-meta-provide%
      (lambda (_%self197383%_ _%stx197384%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self197383%_ 'state)))
        (let* ((_%g197386197396%_
                (lambda (_%g197387197393%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197387197393%_))))
               (_%g197385197419%_
                (lambda (_%g197387197399%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197387197399%_))
                      (let ((_%e197389197401%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g197387197399%_))))
                        (let ((_%hd197390197404%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197389197401%_)))
                              (_%tl197391197406%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197389197401%_))))
                          ((lambda (_%g197388197409%_)
                             (cons '%#provide
                                   (map gxc#generate-runtime-identifier
                                        _%g197388197409%_)))
                           _%tl197391197406%_)))
                      (_%g197386197396%_ _%g197387197399%_)))))
          (_%g197385197419%_ _%stx197384%_))))
    (define gxc#generate-meta-extern%
      (lambda (_%self197258%_ _%stx197259%_)
        (letrec ((_%generate1197261%_
                  (lambda (_%id197378%_ _%eid197379%_)
                    (let ((_%eid197381%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%eid197379%_))))
                      (if (let ()
                            (declare (not safe))
                            (interned-symbol? _%eid197381%_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"Cannot compile extern reference"
                             _%stx197259%_
                             _%eid197381%_)))
                      (cons (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-identifier _%id197378%_))
                            (cons _%eid197381%_ '()))))))
          (let* ((_%g197263197291%_
                  (lambda (_%g197264197288%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g197264197288%_))))
                 (_%g197262197375%_
                  (lambda (_%g197264197294%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g197264197294%_))
                        (let ((_%e197267197296%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g197264197294%_))))
                          (let ((_%hd197268197299%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e197267197296%_)))
                                (_%tl197269197301%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e197267197296%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl197269197301%_))
                                (let ((_g206964_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl197269197301%_
                                          '0))))
                                  (begin
                                    (let ((_g206965_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g206964_)
                                                 (##values-length _g206964_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g206965_ 2)))
                                          (error "Context expects 2 values"
                                                 _g206965_)))
                                    (let ((_%target197270197304%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g206964_ 0)))
                                          (_%tl197272197306%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g206964_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl197272197306%_))
                                          (letrec ((_%loop197273197309%_
                                                    (lambda (_%hd197271197312%_
                                                             _%eid197277197314%_
                                                             _%id197278197315%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd197271197312%_))
                                                          (let ((_%e197274197317%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd197271197312%_))))
                    (let ((_%lp-hd197275197320%_
                           (let ()
                             (declare (not safe))
                             (##car _%e197274197317%_)))
                          (_%lp-tl197276197322%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e197274197317%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd197275197320%_))
                          (let ((_%e197281197325%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd197275197320%_))))
                            (let ((_%hd197282197328%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e197281197325%_)))
                                  (_%tl197283197330%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e197281197325%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl197283197330%_))
                                  (let ((_%e197284197333%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl197283197330%_))))
                                    (let ((_%hd197285197336%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e197284197333%_)))
                                          (_%tl197286197338%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e197284197333%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl197286197338%_))
                                          (_%loop197273197309%_
                                           _%lp-tl197276197322%_
                                           (cons _%hd197285197336%_
                                                 _%eid197277197314%_)
                                           (cons _%hd197282197328%_
                                                 _%id197278197315%_))
                                          (_%g197263197291%_
                                           _%g197264197294%_))))
                                  (_%g197263197291%_ _%g197264197294%_))))
                          (_%g197263197291%_ _%g197264197294%_))))
                  (let ((_%eid197279197341%_ (reverse _%eid197277197314%_))
                        (_%id197280197342%_ (reverse _%id197278197315%_)))
                    ((lambda (_%g197265197344%_ _%g197266197345%_)
                       (cons '%#extern
                             (map _%generate1197261%_
                                  (let ((__tmp206966
                                         (lambda (_%g197360197363%_
                                                  _%g197361197365%_)
                                           (cons _%g197360197363%_
                                                 _%g197361197365%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp206966
                                     '()
                                     _%g197266197345%_))
                                  (let ((__tmp206967
                                         (lambda (_%g197367197370%_
                                                  _%g197368197372%_)
                                           (cons _%g197367197370%_
                                                 _%g197368197372%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp206967
                                     '()
                                     _%g197265197344%_)))))
                     _%eid197279197341%_
                     _%id197280197342%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop197273197309%_
                                             _%target197270197304%_
                                             '()
                                             '()))
                                          (_%g197263197291%_
                                           _%g197264197294%_)))))
                                (_%g197263197291%_ _%g197264197294%_))))
                        (_%g197263197291%_ _%g197264197294%_)))))
            (_%g197262197375%_ _%stx197259%_)))))
    (define gxc#generate-meta-define-values%
      (lambda (_%self197047%_ _%stx197048%_)
        (letrec ((_%generate1197050%_
                  (lambda (_%id197252%_)
                    (let ((_%eid197254%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%id197252%_)))
                          (_%ident197255%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier _%id197252%_)))
                          (_%props197256%_
                           (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier-properties
                              _%id197252%_))))
                      (cons '%#define-runtime
                            (cons _%ident197255%_
                                  (cons _%eid197254%_ _%props197256%_))))))
                 (_%generate*197051%_
                  (lambda (_%all197220%_)
                    (let* ((_%all197221197229%_ _%all197220%_)
                           (_%else197223197237%_
                            (lambda () (cons '%#begin _%all197220%_)))
                           (_%K197225197242%_
                            (lambda (_%one197240%_) _%one197240%_)))
                      (if (pair? _%all197221197229%_)
                          (let ((_%hd197226197245%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all197221197229%_)))
                                (_%tl197227197247%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all197221197229%_))))
                            (let ((_%one197250%_ _%hd197226197245%_))
                              (if (null? _%tl197227197247%_)
                                  (_%K197225197242%_ _%one197250%_)
                                  (_%else197223197237%_))))
                          (_%else197223197237%_))))))
          (let* ((_%g197053197070%_
                  (lambda (_%g197054197067%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g197054197067%_))))
                 (_%g197052197217%_
                  (lambda (_%g197054197073%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g197054197073%_))
                        (let ((_%e197057197075%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g197054197073%_))))
                          (let ((_%hd197058197078%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e197057197075%_)))
                                (_%tl197059197080%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e197057197075%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl197059197080%_))
                                (let ((_%e197060197083%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl197059197080%_))))
                                  (let ((_%hd197061197086%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e197060197083%_)))
                                        (_%tl197062197088%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e197060197083%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl197062197088%_))
                                        (let ((_%e197063197091%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl197062197088%_))))
                                          (let ((_%hd197064197094%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e197063197091%_)))
                                                (_%tl197065197096%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e197063197091%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl197065197096%_))
                                                ((lambda (_%g197055197099%_
                                                          _%g197056197100%_)
                                                   (let _%lp197116%_ ((_%rest197118%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g197056197100%_)
                              (_%r197119%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((_%__stx206702206703%_
                                                             _%rest197118%_)
                                                            (_%g197124197141%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%__stx206702206703%_)))))
               (let ((_%__kont206704206705%_
                      (lambda (_%g197126197204%_)
                        (_%lp197116%_ _%g197126197204%_ _%r197119%_)))
                     (_%__kont206706206707%_
                      (lambda (_%g197131197177%_ _%g197132197178%_)
                        (_%lp197116%_
                         _%g197131197177%_
                         (cons (_%generate1197050%_ _%g197132197178%_)
                               _%r197119%_))))
                     (_%__kont206708206709%_
                      (lambda (_%g197136197153%_)
                        (_%generate*197051%_
                         (let ((__tmp206968
                                (cons (_%generate1197050%_ _%g197136197153%_)
                                      '())))
                           (declare (not safe))
                           (foldl__0 cons __tmp206968 _%r197119%_)))))
                     (_%__kont206710206711%_
                      (lambda ()
                        (_%generate*197051%_ (reverse! _%r197119%_)))))
                 (let ((_%g197122197164%_
                        (lambda ()
                          (let ((_%g197136197153%_ _%__stx206702206703%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%g197136197153%_))
                                (_%__kont206708206709%_ _%g197136197153%_)
                                (_%__kont206710206711%_))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%__stx206702206703%_))
                       (let ((_%e197127197193%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%__stx206702206703%_))))
                         (let ((_%tl197129197198%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e197127197193%_)))
                               (_%hd197128197196%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e197127197193%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-datum? _%hd197128197196%_))
                               (let ((_%e197130197201%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd197128197196%_))))
                                 (if (equal? _%e197130197201%_ '#f)
                                     (_%__kont206704206705%_
                                      _%tl197129197198%_)
                                     (_%__kont206706206707%_
                                      _%tl197129197198%_
                                      _%hd197128197196%_)))
                               (_%__kont206706206707%_
                                _%tl197129197198%_
                                _%hd197128197196%_))))
                       (let () (declare (not safe)) (_%g197122197164%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd197064197094%_
                                                 _%hd197061197086%_)
                                                (_%g197053197070%_
                                                 _%g197054197073%_))))
                                        (_%g197053197070%_
                                         _%g197054197073%_))))
                                (_%g197053197070%_ _%g197054197073%_))))
                        (_%g197053197070%_ _%g197054197073%_)))))
            (_%g197052197217%_ _%stx197048%_)))))
    (define gxc#generate-meta-define-syntax%
      (lambda (_%self196944%_ _%stx196945%_)
        (let* ((_%g196947196964%_
                (lambda (_%g196948196961%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196948196961%_))))
               (_%g196946197044%_
                (lambda (_%g196948196967%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196948196967%_))
                      (let ((_%e196951196969%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g196948196967%_))))
                        (let ((_%hd196952196972%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196951196969%_)))
                              (_%tl196953196974%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196951196969%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196953196974%_))
                              (let ((_%e196954196977%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl196953196974%_))))
                                (let ((_%hd196955196980%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196954196977%_)))
                                      (_%tl196956196982%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196954196977%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196956196982%_))
                                      (let ((_%e196957196985%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl196956196982%_))))
                                        (let ((_%hd196958196988%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196957196985%_)))
                                              (_%tl196959196990%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196957196985%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl196959196990%_))
                                              ((lambda (_%g196949196993%_
                                                        _%g196950196994%_)
                                                 (let* ((_%eid197009%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#generate-runtime-binding-id
                                                            _%g196950196994%_)))
                                                        (_%phi197011%_
                                                         (let ((__tmp206969
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#current-expander-phi))))
                   (declare (not safe))
                   (##fx+ __tmp206969 '1)))
                (_%block197013%_
                 (gxc#meta-state-begin-phi!
                  (let ()
                    (declare (not safe))
                    (slot-ref__0 _%self196944%_ 'state))
                  _%phi197011%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%g197016197023%_
                                                           (lambda (_%g197017197020%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g197017197020%_))))
                  (_%g197015197041%_
                   (lambda (_%g197017197026%_)
                     ((lambda (_%g197018197028%_)
                        (gxc#meta-state-add-phi!
                         (let ()
                           (declare (not safe))
                           (slot-ref__0 _%self196944%_ 'state))
                         _%phi197011%_
                         (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#define-runtime))
                               (cons _%g197018197028%_
                                     (cons _%g196949196993%_ '())))))
                      _%g197017197026%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g197015197041%_
                                                      _%eid197009%_))
                                                   (if _%block197013%_
                                                       (cons '%#begin
                                                             (cons (cons '%#begin-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons 'load-module
                                                               '()))
                                                   (cons (cons '%#quote
                                                               (cons _%block197013%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons '%#define-syntax
                                       (cons (let ()
                                               (declare (not safe))
                                               (gxc#generate-runtime-identifier
                                                _%g196950196994%_))
                                             (cons _%eid197009%_ '())))
                                 '())))
               (cons '%#define-syntax
                     (cons (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier
                              _%g196950196994%_))
                           (cons _%eid197009%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd196958196988%_
                                               _%hd196955196980%_)
                                              (_%g196947196964%_
                                               _%g196948196967%_))))
                                      (_%g196947196964%_ _%g196948196967%_))))
                              (_%g196947196964%_ _%g196948196967%_))))
                      (_%g196947196964%_ _%g196948196967%_)))))
          (_%g196946197044%_ _%stx196945%_))))
    (define gxc#generate-meta-define-alias%
      (lambda (_%self196876%_ _%stx196877%_)
        (let* ((_%g196879196896%_
                (lambda (_%g196880196893%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196880196893%_))))
               (_%g196878196941%_
                (lambda (_%g196880196899%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196880196899%_))
                      (let ((_%e196883196901%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g196880196899%_))))
                        (let ((_%hd196884196904%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196883196901%_)))
                              (_%tl196885196906%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196883196901%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196885196906%_))
                              (let ((_%e196886196909%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl196885196906%_))))
                                (let ((_%hd196887196912%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196886196909%_)))
                                      (_%tl196888196914%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196886196909%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196888196914%_))
                                      (let ((_%e196889196917%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl196888196914%_))))
                                        (let ((_%hd196890196920%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196889196917%_)))
                                              (_%tl196891196922%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196889196917%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl196891196922%_))
                                              ((lambda (_%g196881196925%_
                                                        _%g196882196926%_)
                                                 (cons '%#define-alias
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#generate-runtime-identifier _%g196882196926%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-identifier
                              _%g196881196925%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd196890196920%_
                                               _%hd196887196912%_)
                                              (_%g196879196896%_
                                               _%g196880196899%_))))
                                      (_%g196879196896%_ _%g196880196899%_))))
                              (_%g196879196896%_ _%g196880196899%_))))
                      (_%g196879196896%_ _%g196880196899%_)))))
          (_%g196878196941%_ _%stx196877%_))))
    (define gxc#generate-meta-phi-define-values%
      (lambda (_%self196873%_ _%stx196874%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self196873%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx196874%_)
        (gxc#generate-meta-define-values% _%self196873%_ _%stx196874%_)))
    (define gxc#generate-meta-phi-expr
      (lambda (_%self196870%_ _%stx196871%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self196870%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx196871%_)
        '#!void))
    (define gxc#meta-state::t
      (let ((__tmp206971 (list)) (__tmp206970 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state::t
         'meta-state
         __tmp206971
         '(src n open blocks)
         __tmp206970
         ':init!)))
    (define gxc#meta-state?
      (let () (declare (not safe)) (__make-class-predicate gxc#meta-state::t)))
    (define gxc#make-meta-state
      (lambda _%$args196867%_
        (apply make-instance gxc#meta-state::t _%$args196867%_)))
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
      (lambda (_%self196853%_ _%ctx196854%_)
        (let ((_%self196857%_ _%self196853%_))
          (if (let ((__tmp206972
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self196857%_))))
                (declare (not safe))
                (##fx< '4 __tmp206972))
              (begin
                (let ((__tmp206973
                       (let ((__tmp206974
                              (##structure-ref
                               _%ctx196854%_
                               '1
                               gx#expander-context::t
                               '#f)))
                         (declare (not safe))
                         (gxc#module-id->path-string __tmp206974))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self196857%_
                   __tmp206973
                   '1
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self196857%_ '1 '2 '#f '#f))
                (let ((__tmp206975
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self196857%_
                   __tmp206975
                   '3
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self196857%_ '() '4 '#f '#f))
                '#!void)
              (let ((__tmp206976
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self196857%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self196857%_
                       '4
                       __tmp206976))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#meta-state::t ':init! gxc#meta-state:::init! '#f))
    (define gxc#meta-state-block::t
      (let ((__tmp206978 (list)) (__tmp206977 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state-block::t
         'meta-state-block
         __tmp206978
         '(ctx phi n code)
         __tmp206977
         '#f)))
    (define gxc#meta-state-block?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#meta-state-block::t)))
    (define gxc#make-meta-state-block
      (lambda _%$args196728%_
        (apply make-instance gxc#meta-state-block::t _%$args196728%_)))
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
      (lambda (_%state196688%_ _%phi196689%_)
        (let* ((_%state196690196698%_ _%state196688%_)
               (_%E196692196701%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%state196690196698%_
                           '((meta-state src n open))))
                  '#!void))
               (_%K196693196710%_
                (lambda (_%open196704%_ _%n196705%_ _%src196706%_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _%open196704%_ _%phi196689%_))
                      '#f
                      (let ((_%block-ref196708%_
                             (let ((__tmp206979 (number->string _%n196705%_)))
                               (declare (not safe))
                               (##string-append
                                _%src196706%_
                                '"~"
                                __tmp206979))))
                        (##structure-set!
                         _%state196688%_
                         (let () (declare (not safe)) (##fx+ _%n196705%_ '1))
                         '2
                         gxc#meta-state::t
                         '#f)
                        (let ((__tmp206980
                               (let ((__tmp206981
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context))))
                                 (declare (not safe))
                                 (##structure
                                  gxc#meta-state-block::t
                                  __tmp206981
                                  _%phi196689%_
                                  _%n196705%_
                                  '()))))
                          (declare (not safe))
                          (hash-put! _%open196704%_ _%phi196689%_ __tmp206980))
                        _%block-ref196708%_)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _%state196690196698%_
                 'gxc#meta-state::t))
              (let* ((_%e196694196713%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state196690196698%_
                         '1
                         '#f
                         '#f)))
                     (_%src196716%_ _%e196694196713%_)
                     (_%e196695196718%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state196690196698%_
                         '2
                         '#f
                         '#f)))
                     (_%n196721%_ _%e196695196718%_)
                     (_%e196696196723%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state196690196698%_
                         '3
                         '#f
                         '#f)))
                     (_%open196726%_ _%e196696196723%_))
                (_%K196693196710%_ _%open196726%_ _%n196721%_ _%src196716%_))
              (_%E196692196701%_)))))
    (define gxc#meta-state-add-phi!
      (lambda (_%state196682%_ _%phi196683%_ _%stx196684%_)
        (let ((_%block196686%_
               (let ((__tmp206982
                      (##structure-ref
                       _%state196682%_
                       '3
                       gxc#meta-state::t
                       '#f)))
                 (declare (not safe))
                 (hash-get __tmp206982 _%phi196683%_))))
          (##structure-set!
           _%block196686%_
           (cons _%stx196684%_
                 (##structure-ref
                  _%block196686%_
                  '4
                  gxc#meta-state-block::t
                  '#f))
           '4
           gxc#meta-state-block::t
           '#f))))
    (define gxc#meta-state-end-phi!
      (lambda (_%state196676%_)
        (##structure-set!
         _%state196676%_
         (let ((__tmp206985
                (lambda (_%_196678%_ _%block196679%_ _%r196680%_)
                  (cons _%block196679%_ _%r196680%_)))
               (__tmp206984
                (##structure-ref _%state196676%_ '4 gxc#meta-state::t '#f))
               (__tmp206983
                (##structure-ref _%state196676%_ '3 gxc#meta-state::t '#f)))
           (declare (not safe))
           (hash-fold __tmp206985 __tmp206984 __tmp206983))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _%state196676%_
         (let () (declare (not safe)) (make-hash-table-eq))
         '3
         gxc#meta-state::t
         '#f)))
    (define gxc#meta-state-end!
      (lambda (_%state196629%_)
        (gxc#meta-state-end-phi! _%state196629%_)
        (let ((__tmp206987
               (lambda (_%block196631%_ _%r196632%_)
                 (let* ((_%block196633196642%_ _%block196631%_)
                        (_%E196635196645%_
                         (lambda ()
                           (let ()
                             (declare (not safe))
                             (error '"No clause matching"
                                    _%block196633196642%_
                                    '((meta-state-block ctx phi n code))))
                           '#!void))
                        (_%K196636196653%_
                         (lambda (_%code196648%_
                                  _%n196649%_
                                  _%phi196650%_
                                  _%ctx196651%_)
                           (if (null? _%code196648%_)
                               _%r196632%_
                               (cons (cons _%ctx196651%_
                                           (cons _%phi196650%_
                                                 (cons _%n196649%_
                                                       (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (reverse _%code196648%_))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%r196632%_)))))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%block196633196642%_
                          'gxc#meta-state-block::t))
                       (let* ((_%e196637196656%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block196633196642%_
                                  '1
                                  '#f
                                  '#f)))
                              (_%ctx196659%_ _%e196637196656%_)
                              (_%e196638196661%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block196633196642%_
                                  '2
                                  '#f
                                  '#f)))
                              (_%phi196664%_ _%e196638196661%_)
                              (_%e196639196666%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block196633196642%_
                                  '3
                                  '#f
                                  '#f)))
                              (_%n196669%_ _%e196639196666%_)
                              (_%e196640196671%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block196633196642%_
                                  '4
                                  '#f
                                  '#f)))
                              (_%code196674%_ _%e196640196671%_))
                         (_%K196636196653%_
                          _%code196674%_
                          _%n196669%_
                          _%phi196664%_
                          _%ctx196659%_))
                       (_%E196635196645%_)))))
              (__tmp206986
               (##structure-ref _%state196629%_ '4 gxc#meta-state::t '#f)))
          (declare (not safe))
          (foldl__0 __tmp206987 '() __tmp206986))))
    (define gxc#collect-expression-refs
      (lambda (_%stx196625%_)
        (let ((_%ht196627%_
               (let () (declare (not safe)) (make-hash-table-eq))))
          (gxc#apply-collect-expression-refs__% '#f _%ht196627%_ _%stx196625%_)
          _%ht196627%_)))
    (define gxc#collect-refs-ref%
      (lambda (_%self196568%_ _%stx196569%_)
        (let* ((_%g196571196584%_
                (lambda (_%g196572196581%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196572196581%_))))
               (_%g196570196622%_
                (lambda (_%g196572196587%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196572196587%_))
                      (let ((_%e196574196589%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g196572196587%_))))
                        (let ((_%hd196575196592%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196574196589%_)))
                              (_%tl196576196594%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196574196589%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196576196594%_))
                              (let ((_%e196577196597%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl196576196594%_))))
                                (let ((_%hd196578196600%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196577196597%_)))
                                      (_%tl196579196602%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196577196597%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl196579196602%_))
                                      ((lambda (_%g196573196605%_)
                                         (let* ((_%bind196617%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#resolve-identifier__0
                                                    _%g196573196605%_)))
                                                (_%eid196619%_
                                                 (if _%bind196617%_
                                                     (##structure-ref
                                                      _%bind196617%_
                                                      '1
                                                      gx#binding::t
                                                      '#f)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%g196573196605%_))))
                                                (__tmp206988
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self196568%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-put!
                                            __tmp206988
                                            _%eid196619%_
                                            _%eid196619%_)))
                                       _%hd196578196600%_)
                                      (_%g196571196584%_ _%g196572196587%_))))
                              (_%g196571196584%_ _%g196572196587%_))))
                      (_%g196571196584%_ _%g196572196587%_)))))
          (_%g196570196622%_ _%stx196569%_))))
    (define gxc#collect-refs-setq%
      (lambda (_%self196495%_ _%stx196496%_)
        (let* ((_%g196498196515%_
                (lambda (_%g196499196512%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196499196512%_))))
               (_%g196497196565%_
                (lambda (_%g196499196518%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196499196518%_))
                      (let ((_%e196502196520%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g196499196518%_))))
                        (let ((_%hd196503196523%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196502196520%_)))
                              (_%tl196504196525%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196502196520%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196504196525%_))
                              (let ((_%e196505196528%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl196504196525%_))))
                                (let ((_%hd196506196531%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196505196528%_)))
                                      (_%tl196507196533%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196505196528%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196507196533%_))
                                      (let ((_%e196508196536%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl196507196533%_))))
                                        (let ((_%hd196509196539%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196508196536%_)))
                                              (_%tl196510196541%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196508196536%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl196510196541%_))
                                              ((lambda (_%g196500196544%_
                                                        _%g196501196545%_)
                                                 (let* ((_%bind196560%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#resolve-identifier__0
                                                            _%g196501196545%_)))
                                                        (_%eid196562%_
                                                         (if _%bind196560%_
                                                             (##structure-ref
                                                              _%bind196560%_
                                                              '1
                                                              gx#binding::t
                                                              '#f)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%g196501196545%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp206989
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self196495%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp206989
                                                      _%eid196562%_
                                                      _%eid196562%_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self196495%_
                                                      _%g196500196544%_))))
                                               _%hd196509196539%_
                                               _%hd196506196531%_)
                                              (_%g196498196515%_
                                               _%g196499196518%_))))
                                      (_%g196498196515%_ _%g196499196518%_))))
                              (_%g196498196515%_ _%g196499196518%_))))
                      (_%g196498196515%_ _%g196499196518%_)))))
          (_%g196497196565%_ _%stx196496%_))))
    (define gxc#find-runtime-begin%
      (lambda (_%self196452%_ _%stx196453%_)
        (let* ((_%g196455196465%_
                (lambda (_%g196456196462%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196456196462%_))))
               (_%g196454196492%_
                (lambda (_%g196456196468%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196456196468%_))
                      (let ((_%e196458196470%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g196456196468%_))))
                        (let ((_%hd196459196473%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196458196470%_)))
                              (_%tl196460196475%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196458196470%_))))
                          ((lambda (_%g196457196478%_)
                             (let ((__tmp206990
                                    (lambda (_%g196487196489%_)
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self196452%_
                                         _%g196487196489%_)))))
                               (declare (not safe))
                               (ormap__0 __tmp206990 _%g196457196478%_)))
                           _%tl196460196475%_)))
                      (_%g196455196465%_ _%g196456196468%_)))))
          (_%g196454196492%_ _%stx196453%_))))
    (define gxc#count-values-single%
      (lambda (_%self196449%_ _%stx196450%_) '1))
    (define gxc#count-values-call%
      (lambda (_%self196317%_ _%stx196318%_)
        (let* ((_%__stx206732206733%_ _%stx196318%_)
               (_%g196321196350%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx206732206733%_)))))
          (let ((_%__kont206734206735%_
                 (lambda (_%g196323196416%_ _%g196324196417%_)
                   (length (let ((__tmp206991
                                  (lambda (_%g196438196441%_ _%g196439196443%_)
                                    (cons _%g196438196441%_
                                          _%g196439196443%_))))
                             (declare (not safe))
                             (foldr__0 __tmp206991 '() _%g196323196416%_)))))
                (_%__kont206738206739%_ (lambda () '#f)))
            (let ((_%__match206777206778%_
                   (lambda (_%e196325196362%_
                            _%hd196326196365%_
                            _%tl196327196367%_
                            _%e196328196370%_
                            _%hd196329196373%_
                            _%tl196330196375%_
                            _%e196331196378%_
                            _%hd196332196381%_
                            _%tl196333196383%_
                            _%e196334196386%_
                            _%hd196335196389%_
                            _%tl196336196391%_
                            _%__splice206736206737%_
                            _%target196337196394%_
                            _%tl196339196396%_)
                     (letrec ((_%loop196340196399%_
                               (lambda (_%hd196338196402%_
                                        _%rand196344196404%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd196338196402%_))
                                     (let ((_%e196341196406%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd196338196402%_))))
                                       (let ((_%lp-tl196343196411%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e196341196406%_)))
                                             (_%lp-hd196342196409%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e196341196406%_))))
                                         (_%loop196340196399%_
                                          _%lp-tl196343196411%_
                                          (cons _%lp-hd196342196409%_
                                                _%rand196344196404%_))))
                                     (let ((_%rand196345196414%_
                                            (reverse _%rand196344196404%_)))
                                       (let ((_%g196323196416%_
                                              _%rand196345196414%_)
                                             (_%g196324196417%_
                                              _%hd196335196389%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%g196324196417%_
                                                'values))
                                             (_%__kont206734206735%_
                                              _%g196323196416%_
                                              _%g196324196417%_)
                                             (_%__kont206738206739%_))))))))
                       (_%loop196340196399%_ _%target196337196394%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx206732206733%_))
                  (let ((_%e196325196362%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx206732206733%_))))
                    (let ((_%tl196327196367%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e196325196362%_)))
                          (_%hd196326196365%_
                           (let ()
                             (declare (not safe))
                             (##car _%e196325196362%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl196327196367%_))
                          (let ((_%e196328196370%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl196327196367%_))))
                            (let ((_%tl196330196375%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e196328196370%_)))
                                  (_%hd196329196373%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e196328196370%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd196329196373%_))
                                  (let ((_%e196331196378%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd196329196373%_))))
                                    (let ((_%tl196333196383%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e196331196378%_)))
                                          (_%hd196332196381%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e196331196378%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd196332196381%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd196332196381%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl196333196383%_))
                                                  (let ((_%e196334196386%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl196333196383%_))))
                                                    (let ((_%tl196336196391%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e196334196386%_)))
                                                          (_%hd196335196389%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e196334196386%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl196336196391%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl196330196375%_))
                      (let ((_%__splice206736206737%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl196330196375%_
                                '0))))
                        (let ((_%tl196339196396%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice206736206737%_ '1)))
                              (_%target196337196394%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice206736206737%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl196339196396%_))
                              (_%__match206777206778%_
                               _%e196325196362%_
                               _%hd196326196365%_
                               _%tl196327196367%_
                               _%e196328196370%_
                               _%hd196329196373%_
                               _%tl196330196375%_
                               _%e196331196378%_
                               _%hd196332196381%_
                               _%tl196333196383%_
                               _%e196334196386%_
                               _%hd196335196389%_
                               _%tl196336196391%_
                               _%__splice206736206737%_
                               _%target196337196394%_
                               _%tl196339196396%_)
                              (_%__kont206738206739%_))))
                      (_%__kont206738206739%_))
                  (_%__kont206738206739%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont206738206739%_))
                                              (_%__kont206738206739%_))
                                          (_%__kont206738206739%_))))
                                  (_%__kont206738206739%_))))
                          (_%__kont206738206739%_))))
                  (_%__kont206738206739%_)))))))
    (define gxc#count-values-if%
      (lambda (_%self196222%_ _%stx196223%_)
        (let* ((_%g196225196246%_
                (lambda (_%g196226196243%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g196226196243%_))))
               (_%g196224196314%_
                (lambda (_%g196226196249%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g196226196249%_))
                      (let ((_%e196230196251%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g196226196249%_))))
                        (let ((_%hd196231196254%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e196230196251%_)))
                              (_%tl196232196256%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e196230196251%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl196232196256%_))
                              (let ((_%e196233196259%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl196232196256%_))))
                                (let ((_%hd196234196262%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e196233196259%_)))
                                      (_%tl196235196264%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e196233196259%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl196235196264%_))
                                      (let ((_%e196236196267%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl196235196264%_))))
                                        (let ((_%hd196237196270%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e196236196267%_)))
                                              (_%tl196238196272%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e196236196267%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl196238196272%_))
                                              (let ((_%e196239196275%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl196238196272%_))))
                                                (let ((_%hd196240196278%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e196239196275%_)))
                                                      (_%tl196241196280%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e196239196275%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl196241196280%_))
                                                      ((lambda (_%g196227196283%_
                                                                _%g196228196284%_
                                                                _%g196229196285%_)
                                                         (let ((_%c1196302196304%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1
                           _%self196222%_
                           _%g196228196284%_))))
                   (if _%c1196302196304%_
                       (let* ((_%c1196306%_ _%c1196302196304%_)
                              (_%c2196307196309%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self196222%_
                                  _%g196227196283%_))))
                         (if _%c2196307196309%_
                             (let ((_%c2196311%_ _%c2196307196309%_))
                               (if (fx= _%c1196306%_ _%c2196311%_)
                                   _%c1196306%_
                                   '#f))
                             '#f))
                       '#f)))
               _%hd196240196278%_
               _%hd196237196270%_
               _%hd196234196262%_)
              (_%g196225196246%_ _%g196226196249%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g196225196246%_
                                               _%g196226196249%_))))
                                      (_%g196225196246%_ _%g196226196249%_))))
                              (_%g196225196246%_ _%g196226196249%_))))
                      (_%g196225196246%_ _%g196226196249%_)))))
          (_%g196224196314%_ _%stx196223%_))))))
