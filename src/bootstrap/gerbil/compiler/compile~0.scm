(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/compile::timestamp 1756715354)
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
        (letrec ((_%hash-e156389%_
                  (lambda (_%id156391%_)
                    (symbol-hash
                     (let () (declare (not safe)) (gx#stx-e _%id156391%_))))))
          (let ()
            (declare (not safe))
            (make-hash-table__%
             '#f
             absent-value
             absent-value
             gx#bound-identifier=?
             _%hash-e156389%_
             absent-value
             absent-value
             absent-value
             absent-value)))))
    (define gxc#::collect-bindings::t
      (let ((__tmp157776 (list gxc#::void::t))
            (__tmp157775 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-bindings::t
         '::collect-bindings
         __tmp157776
         '()
         __tmp157775
         '#f)))
    (define gxc#::collect-bindings?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-bindings::t)))
    (define gxc#make-::collect-bindings
      (lambda _%$args156385%_
        (apply make-instance gxc#::collect-bindings::t _%$args156385%_)))
    (define gxc#::collect-bindings-bind-methods!
      (let ((__tmp157777
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
        (__make-atomic-promise __tmp157777)))
    (define gxc#apply-collect-bindings
      (lambda (_%stx156377%_)
        (force gxc#::collect-bindings-bind-methods!)
        (let* ((_%self156380%_
                (let ((__obj157751
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-bindings::t))))
                  __obj157751))
               (__tmp157778
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self156380%_ _%stx156377%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp157778
           gxc#current-compile-method
           _%self156380%_))))
    (define gxc#::lift-modules::t
      (let ((__tmp157780 (list gxc#::void::t))
            (__tmp157779 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::lift-modules::t
         '::lift-modules
         __tmp157780
         '(modules)
         __tmp157779
         '#f)))
    (define gxc#::lift-modules?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::lift-modules::t)))
    (define gxc#make-::lift-modules
      (lambda _%$args156374%_
        (apply make-instance gxc#::lift-modules::t _%$args156374%_)))
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
      (let ((__tmp157781
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
        (__make-atomic-promise __tmp157781)))
    (define gxc#apply-lift-modules__%
      (lambda (_%@@keywords156348%_ _%modules156345156349%_ _%stx156351%_)
        (let ((_%modules156354%_
               (if (eq? _%modules156345156349%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'modules:))
                   _%modules156345156349%_)))
          (force gxc#::lift-modules-bind-methods!)
          (let* ((_%self156356%_
                  (let ((__obj157753
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::lift-modules::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj157753
                       _%modules156354%_
                       '1
                       '#f
                       '#f))
                    __obj157753))
                 (__tmp157782
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self156356%_ _%stx156351%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp157782
             gxc#current-compile-method
             _%self156356%_)))))
    (define gxc#apply-lift-modules__@
      (lambda (_%@@keywords156363%_ . _%args156364%_)
        (apply gxc#apply-lift-modules__%
               _%@@keywords156363%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords156363%_
                  'modules:
                  absent-value))
               _%args156364%_)))
    (define gxc#apply-lift-modules
      (lambda _%args156346156370%_
        (apply keyword-dispatch
               '#(modules:)
               gxc#apply-lift-modules__@
               _%args156346156370%_)))
    (define gxc#::find-runtime-code::t
      (let ((__tmp157784 (list)) (__tmp157783 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-runtime-code::t
         '::find-runtime-code
         __tmp157784
         '()
         __tmp157783
         '#f)))
    (define gxc#::find-runtime-code?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-runtime-code::t)))
    (define gxc#make-::find-runtime-code
      (lambda _%$args156341%_
        (apply make-instance gxc#::find-runtime-code::t _%$args156341%_)))
    (define gxc#::find-runtime-code-bind-methods!
      (let ((__tmp157785
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
        (__make-atomic-promise __tmp157785)))
    (define gxc#apply-find-runtime-code
      (lambda (_%stx156333%_)
        (force gxc#::find-runtime-code-bind-methods!)
        (let* ((_%self156336%_
                (let ((__obj157755
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-runtime-code::t))))
                  __obj157755))
               (__tmp157786
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self156336%_ _%stx156333%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp157786
           gxc#current-compile-method
           _%self156336%_))))
    (define gxc#::find-lambda-expression::t
      (let ((__tmp157788 (list gxc#::false::t))
            (__tmp157787 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-lambda-expression::t
         '::find-lambda-expression
         __tmp157788
         '()
         __tmp157787
         '#f)))
    (define gxc#::find-lambda-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-lambda-expression::t)))
    (define gxc#make-::find-lambda-expression
      (lambda _%$args156330%_
        (apply make-instance gxc#::find-lambda-expression::t _%$args156330%_)))
    (define gxc#::find-lambda-expression-bind-methods!
      (let ((__tmp157789
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
        (__make-atomic-promise __tmp157789)))
    (define gxc#apply-find-lambda-expression
      (lambda (_%stx156322%_)
        (force gxc#::find-lambda-expression-bind-methods!)
        (let* ((_%self156325%_
                (let ((__obj157757
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-lambda-expression::t))))
                  __obj157757))
               (__tmp157790
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self156325%_ _%stx156322%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp157790
           gxc#current-compile-method
           _%self156325%_))))
    (define gxc#::count-values::t
      (let ((__tmp157792 (list gxc#::false-expression::t))
            (__tmp157791 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::count-values::t
         '::count-values
         __tmp157792
         '()
         __tmp157791
         '#f)))
    (define gxc#::count-values?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::count-values::t)))
    (define gxc#make-::count-values
      (lambda _%$args156319%_
        (apply make-instance gxc#::count-values::t _%$args156319%_)))
    (define gxc#::count-values-bind-methods!
      (let ((__tmp157793
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
        (__make-atomic-promise __tmp157793)))
    (define gxc#apply-count-values
      (lambda (_%stx156311%_)
        (force gxc#::count-values-bind-methods!)
        (let* ((_%self156314%_
                (let ((__obj157759
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::count-values::t))))
                  __obj157759))
               (__tmp157794
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self156314%_ _%stx156311%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp157794
           gxc#current-compile-method
           _%self156314%_))))
    (define gxc#::generate-runtime-empty::t
      (let ((__tmp157795 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-empty::t
         '::generate-runtime-empty
         __tmp157795
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime-empty?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-empty::t)))
    (define gxc#make-::generate-runtime-empty
      (lambda _%$args156308%_
        (apply make-instance gxc#::generate-runtime-empty::t _%$args156308%_)))
    (define gxc#::generate-runtime-empty-bind-methods!
      (let ((__tmp157796
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
        (__make-atomic-promise __tmp157796)))
    (define gxc#::generate-loader::t
      (let ((__tmp157798 (list gxc#::generate-runtime-empty::t))
            (__tmp157797 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-loader::t
         '::generate-loader
         __tmp157798
         '()
         __tmp157797
         '#f)))
    (define gxc#::generate-loader?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-loader::t)))
    (define gxc#make-::generate-loader
      (lambda _%$args156304%_
        (apply make-instance gxc#::generate-loader::t _%$args156304%_)))
    (define gxc#::generate-loader-bind-methods!
      (let ((__tmp157799
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
        (__make-atomic-promise __tmp157799)))
    (define gxc#apply-generate-loader
      (lambda (_%stx156296%_)
        (force gxc#::generate-loader-bind-methods!)
        (let* ((_%self156299%_
                (let ((__obj157762
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-loader::t))))
                  __obj157762))
               (__tmp157800
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self156299%_ _%stx156296%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp157800
           gxc#current-compile-method
           _%self156299%_))))
    (define gxc#::generate-runtime::t
      (let ((__tmp157801 (list gxc#::generate-runtime-empty::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime::t
         '::generate-runtime
         __tmp157801
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime::t)))
    (define gxc#make-::generate-runtime
      (lambda _%$args156293%_
        (apply make-instance gxc#::generate-runtime::t _%$args156293%_)))
    (define gxc#::generate-runtime-bind-methods!
      (let ((__tmp157802
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
        (__make-atomic-promise __tmp157802)))
    (define gxc#apply-generate-runtime
      (lambda (_%stx156285%_)
        (force gxc#::generate-runtime-bind-methods!)
        (let* ((_%self156288%_
                (let ((__obj157764
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime::t))))
                  __obj157764))
               (__tmp157803
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self156288%_ _%stx156285%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp157803
           gxc#current-compile-method
           _%self156288%_))))
    (define gxc#::generate-runtime-phi::t
      (let ((__tmp157805 (list gxc#::generate-runtime::t))
            (__tmp157804 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-phi::t
         '::generate-runtime-phi
         __tmp157805
         '()
         __tmp157804
         '#f)))
    (define gxc#::generate-runtime-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-phi::t)))
    (define gxc#make-::generate-runtime-phi
      (lambda _%$args156282%_
        (apply make-instance gxc#::generate-runtime-phi::t _%$args156282%_)))
    (define gxc#::generate-runtime-phi-bind-methods!
      (let ((__tmp157806
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
        (__make-atomic-promise __tmp157806)))
    (define gxc#apply-generate-runtime-phi
      (lambda (_%stx156274%_)
        (force gxc#::generate-runtime-phi-bind-methods!)
        (let* ((_%self156277%_
                (let ((__obj157766
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime-phi::t))))
                  __obj157766))
               (__tmp157807
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self156277%_ _%stx156274%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp157807
           gxc#current-compile-method
           _%self156277%_))))
    (define gxc#::collect-expression-refs::t
      (let ((__tmp157808 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-expression-refs::t
         '::collect-expression-refs
         __tmp157808
         '(table)
         '()
         '#f)))
    (define gxc#::collect-expression-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-expression-refs::t)))
    (define gxc#make-::collect-expression-refs
      (lambda _%$args156271%_
        (apply make-instance
               gxc#::collect-expression-refs::t
               _%$args156271%_)))
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
      (let ((__tmp157809
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
        (__make-atomic-promise __tmp157809)))
    (define gxc#apply-collect-expression-refs__%
      (lambda (_%@@keywords156245%_ _%table156242156246%_ _%stx156248%_)
        (let ((_%table156251%_
               (if (eq? _%table156242156246%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table156242156246%_)))
          (force gxc#::collect-expression-refs-bind-methods!)
          (let* ((_%self156253%_
                  (let ((__obj157768
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#::collect-expression-refs::t
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj157768
                       _%table156251%_
                       '1
                       '#f
                       '#f))
                    __obj157768))
                 (__tmp157810
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self156253%_ _%stx156248%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp157810
             gxc#current-compile-method
             _%self156253%_)))))
    (define gxc#apply-collect-expression-refs__@
      (lambda (_%@@keywords156260%_ . _%args156261%_)
        (apply gxc#apply-collect-expression-refs__%
               _%@@keywords156260%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords156260%_
                  'table:
                  absent-value))
               _%args156261%_)))
    (define gxc#apply-collect-expression-refs
      (lambda _%args156243156267%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-expression-refs__@
               _%args156243156267%_)))
    (define gxc#::generate-meta::t
      (let ((__tmp157812 (list gxc#::void-expression::t))
            (__tmp157811 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta::t
         '::generate-meta
         __tmp157812
         '(state)
         __tmp157811
         '#f)))
    (define gxc#::generate-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta::t)))
    (define gxc#make-::generate-meta
      (lambda _%$args156238%_
        (apply make-instance gxc#::generate-meta::t _%$args156238%_)))
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
      (let ((__tmp157813
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
        (__make-atomic-promise __tmp157813)))
    (define gxc#apply-generate-meta__%
      (lambda (_%@@keywords156212%_ _%state156209156213%_ _%stx156215%_)
        (let ((_%state156218%_
               (if (eq? _%state156209156213%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state156209156213%_)))
          (force gxc#::generate-meta-bind-methods!)
          (let* ((_%self156220%_
                  (let ((__obj157770
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj157770
                       _%state156218%_
                       '1
                       '#f
                       '#f))
                    __obj157770))
                 (__tmp157814
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self156220%_ _%stx156215%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp157814
             gxc#current-compile-method
             _%self156220%_)))))
    (define gxc#apply-generate-meta__@
      (lambda (_%@@keywords156227%_ . _%args156228%_)
        (apply gxc#apply-generate-meta__%
               _%@@keywords156227%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords156227%_
                  'state:
                  absent-value))
               _%args156228%_)))
    (define gxc#apply-generate-meta
      (lambda _%args156210156234%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta__@
               _%args156210156234%_)))
    (define gxc#::generate-meta-phi::t
      (let ((__tmp157816 (list)) (__tmp157815 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta-phi::t
         '::generate-meta-phi
         __tmp157816
         '(state)
         __tmp157815
         '#f)))
    (define gxc#::generate-meta-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta-phi::t)))
    (define gxc#make-::generate-meta-phi
      (lambda _%$args156205%_
        (apply make-instance gxc#::generate-meta-phi::t _%$args156205%_)))
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
      (let ((__tmp157817
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
        (__make-atomic-promise __tmp157817)))
    (define gxc#apply-generate-meta-phi__%
      (lambda (_%@@keywords156179%_ _%state156176156180%_ _%stx156182%_)
        (let ((_%state156185%_
               (if (eq? _%state156176156180%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state156176156180%_)))
          (force gxc#::generate-meta-phi-bind-methods!)
          (let* ((_%self156187%_
                  (let ((__obj157772
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta-phi::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj157772
                       _%state156185%_
                       '1
                       '#f
                       '#f))
                    __obj157772))
                 (__tmp157818
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self156187%_ _%stx156182%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp157818
             gxc#current-compile-method
             _%self156187%_)))))
    (define gxc#apply-generate-meta-phi__@
      (lambda (_%@@keywords156194%_ . _%args156195%_)
        (apply gxc#apply-generate-meta-phi__%
               _%@@keywords156194%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords156194%_
                  'state:
                  absent-value))
               _%args156195%_)))
    (define gxc#apply-generate-meta-phi
      (lambda _%args156177156201%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta-phi__@
               _%args156177156201%_)))
    (define gxc#collect-bindings-define-values%
      (lambda (_%self156105%_ _%stx156106%_)
        (let* ((_%g156108156125%_
                (lambda (_%g156109156122%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g156109156122%_))))
               (_%g156107156172%_
                (lambda (_%g156109156128%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g156109156128%_))
                      (let ((_%e156112156130%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g156109156128%_))))
                        (let ((_%hd156113156133%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e156112156130%_)))
                              (_%tl156114156135%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e156112156130%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl156114156135%_))
                              (let ((_%e156115156138%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl156114156135%_))))
                                (let ((_%hd156116156141%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e156115156138%_)))
                                      (_%tl156117156143%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e156115156138%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl156117156143%_))
                                      (let ((_%e156118156146%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl156117156143%_))))
                                        (let ((_%hd156119156149%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e156118156146%_)))
                                              (_%tl156120156151%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e156118156146%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl156120156151%_))
                                              ((lambda (_%L156154%_
                                                        _%L156155%_)
                                                 (let ((__tmp157819
                                                        (lambda (_%bind156170%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#identifier? _%bind156170%_))
                      (gxc#add-module-binding! _%bind156170%_ '#f)
                      '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#stx-for-each1
                                                    __tmp157819
                                                    _%L156155%_)))
                                               _%hd156119156149%_
                                               _%hd156116156141%_)
                                              (_%g156108156125%_
                                               _%g156109156128%_))))
                                      (_%g156108156125%_ _%g156109156128%_))))
                              (_%g156108156125%_ _%g156109156128%_))))
                      (_%g156108156125%_ _%g156109156128%_)))))
          (_%g156107156172%_ _%stx156106%_))))
    (define gxc#collect-bindings-define-syntax%
      (lambda (_%self156037%_ _%stx156038%_)
        (let* ((_%g156040156057%_
                (lambda (_%g156041156054%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g156041156054%_))))
               (_%g156039156102%_
                (lambda (_%g156041156060%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g156041156060%_))
                      (let ((_%e156044156062%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g156041156060%_))))
                        (let ((_%hd156045156065%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e156044156062%_)))
                              (_%tl156046156067%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e156044156062%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl156046156067%_))
                              (let ((_%e156047156070%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl156046156067%_))))
                                (let ((_%hd156048156073%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e156047156070%_)))
                                      (_%tl156049156075%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e156047156070%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl156049156075%_))
                                      (let ((_%e156050156078%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl156049156075%_))))
                                        (let ((_%hd156051156081%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e156050156078%_)))
                                              (_%tl156052156083%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e156050156078%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl156052156083%_))
                                              ((lambda (_%L156086%_
                                                        _%L156087%_)
                                                 (gxc#add-module-binding!
                                                  _%L156087%_
                                                  '#t))
                                               _%hd156051156081%_
                                               _%hd156048156073%_)
                                              (_%g156040156057%_
                                               _%g156041156060%_))))
                                      (_%g156040156057%_ _%g156041156060%_))))
                              (_%g156040156057%_ _%g156041156060%_))))
                      (_%g156040156057%_ _%g156041156060%_)))))
          (_%g156039156102%_ _%stx156038%_))))
    (define gxc#lift-modules-module%
      (lambda (_%self155979%_ _%stx155980%_)
        (let* ((_%g155982155996%_
                (lambda (_%g155983155993%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g155983155993%_))))
               (_%g155981156034%_
                (lambda (_%g155983155999%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g155983155999%_))
                      (let ((_%e155986156001%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g155983155999%_))))
                        (let ((_%hd155987156004%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e155986156001%_)))
                              (_%tl155988156006%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e155986156001%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl155988156006%_))
                              (let ((_%e155989156009%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl155988156006%_))))
                                (let ((_%hd155990156012%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e155989156009%_)))
                                      (_%tl155991156014%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e155989156009%_))))
                                  ((lambda (_%L156017%_ _%L156018%_)
                                     (let ((_%ctx156031%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-local-e__0
                                               _%L156018%_))))
                                       (set-box!
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self155979%_
                                           'modules))
                                        (cons _%ctx156031%_
                                              (unbox (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self155979%_
                                                        'modules)))))
                                       (let ((__tmp157820
                                              (lambda ()
                                                (let ((__tmp157821
                                                       (##structure-ref
                                                        _%ctx156031%_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self155979%_
                                                   __tmp157821)))))
                                         (declare (not safe))
                                         (call-with-parameters__1
                                          __tmp157820
                                          gx#current-expander-context
                                          _%ctx156031%_))))
                                   _%tl155991156014%_
                                   _%hd155990156012%_)))
                              (_%g155982155996%_ _%g155983155999%_))))
                      (_%g155982155996%_ _%g155983155999%_)))))
          (_%g155981156034%_ _%stx155980%_))))
    (define gxc#current-compile-decls-unsafe?
      (lambda ()
        (let ((_%decls155932155934%_
               (let () (declare (not safe)) (gxc#current-compile-decls))))
          (if _%decls155932155934%_
              (let ((_%decls155937%_ _%decls155932155934%_))
                (let _%lp155939%_ ((_%rest155941%_ _%decls155937%_))
                  (let* ((_%rest155942155950%_ _%rest155941%_)
                         (_%else155944155958%_ (lambda () '#f))
                         (_%K155946155967%_
                          (lambda (_%decls155961%_ _%decl155962%_)
                            (if (equal? _%decl155962%_ '(not safe))
                                '#t
                                (if (equal? _%decl155962%_ '(safe))
                                    '#f
                                    (_%lp155939%_ _%decls155961%_))))))
                    (if (pair? _%rest155942155950%_)
                        (let ((_%hd155947155970%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest155942155950%_)))
                              (_%tl155948155972%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest155942155950%_))))
                          (let* ((_%decl155975%_ _%hd155947155970%_)
                                 (_%decls155977%_ _%tl155948155972%_))
                            (_%K155946155967%_
                             _%decls155977%_
                             _%decl155975%_)))
                        (_%else155944155958%_)))))
              '#f))))
    (define gxc#add-module-binding!
      (lambda (_%id155926%_ _%syntax?155927%_)
        (let ((_%eid155929%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id155926%_))
                '1
                gx#binding::t
                '#f))
              (_%ht155930%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-symbol-table))
                '2
                gxc#symbol-table::t
                '#f)))
          (if (let () (declare (not safe)) (interned-symbol? _%eid155929%_))
              '#!void
              (let ((__tmp157822
                     (let ((__tmp157823
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__0
                               _%eid155929%_))))
                       (declare (not safe))
                       (gx#make-binding-id__1 __tmp157823 _%syntax?155927%_))))
                (declare (not safe))
                (hash-put! _%ht155930%_ _%eid155929%_ __tmp157822))))))
    (define gxc#generate-runtime-identifier
      (lambda (_%id155924%_)
        (gxc#generate-runtime-identifier-key
         (let () (declare (not safe)) (gx#core-identifier-key _%id155924%_)))))
    (define gxc#generate-runtime-identifier-key
      (lambda (_%key155879%_)
        (if (let () (declare (not safe)) (interned-symbol? _%key155879%_))
            _%key155879%_
            (if (uninterned-symbol? _%key155879%_)
                (let ()
                  (declare (not safe))
                  (gxc#generate-runtime-gensym-reference__0 _%key155879%_))
                (let* ((_%key155883155890%_ _%key155879%_)
                       (_%E155885155894%_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (error '"No clause matching"
                                   _%key155883155890%_
                                   '([eid . mark])))
                          '#!void))
                       (_%K155886155912%_
                        (lambda (_%mark155897%_ _%eid155898%_)
                          (let ((_%$e155900%_
                                 (##structure-ref
                                  _%mark155897%_
                                  '1
                                  gx#expander-mark::t
                                  '#f)))
                            (if _%$e155900%_
                                ((lambda (_%ht155903%_)
                                   (let ((_%$e155905%_
                                          (let ()
                                            (declare (not safe))
                                            (hash-get
                                             _%ht155903%_
                                             _%eid155898%_))))
                                     (if _%$e155905%_
                                         ((lambda (_%id155908%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (interned-symbol?
                                                   _%id155908%_))
                                                _%id155908%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _%id155908%_))))
                                          _%$e155905%_)
                                         (gxc#generate-runtime-identifier-key
                                          _%eid155898%_))))
                                 _%$e155900%_)
                                (gxc#generate-runtime-identifier-key
                                 _%eid155898%_))))))
                  (if (pair? _%key155883155890%_)
                      (let ((_%hd155887155915%_
                             (let ()
                               (declare (not safe))
                               (##car _%key155883155890%_)))
                            (_%tl155888155917%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%key155883155890%_))))
                        (let* ((_%eid155920%_ _%hd155887155915%_)
                               (_%mark155922%_ _%tl155888155917%_))
                          (_%K155886155912%_ _%mark155922%_ _%eid155920%_)))
                      (_%E155885155894%_)))))))
    (define gxc#generate-runtime-empty
      (lambda (_%self155876%_ _%stx155877%_) '(begin)))
    (define gxc#generate-runtime-begin%
      (lambda (_%self155723%_ _%stx155724%_)
        (letrec ((_%simplify155726%_
                  (lambda (_%body155774%_)
                    (let _%lp155776%_ ((_%rest155778%_ _%body155774%_)
                                       (_%r155779%_ '()))
                      (let* ((_%rest155780155788%_ _%rest155778%_)
                             (_%else155782155796%_
                              (lambda () (reverse _%r155779%_)))
                             (_%K155784155864%_
                              (lambda (_%rest155799%_ _%hd155800%_)
                                (let* ((_%hd155801155817%_ _%hd155800%_)
                                       (_%else155805155825%_
                                        (lambda ()
                                          (_%lp155776%_
                                           _%rest155799%_
                                           (cons _%hd155800%_ _%r155779%_)))))
                                  (let ((_%K155813155854%_
                                         (lambda (_%exprs155852%_)
                                           (_%lp155776%_
                                            (let ()
                                              (declare (not safe))
                                              (__foldr1
                                               cons
                                               _%rest155799%_
                                               _%exprs155852%_))
                                            _%r155779%_)))
                                        (_%K155808155838%_
                                         (lambda ()
                                           (if (null? _%rest155799%_)
                                               (_%lp155776%_
                                                _%rest155799%_
                                                (cons _%hd155800%_
                                                      _%r155779%_))
                                               (_%lp155776%_
                                                _%rest155799%_
                                                _%r155779%_))))
                                        (_%K155807155830%_
                                         (lambda ()
                                           (if (null? _%rest155799%_)
                                               (_%lp155776%_
                                                _%rest155799%_
                                                (cons _%hd155800%_
                                                      _%r155779%_))
                                               (_%lp155776%_
                                                _%rest155799%_
                                                _%r155779%_)))))
                                    (let ((_%try-match155804155833%_
                                           (lambda ()
                                             (if (symbol? _%hd155801155817%_)
                                                 (_%K155807155830%_)
                                                 (_%else155805155825%_)))))
                                      (if (pair? _%hd155801155817%_)
                                          (let ((_%tl155815155859%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd155801155817%_)))
                                                (_%hd155814155857%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd155801155817%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd155814155857%_
                                                         'begin))
                                                (let ((_%exprs155862%_
                                                       _%tl155815155859%_))
                                                  (_%K155813155854%_
                                                   _%exprs155862%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd155814155857%_
                                                             'quote))
                                                    (if (pair? _%tl155815155859%_)
                                                        (let ((_%tl155812155846%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%tl155815155859%_))))
                  (if (null? _%tl155812155846%_)
                      (_%K155808155838%_)
                      (_%try-match155804155833%_)))
                (_%try-match155804155833%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%try-match155804155833%_))))
                                          (_%try-match155804155833%_))))))))
                        (if (pair? _%rest155780155788%_)
                            (let ((_%hd155785155867%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest155780155788%_)))
                                  (_%tl155786155869%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest155780155788%_))))
                              (let* ((_%hd155872%_ _%hd155785155867%_)
                                     (_%rest155874%_ _%tl155786155869%_))
                                (_%K155784155864%_
                                 _%rest155874%_
                                 _%hd155872%_)))
                            (_%else155782155796%_)))))))
          (let* ((_%g155728155738%_
                  (lambda (_%g155729155735%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g155729155735%_))))
                 (_%g155727155771%_
                  (lambda (_%g155729155741%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g155729155741%_))
                        (let ((_%e155731155743%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g155729155741%_))))
                          (let ((_%hd155732155746%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e155731155743%_)))
                                (_%tl155733155748%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e155731155743%_))))
                            ((lambda (_%L155751%_)
                               (let* ((_%body155766%_
                                       (map (lambda (_%g155761155763%_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%self155723%_
                                                 _%g155761155763%_)))
                                            _%L155751%_))
                                      (_%body155768%_
                                       (_%simplify155726%_ _%body155766%_)))
                                 (if (let ((__tmp157824
                                            (length _%body155768%_)))
                                       (declare (not safe))
                                       (##fx= __tmp157824 '1))
                                     (car _%body155768%_)
                                     (cons 'begin _%body155768%_))))
                             _%tl155733155748%_)))
                        (_%g155728155738%_ _%g155729155741%_)))))
            (_%g155727155771%_ _%stx155724%_)))))
    (define gxc#generate-runtime-begin-foreign%
      (lambda (_%self155684%_ _%stx155685%_)
        (let* ((_%g155687155697%_
                (lambda (_%g155688155694%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g155688155694%_))))
               (_%g155686155720%_
                (lambda (_%g155688155700%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g155688155700%_))
                      (let ((_%e155690155702%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g155688155700%_))))
                        (let ((_%hd155691155705%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e155690155702%_)))
                              (_%tl155692155707%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e155690155702%_))))
                          ((lambda (_%L155710%_)
                             (cons 'begin
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax->datum _%L155710%_))))
                           _%tl155692155707%_)))
                      (_%g155687155697%_ _%g155688155700%_)))))
          (_%g155686155720%_ _%stx155685%_))))
    (define gxc#generate-runtime-begin-annotation%
      (lambda (_%self155448%_ _%stx155449%_)
        (let* ((_%__stx156414156415%_ _%stx155449%_)
               (_%g155453155505%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx156414156415%_)))))
          (let ((_%__kont156416156417%_
                 (lambda (_%L155666%_ _%L155667%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self155448%_ _%L155666%_))))
                (_%__kont156418156419%_
                 (lambda (_%L155614%_ _%L155615%_ _%L155616%_)
                   (if (let ((__tmp157825
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%L155616%_))))
                         (declare (not safe))
                         (##memq __tmp157825 '(@inline)))
                       '(begin)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self155448%_ _%L155614%_)))))
                (_%__kont156422156423%_
                 (lambda (_%L155534%_ _%L155535%_)
                   (let ((_%decls155550%_ (map gx#syntax->datum _%L155535%_)))
                     (let ((__tmp157828
                            (lambda ()
                              (cons 'begin
                                    (cons (cons 'declare _%decls155550%_)
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self155448%_
                                                   _%L155534%_))
                                                '())))))
                           (__tmp157826
                            (let ((__tmp157827
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-decls))))
                              (declare (not safe))
                              (__foldr1 cons __tmp157827 _%decls155550%_))))
                       (declare (not safe))
                       (call-with-parameters__1
                        __tmp157828
                        gxc#current-compile-decls
                        __tmp157826))))))
            (let* ((_%__match156469156470%_
                    (lambda (_%e155469155558%_
                             _%hd155470155561%_
                             _%tl155471155563%_
                             _%e155472155566%_
                             _%hd155473155569%_
                             _%tl155474155571%_
                             _%e155475155574%_
                             _%hd155476155577%_
                             _%tl155477155579%_
                             _%__splice156420156421%_
                             _%target155478155582%_
                             _%tl155480155584%_)
                      (letrec ((_%loop155481155587%_
                                (lambda (_%hd155479155590%_
                                         _%param155485155592%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd155479155590%_))
                                      (let ((_%e155482155595%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd155479155590%_))))
                                        (let ((_%lp-tl155484155600%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e155482155595%_)))
                                              (_%lp-hd155483155598%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e155482155595%_))))
                                          (_%loop155481155587%_
                                           _%lp-tl155484155600%_
                                           (cons _%lp-hd155483155598%_
                                                 _%param155485155592%_))))
                                      (let ((_%param155486155603%_
                                             (reverse _%param155485155592%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl155474155571%_))
                                            (let ((_%e155487155606%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl155474155571%_))))
                                              (let ((_%tl155489155611%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e155487155606%_)))
                                                    (_%hd155488155609%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e155487155606%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl155489155611%_))
                                                    (let ((_%L155614%_
                                                           _%hd155488155609%_)
                                                          (_%L155615%_
                                                           _%param155486155603%_)
                                                          (_%L155616%_
                                                           _%hd155476155577%_))
                                                      (if (and (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier? _%L155616%_))
                       (not (let ((__tmp157829
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L155616%_))))
                              (declare (not safe))
                              (##memq __tmp157829 gxc#gambit-annotations))))
                  (_%__kont156418156419%_ _%L155614%_ _%L155615%_ _%L155616%_)
                  (_%__kont156422156423%_
                   _%hd155488155609%_
                   _%hd155473155569%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g155453155505%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g155453155505%_))))))))
                        (_%loop155481155587%_ _%target155478155582%_ '()))))
                   (_%__match156443156444%_
                    (lambda (_%e155457155642%_
                             _%hd155458155645%_
                             _%tl155459155647%_
                             _%e155460155650%_
                             _%hd155461155653%_
                             _%tl155462155655%_
                             _%e155463155658%_
                             _%hd155464155661%_
                             _%tl155465155663%_)
                      (let ((_%L155666%_ _%hd155464155661%_)
                            (_%L155667%_ _%hd155461155653%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%L155667%_))
                            (_%__kont156416156417%_ _%L155666%_ _%L155667%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd155461155653%_))
                                (let ((_%e155475155574%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd155461155653%_))))
                                  (let ((_%tl155477155579%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e155475155574%_)))
                                        (_%hd155476155577%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e155475155574%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl155477155579%_))
                                        (let ((_%__splice156420156421%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%tl155477155579%_
                                                  '0))))
                                          (let ((_%tl155480155584%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice156420156421%_
                                                    '1)))
                                                (_%target155478155582%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice156420156421%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl155480155584%_))
                                                (_%__match156469156470%_
                                                 _%e155457155642%_
                                                 _%hd155458155645%_
                                                 _%tl155459155647%_
                                                 _%e155460155650%_
                                                 _%hd155461155653%_
                                                 _%tl155462155655%_
                                                 _%e155475155574%_
                                                 _%hd155476155577%_
                                                 _%tl155477155579%_
                                                 _%__splice156420156421%_
                                                 _%target155478155582%_
                                                 _%tl155480155584%_)
                                                (_%__kont156422156423%_
                                                 _%hd155464155661%_
                                                 _%hd155461155653%_))))
                                        (_%__kont156422156423%_
                                         _%hd155464155661%_
                                         _%hd155461155653%_))))
                                (_%__kont156422156423%_
                                 _%hd155464155661%_
                                 _%hd155461155653%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx156414156415%_))
                  (let ((_%e155457155642%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx156414156415%_))))
                    (let ((_%tl155459155647%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e155457155642%_)))
                          (_%hd155458155645%_
                           (let ()
                             (declare (not safe))
                             (##car _%e155457155642%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl155459155647%_))
                          (let ((_%e155460155650%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl155459155647%_))))
                            (let ((_%tl155462155655%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e155460155650%_)))
                                  (_%hd155461155653%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e155460155650%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl155462155655%_))
                                  (let ((_%e155463155658%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl155462155655%_))))
                                    (let ((_%tl155465155663%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e155463155658%_)))
                                          (_%hd155464155661%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e155463155658%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl155465155663%_))
                                          (_%__match156443156444%_
                                           _%e155457155642%_
                                           _%hd155458155645%_
                                           _%tl155459155647%_
                                           _%e155460155650%_
                                           _%hd155461155653%_
                                           _%tl155462155655%_
                                           _%e155463155658%_
                                           _%hd155464155661%_
                                           _%tl155465155663%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd155461155653%_))
                                              (let ((_%e155475155574%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd155461155653%_))))
                                                (let ((_%tl155477155579%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e155475155574%_)))
                                                      (_%hd155476155577%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e155475155574%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl155477155579%_))
                                                      (let ((_%__splice156420156421%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl155477155579%_
                        '0))))
                (let ((_%tl155480155584%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice156420156421%_ '1)))
                      (_%target155478155582%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice156420156421%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl155480155584%_))
                      (_%__match156469156470%_
                       _%e155457155642%_
                       _%hd155458155645%_
                       _%tl155459155647%_
                       _%e155460155650%_
                       _%hd155461155653%_
                       _%tl155462155655%_
                       _%e155475155574%_
                       _%hd155476155577%_
                       _%tl155477155579%_
                       _%__splice156420156421%_
                       _%target155478155582%_
                       _%tl155480155584%_)
                      (let () (declare (not safe)) (_%g155453155505%_)))))
              (let () (declare (not safe)) (_%g155453155505%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g155453155505%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd155461155653%_))
                                      (let ((_%e155475155574%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd155461155653%_))))
                                        (let ((_%tl155477155579%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e155475155574%_)))
                                              (_%hd155476155577%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e155475155574%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl155477155579%_))
                                              (let ((_%__splice156420156421%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl155477155579%_
                                                        '0))))
                                                (let ((_%tl155480155584%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice156420156421%_
                                                          '1)))
                                                      (_%target155478155582%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice156420156421%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl155480155584%_))
                                                      (_%__match156469156470%_
                                                       _%e155457155642%_
                                                       _%hd155458155645%_
                                                       _%tl155459155647%_
                                                       _%e155460155650%_
                                                       _%hd155461155653%_
                                                       _%tl155462155655%_
                                                       _%e155475155574%_
                                                       _%hd155476155577%_
                                                       _%tl155477155579%_
                                                       _%__splice156420156421%_
                                                       _%target155478155582%_
                                                       _%tl155480155584%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g155453155505%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g155453155505%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g155453155505%_))))))
                          (let () (declare (not safe)) (_%g155453155505%_)))))
                  (let () (declare (not safe)) (_%g155453155505%_))))))))
    (define gxc#generate-runtime-declare%
      (lambda (_%self155407%_ _%stx155408%_)
        (let* ((_%g155410155420%_
                (lambda (_%g155411155417%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g155411155417%_))))
               (_%g155409155445%_
                (lambda (_%g155411155423%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g155411155423%_))
                      (let ((_%e155413155425%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g155411155423%_))))
                        (let ((_%hd155414155428%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e155413155425%_)))
                              (_%tl155415155430%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e155413155425%_))))
                          ((lambda (_%L155433%_)
                             (let ((_%decls155443%_
                                    (map gx#syntax->datum _%L155433%_)))
                               (let ((__tmp157830
                                      (let ((__tmp157831
                                             (let ()
                                               (declare (not safe))
                                               (gxc#current-compile-decls))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp157831
                                         _%decls155443%_))))
                                 (declare (not safe))
                                 (gxc#current-compile-decls __tmp157830))
                               (cons 'declare _%decls155443%_)))
                           _%tl155415155430%_)))
                      (_%g155410155420%_ _%g155411155423%_)))))
          (_%g155409155445%_ _%stx155408%_))))
    (define gxc#generate-runtime-define-values%
      (lambda (_%self155153%_ _%stx155154%_)
        (let* ((_%g155156155173%_
                (lambda (_%g155157155170%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g155157155170%_))))
               (_%g155155155404%_
                (lambda (_%g155157155176%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g155157155176%_))
                      (let ((_%e155160155178%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g155157155176%_))))
                        (let ((_%hd155161155181%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e155160155178%_)))
                              (_%tl155162155183%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e155160155178%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl155162155183%_))
                              (let ((_%e155163155186%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl155162155183%_))))
                                (let ((_%hd155164155189%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e155163155186%_)))
                                      (_%tl155165155191%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e155163155186%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl155165155191%_))
                                      (let ((_%e155166155194%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl155165155191%_))))
                                        (let ((_%hd155167155197%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e155166155194%_)))
                                              (_%tl155168155199%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e155166155194%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl155168155199%_))
                                              ((lambda (_%L155202%_
                                                        _%L155203%_)
                                                 (let* ((_%__stx156522156523%_
                                                         _%L155203%_)
                                                        (_%g155220155234%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx156522156523%_)))))
                                                   (let ((_%__kont156524156525%_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _%self155153%_
                                                               _%L155202%_))))
                                                         (_%__kont156526156527%_
                                                          (lambda (_%L155366%_)
                                                            (let ((_%eid155375%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%L155366%_))))
                      (let ((_%lambda-expr155376155378%_
                             (gxc#apply-find-lambda-expression _%L155202%_)))
                        (if _%lambda-expr155376155378%_
                            (let* ((_%lambda-expr155381%_
                                    _%lambda-expr155376155378%_)
                                   (__tmp157832
                                    (let ()
                                      (declare (not safe))
                                      (gxc#current-compile-runtime-names))))
                              (declare (not safe))
                              (hash-put!
                               __tmp157832
                               _%lambda-expr155381%_
                               _%eid155375%_))
                            '#f))
                      (cons 'define
                            (cons _%eid155375%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__1
                                           _%self155153%_
                                           _%L155202%_))
                                        '()))))))
                 (_%__kont156528156529%_
                  (lambda ()
                    (let* ((_%tmp155241%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%body155350%_
                            (let _%lp155243%_ ((_%rest155245%_ _%L155203%_)
                                               (_%k155246%_ '0)
                                               (_%r155247%_ '()))
                              (let* ((_%__stx156492156493%_ _%rest155245%_)
                                     (_%g155252155269%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx156492156493%_)))))
                                (let ((_%__kont156494156495%_
                                       (lambda (_%L155337%_)
                                         (_%lp155243%_
                                          _%L155337%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k155246%_ '1))
                                          _%r155247%_)))
                                      (_%__kont156496156497%_
                                       (lambda (_%L155310%_ _%L155311%_)
                                         (_%lp155243%_
                                          _%L155310%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k155246%_ '1))
                                          (cons (cons 'define
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#generate-runtime-binding-id
                                                               _%L155311%_))
                                                            (cons (gxc#generate-runtime-values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tmp155241%_
                           _%k155246%_
                           _%L155310%_)
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%r155247%_))))
                                      (_%__kont156498156499%_
                                       (lambda (_%L155281%_)
                                         (let ((__tmp157833
                                                (cons (cons 'define
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#generate-runtime-binding-id _%L155281%_))
                          (cons (gxc#generate-runtime-values->list
                                 _%tmp155241%_
                                 _%k155246%_)
                                '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (__foldl1
                                            cons
                                            __tmp157833
                                            _%r155247%_))))
                                      (_%__kont156500156501%_
                                       (lambda () (reverse _%r155247%_))))
                                  (let ((_%g155250155297%_
                                         (lambda ()
                                           (let ((_%L155281%_
                                                  _%__stx156492156493%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%L155281%_))
                                                 (_%__kont156498156499%_
                                                  _%L155281%_)
                                                 (_%__kont156500156501%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx156492156493%_))
                                        (let ((_%e155255155326%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx156492156493%_))))
                                          (let ((_%tl155257155331%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e155255155326%_)))
                                                (_%hd155256155329%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e155255155326%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd155256155329%_))
                                                (let ((_%e155258155334%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd155256155329%_))))
                                                  (if (equal? _%e155258155334%_
                                                              '#f)
                                                      (_%__kont156494156495%_
                                                       _%tl155257155331%_)
                                                      (_%__kont156496156497%_
                                                       _%tl155257155331%_
                                                       _%hd155256155329%_)))
                                                (_%__kont156496156497%_
                                                 _%tl155257155331%_
                                                 _%hd155256155329%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g155250155297%_)))))))))
                      (cons 'begin
                            (cons (cons 'define
                                        (cons _%tmp155241%_
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self155153%_
                                                       _%L155202%_))
                                                    '())))
                                  (cons (gxc#generate-runtime-check-values
                                         _%tmp155241%_
                                         _%L155203%_
                                         _%L155202%_)
                                        _%body155350%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx156522156523%_))
                                                         (let ((_%e155222155388%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx156522156523%_))))
                   (let ((_%tl155224155393%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e155222155388%_)))
                         (_%hd155223155391%_
                          (let ()
                            (declare (not safe))
                            (##car _%e155222155388%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-datum? _%hd155223155391%_))
                         (let ((_%e155225155396%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd155223155391%_))))
                           (if (equal? _%e155225155396%_ '#f)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl155224155393%_))
                                   (_%__kont156524156525%_)
                                   (_%__kont156528156529%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl155224155393%_))
                                   (_%__kont156526156527%_ _%hd155223155391%_)
                                   (_%__kont156528156529%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl155224155393%_))
                             (_%__kont156526156527%_ _%hd155223155391%_)
                             (_%__kont156528156529%_)))))
                 (_%__kont156528156529%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd155167155197%_
                                               _%hd155164155189%_)
                                              (_%g155156155173%_
                                               _%g155157155176%_))))
                                      (_%g155156155173%_ _%g155157155176%_))))
                              (_%g155156155173%_ _%g155157155176%_))))
                      (_%g155156155173%_ _%g155157155176%_)))))
          (_%g155155155404%_ _%stx155154%_))))
    (define gxc#generate-runtime-check-values
      (lambda (_%vals155128%_ _%hd155129%_ _%expr155130%_)
        (let ((_%$e155132%_ (gxc#apply-count-values _%expr155130%_)))
          (if _%$e155132%_
              ((lambda (_%count155135%_)
                 (let ((_%len155137%_
                        (let ()
                          (declare (not safe))
                          (gx#stx-length _%hd155129%_)))
                       (_%cmp155138%_
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-list? _%hd155129%_))
                            fx=
                            fx>=)))
                   (if (or (let ()
                             (declare (not safe))
                             (##fx= _%len155137%_ '0))
                           (_%cmp155138%_ _%count155135%_ _%len155137%_))
                       '#!void
                       (let ()
                         (declare (not safe))
                         (gxc#raise-compile-error
                          '"Value count mismatch"
                          _%expr155130%_
                          _%hd155129%_)))))
               _%$e155132%_)
              (let* ((_%len155144%_
                      (let ()
                        (declare (not safe))
                        (gx#stx-length _%hd155129%_)))
                     (_%cmp155146%_
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-list? _%hd155129%_))
                          '##fx=
                          '##fx>=))
                     (_%errmsg155148%_
                      (let ((__tmp157835
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-list? _%hd155129%_))
                                 '"Context expects "
                                 '"Context expects at least "))
                            (__tmp157834 (number->string _%len155144%_)))
                        (declare (not safe))
                        (##string-append __tmp157835 __tmp157834 '" values")))
                     (_%count155150%_
                      (let ()
                        (declare (not safe))
                        (gxc#generate-runtime-temporary__0))))
                (if (if (let ()
                          (declare (not safe))
                          (gx#stx-list? _%hd155129%_))
                        '#f
                        (let () (declare (not safe)) (##fx= _%len155144%_ '0)))
                    '#!void
                    (cons 'let
                          (cons (cons (cons _%count155150%_
                                            (cons (gxc#generate-runtime-values-count
                                                   _%vals155128%_)
                                                  '()))
                                      '())
                                (cons (cons 'if
                                            (cons (cons 'not
                                                        (cons (if (gxc#current-compile-decls-unsafe?)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%cmp155146%_
                                (cons _%count155150%_
                                      (cons _%len155144%_ '())))
                          (cons 'let
                                (cons '()
                                      (cons '(declare (not safe))
                                            (cons (cons _%cmp155146%_
                                                        (cons _%count155150%_
                                                              (cons _%len155144%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons 'error
                                                              (cons _%errmsg155148%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%count155150%_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))))))))
    (define gxc#generate-runtime-values-count
      (lambda (_%var155123%_)
        (letrec ((_%generate-inline155125%_
                  (lambda ()
                    (cons 'if
                          (cons (cons '##values? (cons _%var155123%_ '()))
                                (cons (cons '##values-length
                                            (cons _%var155123%_ '()))
                                      (cons '1 '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline155125%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline155125%_) '()))))))))
    (define gxc#generate-runtime-values-ref
      (lambda (_%var155116%_ _%i155117%_ _%rest155118%_)
        (letrec ((_%generate-inline155120%_
                  (lambda ()
                    (if (and (let ()
                               (declare (not safe))
                               (##fx= _%i155117%_ '0))
                             (not (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%rest155118%_))))
                        (cons 'if
                              (cons (cons '##values? (cons _%var155116%_ '()))
                                    (cons (cons '##values-ref
                                                (cons _%var155116%_
                                                      (cons '0 '())))
                                          (cons _%var155116%_ '()))))
                        (cons '##values-ref
                              (cons _%var155116%_ (cons _%i155117%_ '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline155120%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline155120%_) '()))))))))
    (define gxc#generate-runtime-values->list
      (lambda (_%var155110%_ _%i155111%_)
        (if (let () (declare (not safe)) (##fx= _%i155111%_ '0))
            (if (gxc#current-compile-decls-unsafe?)
                (cons 'if
                      (cons (cons '##values? (cons _%var155110%_ '()))
                            (cons (cons '##values->list
                                        (cons _%var155110%_ '()))
                                  (cons (cons 'list (cons _%var155110%_ '()))
                                        '()))))
                (cons 'let
                      (cons '()
                            (cons '(declare (not safe))
                                  (cons (cons 'if
                                              (cons (cons '##values?
                                                          (cons _%var155110%_
                                                                '()))
                                                    (cons (cons '##values->list
                                                                (cons _%var155110%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons 'list (cons _%var155110%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
            (if (let () (declare (not safe)) (##fx= _%i155111%_ '1))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons 'if
                          (cons (cons '##values? (cons _%var155110%_ '()))
                                (cons (cons '##cdr
                                            (cons (cons '##values->list
                                                        (cons _%var155110%_
                                                              '()))
                                                  '()))
                                      (cons ''() '()))))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons 'if
                                                  (cons (cons '##values?
                                                              (cons _%var155110%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '##cdr
                            (cons (cons '##values->list
                                        (cons _%var155110%_ '()))
                                  '()))
                      (cons ''() '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons '##list-tail
                          (cons (cons '##values->list (cons _%var155110%_ '()))
                                (cons _%i155111%_ '())))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons '##list-tail
                                                  (cons (cons '##values->list
                                                              (cons _%var155110%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _%i155111%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))))))
    (define gxc#generate-runtime-lambda%
      (lambda (_%self155042%_ _%stx155043%_)
        (let* ((_%g155045155062%_
                (lambda (_%g155046155059%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g155046155059%_))))
               (_%g155044155107%_
                (lambda (_%g155046155065%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g155046155065%_))
                      (let ((_%e155049155067%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g155046155065%_))))
                        (let ((_%hd155050155070%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e155049155067%_)))
                              (_%tl155051155072%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e155049155067%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl155051155072%_))
                              (let ((_%e155052155075%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl155051155072%_))))
                                (let ((_%hd155053155078%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e155052155075%_)))
                                      (_%tl155054155080%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e155052155075%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl155054155080%_))
                                      (let ((_%e155055155083%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl155054155080%_))))
                                        (let ((_%hd155056155086%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e155055155083%_)))
                                              (_%tl155057155088%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e155055155083%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl155057155088%_))
                                              ((lambda (_%L155091%_
                                                        _%L155092%_)
                                                 (gxc#generate-runtime-lambda-form
                                                  _%self155042%_
                                                  _%L155092%_
                                                  _%L155091%_))
                                               _%hd155056155086%_
                                               _%hd155053155078%_)
                                              (_%g155045155062%_
                                               _%g155046155065%_))))
                                      (_%g155045155062%_ _%g155046155065%_))))
                              (_%g155045155062%_ _%g155046155065%_))))
                      (_%g155045155062%_ _%g155046155065%_)))))
          (_%g155044155107%_ _%stx155043%_))))
    (define gxc#generate-runtime-lambda-form
      (lambda (_%self155001%_ _%hd155002%_ _%body155003%_)
        (let* ((_%hd155005%_ (gxc#generate-runtime-lambda-head _%hd155002%_))
               (_%body155007%_
                (let ()
                  (declare (not safe))
                  (gxc#compile-e__1 _%self155001%_ _%body155003%_)))
               (_%body155039%_
                (let* ((_%body155008155016%_ _%body155007%_)
                       (_%else155010155024%_
                        (lambda () (cons _%body155007%_ '())))
                       (_%K155012155029%_
                        (lambda (_%exprs155027%_) _%exprs155027%_)))
                  (if (pair? _%body155008155016%_)
                      (let ((_%hd155013155032%_
                             (let ()
                               (declare (not safe))
                               (##car _%body155008155016%_)))
                            (_%tl155014155034%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%body155008155016%_))))
                        (if (let ()
                              (declare (not safe))
                              (##eq? _%hd155013155032%_ 'begin))
                            (let ((_%exprs155037%_ _%tl155014155034%_))
                              (_%K155012155029%_ _%exprs155037%_))
                            (_%else155010155024%_)))
                      (_%else155010155024%_)))))
          (cons 'lambda (cons _%hd155005%_ _%body155039%_)))))
    (define gxc#generate-runtime-lambda-head
      (lambda (_%hd154999%_)
        (let ()
          (declare (not safe))
          (gx#stx-map1 gxc#generate-runtime-binding-id* _%hd154999%_))))
    (define gxc#generate-runtime-case-lambda%
      (lambda (_%self153538%_ _%stx153539%_)
        (letrec ((_%dispatch-case?153541%_
                  (lambda (_%hd154229%_ _%body154230%_)
                    (let* ((_%form154232%_
                            (cons _%hd154229%_ (cons _%body154230%_ '())))
                           (_%__stx156554156555%_ _%form154232%_)
                           (_%g154237154394%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx156554156555%_)))))
                      (let ((_%__kont156556156557%_
                             (lambda (_%L154919%_ _%L154920%_ _%L154921%_)
                               '#t))
                            (_%__kont156562156563%_
                             (lambda (_%L154707%_
                                      _%L154708%_
                                      _%L154709%_
                                      _%L154710%_
                                      _%L154711%_
                                      _%L154712%_)
                               '#t))
                            (_%__kont156568156569%_
                             (lambda (_%L154502%_
                                      _%L154503%_
                                      _%L154504%_
                                      _%L154505%_)
                               '#t))
                            (_%__kont156570156571%_ (lambda () '#f)))
                        (let* ((_%__match156695156696%_
                                (lambda (_%e154354154406%_
                                         _%hd154355154409%_
                                         _%tl154356154411%_
                                         _%e154357154414%_
                                         _%hd154358154417%_
                                         _%tl154359154419%_
                                         _%e154360154422%_
                                         _%hd154361154425%_
                                         _%tl154362154427%_
                                         _%e154363154430%_
                                         _%hd154364154433%_
                                         _%tl154365154435%_
                                         _%e154366154438%_
                                         _%hd154367154441%_
                                         _%tl154368154443%_
                                         _%e154369154446%_
                                         _%hd154370154449%_
                                         _%tl154371154451%_
                                         _%e154372154454%_
                                         _%hd154373154457%_
                                         _%tl154374154459%_
                                         _%e154375154462%_
                                         _%hd154376154465%_
                                         _%tl154377154467%_
                                         _%e154378154470%_
                                         _%hd154379154473%_
                                         _%tl154380154475%_
                                         _%e154381154478%_
                                         _%hd154382154481%_
                                         _%tl154383154483%_
                                         _%e154384154486%_
                                         _%hd154385154489%_
                                         _%tl154386154491%_
                                         _%e154387154494%_
                                         _%hd154388154497%_
                                         _%tl154389154499%_)
                                  (let ((_%L154502%_ _%hd154388154497%_)
                                        (_%L154503%_ _%hd154379154473%_)
                                        (_%L154504%_ _%hd154370154449%_)
                                        (_%L154505%_ _%hd154355154409%_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (gx#identifier? _%L154505%_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#runtime-identifier=?
                                                _%L154504%_
                                                'apply))
                                             (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L154505%_
                                                _%L154502%_))
                                             (not (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%L154503%_
                                                     _%L154505%_))))
                                        (_%__kont156568156569%_
                                         _%L154502%_
                                         _%L154503%_
                                         _%L154504%_
                                         _%L154505%_)
                                        (_%__kont156570156571%_)))))
                               (_%__match156667156668%_
                                (lambda (_%e154354154406%_
                                         _%hd154355154409%_
                                         _%tl154356154411%_
                                         _%e154357154414%_
                                         _%hd154358154417%_
                                         _%tl154359154419%_
                                         _%e154360154422%_
                                         _%hd154361154425%_
                                         _%tl154362154427%_
                                         _%e154363154430%_
                                         _%hd154364154433%_
                                         _%tl154365154435%_
                                         _%e154366154438%_
                                         _%hd154367154441%_
                                         _%tl154368154443%_
                                         _%e154369154446%_
                                         _%hd154370154449%_
                                         _%tl154371154451%_
                                         _%e154372154454%_
                                         _%hd154373154457%_
                                         _%tl154374154459%_
                                         _%e154375154462%_
                                         _%hd154376154465%_
                                         _%tl154377154467%_
                                         _%e154378154470%_
                                         _%hd154379154473%_
                                         _%tl154380154475%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl154374154459%_))
                                      (let ((_%e154381154478%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl154374154459%_))))
                                        (let ((_%tl154383154483%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e154381154478%_)))
                                              (_%hd154382154481%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e154381154478%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd154382154481%_))
                                              (let ((_%e154384154486%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd154382154481%_))))
                                                (let ((_%tl154386154491%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e154384154486%_)))
                                                      (_%hd154385154489%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e154384154486%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd154385154489%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _%hd154385154489%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl154386154491%_))
                      (let ((_%e154387154494%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl154386154491%_))))
                        (let ((_%tl154389154499%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e154387154494%_)))
                              (_%hd154388154497%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e154387154494%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl154389154499%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl154383154483%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl154359154419%_))
                                      (_%__match156695156696%_
                                       _%e154354154406%_
                                       _%hd154355154409%_
                                       _%tl154356154411%_
                                       _%e154357154414%_
                                       _%hd154358154417%_
                                       _%tl154359154419%_
                                       _%e154360154422%_
                                       _%hd154361154425%_
                                       _%tl154362154427%_
                                       _%e154363154430%_
                                       _%hd154364154433%_
                                       _%tl154365154435%_
                                       _%e154366154438%_
                                       _%hd154367154441%_
                                       _%tl154368154443%_
                                       _%e154369154446%_
                                       _%hd154370154449%_
                                       _%tl154371154451%_
                                       _%e154372154454%_
                                       _%hd154373154457%_
                                       _%tl154374154459%_
                                       _%e154375154462%_
                                       _%hd154376154465%_
                                       _%tl154377154467%_
                                       _%e154378154470%_
                                       _%hd154379154473%_
                                       _%tl154380154475%_
                                       _%e154381154478%_
                                       _%hd154382154481%_
                                       _%tl154383154483%_
                                       _%e154384154486%_
                                       _%hd154385154489%_
                                       _%tl154386154491%_
                                       _%e154387154494%_
                                       _%hd154388154497%_
                                       _%tl154389154499%_)
                                      (_%__kont156570156571%_))
                                  (_%__kont156570156571%_))
                              (_%__kont156570156571%_))))
                      (_%__kont156570156571%_))
                  (_%__kont156570156571%_))
              (_%__kont156570156571%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont156570156571%_))))
                                      (_%__kont156570156571%_))))
                               (_%__match156597156598%_
                                (lambda (_%e154290154547%_
                                         _%hd154291154550%_
                                         _%tl154292154552%_
                                         _%__splice156564156565%_
                                         _%target154293154555%_
                                         _%tl154295154557%_)
                                  (letrec ((_%loop154296154560%_
                                            (lambda (_%hd154294154563%_
                                                     _%arg154300154565%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd154294154563%_))
                                                  (let ((_%e154297154568%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd154294154563%_))))
                                                    (let ((_%lp-tl154299154573%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e154297154568%_)))
                                                          (_%lp-hd154298154571%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e154297154568%_))))
                                                      (_%loop154296154560%_
                                                       _%lp-tl154299154573%_
                                                       (cons _%lp-hd154298154571%_
                                                             _%arg154300154565%_))))
                                                  (let ((_%arg154301154576%_
                                                         (reverse _%arg154300154565%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl154292154552%_))
                                                        (let ((_%e154302154579%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl154292154552%_))))
                  (let ((_%tl154304154584%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e154302154579%_)))
                        (_%hd154303154582%_
                         (let ()
                           (declare (not safe))
                           (##car _%e154302154579%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd154303154582%_))
                        (let ((_%e154305154587%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd154303154582%_))))
                          (let ((_%tl154307154592%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e154305154587%_)))
                                (_%hd154306154590%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e154305154587%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd154306154590%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd154306154590%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl154307154592%_))
                                        (let ((_%e154308154595%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl154307154592%_))))
                                          (let ((_%tl154310154600%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e154308154595%_)))
                                                (_%hd154309154598%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e154308154595%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd154309154598%_))
                                                (let ((_%e154311154603%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd154309154598%_))))
                                                  (let ((_%tl154313154608%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e154311154603%_)))
                                                        (_%hd154312154606%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e154311154603%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd154312154606%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd154312154606%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl154313154608%_))
                        (let ((_%e154314154611%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl154313154608%_))))
                          (let ((_%tl154316154616%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e154314154611%_)))
                                (_%hd154315154614%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e154314154611%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl154316154616%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl154310154600%_))
                                    (let ((_%e154317154619%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl154310154600%_))))
                                      (let ((_%tl154319154624%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e154317154619%_)))
                                            (_%hd154318154622%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e154317154619%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd154318154622%_))
                                            (let ((_%e154320154627%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd154318154622%_))))
                                              (let ((_%tl154322154632%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e154320154627%_)))
                                                    (_%hd154321154630%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e154320154627%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd154321154630%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd154321154630%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl154322154632%_))
                                                            (let ((_%e154323154635%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl154322154632%_))))
                      (let ((_%tl154325154640%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e154323154635%_)))
                            (_%hd154324154638%_
                             (let ()
                               (declare (not safe))
                               (##car _%e154323154635%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl154325154640%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl154319154624%_))
                                (if (let ((__tmp157836
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-length
                                              _%tl154319154624%_))))
                                      (declare (not safe))
                                      (##fx>= __tmp157836 '1))
                                    (let ((_%__splice156566156567%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl154319154624%_
                                              '1))))
                                      (let ((_%tl154328154645%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice156566156567%_
                                                '1)))
                                            (_%target154326154643%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice156566156567%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl154328154645%_))
                                            (let ((_%e154335154648%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl154328154645%_))))
                                              (let ((_%tl154337154653%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e154335154648%_)))
                                                    (_%hd154336154651%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e154335154648%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd154336154651%_))
                                                    (let ((_%e154338154656%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd154336154651%_))))
                                                      (let ((_%tl154340154661%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e154338154656%_)))
                    (_%hd154339154659%_
                     (let () (declare (not safe)) (##car _%e154338154656%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd154339154659%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _%hd154339154659%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl154340154661%_))
                            (let ((_%e154341154664%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl154340154661%_))))
                              (let ((_%tl154343154669%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e154341154664%_)))
                                    (_%hd154342154667%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e154341154664%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl154343154669%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl154337154653%_))
                                        (letrec ((_%loop154329154672%_
                                                  (lambda (_%hd154327154675%_
                                                           _%xarg154333154677%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd154327154675%_))
                                                        (let ((_%e154330154680%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd154327154675%_))))
                  (let ((_%lp-tl154332154685%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e154330154680%_)))
                        (_%lp-hd154331154683%_
                         (let ()
                           (declare (not safe))
                           (##car _%e154330154680%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd154331154683%_))
                        (let ((_%e154344154688%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd154331154683%_))))
                          (let ((_%tl154346154693%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e154344154688%_)))
                                (_%hd154345154691%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e154344154688%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd154345154691%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _%hd154345154691%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl154346154693%_))
                                        (let ((_%e154347154696%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl154346154693%_))))
                                          (let ((_%tl154349154701%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e154347154696%_)))
                                                (_%hd154348154699%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e154347154696%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl154349154701%_))
                                                (_%loop154329154672%_
                                                 _%lp-tl154332154685%_
                                                 (cons _%hd154348154699%_
                                                       _%xarg154333154677%_))
                                                (_%__match156667156668%_
                                                 _%e154290154547%_
                                                 _%hd154291154550%_
                                                 _%tl154292154552%_
                                                 _%e154302154579%_
                                                 _%hd154303154582%_
                                                 _%tl154304154584%_
                                                 _%e154305154587%_
                                                 _%hd154306154590%_
                                                 _%tl154307154592%_
                                                 _%e154308154595%_
                                                 _%hd154309154598%_
                                                 _%tl154310154600%_
                                                 _%e154311154603%_
                                                 _%hd154312154606%_
                                                 _%tl154313154608%_
                                                 _%e154314154611%_
                                                 _%hd154315154614%_
                                                 _%tl154316154616%_
                                                 _%e154317154619%_
                                                 _%hd154318154622%_
                                                 _%tl154319154624%_
                                                 _%e154320154627%_
                                                 _%hd154321154630%_
                                                 _%tl154322154632%_
                                                 _%e154323154635%_
                                                 _%hd154324154638%_
                                                 _%tl154325154640%_))))
                                        (_%__match156667156668%_
                                         _%e154290154547%_
                                         _%hd154291154550%_
                                         _%tl154292154552%_
                                         _%e154302154579%_
                                         _%hd154303154582%_
                                         _%tl154304154584%_
                                         _%e154305154587%_
                                         _%hd154306154590%_
                                         _%tl154307154592%_
                                         _%e154308154595%_
                                         _%hd154309154598%_
                                         _%tl154310154600%_
                                         _%e154311154603%_
                                         _%hd154312154606%_
                                         _%tl154313154608%_
                                         _%e154314154611%_
                                         _%hd154315154614%_
                                         _%tl154316154616%_
                                         _%e154317154619%_
                                         _%hd154318154622%_
                                         _%tl154319154624%_
                                         _%e154320154627%_
                                         _%hd154321154630%_
                                         _%tl154322154632%_
                                         _%e154323154635%_
                                         _%hd154324154638%_
                                         _%tl154325154640%_))
                                    (_%__match156667156668%_
                                     _%e154290154547%_
                                     _%hd154291154550%_
                                     _%tl154292154552%_
                                     _%e154302154579%_
                                     _%hd154303154582%_
                                     _%tl154304154584%_
                                     _%e154305154587%_
                                     _%hd154306154590%_
                                     _%tl154307154592%_
                                     _%e154308154595%_
                                     _%hd154309154598%_
                                     _%tl154310154600%_
                                     _%e154311154603%_
                                     _%hd154312154606%_
                                     _%tl154313154608%_
                                     _%e154314154611%_
                                     _%hd154315154614%_
                                     _%tl154316154616%_
                                     _%e154317154619%_
                                     _%hd154318154622%_
                                     _%tl154319154624%_
                                     _%e154320154627%_
                                     _%hd154321154630%_
                                     _%tl154322154632%_
                                     _%e154323154635%_
                                     _%hd154324154638%_
                                     _%tl154325154640%_))
                                (_%__match156667156668%_
                                 _%e154290154547%_
                                 _%hd154291154550%_
                                 _%tl154292154552%_
                                 _%e154302154579%_
                                 _%hd154303154582%_
                                 _%tl154304154584%_
                                 _%e154305154587%_
                                 _%hd154306154590%_
                                 _%tl154307154592%_
                                 _%e154308154595%_
                                 _%hd154309154598%_
                                 _%tl154310154600%_
                                 _%e154311154603%_
                                 _%hd154312154606%_
                                 _%tl154313154608%_
                                 _%e154314154611%_
                                 _%hd154315154614%_
                                 _%tl154316154616%_
                                 _%e154317154619%_
                                 _%hd154318154622%_
                                 _%tl154319154624%_
                                 _%e154320154627%_
                                 _%hd154321154630%_
                                 _%tl154322154632%_
                                 _%e154323154635%_
                                 _%hd154324154638%_
                                 _%tl154325154640%_))))
                        (_%__match156667156668%_
                         _%e154290154547%_
                         _%hd154291154550%_
                         _%tl154292154552%_
                         _%e154302154579%_
                         _%hd154303154582%_
                         _%tl154304154584%_
                         _%e154305154587%_
                         _%hd154306154590%_
                         _%tl154307154592%_
                         _%e154308154595%_
                         _%hd154309154598%_
                         _%tl154310154600%_
                         _%e154311154603%_
                         _%hd154312154606%_
                         _%tl154313154608%_
                         _%e154314154611%_
                         _%hd154315154614%_
                         _%tl154316154616%_
                         _%e154317154619%_
                         _%hd154318154622%_
                         _%tl154319154624%_
                         _%e154320154627%_
                         _%hd154321154630%_
                         _%tl154322154632%_
                         _%e154323154635%_
                         _%hd154324154638%_
                         _%tl154325154640%_))))
                (let ((_%xarg154334154704%_ (reverse _%xarg154333154677%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl154304154584%_))
                      (let ((_%L154707%_ _%hd154342154667%_)
                            (_%L154708%_ _%xarg154334154704%_)
                            (_%L154709%_ _%hd154324154638%_)
                            (_%L154710%_ _%hd154315154614%_)
                            (_%L154711%_ _%tl154295154557%_)
                            (_%L154712%_ _%arg154301154576%_))
                        (if (and (let ((__tmp157837
                                        (let ((__tmp157838
                                               (lambda (_%g154755154758%_
                                                        _%g154756154760%_)
                                                 (cons _%g154755154758%_
                                                       _%g154756154760%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp157838
                                           '()
                                           _%L154712%_))))
                                   (declare (not safe))
                                   (gx#identifier-list? __tmp157837))
                                 (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L154711%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _%L154710%_
                                    'apply))
                                 (let ((__tmp157841
                                        (length (let ((__tmp157842
                                                       (lambda (_%g154762154765%_
                                                                _%g154763154767%_)
                                                         (cons _%g154762154765%_
                                                               _%g154763154767%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp157842
                                                   '()
                                                   _%L154712%_))))
                                       (__tmp157839
                                        (length (let ((__tmp157840
                                                       (lambda (_%g154769154772%_
                                                                _%g154770154774%_)
                                                         (cons _%g154769154772%_
                                                               _%g154770154774%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp157840
                                                   '()
                                                   _%L154708%_)))))
                                   (declare (not safe))
                                   (##fx= __tmp157841 __tmp157839))
                                 (let ((__tmp157845
                                        (let ((__tmp157846
                                               (lambda (_%g154776154779%_
                                                        _%g154777154781%_)
                                                 (cons _%g154776154779%_
                                                       _%g154777154781%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp157846
                                           '()
                                           _%L154712%_)))
                                       (__tmp157843
                                        (let ((__tmp157844
                                               (lambda (_%g154783154786%_
                                                        _%g154784154788%_)
                                                 (cons _%g154783154786%_
                                                       _%g154784154788%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp157844
                                           '()
                                           _%L154708%_))))
                                   (declare (not safe))
                                   (__andmap2
                                    gx#free-identifier=?
                                    __tmp157845
                                    __tmp157843))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L154711%_
                                    _%L154707%_))
                                 (not (let ((__tmp157850
                                             (lambda (_%g154790154792%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#free-identifier=?
                                                  _%g154790154792%_
                                                  _%L154709%_))))
                                            (__tmp157847
                                             (let ((__tmp157849
                                                    (lambda (_%g154794154797%_
                                                             _%g154795154799%_)
                                                      (cons _%g154794154797%_
                                                            _%g154795154799%_)))
                                                   (__tmp157848
                                                    (cons _%L154711%_ '())))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp157849
                                                __tmp157848
                                                _%L154712%_))))
                                        (declare (not safe))
                                        (__find __tmp157850 __tmp157847))))
                            (_%__kont156562156563%_
                             _%L154707%_
                             _%L154708%_
                             _%L154709%_
                             _%L154710%_
                             _%L154711%_
                             _%L154712%_)
                            (_%__match156667156668%_
                             _%e154290154547%_
                             _%hd154291154550%_
                             _%tl154292154552%_
                             _%e154302154579%_
                             _%hd154303154582%_
                             _%tl154304154584%_
                             _%e154305154587%_
                             _%hd154306154590%_
                             _%tl154307154592%_
                             _%e154308154595%_
                             _%hd154309154598%_
                             _%tl154310154600%_
                             _%e154311154603%_
                             _%hd154312154606%_
                             _%tl154313154608%_
                             _%e154314154611%_
                             _%hd154315154614%_
                             _%tl154316154616%_
                             _%e154317154619%_
                             _%hd154318154622%_
                             _%tl154319154624%_
                             _%e154320154627%_
                             _%hd154321154630%_
                             _%tl154322154632%_
                             _%e154323154635%_
                             _%hd154324154638%_
                             _%tl154325154640%_)))
                      (_%__match156667156668%_
                       _%e154290154547%_
                       _%hd154291154550%_
                       _%tl154292154552%_
                       _%e154302154579%_
                       _%hd154303154582%_
                       _%tl154304154584%_
                       _%e154305154587%_
                       _%hd154306154590%_
                       _%tl154307154592%_
                       _%e154308154595%_
                       _%hd154309154598%_
                       _%tl154310154600%_
                       _%e154311154603%_
                       _%hd154312154606%_
                       _%tl154313154608%_
                       _%e154314154611%_
                       _%hd154315154614%_
                       _%tl154316154616%_
                       _%e154317154619%_
                       _%hd154318154622%_
                       _%tl154319154624%_
                       _%e154320154627%_
                       _%hd154321154630%_
                       _%tl154322154632%_
                       _%e154323154635%_
                       _%hd154324154638%_
                       _%tl154325154640%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop154329154672%_
                                           _%target154326154643%_
                                           '()))
                                        (_%__match156667156668%_
                                         _%e154290154547%_
                                         _%hd154291154550%_
                                         _%tl154292154552%_
                                         _%e154302154579%_
                                         _%hd154303154582%_
                                         _%tl154304154584%_
                                         _%e154305154587%_
                                         _%hd154306154590%_
                                         _%tl154307154592%_
                                         _%e154308154595%_
                                         _%hd154309154598%_
                                         _%tl154310154600%_
                                         _%e154311154603%_
                                         _%hd154312154606%_
                                         _%tl154313154608%_
                                         _%e154314154611%_
                                         _%hd154315154614%_
                                         _%tl154316154616%_
                                         _%e154317154619%_
                                         _%hd154318154622%_
                                         _%tl154319154624%_
                                         _%e154320154627%_
                                         _%hd154321154630%_
                                         _%tl154322154632%_
                                         _%e154323154635%_
                                         _%hd154324154638%_
                                         _%tl154325154640%_))
                                    (_%__match156667156668%_
                                     _%e154290154547%_
                                     _%hd154291154550%_
                                     _%tl154292154552%_
                                     _%e154302154579%_
                                     _%hd154303154582%_
                                     _%tl154304154584%_
                                     _%e154305154587%_
                                     _%hd154306154590%_
                                     _%tl154307154592%_
                                     _%e154308154595%_
                                     _%hd154309154598%_
                                     _%tl154310154600%_
                                     _%e154311154603%_
                                     _%hd154312154606%_
                                     _%tl154313154608%_
                                     _%e154314154611%_
                                     _%hd154315154614%_
                                     _%tl154316154616%_
                                     _%e154317154619%_
                                     _%hd154318154622%_
                                     _%tl154319154624%_
                                     _%e154320154627%_
                                     _%hd154321154630%_
                                     _%tl154322154632%_
                                     _%e154323154635%_
                                     _%hd154324154638%_
                                     _%tl154325154640%_))))
                            (_%__match156667156668%_
                             _%e154290154547%_
                             _%hd154291154550%_
                             _%tl154292154552%_
                             _%e154302154579%_
                             _%hd154303154582%_
                             _%tl154304154584%_
                             _%e154305154587%_
                             _%hd154306154590%_
                             _%tl154307154592%_
                             _%e154308154595%_
                             _%hd154309154598%_
                             _%tl154310154600%_
                             _%e154311154603%_
                             _%hd154312154606%_
                             _%tl154313154608%_
                             _%e154314154611%_
                             _%hd154315154614%_
                             _%tl154316154616%_
                             _%e154317154619%_
                             _%hd154318154622%_
                             _%tl154319154624%_
                             _%e154320154627%_
                             _%hd154321154630%_
                             _%tl154322154632%_
                             _%e154323154635%_
                             _%hd154324154638%_
                             _%tl154325154640%_))
                        (_%__match156667156668%_
                         _%e154290154547%_
                         _%hd154291154550%_
                         _%tl154292154552%_
                         _%e154302154579%_
                         _%hd154303154582%_
                         _%tl154304154584%_
                         _%e154305154587%_
                         _%hd154306154590%_
                         _%tl154307154592%_
                         _%e154308154595%_
                         _%hd154309154598%_
                         _%tl154310154600%_
                         _%e154311154603%_
                         _%hd154312154606%_
                         _%tl154313154608%_
                         _%e154314154611%_
                         _%hd154315154614%_
                         _%tl154316154616%_
                         _%e154317154619%_
                         _%hd154318154622%_
                         _%tl154319154624%_
                         _%e154320154627%_
                         _%hd154321154630%_
                         _%tl154322154632%_
                         _%e154323154635%_
                         _%hd154324154638%_
                         _%tl154325154640%_))
                    (_%__match156667156668%_
                     _%e154290154547%_
                     _%hd154291154550%_
                     _%tl154292154552%_
                     _%e154302154579%_
                     _%hd154303154582%_
                     _%tl154304154584%_
                     _%e154305154587%_
                     _%hd154306154590%_
                     _%tl154307154592%_
                     _%e154308154595%_
                     _%hd154309154598%_
                     _%tl154310154600%_
                     _%e154311154603%_
                     _%hd154312154606%_
                     _%tl154313154608%_
                     _%e154314154611%_
                     _%hd154315154614%_
                     _%tl154316154616%_
                     _%e154317154619%_
                     _%hd154318154622%_
                     _%tl154319154624%_
                     _%e154320154627%_
                     _%hd154321154630%_
                     _%tl154322154632%_
                     _%e154323154635%_
                     _%hd154324154638%_
                     _%tl154325154640%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match156667156668%_
                                                     _%e154290154547%_
                                                     _%hd154291154550%_
                                                     _%tl154292154552%_
                                                     _%e154302154579%_
                                                     _%hd154303154582%_
                                                     _%tl154304154584%_
                                                     _%e154305154587%_
                                                     _%hd154306154590%_
                                                     _%tl154307154592%_
                                                     _%e154308154595%_
                                                     _%hd154309154598%_
                                                     _%tl154310154600%_
                                                     _%e154311154603%_
                                                     _%hd154312154606%_
                                                     _%tl154313154608%_
                                                     _%e154314154611%_
                                                     _%hd154315154614%_
                                                     _%tl154316154616%_
                                                     _%e154317154619%_
                                                     _%hd154318154622%_
                                                     _%tl154319154624%_
                                                     _%e154320154627%_
                                                     _%hd154321154630%_
                                                     _%tl154322154632%_
                                                     _%e154323154635%_
                                                     _%hd154324154638%_
                                                     _%tl154325154640%_))))
                                            (_%__match156667156668%_
                                             _%e154290154547%_
                                             _%hd154291154550%_
                                             _%tl154292154552%_
                                             _%e154302154579%_
                                             _%hd154303154582%_
                                             _%tl154304154584%_
                                             _%e154305154587%_
                                             _%hd154306154590%_
                                             _%tl154307154592%_
                                             _%e154308154595%_
                                             _%hd154309154598%_
                                             _%tl154310154600%_
                                             _%e154311154603%_
                                             _%hd154312154606%_
                                             _%tl154313154608%_
                                             _%e154314154611%_
                                             _%hd154315154614%_
                                             _%tl154316154616%_
                                             _%e154317154619%_
                                             _%hd154318154622%_
                                             _%tl154319154624%_
                                             _%e154320154627%_
                                             _%hd154321154630%_
                                             _%tl154322154632%_
                                             _%e154323154635%_
                                             _%hd154324154638%_
                                             _%tl154325154640%_))))
                                    (_%__match156667156668%_
                                     _%e154290154547%_
                                     _%hd154291154550%_
                                     _%tl154292154552%_
                                     _%e154302154579%_
                                     _%hd154303154582%_
                                     _%tl154304154584%_
                                     _%e154305154587%_
                                     _%hd154306154590%_
                                     _%tl154307154592%_
                                     _%e154308154595%_
                                     _%hd154309154598%_
                                     _%tl154310154600%_
                                     _%e154311154603%_
                                     _%hd154312154606%_
                                     _%tl154313154608%_
                                     _%e154314154611%_
                                     _%hd154315154614%_
                                     _%tl154316154616%_
                                     _%e154317154619%_
                                     _%hd154318154622%_
                                     _%tl154319154624%_
                                     _%e154320154627%_
                                     _%hd154321154630%_
                                     _%tl154322154632%_
                                     _%e154323154635%_
                                     _%hd154324154638%_
                                     _%tl154325154640%_))
                                (_%__match156667156668%_
                                 _%e154290154547%_
                                 _%hd154291154550%_
                                 _%tl154292154552%_
                                 _%e154302154579%_
                                 _%hd154303154582%_
                                 _%tl154304154584%_
                                 _%e154305154587%_
                                 _%hd154306154590%_
                                 _%tl154307154592%_
                                 _%e154308154595%_
                                 _%hd154309154598%_
                                 _%tl154310154600%_
                                 _%e154311154603%_
                                 _%hd154312154606%_
                                 _%tl154313154608%_
                                 _%e154314154611%_
                                 _%hd154315154614%_
                                 _%tl154316154616%_
                                 _%e154317154619%_
                                 _%hd154318154622%_
                                 _%tl154319154624%_
                                 _%e154320154627%_
                                 _%hd154321154630%_
                                 _%tl154322154632%_
                                 _%e154323154635%_
                                 _%hd154324154638%_
                                 _%tl154325154640%_))
                            (_%__kont156570156571%_))))
                    (_%__kont156570156571%_))
                (_%__kont156570156571%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont156570156571%_))))
                                            (_%__kont156570156571%_))))
                                    (_%__kont156570156571%_))
                                (_%__kont156570156571%_))))
                        (_%__kont156570156571%_))
                    (_%__kont156570156571%_))
                (_%__kont156570156571%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont156570156571%_))))
                                        (_%__kont156570156571%_))
                                    (_%__kont156570156571%_))
                                (_%__kont156570156571%_))))
                        (_%__kont156570156571%_))))
                (_%__kont156570156571%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop154296154560%_
                                     _%target154293154555%_
                                     '()))))
                               (_%__match156585156586%_
                                (lambda (_%e154242154807%_
                                         _%hd154243154810%_
                                         _%tl154244154812%_
                                         _%__splice156558156559%_
                                         _%target154245154815%_
                                         _%tl154247154817%_)
                                  (letrec ((_%loop154248154820%_
                                            (lambda (_%hd154246154823%_
                                                     _%arg154252154825%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd154246154823%_))
                                                  (let ((_%e154249154828%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd154246154823%_))))
                                                    (let ((_%lp-tl154251154833%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e154249154828%_)))
                                                          (_%lp-hd154250154831%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e154249154828%_))))
                                                      (_%loop154248154820%_
                                                       _%lp-tl154251154833%_
                                                       (cons _%lp-hd154250154831%_
                                                             _%arg154252154825%_))))
                                                  (let ((_%arg154253154836%_
                                                         (reverse _%arg154252154825%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl154244154812%_))
                                                        (let ((_%e154254154839%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl154244154812%_))))
                  (let ((_%tl154256154844%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e154254154839%_)))
                        (_%hd154255154842%_
                         (let ()
                           (declare (not safe))
                           (##car _%e154254154839%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd154255154842%_))
                        (let ((_%e154257154847%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd154255154842%_))))
                          (let ((_%tl154259154852%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e154257154847%_)))
                                (_%hd154258154850%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e154257154847%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd154258154850%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd154258154850%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl154259154852%_))
                                        (let ((_%e154260154855%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl154259154852%_))))
                                          (let ((_%tl154262154860%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e154260154855%_)))
                                                (_%hd154261154858%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e154260154855%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd154261154858%_))
                                                (let ((_%e154263154863%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd154261154858%_))))
                                                  (let ((_%tl154265154868%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e154263154863%_)))
                                                        (_%hd154264154866%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e154263154863%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd154264154866%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd154264154866%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl154265154868%_))
                        (let ((_%e154266154871%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl154265154868%_))))
                          (let ((_%tl154268154876%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e154266154871%_)))
                                (_%hd154267154874%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e154266154871%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl154268154876%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl154262154860%_))
                                    (let ((_%__splice156560156561%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl154262154860%_
                                              '0))))
                                      (let ((_%tl154271154881%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice156560156561%_
                                                '1)))
                                            (_%target154269154879%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice156560156561%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl154271154881%_))
                                            (letrec ((_%loop154272154884%_
                                                      (lambda (_%hd154270154887%_
                                                               _%xarg154276154889%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd154270154887%_))
                                                            (let ((_%e154273154892%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd154270154887%_))))
                      (let ((_%lp-tl154275154897%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e154273154892%_)))
                            (_%lp-hd154274154895%_
                             (let ()
                               (declare (not safe))
                               (##car _%e154273154892%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd154274154895%_))
                            (let ((_%e154278154900%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd154274154895%_))))
                              (let ((_%tl154280154905%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e154278154900%_)))
                                    (_%hd154279154903%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e154278154900%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd154279154903%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd154279154903%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl154280154905%_))
                                            (let ((_%e154281154908%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl154280154905%_))))
                                              (let ((_%tl154283154913%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e154281154908%_)))
                                                    (_%hd154282154911%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e154281154908%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl154283154913%_))
                                                    (_%loop154272154884%_
                                                     _%lp-tl154275154897%_
                                                     (cons _%hd154282154911%_
                                                           _%xarg154276154889%_))
                                                    (_%__match156597156598%_
                                                     _%e154242154807%_
                                                     _%hd154243154810%_
                                                     _%tl154244154812%_
                                                     _%__splice156558156559%_
                                                     _%target154245154815%_
                                                     _%tl154247154817%_))))
                                            (_%__match156597156598%_
                                             _%e154242154807%_
                                             _%hd154243154810%_
                                             _%tl154244154812%_
                                             _%__splice156558156559%_
                                             _%target154245154815%_
                                             _%tl154247154817%_))
                                        (_%__match156597156598%_
                                         _%e154242154807%_
                                         _%hd154243154810%_
                                         _%tl154244154812%_
                                         _%__splice156558156559%_
                                         _%target154245154815%_
                                         _%tl154247154817%_))
                                    (_%__match156597156598%_
                                     _%e154242154807%_
                                     _%hd154243154810%_
                                     _%tl154244154812%_
                                     _%__splice156558156559%_
                                     _%target154245154815%_
                                     _%tl154247154817%_))))
                            (_%__match156597156598%_
                             _%e154242154807%_
                             _%hd154243154810%_
                             _%tl154244154812%_
                             _%__splice156558156559%_
                             _%target154245154815%_
                             _%tl154247154817%_))))
                    (let ((_%xarg154277154916%_
                           (reverse _%xarg154276154889%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl154256154844%_))
                          (let ((_%L154919%_ _%xarg154277154916%_)
                                (_%L154920%_ _%hd154267154874%_)
                                (_%L154921%_ _%arg154253154836%_))
                            (if (and (let ((__tmp157851
                                            (let ((__tmp157852
                                                   (lambda (_%g154949154952%_
                                                            _%g154950154954%_)
                                                     (cons _%g154949154952%_
                                                           _%g154950154954%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp157852
                                               '()
                                               _%L154921%_))))
                                       (declare (not safe))
                                       (gx#identifier-list? __tmp157851))
                                     (let ((__tmp157855
                                            (length (let ((__tmp157856
                                                           (lambda (_%g154956154959%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g154957154961%_)
                     (cons _%g154956154959%_ _%g154957154961%_))))
              (declare (not safe))
              (__foldr1 __tmp157856 '() _%L154921%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (__tmp157853
                                            (length (let ((__tmp157854
                                                           (lambda (_%g154963154966%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g154964154968%_)
                     (cons _%g154963154966%_ _%g154964154968%_))))
              (declare (not safe))
              (__foldr1 __tmp157854 '() _%L154919%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp157855 __tmp157853))
                                     (let ((__tmp157859
                                            (let ((__tmp157860
                                                   (lambda (_%g154970154973%_
                                                            _%g154971154975%_)
                                                     (cons _%g154970154973%_
                                                           _%g154971154975%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp157860
                                               '()
                                               _%L154921%_)))
                                           (__tmp157857
                                            (let ((__tmp157858
                                                   (lambda (_%g154977154980%_
                                                            _%g154978154982%_)
                                                     (cons _%g154977154980%_
                                                           _%g154978154982%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp157858
                                               '()
                                               _%L154919%_))))
                                       (declare (not safe))
                                       (__andmap2
                                        gx#free-identifier=?
                                        __tmp157859
                                        __tmp157857))
                                     (not (let ((__tmp157863
                                                 (lambda (_%g154984154986%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g154984154986%_
                                                      _%L154920%_))))
                                                (__tmp157861
                                                 (let ((__tmp157862
                                                        (lambda (_%g154988154991%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g154989154993%_)
                  (cons _%g154988154991%_ _%g154989154993%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp157862
                                                    '()
                                                    _%L154921%_))))
                                            (declare (not safe))
                                            (__find __tmp157863 __tmp157861))))
                                (_%__kont156556156557%_
                                 _%L154919%_
                                 _%L154920%_
                                 _%L154921%_)
                                (_%__match156597156598%_
                                 _%e154242154807%_
                                 _%hd154243154810%_
                                 _%tl154244154812%_
                                 _%__splice156558156559%_
                                 _%target154245154815%_
                                 _%tl154247154817%_)))
                          (_%__match156597156598%_
                           _%e154242154807%_
                           _%hd154243154810%_
                           _%tl154244154812%_
                           _%__splice156558156559%_
                           _%target154245154815%_
                           _%tl154247154817%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop154272154884%_
                                               _%target154269154879%_
                                               '()))
                                            (_%__match156597156598%_
                                             _%e154242154807%_
                                             _%hd154243154810%_
                                             _%tl154244154812%_
                                             _%__splice156558156559%_
                                             _%target154245154815%_
                                             _%tl154247154817%_))))
                                    (_%__match156597156598%_
                                     _%e154242154807%_
                                     _%hd154243154810%_
                                     _%tl154244154812%_
                                     _%__splice156558156559%_
                                     _%target154245154815%_
                                     _%tl154247154817%_))
                                (_%__match156597156598%_
                                 _%e154242154807%_
                                 _%hd154243154810%_
                                 _%tl154244154812%_
                                 _%__splice156558156559%_
                                 _%target154245154815%_
                                 _%tl154247154817%_))))
                        (_%__match156597156598%_
                         _%e154242154807%_
                         _%hd154243154810%_
                         _%tl154244154812%_
                         _%__splice156558156559%_
                         _%target154245154815%_
                         _%tl154247154817%_))
                    (_%__match156597156598%_
                     _%e154242154807%_
                     _%hd154243154810%_
                     _%tl154244154812%_
                     _%__splice156558156559%_
                     _%target154245154815%_
                     _%tl154247154817%_))
                (_%__match156597156598%_
                 _%e154242154807%_
                 _%hd154243154810%_
                 _%tl154244154812%_
                 _%__splice156558156559%_
                 _%target154245154815%_
                 _%tl154247154817%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match156597156598%_
                                                 _%e154242154807%_
                                                 _%hd154243154810%_
                                                 _%tl154244154812%_
                                                 _%__splice156558156559%_
                                                 _%target154245154815%_
                                                 _%tl154247154817%_))))
                                        (_%__match156597156598%_
                                         _%e154242154807%_
                                         _%hd154243154810%_
                                         _%tl154244154812%_
                                         _%__splice156558156559%_
                                         _%target154245154815%_
                                         _%tl154247154817%_))
                                    (_%__match156597156598%_
                                     _%e154242154807%_
                                     _%hd154243154810%_
                                     _%tl154244154812%_
                                     _%__splice156558156559%_
                                     _%target154245154815%_
                                     _%tl154247154817%_))
                                (_%__match156597156598%_
                                 _%e154242154807%_
                                 _%hd154243154810%_
                                 _%tl154244154812%_
                                 _%__splice156558156559%_
                                 _%target154245154815%_
                                 _%tl154247154817%_))))
                        (_%__match156597156598%_
                         _%e154242154807%_
                         _%hd154243154810%_
                         _%tl154244154812%_
                         _%__splice156558156559%_
                         _%target154245154815%_
                         _%tl154247154817%_))))
                (_%__match156597156598%_
                 _%e154242154807%_
                 _%hd154243154810%_
                 _%tl154244154812%_
                 _%__splice156558156559%_
                 _%target154245154815%_
                 _%tl154247154817%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop154248154820%_
                                     _%target154245154815%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx156554156555%_))
                              (let ((_%e154242154807%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx156554156555%_))))
                                (let ((_%tl154244154812%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e154242154807%_)))
                                      (_%hd154243154810%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e154242154807%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd154243154810%_))
                                      (let ((_%__splice156558156559%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%hd154243154810%_
                                                '0))))
                                        (let ((_%tl154247154817%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice156558156559%_
                                                  '1)))
                                              (_%target154245154815%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice156558156559%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl154247154817%_))
                                              (_%__match156585156586%_
                                               _%e154242154807%_
                                               _%hd154243154810%_
                                               _%tl154244154812%_
                                               _%__splice156558156559%_
                                               _%target154245154815%_
                                               _%tl154247154817%_)
                                              (_%__match156597156598%_
                                               _%e154242154807%_
                                               _%hd154243154810%_
                                               _%tl154244154812%_
                                               _%__splice156558156559%_
                                               _%target154245154815%_
                                               _%tl154247154817%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl154244154812%_))
                                          (let ((_%e154357154414%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl154244154812%_))))
                                            (let ((_%tl154359154419%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e154357154414%_)))
                                                  (_%hd154358154417%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e154357154414%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd154358154417%_))
                                                  (let ((_%e154360154422%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd154358154417%_))))
                                                    (let ((_%tl154362154427%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e154360154422%_)))
                                                          (_%hd154361154425%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e154360154422%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd154361154425%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd154361154425%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl154362154427%_))
                          (let ((_%e154363154430%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl154362154427%_))))
                            (let ((_%tl154365154435%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e154363154430%_)))
                                  (_%hd154364154433%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e154363154430%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd154364154433%_))
                                  (let ((_%e154366154438%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd154364154433%_))))
                                    (let ((_%tl154368154443%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e154366154438%_)))
                                          (_%hd154367154441%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e154366154438%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd154367154441%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd154367154441%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl154368154443%_))
                                                  (let ((_%e154369154446%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl154368154443%_))))
                                                    (let ((_%tl154371154451%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e154369154446%_)))
                                                          (_%hd154370154449%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e154369154446%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl154371154451%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl154365154435%_))
                      (let ((_%e154372154454%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl154365154435%_))))
                        (let ((_%tl154374154459%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e154372154454%_)))
                              (_%hd154373154457%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e154372154454%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd154373154457%_))
                              (let ((_%e154375154462%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd154373154457%_))))
                                (let ((_%tl154377154467%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e154375154462%_)))
                                      (_%hd154376154465%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e154375154462%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd154376154465%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd154376154465%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl154377154467%_))
                                              (let ((_%e154378154470%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl154377154467%_))))
                                                (let ((_%tl154380154475%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e154378154470%_)))
                                                      (_%hd154379154473%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e154378154470%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl154380154475%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl154374154459%_))
                                                          (let ((_%e154381154478%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl154374154459%_))))
                    (let ((_%tl154383154483%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e154381154478%_)))
                          (_%hd154382154481%_
                           (let ()
                             (declare (not safe))
                             (##car _%e154381154478%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd154382154481%_))
                          (let ((_%e154384154486%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd154382154481%_))))
                            (let ((_%tl154386154491%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e154384154486%_)))
                                  (_%hd154385154489%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e154384154486%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd154385154489%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _%hd154385154489%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl154386154491%_))
                                          (let ((_%e154387154494%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl154386154491%_))))
                                            (let ((_%tl154389154499%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e154387154494%_)))
                                                  (_%hd154388154497%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e154387154494%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl154389154499%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl154383154483%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl154359154419%_))
                                                          (_%__match156695156696%_
                                                           _%e154242154807%_
                                                           _%hd154243154810%_
                                                           _%tl154244154812%_
                                                           _%e154357154414%_
                                                           _%hd154358154417%_
                                                           _%tl154359154419%_
                                                           _%e154360154422%_
                                                           _%hd154361154425%_
                                                           _%tl154362154427%_
                                                           _%e154363154430%_
                                                           _%hd154364154433%_
                                                           _%tl154365154435%_
                                                           _%e154366154438%_
                                                           _%hd154367154441%_
                                                           _%tl154368154443%_
                                                           _%e154369154446%_
                                                           _%hd154370154449%_
                                                           _%tl154371154451%_
                                                           _%e154372154454%_
                                                           _%hd154373154457%_
                                                           _%tl154374154459%_
                                                           _%e154375154462%_
                                                           _%hd154376154465%_
                                                           _%tl154377154467%_
                                                           _%e154378154470%_
                                                           _%hd154379154473%_
                                                           _%tl154380154475%_
                                                           _%e154381154478%_
                                                           _%hd154382154481%_
                                                           _%tl154383154483%_
                                                           _%e154384154486%_
                                                           _%hd154385154489%_
                                                           _%tl154386154491%_
                                                           _%e154387154494%_
                                                           _%hd154388154497%_
                                                           _%tl154389154499%_)
                                                          (_%__kont156570156571%_))
                                                      (_%__kont156570156571%_))
                                                  (_%__kont156570156571%_))))
                                          (_%__kont156570156571%_))
                                      (_%__kont156570156571%_))
                                  (_%__kont156570156571%_))))
                          (_%__kont156570156571%_))))
                  (_%__kont156570156571%_))
              (_%__kont156570156571%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont156570156571%_))
                                          (_%__kont156570156571%_))
                                      (_%__kont156570156571%_))))
                              (_%__kont156570156571%_))))
                      (_%__kont156570156571%_))
                  (_%__kont156570156571%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont156570156571%_))
                                              (_%__kont156570156571%_))
                                          (_%__kont156570156571%_))))
                                  (_%__kont156570156571%_))))
                          (_%__kont156570156571%_))
                      (_%__kont156570156571%_))
                  (_%__kont156570156571%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont156570156571%_))))
                                          (_%__kont156570156571%_)))))
                              (_%__kont156570156571%_)))))))
                 (_%dispatch-case-e153542%_
                  (lambda (_%hd153693%_ _%body153694%_)
                    (let* ((_%form153696%_
                            (cons _%hd153693%_ (cons _%body153694%_ '())))
                           (_%__stx156698156699%_ _%form153696%_)
                           (_%g153700153824%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx156698156699%_)))))
                      (let ((_%__kont156700156701%_
                             (lambda (_%L154195%_ _%L154196%_ _%L154197%_)
                               (let ((__tmp157864
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L154196%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self153538%_
                                  __tmp157864))))
                            (_%__kont156706156707%_
                             (lambda (_%L154043%_
                                      _%L154044%_
                                      _%L154045%_
                                      _%L154046%_)
                               (let ((__tmp157865
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L154043%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self153538%_
                                  __tmp157865))))
                            (_%__kont156710156711%_
                             (lambda (_%L153909%_ _%L153910%_ _%L153911%_)
                               (let ((__tmp157866
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L153909%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self153538%_
                                  __tmp157866)))))
                        (let* ((_%__match156807156808%_
                                (lambda (_%e153790153829%_
                                         _%hd153791153832%_
                                         _%tl153792153834%_
                                         _%e153793153837%_
                                         _%hd153794153840%_
                                         _%tl153795153842%_
                                         _%e153796153845%_
                                         _%hd153797153848%_
                                         _%tl153798153850%_
                                         _%e153799153853%_
                                         _%hd153800153856%_
                                         _%tl153801153858%_
                                         _%e153802153861%_
                                         _%hd153803153864%_
                                         _%tl153804153866%_
                                         _%e153805153869%_
                                         _%hd153806153872%_
                                         _%tl153807153874%_
                                         _%e153808153877%_
                                         _%hd153809153880%_
                                         _%tl153810153882%_
                                         _%e153811153885%_
                                         _%hd153812153888%_
                                         _%tl153813153890%_
                                         _%e153814153893%_
                                         _%hd153815153896%_
                                         _%tl153816153898%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl153810153882%_))
                                      (let ((_%e153817153901%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl153810153882%_))))
                                        (let ((_%tl153819153906%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e153817153901%_)))
                                              (_%hd153818153904%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e153817153901%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl153819153906%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl153795153842%_))
                                                  (_%__kont156710156711%_
                                                   _%hd153815153896%_
                                                   _%hd153806153872%_
                                                   _%hd153791153832%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g153700153824%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g153700153824%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g153700153824%_)))))
                               (_%__match156737156738%_
                                (lambda (_%e153751153947%_
                                         _%hd153752153950%_
                                         _%tl153753153952%_
                                         _%__splice156708156709%_
                                         _%target153754153955%_
                                         _%tl153756153957%_)
                                  (letrec ((_%loop153757153960%_
                                            (lambda (_%hd153755153963%_
                                                     _%arg153761153965%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd153755153963%_))
                                                  (let ((_%e153758153968%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd153755153963%_))))
                                                    (let ((_%lp-tl153760153973%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e153758153968%_)))
                                                          (_%lp-hd153759153971%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e153758153968%_))))
                                                      (_%loop153757153960%_
                                                       _%lp-tl153760153973%_
                                                       (cons _%lp-hd153759153971%_
                                                             _%arg153761153965%_))))
                                                  (let ((_%arg153762153976%_
                                                         (reverse _%arg153761153965%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl153753153952%_))
                                                        (let ((_%e153763153979%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl153753153952%_))))
                  (let ((_%tl153765153984%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e153763153979%_)))
                        (_%hd153764153982%_
                         (let ()
                           (declare (not safe))
                           (##car _%e153763153979%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd153764153982%_))
                        (let ((_%e153766153987%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd153764153982%_))))
                          (let ((_%tl153768153992%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e153766153987%_)))
                                (_%hd153767153990%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e153766153987%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd153767153990%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd153767153990%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl153768153992%_))
                                        (let ((_%e153769153995%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl153768153992%_))))
                                          (let ((_%tl153771154000%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e153769153995%_)))
                                                (_%hd153770153998%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e153769153995%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd153770153998%_))
                                                (let ((_%e153772154003%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd153770153998%_))))
                                                  (let ((_%tl153774154008%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e153772154003%_)))
                                                        (_%hd153773154006%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e153772154003%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd153773154006%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd153773154006%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl153774154008%_))
                        (let ((_%e153775154011%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl153774154008%_))))
                          (let ((_%tl153777154016%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e153775154011%_)))
                                (_%hd153776154014%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e153775154011%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl153777154016%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl153771154000%_))
                                    (let ((_%e153778154019%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl153771154000%_))))
                                      (let ((_%tl153780154024%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e153778154019%_)))
                                            (_%hd153779154022%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e153778154019%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd153779154022%_))
                                            (let ((_%e153781154027%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd153779154022%_))))
                                              (let ((_%tl153783154032%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e153781154027%_)))
                                                    (_%hd153782154030%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e153781154027%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd153782154030%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd153782154030%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl153783154032%_))
                                                            (let ((_%e153784154035%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl153783154032%_))))
                      (let ((_%tl153786154040%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e153784154035%_)))
                            (_%hd153785154038%_
                             (let ()
                               (declare (not safe))
                               (##car _%e153784154035%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl153786154040%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl153765153984%_))
                                (_%__kont156706156707%_
                                 _%hd153785154038%_
                                 _%hd153776154014%_
                                 _%tl153756153957%_
                                 _%arg153762153976%_)
                                (_%__match156807156808%_
                                 _%e153751153947%_
                                 _%hd153752153950%_
                                 _%tl153753153952%_
                                 _%e153763153979%_
                                 _%hd153764153982%_
                                 _%tl153765153984%_
                                 _%e153766153987%_
                                 _%hd153767153990%_
                                 _%tl153768153992%_
                                 _%e153769153995%_
                                 _%hd153770153998%_
                                 _%tl153771154000%_
                                 _%e153772154003%_
                                 _%hd153773154006%_
                                 _%tl153774154008%_
                                 _%e153775154011%_
                                 _%hd153776154014%_
                                 _%tl153777154016%_
                                 _%e153778154019%_
                                 _%hd153779154022%_
                                 _%tl153780154024%_
                                 _%e153781154027%_
                                 _%hd153782154030%_
                                 _%tl153783154032%_
                                 _%e153784154035%_
                                 _%hd153785154038%_
                                 _%tl153786154040%_))
                            (let ()
                              (declare (not safe))
                              (_%g153700153824%_)))))
                    (let () (declare (not safe)) (_%g153700153824%_)))
                (let () (declare (not safe)) (_%g153700153824%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g153700153824%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g153700153824%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g153700153824%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g153700153824%_)))))
                        (let () (declare (not safe)) (_%g153700153824%_)))
                    (let () (declare (not safe)) (_%g153700153824%_)))
                (let () (declare (not safe)) (_%g153700153824%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g153700153824%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g153700153824%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g153700153824%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g153700153824%_)))))
                        (let () (declare (not safe)) (_%g153700153824%_)))))
                (let () (declare (not safe)) (_%g153700153824%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop153757153960%_
                                     _%target153754153955%_
                                     '()))))
                               (_%__match156725156726%_
                                (lambda (_%e153705154083%_
                                         _%hd153706154086%_
                                         _%tl153707154088%_
                                         _%__splice156702156703%_
                                         _%target153708154091%_
                                         _%tl153710154093%_)
                                  (letrec ((_%loop153711154096%_
                                            (lambda (_%hd153709154099%_
                                                     _%arg153715154101%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd153709154099%_))
                                                  (let ((_%e153712154104%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd153709154099%_))))
                                                    (let ((_%lp-tl153714154109%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e153712154104%_)))
                                                          (_%lp-hd153713154107%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e153712154104%_))))
                                                      (_%loop153711154096%_
                                                       _%lp-tl153714154109%_
                                                       (cons _%lp-hd153713154107%_
                                                             _%arg153715154101%_))))
                                                  (let ((_%arg153716154112%_
                                                         (reverse _%arg153715154101%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl153707154088%_))
                                                        (let ((_%e153717154115%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl153707154088%_))))
                  (let ((_%tl153719154120%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e153717154115%_)))
                        (_%hd153718154118%_
                         (let ()
                           (declare (not safe))
                           (##car _%e153717154115%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd153718154118%_))
                        (let ((_%e153720154123%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd153718154118%_))))
                          (let ((_%tl153722154128%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e153720154123%_)))
                                (_%hd153721154126%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e153720154123%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd153721154126%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd153721154126%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl153722154128%_))
                                        (let ((_%e153723154131%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl153722154128%_))))
                                          (let ((_%tl153725154136%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e153723154131%_)))
                                                (_%hd153724154134%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e153723154131%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd153724154134%_))
                                                (let ((_%e153726154139%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd153724154134%_))))
                                                  (let ((_%tl153728154144%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e153726154139%_)))
                                                        (_%hd153727154142%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e153726154139%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd153727154142%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd153727154142%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl153728154144%_))
                        (let ((_%e153729154147%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl153728154144%_))))
                          (let ((_%tl153731154152%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e153729154147%_)))
                                (_%hd153730154150%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e153729154147%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl153731154152%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl153725154136%_))
                                    (let ((_%__splice156704156705%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl153725154136%_
                                              '0))))
                                      (let ((_%tl153734154157%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice156704156705%_
                                                '1)))
                                            (_%target153732154155%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice156704156705%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl153734154157%_))
                                            (letrec ((_%loop153735154160%_
                                                      (lambda (_%hd153733154163%_
                                                               _%xarg153739154165%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd153733154163%_))
                                                            (let ((_%e153736154168%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd153733154163%_))))
                      (let ((_%lp-tl153738154173%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e153736154168%_)))
                            (_%lp-hd153737154171%_
                             (let ()
                               (declare (not safe))
                               (##car _%e153736154168%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd153737154171%_))
                            (let ((_%e153741154176%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd153737154171%_))))
                              (let ((_%tl153743154181%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e153741154176%_)))
                                    (_%hd153742154179%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e153741154176%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd153742154179%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd153742154179%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl153743154181%_))
                                            (let ((_%e153744154184%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl153743154181%_))))
                                              (let ((_%tl153746154189%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e153744154184%_)))
                                                    (_%hd153745154187%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e153744154184%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl153746154189%_))
                                                    (_%loop153735154160%_
                                                     _%lp-tl153738154173%_
                                                     (cons _%hd153745154187%_
                                                           _%xarg153739154165%_))
                                                    (_%__match156737156738%_
                                                     _%e153705154083%_
                                                     _%hd153706154086%_
                                                     _%tl153707154088%_
                                                     _%__splice156702156703%_
                                                     _%target153708154091%_
                                                     _%tl153710154093%_))))
                                            (_%__match156737156738%_
                                             _%e153705154083%_
                                             _%hd153706154086%_
                                             _%tl153707154088%_
                                             _%__splice156702156703%_
                                             _%target153708154091%_
                                             _%tl153710154093%_))
                                        (_%__match156737156738%_
                                         _%e153705154083%_
                                         _%hd153706154086%_
                                         _%tl153707154088%_
                                         _%__splice156702156703%_
                                         _%target153708154091%_
                                         _%tl153710154093%_))
                                    (_%__match156737156738%_
                                     _%e153705154083%_
                                     _%hd153706154086%_
                                     _%tl153707154088%_
                                     _%__splice156702156703%_
                                     _%target153708154091%_
                                     _%tl153710154093%_))))
                            (_%__match156737156738%_
                             _%e153705154083%_
                             _%hd153706154086%_
                             _%tl153707154088%_
                             _%__splice156702156703%_
                             _%target153708154091%_
                             _%tl153710154093%_))))
                    (let ((_%xarg153740154192%_
                           (reverse _%xarg153739154165%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl153719154120%_))
                          (_%__kont156700156701%_
                           _%xarg153740154192%_
                           _%hd153730154150%_
                           _%arg153716154112%_)
                          (_%__match156737156738%_
                           _%e153705154083%_
                           _%hd153706154086%_
                           _%tl153707154088%_
                           _%__splice156702156703%_
                           _%target153708154091%_
                           _%tl153710154093%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop153735154160%_
                                               _%target153732154155%_
                                               '()))
                                            (_%__match156737156738%_
                                             _%e153705154083%_
                                             _%hd153706154086%_
                                             _%tl153707154088%_
                                             _%__splice156702156703%_
                                             _%target153708154091%_
                                             _%tl153710154093%_))))
                                    (_%__match156737156738%_
                                     _%e153705154083%_
                                     _%hd153706154086%_
                                     _%tl153707154088%_
                                     _%__splice156702156703%_
                                     _%target153708154091%_
                                     _%tl153710154093%_))
                                (_%__match156737156738%_
                                 _%e153705154083%_
                                 _%hd153706154086%_
                                 _%tl153707154088%_
                                 _%__splice156702156703%_
                                 _%target153708154091%_
                                 _%tl153710154093%_))))
                        (_%__match156737156738%_
                         _%e153705154083%_
                         _%hd153706154086%_
                         _%tl153707154088%_
                         _%__splice156702156703%_
                         _%target153708154091%_
                         _%tl153710154093%_))
                    (_%__match156737156738%_
                     _%e153705154083%_
                     _%hd153706154086%_
                     _%tl153707154088%_
                     _%__splice156702156703%_
                     _%target153708154091%_
                     _%tl153710154093%_))
                (_%__match156737156738%_
                 _%e153705154083%_
                 _%hd153706154086%_
                 _%tl153707154088%_
                 _%__splice156702156703%_
                 _%target153708154091%_
                 _%tl153710154093%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match156737156738%_
                                                 _%e153705154083%_
                                                 _%hd153706154086%_
                                                 _%tl153707154088%_
                                                 _%__splice156702156703%_
                                                 _%target153708154091%_
                                                 _%tl153710154093%_))))
                                        (_%__match156737156738%_
                                         _%e153705154083%_
                                         _%hd153706154086%_
                                         _%tl153707154088%_
                                         _%__splice156702156703%_
                                         _%target153708154091%_
                                         _%tl153710154093%_))
                                    (_%__match156737156738%_
                                     _%e153705154083%_
                                     _%hd153706154086%_
                                     _%tl153707154088%_
                                     _%__splice156702156703%_
                                     _%target153708154091%_
                                     _%tl153710154093%_))
                                (_%__match156737156738%_
                                 _%e153705154083%_
                                 _%hd153706154086%_
                                 _%tl153707154088%_
                                 _%__splice156702156703%_
                                 _%target153708154091%_
                                 _%tl153710154093%_))))
                        (_%__match156737156738%_
                         _%e153705154083%_
                         _%hd153706154086%_
                         _%tl153707154088%_
                         _%__splice156702156703%_
                         _%target153708154091%_
                         _%tl153710154093%_))))
                (_%__match156737156738%_
                 _%e153705154083%_
                 _%hd153706154086%_
                 _%tl153707154088%_
                 _%__splice156702156703%_
                 _%target153708154091%_
                 _%tl153710154093%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop153711154096%_
                                     _%target153708154091%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx156698156699%_))
                              (let ((_%e153705154083%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx156698156699%_))))
                                (let ((_%tl153707154088%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e153705154083%_)))
                                      (_%hd153706154086%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e153705154083%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd153706154086%_))
                                      (let ((_%__splice156702156703%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%hd153706154086%_
                                                '0))))
                                        (let ((_%tl153710154093%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice156702156703%_
                                                  '1)))
                                              (_%target153708154091%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice156702156703%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl153710154093%_))
                                              (_%__match156725156726%_
                                               _%e153705154083%_
                                               _%hd153706154086%_
                                               _%tl153707154088%_
                                               _%__splice156702156703%_
                                               _%target153708154091%_
                                               _%tl153710154093%_)
                                              (_%__match156737156738%_
                                               _%e153705154083%_
                                               _%hd153706154086%_
                                               _%tl153707154088%_
                                               _%__splice156702156703%_
                                               _%target153708154091%_
                                               _%tl153710154093%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl153707154088%_))
                                          (let ((_%e153793153837%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl153707154088%_))))
                                            (let ((_%tl153795153842%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e153793153837%_)))
                                                  (_%hd153794153840%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e153793153837%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd153794153840%_))
                                                  (let ((_%e153796153845%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd153794153840%_))))
                                                    (let ((_%tl153798153850%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e153796153845%_)))
                                                          (_%hd153797153848%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e153796153845%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd153797153848%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd153797153848%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl153798153850%_))
                          (let ((_%e153799153853%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl153798153850%_))))
                            (let ((_%tl153801153858%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e153799153853%_)))
                                  (_%hd153800153856%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e153799153853%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd153800153856%_))
                                  (let ((_%e153802153861%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd153800153856%_))))
                                    (let ((_%tl153804153866%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e153802153861%_)))
                                          (_%hd153803153864%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e153802153861%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd153803153864%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd153803153864%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl153804153866%_))
                                                  (let ((_%e153805153869%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl153804153866%_))))
                                                    (let ((_%tl153807153874%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e153805153869%_)))
                                                          (_%hd153806153872%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e153805153869%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl153807153874%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl153801153858%_))
                      (let ((_%e153808153877%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl153801153858%_))))
                        (let ((_%tl153810153882%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e153808153877%_)))
                              (_%hd153809153880%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e153808153877%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd153809153880%_))
                              (let ((_%e153811153885%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd153809153880%_))))
                                (let ((_%tl153813153890%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e153811153885%_)))
                                      (_%hd153812153888%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e153811153885%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd153812153888%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd153812153888%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl153813153890%_))
                                              (let ((_%e153814153893%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl153813153890%_))))
                                                (let ((_%tl153816153898%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e153814153893%_)))
                                                      (_%hd153815153896%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e153814153893%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl153816153898%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl153810153882%_))
                                                          (let ((_%e153817153901%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl153810153882%_))))
                    (let ((_%tl153819153906%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e153817153901%_)))
                          (_%hd153818153904%_
                           (let ()
                             (declare (not safe))
                             (##car _%e153817153901%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl153819153906%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl153795153842%_))
                              (_%__kont156710156711%_
                               _%hd153815153896%_
                               _%hd153806153872%_
                               _%hd153706154086%_)
                              (let ()
                                (declare (not safe))
                                (_%g153700153824%_)))
                          (let () (declare (not safe)) (_%g153700153824%_)))))
                  (let () (declare (not safe)) (_%g153700153824%_)))
              (let () (declare (not safe)) (_%g153700153824%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g153700153824%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g153700153824%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g153700153824%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g153700153824%_)))))
                      (let () (declare (not safe)) (_%g153700153824%_)))
                  (let () (declare (not safe)) (_%g153700153824%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g153700153824%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g153700153824%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g153700153824%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g153700153824%_)))))
                          (let () (declare (not safe)) (_%g153700153824%_)))
                      (let () (declare (not safe)) (_%g153700153824%_)))
                  (let () (declare (not safe)) (_%g153700153824%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g153700153824%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g153700153824%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g153700153824%_))))))))
                 (_%generate1153543%_
                  (lambda (_%args153678%_
                           _%arglen153679%_
                           _%hd153680%_
                           _%body153681%_)
                    (let* ((_%len153683%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-length _%hd153680%_)))
                           (_%condition153688%_
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _%hd153680%_))
                                (if (gxc#current-compile-decls-unsafe?)
                                    (cons '##fx=
                                          (cons _%arglen153679%_
                                                (cons _%len153683%_ '())))
                                    (cons 'let
                                          (cons '()
                                                (cons '(declare (not safe))
                                                      (cons (cons '##fx=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%arglen153679%_ (cons _%len153683%_ '())))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (if (> _%len153683%_ '0)
                                    (if (gxc#current-compile-decls-unsafe?)
                                        (cons '##fx>=
                                              (cons _%arglen153679%_
                                                    (cons _%len153683%_ '())))
                                        (cons 'let
                                              (cons '()
                                                    (cons '(declare (not safe))
                                                          (cons (cons '##fx>=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%arglen153679%_ (cons _%len153683%_ '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '#t)))
                           (_%dispatch153690%_
                            (if (_%dispatch-case?153541%_
                                 _%hd153680%_
                                 _%body153681%_)
                                (_%dispatch-case-e153542%_
                                 _%hd153680%_
                                 _%body153681%_)
                                (gxc#generate-runtime-lambda-form
                                 _%self153538%_
                                 _%hd153680%_
                                 _%body153681%_))))
                      (cons _%condition153688%_
                            (cons (cons 'apply
                                        (cons _%dispatch153690%_
                                              (cons _%args153678%_ '())))
                                  '()))))))
          (let* ((_%g153545153573%_
                  (lambda (_%g153546153570%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g153546153570%_))))
                 (_%g153544153675%_
                  (lambda (_%g153546153576%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g153546153576%_))
                        (let ((_%e153549153578%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g153546153576%_))))
                          (let ((_%hd153550153581%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e153549153578%_)))
                                (_%tl153551153583%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e153549153578%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl153551153583%_))
                                (let ((_g157867_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl153551153583%_
                                          '0))))
                                  (begin
                                    (let ((_g157868_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g157867_)
                                                 (##values-length _g157867_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g157868_ 2)))
                                          (error "Context expects 2 values"
                                                 _g157868_)))
                                    (let ((_%target153552153586%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g157867_ 0)))
                                          (_%tl153554153588%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g157867_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl153554153588%_))
                                          (letrec ((_%loop153555153591%_
                                                    (lambda (_%hd153553153594%_
                                                             _%body153559153596%_
                                                             _%hd153560153598%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd153553153594%_))
                                                          (let ((_%e153556153601%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd153553153594%_))))
                    (let ((_%lp-hd153557153604%_
                           (let ()
                             (declare (not safe))
                             (##car _%e153556153601%_)))
                          (_%lp-tl153558153606%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e153556153601%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd153557153604%_))
                          (let ((_%e153563153609%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd153557153604%_))))
                            (let ((_%hd153564153612%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e153563153609%_)))
                                  (_%tl153565153614%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e153563153609%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl153565153614%_))
                                  (let ((_%e153566153617%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl153565153614%_))))
                                    (let ((_%hd153567153620%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e153566153617%_)))
                                          (_%tl153568153622%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e153566153617%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl153568153622%_))
                                          (_%loop153555153591%_
                                           _%lp-tl153558153606%_
                                           (cons _%hd153567153620%_
                                                 _%body153559153596%_)
                                           (cons _%hd153564153612%_
                                                 _%hd153560153598%_))
                                          (_%g153545153573%_
                                           _%g153546153576%_))))
                                  (_%g153545153573%_ _%g153546153576%_))))
                          (_%g153545153573%_ _%g153546153576%_))))
                  (let ((_%body153561153625%_ (reverse _%body153559153596%_))
                        (_%hd153562153627%_ (reverse _%hd153560153598%_)))
                    ((lambda (_%L153630%_ _%L153631%_)
                       (let ((_%args153650%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%arglen153651%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%name153652%_
                              (let ((_%$e153647%_
                                     (let ((__tmp157869
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-runtime-names))))
                                       (declare (not safe))
                                       (hash-get __tmp157869 _%stx153539%_))))
                                (if _%$e153647%_
                                    _%$e153647%_
                                    ''case-lambda-dispatch))))
                         (cons 'lambda
                               (cons _%args153650%_
                                     (cons (cons 'let
                                                 (cons (cons (cons _%arglen153651%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (gxc#current-compile-decls-unsafe?)
                                     (cons '##length (cons _%args153650%_ '()))
                                     (cons 'let
                                           (cons '()
                                                 (cons '(declare (not safe))
                                                       (cons (cons '##length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%args153650%_ '()))
                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 '()))
                     '())
               (cons (cons 'cond
                           (let ((__tmp157873
                                  (cons (cons 'else
                                              (cons (cons '##raise-wrong-number-of-arguments-exception
                                                          (cons _%name153652%_
                                                                (cons _%args153650%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '()))
                                 (__tmp157870
                                  (map (lambda (_%g153653153656%_
                                                _%g153654153658%_)
                                         (_%generate1153543%_
                                          _%args153650%_
                                          _%arglen153651%_
                                          _%g153653153656%_
                                          _%g153654153658%_))
                                       (let ((__tmp157871
                                              (lambda (_%g153660153663%_
                                                       _%g153661153665%_)
                                                (cons _%g153660153663%_
                                                      _%g153661153665%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp157871
                                          '()
                                          _%L153631%_))
                                       (let ((__tmp157872
                                              (lambda (_%g153667153670%_
                                                       _%g153668153672%_)
                                                (cons _%g153667153670%_
                                                      _%g153668153672%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp157872
                                          '()
                                          _%L153630%_)))))
                             (declare (not safe))
                             (__foldr1 cons __tmp157873 __tmp157870)))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))
                     _%body153561153625%_
                     _%hd153562153627%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop153555153591%_
                                             _%target153552153586%_
                                             '()
                                             '()))
                                          (_%g153545153573%_
                                           _%g153546153576%_)))))
                                (_%g153545153573%_ _%g153546153576%_))))
                        (_%g153545153573%_ _%g153546153576%_)))))
            (_%g153544153675%_ _%stx153539%_)))))
    (define gxc#generate-runtime-let-values%__%
      (lambda (_%self152775%_ _%stx152776%_ _%compiled-body?152777%_)
        (letrec ((_%generate-simple152779%_
                  (lambda (_%hd153523%_ _%body153524%_)
                    (_%coalesce-boolean152780%_
                     (_%simplify-let152781%_
                      (gxc#generate-runtime-simple-let
                       _%self152775%_
                       'let
                       _%hd153523%_
                       _%body153524%_
                       _%compiled-body?152777%_)))))
                 (_%coalesce-boolean152780%_
                  (lambda (_%code153384%_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-boolean-context))
                        (let* ((_%code153385153411%_ _%code153384%_)
                               (_%else153387153419%_
                                (lambda () _%code153384%_))
                               (_%K153389153456%_
                                (lambda (_%expr2153422%_
                                         _%expr1153423%_
                                         _%id153424%_)
                                  (let* ((_%expr2153425153433%_
                                          _%expr2153422%_)
                                         (_%else153427153441%_
                                          (lambda ()
                                            (cons 'or
                                                  (cons _%expr1153423%_
                                                        (cons _%expr2153422%_
                                                              '())))))
                                         (_%K153429153446%_
                                          (lambda (_%exprs153444%_)
                                            (cons 'or
                                                  (cons _%expr1153423%_
                                                        _%exprs153444%_)))))
                                    (if (pair? _%expr2153425153433%_)
                                        (let ((_%hd153430153449%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%expr2153425153433%_)))
                                              (_%tl153431153451%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%expr2153425153433%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd153430153449%_ 'or))
                                              (let ((_%exprs153454%_
                                                     _%tl153431153451%_))
                                                (_%K153429153446%_
                                                 _%exprs153454%_))
                                              (_%else153427153441%_)))
                                        (_%else153427153441%_))))))
                          (if (pair? _%code153385153411%_)
                              (let ((_%hd153390153459%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%code153385153411%_)))
                                    (_%tl153391153461%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%code153385153411%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%hd153390153459%_ 'let))
                                    (if (pair? _%tl153391153461%_)
                                        (let ((_%hd153392153464%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%tl153391153461%_)))
                                              (_%tl153393153466%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%tl153391153461%_))))
                                          (if (pair? _%hd153392153464%_)
                                              (let ((_%hd153404153469%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%hd153392153464%_)))
                                                    (_%tl153405153471%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%hd153392153464%_))))
                                                (if (pair? _%hd153404153469%_)
                                                    (let ((_%hd153406153474%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%hd153404153469%_)))
                                                          (_%tl153407153476%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%hd153404153469%_))))
                                                      (let ((_%id153479%_
                                                             _%hd153406153474%_))
                                                        (if (pair? _%tl153407153476%_)
                                                            (let ((_%hd153408153481%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##car _%tl153407153476%_)))
                          (_%tl153409153483%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl153407153476%_))))
                      (let ((_%expr1153486%_ _%hd153408153481%_))
                        (if (null? _%tl153409153483%_)
                            (if (null? _%tl153405153471%_)
                                (if (pair? _%tl153393153466%_)
                                    (let ((_%hd153394153488%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl153393153466%_)))
                                          (_%tl153395153490%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl153393153466%_))))
                                      (if (pair? _%hd153394153488%_)
                                          (let ((_%hd153396153493%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd153394153488%_)))
                                                (_%tl153397153495%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd153394153488%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd153396153493%_
                                                         'if))
                                                (if (pair? _%tl153397153495%_)
                                                    (let ((_%hd153398153498%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl153397153495%_)))
                                                          (_%tl153399153500%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl153397153495%_))))
                                                      (if ((lambda (_%g153502153504%_)
                                                             (eq? _%g153502153504%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id153479%_))
                   _%hd153398153498%_)
                  (if (pair? _%tl153399153500%_)
                      (let ((_%hd153400153507%_
                             (let ()
                               (declare (not safe))
                               (##car _%tl153399153500%_)))
                            (_%tl153401153509%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%tl153399153500%_))))
                        (if ((lambda (_%g153511153513%_)
                               (eq? _%g153511153513%_ _%id153479%_))
                             _%hd153400153507%_)
                            (if (pair? _%tl153401153509%_)
                                (let ((_%hd153402153516%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl153401153509%_)))
                                      (_%tl153403153518%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl153401153509%_))))
                                  (let ((_%expr2153521%_ _%hd153402153516%_))
                                    (if (null? _%tl153403153518%_)
                                        (if (null? _%tl153395153490%_)
                                            (_%K153389153456%_
                                             _%expr2153521%_
                                             _%expr1153486%_
                                             _%id153479%_)
                                            (_%else153387153419%_))
                                        (_%else153387153419%_))))
                                (_%else153387153419%_))
                            (_%else153387153419%_)))
                      (_%else153387153419%_))
                  (_%else153387153419%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else153387153419%_))
                                                (_%else153387153419%_)))
                                          (_%else153387153419%_)))
                                    (_%else153387153419%_))
                                (_%else153387153419%_))
                            (_%else153387153419%_))))
                    (_%else153387153419%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else153387153419%_)))
                                              (_%else153387153419%_)))
                                        (_%else153387153419%_))
                                    (_%else153387153419%_)))
                              (_%else153387153419%_)))
                        _%code153384%_)))
                 (_%simplify-let152781%_
                  (lambda (_%code153083%_)
                    (let* ((_%code153084153156%_ _%code153083%_)
                           (_%else153089153164%_ (lambda () _%code153083%_)))
                      (let ((_%K153148153364%_
                             (lambda (_%expr153362%_) _%expr153362%_))
                            (_%K153131153310%_
                             (lambda (_%body153306%_
                                      _%expr153307%_
                                      _%id153308%_)
                               (cons 'let
                                     (cons (cons (cons _%id153308%_
                                                       (cons _%expr153307%_
                                                             '()))
                                                 '())
                                           _%body153306%_))))
                            (_%K153108153234%_
                             (lambda (_%body153228%_
                                      _%expr2153229%_
                                      _%id2153230%_
                                      _%expr1153231%_
                                      _%id1153232%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1153232%_
                                                       (cons _%expr1153231%_
                                                             '()))
                                                 (cons (cons _%id2153230%_
                                                             (cons _%expr2153229%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body153228%_))))
                            (_%K153091153173%_
                             (lambda (_%body153168%_
                                      _%bind153169%_
                                      _%expr1153170%_
                                      _%id1153171%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1153171%_
                                                       (cons _%expr1153170%_
                                                             '()))
                                                 _%bind153169%_)
                                           _%body153168%_)))))
                        (if (pair? _%code153084153156%_)
                            (let ((_%tl153150153369%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%code153084153156%_)))
                                  (_%hd153149153367%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%code153084153156%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd153149153367%_ 'let))
                                  (if (pair? _%tl153150153369%_)
                                      (let ((_%tl153152153374%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%tl153150153369%_)))
                                            (_%hd153151153372%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%tl153150153369%_))))
                                        (if (null? _%hd153151153372%_)
                                            (if (pair? _%tl153152153374%_)
                                                (let ((_%tl153154153379%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%tl153152153374%_)))
                                                      (_%hd153153153377%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%tl153152153374%_))))
                                                  (if (null? _%tl153154153379%_)
                                                      (let ((_%expr153382%_
                                                             _%hd153153153377%_))
                                                        (_%K153148153364%_
                                                         _%expr153382%_))
                                                      (_%else153089153164%_)))
                                                (_%else153089153164%_))
                                            (if (pair? _%hd153151153372%_)
                                                (let ((_%tl153143153325%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd153151153372%_)))
                                                      (_%hd153142153323%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd153151153372%_))))
                                                  (if (pair? _%hd153142153323%_)
                                                      (let ((_%tl153145153330%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%hd153142153323%_)))
                    (_%hd153144153328%_
                     (let () (declare (not safe)) (##car _%hd153142153323%_))))
                (if (pair? _%tl153145153330%_)
                    (let ((_%tl153147153337%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl153145153330%_)))
                          (_%hd153146153335%_
                           (let ()
                             (declare (not safe))
                             (##car _%tl153145153330%_))))
                      (if (null? _%tl153147153337%_)
                          (if (null? _%tl153143153325%_)
                              (if (pair? _%tl153152153374%_)
                                  (let ((_%tl153137153344%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl153152153374%_)))
                                        (_%hd153136153342%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl153152153374%_))))
                                    (if (pair? _%hd153136153342%_)
                                        (let ((_%tl153139153349%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%hd153136153342%_)))
                                              (_%hd153138153347%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%hd153136153342%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd153138153347%_
                                                       'let))
                                              (if (pair? _%tl153139153349%_)
                                                  (let ((_%tl153141153354%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl153139153349%_)))
                                                        (_%hd153140153352%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl153139153349%_))))
                                                    (if (null? _%hd153140153352%_)
                                                        (if (null? _%tl153137153344%_)
                                                            (let ((_%id153333%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%hd153144153328%_)
                          (_%expr153340%_ _%hd153146153335%_)
                          (_%body153357%_ _%tl153141153354%_))
                      (_%K153131153310%_
                       _%body153357%_
                       _%expr153340%_
                       _%id153333%_))
                    (_%else153089153164%_))
                (if (pair? _%hd153140153352%_)
                    (let ((_%tl153120153283%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%hd153140153352%_)))
                          (_%hd153119153281%_
                           (let ()
                             (declare (not safe))
                             (##car _%hd153140153352%_))))
                      (if (pair? _%hd153119153281%_)
                          (let ((_%tl153122153288%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd153119153281%_)))
                                (_%hd153121153286%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd153119153281%_))))
                            (if (pair? _%tl153122153288%_)
                                (let ((_%tl153124153295%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl153122153288%_)))
                                      (_%hd153123153293%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl153122153288%_))))
                                  (if (null? _%tl153124153295%_)
                                      (if (null? _%tl153120153283%_)
                                          (if (null? _%tl153137153344%_)
                                              (let ((_%id1153257%_
                                                     _%hd153144153328%_)
                                                    (_%expr1153264%_
                                                     _%hd153146153335%_)
                                                    (_%id2153291%_
                                                     _%hd153121153286%_)
                                                    (_%expr2153298%_
                                                     _%hd153123153293%_)
                                                    (_%body153300%_
                                                     _%tl153141153354%_))
                                                (_%K153108153234%_
                                                 _%body153300%_
                                                 _%expr2153298%_
                                                 _%id2153291%_
                                                 _%expr1153264%_
                                                 _%id1153257%_))
                                              (_%else153089153164%_))
                                          (_%else153089153164%_))
                                      (_%else153089153164%_)))
                                (_%else153089153164%_)))
                          (_%else153089153164%_)))
                    (_%else153089153164%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else153089153164%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##eq? _%hd153138153347%_
                                                           'let*))
                                                  (if (pair? _%tl153139153349%_)
                                                      (let ((_%tl153101153217%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%tl153139153349%_)))
                    (_%hd153100153215%_
                     (let () (declare (not safe)) (##car _%tl153139153349%_))))
                (if (null? _%tl153137153344%_)
                    (let ((_%id1153196%_ _%hd153144153328%_)
                          (_%expr1153203%_ _%hd153146153335%_)
                          (_%bind153220%_ _%hd153100153215%_)
                          (_%body153222%_ _%tl153101153217%_))
                      (_%K153091153173%_
                       _%body153222%_
                       _%bind153220%_
                       _%expr1153203%_
                       _%id1153196%_))
                    (_%else153089153164%_)))
              (_%else153089153164%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else153089153164%_))))
                                        (_%else153089153164%_)))
                                  (_%else153089153164%_))
                              (_%else153089153164%_))
                          (_%else153089153164%_)))
                    (_%else153089153164%_)))
              (_%else153089153164%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else153089153164%_))))
                                      (_%else153089153164%_))
                                  (_%else153089153164%_)))
                            (_%else153089153164%_))))))
                 (_%generate-values152782%_
                  (lambda (_%hd152896%_ _%body152897%_)
                    (let _%lp152899%_ ((_%rest152901%_ _%hd152896%_)
                                       (_%bind152902%_ '())
                                       (_%check152903%_ '())
                                       (_%post152904%_ '()))
                      (let* ((_%__stx157027157028%_ _%rest152901%_)
                             (_%g152907152918%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx157027157028%_)))))
                        (let ((_%__kont157029157030%_
                               (lambda (_%L152945%_ _%L152946%_)
                                 (let* ((_%__stx156983156984%_ _%L152946%_)
                                        (_%g152961152986%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx156983156984%_)))))
                                   (let ((_%__kont156985156986%_
                                          (lambda (_%L153059%_ _%L153060%_)
                                            (let ((_%eid153074%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%L153060%_)))
                                                  (_%expr153075%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self152775%_
                                                      _%L153059%_))))
                                              (_%lp152899%_
                                               _%L152945%_
                                               (cons (cons _%eid153074%_
                                                           (cons _%expr153075%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind152902%_)
                                               _%check152903%_
                                               _%post152904%_))))
                                         (_%__kont156987156988%_
                                          (lambda (_%L153007%_ _%L153008%_)
                                            (let* ((_%vals153021%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values153023%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals153021%_
                                                     _%L153008%_
                                                     _%L153007%_))
                                                   (_%refs153025%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals153021%_
                                                     _%L153008%_))
                                                   (_%expr153027%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self152775%_
                                                       _%L153007%_))))
                                              (_%lp152899%_
                                               _%L152945%_
                                               (cons (cons _%vals153021%_
                                                           (cons _%expr153027%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind152902%_)
                                               (cons _%check-values153023%_
                                                     _%check152903%_)
                                               (cons _%refs153025%_
                                                     _%post152904%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx156983156984%_))
                                         (let ((_%e152965153035%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx156983156984%_))))
                                           (let ((_%tl152967153040%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e152965153035%_)))
                                                 (_%hd152966153038%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e152965153035%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd152966153038%_))
                                                 (let ((_%e152968153043%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd152966153038%_))))
                                                   (let ((_%tl152970153048%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e152968153043%_)))
                                                         (_%hd152969153046%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e152968153043%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl152970153048%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl152967153040%_))
                     (let ((_%e152971153051%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl152967153040%_))))
                       (let ((_%tl152973153056%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e152971153051%_)))
                             (_%hd152972153054%_
                              (let ()
                                (declare (not safe))
                                (##car _%e152971153051%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl152973153056%_))
                             (_%__kont156985156986%_
                              _%hd152972153054%_
                              _%hd152969153046%_)
                             (let ()
                               (declare (not safe))
                               (_%g152961152986%_)))))
                     (let () (declare (not safe)) (_%g152961152986%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl152967153040%_))
                     (let ((_%e152979152999%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl152967153040%_))))
                       (let ((_%tl152981153004%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e152979152999%_)))
                             (_%hd152980153002%_
                              (let ()
                                (declare (not safe))
                                (##car _%e152979152999%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl152981153004%_))
                             (_%__kont156987156988%_
                              _%hd152980153002%_
                              _%hd152966153038%_)
                             (let ()
                               (declare (not safe))
                               (_%g152961152986%_)))))
                     (let () (declare (not safe)) (_%g152961152986%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl152967153040%_))
                                                     (let ((_%e152979152999%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl152967153040%_))))
                                                       (let ((_%tl152981153004%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e152979152999%_)))
                     (_%hd152980153002%_
                      (let () (declare (not safe)) (##car _%e152979152999%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl152981153004%_))
                     (_%__kont156987156988%_
                      _%hd152980153002%_
                      _%hd152966153038%_)
                     (let () (declare (not safe)) (_%g152961152986%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g152961152986%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g152961152986%_)))))))
                              (_%__kont157031157032%_
                               (lambda ()
                                 (let* ((_%body152925%_
                                         (if _%compiled-body?152777%_
                                             _%body152897%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self152775%_
                                                _%body152897%_))))
                                        (_%body152927%_
                                         (_%generate-values-post152783%_
                                          _%post152904%_
                                          _%body152925%_))
                                        (_%body152929%_
                                         (_%generate-values-check152784%_
                                          _%check152903%_
                                          _%body152927%_)))
                                   (cons 'let
                                         (cons (reverse _%bind152902%_)
                                               (cons _%body152929%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx157027157028%_))
                              (let ((_%e152911152937%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx157027157028%_))))
                                (let ((_%tl152913152942%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e152911152937%_)))
                                      (_%hd152912152940%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e152911152937%_))))
                                  (_%__kont157029157030%_
                                   _%tl152913152942%_
                                   _%hd152912152940%_)))
                              (_%__kont157031157032%_)))))))
                 (_%generate-values-post152783%_
                  (lambda (_%post152855%_ _%body152856%_)
                    (let _%lp152858%_ ((_%rest152860%_ _%post152855%_)
                                       (_%body152861%_ _%body152856%_))
                      (let* ((_%rest152862152870%_ _%rest152860%_)
                             (_%else152864152878%_ (lambda () _%body152861%_))
                             (_%K152866152884%_
                              (lambda (_%rest152881%_ _%bind152882%_)
                                (_%lp152858%_
                                 _%rest152881%_
                                 (cons 'let
                                       (cons _%bind152882%_
                                             (cons _%body152861%_ '())))))))
                        (if (pair? _%rest152862152870%_)
                            (let ((_%hd152867152887%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest152862152870%_)))
                                  (_%tl152868152889%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest152862152870%_))))
                              (let* ((_%bind152892%_ _%hd152867152887%_)
                                     (_%rest152894%_ _%tl152868152889%_))
                                (_%K152866152884%_
                                 _%rest152894%_
                                 _%bind152892%_)))
                            (_%else152864152878%_))))))
                 (_%generate-values-check152784%_
                  (lambda (_%check152852%_ _%body152853%_)
                    (cons 'begin
                          (let ((__tmp157875 (cons _%body152853%_ '()))
                                (__tmp157874 (reverse _%check152852%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp157875 __tmp157874))))))
          (let* ((_%g152786152803%_
                  (lambda (_%g152787152800%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g152787152800%_))))
                 (_%g152785152849%_
                  (lambda (_%g152787152806%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g152787152806%_))
                        (let ((_%e152790152808%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g152787152806%_))))
                          (let ((_%hd152791152811%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e152790152808%_)))
                                (_%tl152792152813%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e152790152808%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl152792152813%_))
                                (let ((_%e152793152816%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl152792152813%_))))
                                  (let ((_%hd152794152819%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e152793152816%_)))
                                        (_%tl152795152821%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e152793152816%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl152795152821%_))
                                        (let ((_%e152796152824%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl152795152821%_))))
                                          (let ((_%hd152797152827%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e152796152824%_)))
                                                (_%tl152798152829%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e152796152824%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl152798152829%_))
                                                ((lambda (_%L152832%_
                                                          _%L152833%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%L152833%_)
                                                       (_%generate-simple152779%_
                                                        _%L152833%_
                                                        _%L152832%_)
                                                       (_%generate-values152782%_
                                                        _%L152833%_
                                                        _%L152832%_)))
                                                 _%hd152797152827%_
                                                 _%hd152794152819%_)
                                                (_%g152786152803%_
                                                 _%g152787152806%_))))
                                        (_%g152786152803%_
                                         _%g152787152806%_))))
                                (_%g152786152803%_ _%g152787152806%_))))
                        (_%g152786152803%_ _%g152787152806%_)))))
            (_%g152785152849%_ _%stx152776%_)))))
    (define gxc#generate-runtime-let-values%__0
      (lambda (_%self153529%_ _%stx153530%_)
        (let ((_%compiled-body?153532%_ '#f))
          (gxc#generate-runtime-let-values%__%
           _%self153529%_
           _%stx153530%_
           _%compiled-body?153532%_))))
    (define gxc#generate-runtime-let-values%
      (lambda _g157876_
        (let ((_g157877_ (let () (declare (not safe)) (##length _g157876_))))
          (cond ((let () (declare (not safe)) (##fx= _g157877_ 2))
                 (apply gxc#generate-runtime-let-values%__0 _g157876_))
                ((let () (declare (not safe)) (##fx= _g157877_ 3))
                 (apply gxc#generate-runtime-let-values%__% _g157876_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-let-values%
                  _g157876_))))))
    (define gxc#generate-runtime-let-values-bind
      (lambda (_%vals152669%_ _%hd152670%_)
        (let _%lp152672%_ ((_%rest152674%_ _%hd152670%_)
                           (_%k152675%_ '0)
                           (_%r152676%_ '()))
          (let* ((_%__stx157041157042%_ _%rest152674%_)
                 (_%g152681152698%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx157041157042%_)))))
            (let ((_%__kont157043157044%_
                   (lambda (_%L152761%_)
                     (_%lp152672%_
                      _%L152761%_
                      (let () (declare (not safe)) (##fx+ _%k152675%_ '1))
                      _%r152676%_)))
                  (_%__kont157045157046%_
                   (lambda (_%L152734%_ _%L152735%_)
                     (_%lp152672%_
                      _%L152734%_
                      (let () (declare (not safe)) (##fx+ _%k152675%_ '1))
                      (cons (cons (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-binding-id
                                     _%L152735%_))
                                  (cons (gxc#generate-runtime-values-ref
                                         _%vals152669%_
                                         _%k152675%_
                                         _%L152734%_)
                                        '()))
                            _%r152676%_))))
                  (_%__kont157047157048%_
                   (lambda (_%L152710%_)
                     (let ((__tmp157878
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-binding-id
                                           _%L152710%_))
                                        (cons (gxc#generate-runtime-values->list
                                               _%vals152669%_
                                               _%k152675%_)
                                              '()))
                                  '())))
                       (declare (not safe))
                       (__foldl1 cons __tmp157878 _%r152676%_))))
                  (_%__kont157049157050%_ (lambda () (reverse _%r152676%_))))
              (let ((_%g152679152721%_
                     (lambda ()
                       (let ((_%L152710%_ _%__stx157041157042%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%L152710%_))
                             (_%__kont157047157048%_ _%L152710%_)
                             (_%__kont157049157050%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx157041157042%_))
                    (let ((_%e152684152750%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx157041157042%_))))
                      (let ((_%tl152686152755%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e152684152750%_)))
                            (_%hd152685152753%_
                             (let ()
                               (declare (not safe))
                               (##car _%e152684152750%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _%hd152685152753%_))
                            (let ((_%e152687152758%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd152685152753%_))))
                              (if (equal? _%e152687152758%_ '#f)
                                  (_%__kont157043157044%_ _%tl152686152755%_)
                                  (_%__kont157045157046%_
                                   _%tl152686152755%_
                                   _%hd152685152753%_)))
                            (_%__kont157045157046%_
                             _%tl152686152755%_
                             _%hd152685152753%_))))
                    (let () (declare (not safe)) (_%g152679152721%_)))))))))
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_%self152348%_ _%stx152349%_ _%compiled-body?152350%_)
        (letrec ((_%generate-simple152352%_
                  (lambda (_%hd152654%_ _%body152655%_)
                    (gxc#generate-runtime-simple-let
                     _%self152348%_
                     'letrec
                     _%hd152654%_
                     _%body152655%_
                     _%compiled-body?152350%_)))
                 (_%generate-values152353%_
                  (lambda (_%hd152433%_ _%body152434%_)
                    (let _%lp152436%_ ((_%rest152438%_ _%hd152433%_)
                                       (_%bind152439%_ '())
                                       (_%check152440%_ '())
                                       (_%post152441%_ '()))
                      (let* ((_%__stx157115157116%_ _%rest152438%_)
                             (_%g152444152455%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx157115157116%_)))))
                        (let ((_%__kont157117157118%_
                               (lambda (_%L152482%_ _%L152483%_)
                                 (let* ((_%__stx157071157072%_ _%L152483%_)
                                        (_%g152498152523%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx157071157072%_)))))
                                   (let ((_%__kont157073157074%_
                                          (lambda (_%L152630%_ _%L152631%_)
                                            (let ((_%eid152645%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%L152631%_)))
                                                  (_%expr152646%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self152348%_
                                                      _%L152630%_))))
                                              (_%lp152436%_
                                               _%L152482%_
                                               (cons (cons _%eid152645%_
                                                           (cons _%expr152646%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind152439%_)
                                               _%check152440%_
                                               _%post152441%_))))
                                         (_%__kont157075157076%_
                                          (lambda (_%L152544%_ _%L152545%_)
                                            (let* ((_%vals152558%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values152560%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals152558%_
                                                     _%L152545%_
                                                     _%L152544%_))
                                                   (_%refs152562%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals152558%_
                                                     _%L152545%_))
                                                   (_%expr152564%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self152348%_
                                                       _%L152544%_))))
                                              (_%lp152436%_
                                               _%L152482%_
                                               (let ((__tmp157880
                                                      (cons (cons _%vals152558%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr152564%_ '()))
                    _%bind152439%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp157879
                                                      (map (lambda (_%e152566152568%_)
                                                             (let* ((_%g152570152579%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%e152566152568%_)
                            (_%E152572152583%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%g152570152579%_
                                        '([eid _])))
                               '#!void))
                            (_%K152573152588%_
                             (lambda (_%eid152586%_)
                               (cons _%eid152586%_ (cons '#!void '())))))
                       (if (pair? _%g152570152579%_)
                           (let ((_%hd152574152591%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%g152570152579%_)))
                                 (_%tl152575152593%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%g152570152579%_))))
                             (let ((_%eid152596%_ _%hd152574152591%_))
                               (if (pair? _%tl152575152593%_)
                                   (let ((_%tl152577152598%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%tl152575152593%_))))
                                     (if (null? _%tl152577152598%_)
                                         (_%K152573152588%_ _%eid152596%_)
                                         (_%E152572152583%_)))
                                   (_%E152572152583%_))))
                           (_%E152572152583%_))))
                   _%refs152562%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (__foldl1
                                                  cons
                                                  __tmp157880
                                                  __tmp157879))
                                               (cons _%check-values152560%_
                                                     _%check152440%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (__foldl1
                                                  cons
                                                  _%refs152562%_
                                                  _%post152441%_)))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx157071157072%_))
                                         (let ((_%e152502152606%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx157071157072%_))))
                                           (let ((_%tl152504152611%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e152502152606%_)))
                                                 (_%hd152503152609%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e152502152606%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd152503152609%_))
                                                 (let ((_%e152505152614%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd152503152609%_))))
                                                   (let ((_%tl152507152619%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e152505152614%_)))
                                                         (_%hd152506152617%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e152505152614%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl152507152619%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl152504152611%_))
                     (let ((_%e152508152622%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl152504152611%_))))
                       (let ((_%tl152510152627%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e152508152622%_)))
                             (_%hd152509152625%_
                              (let ()
                                (declare (not safe))
                                (##car _%e152508152622%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl152510152627%_))
                             (_%__kont157073157074%_
                              _%hd152509152625%_
                              _%hd152506152617%_)
                             (let ()
                               (declare (not safe))
                               (_%g152498152523%_)))))
                     (let () (declare (not safe)) (_%g152498152523%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl152504152611%_))
                     (let ((_%e152516152536%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl152504152611%_))))
                       (let ((_%tl152518152541%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e152516152536%_)))
                             (_%hd152517152539%_
                              (let ()
                                (declare (not safe))
                                (##car _%e152516152536%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl152518152541%_))
                             (_%__kont157075157076%_
                              _%hd152517152539%_
                              _%hd152503152609%_)
                             (let ()
                               (declare (not safe))
                               (_%g152498152523%_)))))
                     (let () (declare (not safe)) (_%g152498152523%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl152504152611%_))
                                                     (let ((_%e152516152536%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl152504152611%_))))
                                                       (let ((_%tl152518152541%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e152516152536%_)))
                     (_%hd152517152539%_
                      (let () (declare (not safe)) (##car _%e152516152536%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl152518152541%_))
                     (_%__kont157075157076%_
                      _%hd152517152539%_
                      _%hd152503152609%_)
                     (let () (declare (not safe)) (_%g152498152523%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g152498152523%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g152498152523%_)))))))
                              (_%__kont157119157120%_
                               (lambda ()
                                 (let* ((_%body152462%_
                                         (if _%compiled-body?152350%_
                                             _%body152434%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self152348%_
                                                _%body152434%_))))
                                        (_%body152464%_
                                         (_%generate-values-post152355%_
                                          _%post152441%_
                                          _%body152462%_))
                                        (_%body152466%_
                                         (_%generate-values-check152354%_
                                          _%check152440%_
                                          _%body152464%_)))
                                   (cons 'letrec
                                         (cons (reverse _%bind152439%_)
                                               (cons _%body152466%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx157115157116%_))
                              (let ((_%e152448152474%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx157115157116%_))))
                                (let ((_%tl152450152479%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e152448152474%_)))
                                      (_%hd152449152477%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e152448152474%_))))
                                  (_%__kont157117157118%_
                                   _%tl152450152479%_
                                   _%hd152449152477%_)))
                              (_%__kont157119157120%_)))))))
                 (_%generate-values-check152354%_
                  (lambda (_%check152430%_ _%body152431%_)
                    (cons 'begin
                          (let ((__tmp157882 (cons _%body152431%_ '()))
                                (__tmp157881 (reverse _%check152430%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp157882 __tmp157881)))))
                 (_%generate-values-post152355%_
                  (lambda (_%post152423%_ _%body152424%_)
                    (cons 'begin
                          (let ((__tmp157886 (cons _%body152424%_ '()))
                                (__tmp157883
                                 (let ((__tmp157885
                                        (lambda (_%g152425152427%_)
                                          (cons 'set! _%g152425152427%_)))
                                       (__tmp157884 (reverse _%post152423%_)))
                                   (declare (not safe))
                                   (##map __tmp157885 __tmp157884))))
                            (declare (not safe))
                            (__foldr1 cons __tmp157886 __tmp157883))))))
          (let* ((_%g152357152374%_
                  (lambda (_%g152358152371%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g152358152371%_))))
                 (_%g152356152420%_
                  (lambda (_%g152358152377%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g152358152377%_))
                        (let ((_%e152361152379%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g152358152377%_))))
                          (let ((_%hd152362152382%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e152361152379%_)))
                                (_%tl152363152384%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e152361152379%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl152363152384%_))
                                (let ((_%e152364152387%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl152363152384%_))))
                                  (let ((_%hd152365152390%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e152364152387%_)))
                                        (_%tl152366152392%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e152364152387%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl152366152392%_))
                                        (let ((_%e152367152395%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl152366152392%_))))
                                          (let ((_%hd152368152398%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e152367152395%_)))
                                                (_%tl152369152400%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e152367152395%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl152369152400%_))
                                                ((lambda (_%L152403%_
                                                          _%L152404%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%L152404%_)
                                                       (_%generate-simple152352%_
                                                        _%L152404%_
                                                        _%L152403%_)
                                                       (_%generate-values152353%_
                                                        _%L152404%_
                                                        _%L152403%_)))
                                                 _%hd152368152398%_
                                                 _%hd152365152390%_)
                                                (_%g152357152374%_
                                                 _%g152358152377%_))))
                                        (_%g152357152374%_
                                         _%g152358152377%_))))
                                (_%g152357152374%_ _%g152358152377%_))))
                        (_%g152357152374%_ _%g152358152377%_)))))
            (_%g152356152420%_ _%stx152349%_)))))
    (define gxc#generate-runtime-letrec-values%__0
      (lambda (_%self152660%_ _%stx152661%_)
        (let ((_%compiled-body?152663%_ '#f))
          (gxc#generate-runtime-letrec-values%__%
           _%self152660%_
           _%stx152661%_
           _%compiled-body?152663%_))))
    (define gxc#generate-runtime-letrec-values%
      (lambda _g157887_
        (let ((_g157888_ (let () (declare (not safe)) (##length _g157887_))))
          (cond ((let () (declare (not safe)) (##fx= _g157888_ 2))
                 (apply gxc#generate-runtime-letrec-values%__0 _g157887_))
                ((let () (declare (not safe)) (##fx= _g157888_ 3))
                 (apply gxc#generate-runtime-letrec-values%__% _g157887_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-letrec-values%
                  _g157887_))))))
    (define gxc#generate-runtime-letrec*-values%
      (lambda (_%self151929%_ _%stx151930%_)
        (letrec ((_%generate-values151932%_
                  (lambda (_%hd152175%_ _%body152176%_)
                    (let _%lp152178%_ ((_%rest152180%_ _%hd152175%_)
                                       (_%bind152181%_ '()))
                      (let* ((_%rest152182152190%_ _%rest152180%_)
                             (_%else152184152201%_
                              (lambda ()
                                (let ((_%bind152198%_ (reverse _%bind152181%_))
                                      (_%body152199%_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self151929%_
                                          _%body152176%_))))
                                  (cons 'letrec*
                                        (cons _%bind152198%_
                                              (cons _%body152199%_ '()))))))
                             (_%K152186152335%_
                              (lambda (_%rest152204%_ _%hd-bind152205%_)
                                (let* ((_%__stx157129157130%_
                                        _%hd-bind152205%_)
                                       (_%g152208152233%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx157129157130%_)))))
                                  (let ((_%__kont157131157132%_
                                         (lambda (_%L152314%_ _%L152315%_)
                                           (let ((_%eid152329%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-binding-id*
                                                     _%L152315%_)))
                                                 (_%expr152330%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self151929%_
                                                     _%L152314%_))))
                                             (_%lp152178%_
                                              _%rest152204%_
                                              (cons (cons _%eid152329%_
                                                          (cons _%expr152330%_
                                                                '()))
                                                    _%bind152181%_)))))
                                        (_%__kont157133157134%_
                                         (lambda (_%L152254%_ _%L152255%_)
                                           (let* ((_%vals152274%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%tmp152276%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%check-values152278%_
                                                   (gxc#generate-runtime-check-values
                                                    _%tmp152276%_
                                                    _%L152255%_
                                                    _%L152254%_))
                                                  (_%refs152280%_
                                                   (gxc#generate-runtime-let-values-bind
                                                    _%vals152274%_
                                                    _%L152255%_))
                                                  (_%expr152282%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self151929%_
                                                      _%L152254%_))))
                                             (_%lp152178%_
                                              _%rest152204%_
                                              (let ((__tmp157889
                                                     (cons (cons _%vals152274%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'let
                                     (cons (cons (cons _%tmp152276%_
                                                       (cons _%expr152282%_
                                                             '()))
                                                 '())
                                           (cons _%check-values152278%_
                                                 (cons _%tmp152276%_ '()))))
                               '()))
                   _%bind152181%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 __tmp157889
                                                 _%refs152280%_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx157129157130%_))
                                        (let ((_%e152212152290%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx157129157130%_))))
                                          (let ((_%tl152214152295%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e152212152290%_)))
                                                (_%hd152213152293%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e152212152290%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd152213152293%_))
                                                (let ((_%e152215152298%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd152213152293%_))))
                                                  (let ((_%tl152217152303%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e152215152298%_)))
                                                        (_%hd152216152301%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e152215152298%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl152217152303%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl152214152295%_))
                                                            (let ((_%e152218152306%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl152214152295%_))))
                      (let ((_%tl152220152311%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e152218152306%_)))
                            (_%hd152219152309%_
                             (let ()
                               (declare (not safe))
                               (##car _%e152218152306%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl152220152311%_))
                            (_%__kont157131157132%_
                             _%hd152219152309%_
                             _%hd152216152301%_)
                            (let ()
                              (declare (not safe))
                              (_%g152208152233%_)))))
                    (let () (declare (not safe)) (_%g152208152233%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl152214152295%_))
                    (let ((_%e152226152246%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl152214152295%_))))
                      (let ((_%tl152228152251%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e152226152246%_)))
                            (_%hd152227152249%_
                             (let ()
                               (declare (not safe))
                               (##car _%e152226152246%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl152228152251%_))
                            (_%__kont157133157134%_
                             _%hd152227152249%_
                             _%hd152213152293%_)
                            (let ()
                              (declare (not safe))
                              (_%g152208152233%_)))))
                    (let () (declare (not safe)) (_%g152208152233%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl152214152295%_))
                                                    (let ((_%e152226152246%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl152214152295%_))))
                                                      (let ((_%tl152228152251%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e152226152246%_)))
                    (_%hd152227152249%_
                     (let () (declare (not safe)) (##car _%e152226152246%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl152228152251%_))
                    (_%__kont157133157134%_
                     _%hd152227152249%_
                     _%hd152213152293%_)
                    (let () (declare (not safe)) (_%g152208152233%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g152208152233%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g152208152233%_))))))))
                        (if (pair? _%rest152182152190%_)
                            (let ((_%hd152187152338%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest152182152190%_)))
                                  (_%tl152188152340%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest152182152190%_))))
                              (let* ((_%hd-bind152343%_ _%hd152187152338%_)
                                     (_%rest152345%_ _%tl152188152340%_))
                                (_%K152186152335%_
                                 _%rest152345%_
                                 _%hd-bind152343%_)))
                            (_%else152184152201%_))))))
                 (_%generate-letrec?151933%_
                  (lambda (_%hd152065%_)
                    (let _%lp152067%_ ((_%rest152069%_ _%hd152065%_))
                      (let* ((_%rest152070152078%_ _%rest152069%_)
                             (_%else152072152086%_ (lambda () '#t))
                             (_%K152074152163%_
                              (lambda (_%rest152089%_ _%hd-bind152090%_)
                                (let* ((_%g152092152109%_
                                        (lambda (_%g152093152106%_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g152093152106%_))))
                                       (_%g152091152160%_
                                        (lambda (_%g152093152112%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%g152093152112%_))
                                              (let ((_%e152096152114%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%g152093152112%_))))
                                                (let ((_%hd152097152117%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e152096152114%_)))
                                                      (_%tl152098152119%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e152096152114%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd152097152117%_))
                                                      (let ((_%e152099152122%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd152097152117%_))))
                (let ((_%hd152100152125%_
                       (let () (declare (not safe)) (##car _%e152099152122%_)))
                      (_%tl152101152127%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e152099152122%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl152101152127%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl152098152119%_))
                          (let ((_%e152102152130%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl152098152119%_))))
                            (let ((_%hd152103152133%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e152102152130%_)))
                                  (_%tl152104152135%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e152102152130%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl152104152135%_))
                                  ((lambda (_%L152138%_ _%L152139%_)
                                     (if (_%is-lambda-expr?151934%_
                                          _%L152138%_)
                                         (_%lp152067%_ _%rest152089%_)
                                         '#f))
                                   _%hd152103152133%_
                                   _%hd152100152125%_)
                                  (_%g152092152109%_ _%g152093152112%_))))
                          (_%g152092152109%_ _%g152093152112%_))
                      (_%g152092152109%_ _%g152093152112%_))))
              (_%g152092152109%_ _%g152093152112%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g152092152109%_
                                               _%g152093152112%_)))))
                                  (_%g152091152160%_ _%hd-bind152090%_)))))
                        (if (pair? _%rest152070152078%_)
                            (let ((_%hd152075152166%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest152070152078%_)))
                                  (_%tl152076152168%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest152070152078%_))))
                              (let* ((_%hd-bind152171%_ _%hd152075152166%_)
                                     (_%rest152173%_ _%tl152076152168%_))
                                (_%K152074152163%_
                                 _%rest152173%_
                                 _%hd-bind152171%_)))
                            (_%else152072152086%_))))))
                 (_%is-lambda-expr?151934%_
                  (lambda (_%expr152002%_)
                    (let* ((_%__stx157173157174%_ _%expr152002%_)
                           (_%g152005152019%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx157173157174%_)))))
                      (let ((_%__kont157175157176%_
                             (lambda (_%L152047%_ _%L152048%_) '#t))
                            (_%__kont157177157178%_ (lambda () '#f)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%__stx157173157174%_))
                            (let ((_%e152009152031%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%__stx157173157174%_))))
                              (let ((_%tl152011152036%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e152009152031%_)))
                                    (_%hd152010152034%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e152009152031%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd152010152034%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd152010152034%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl152011152036%_))
                                            (let ((_%e152012152039%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl152011152036%_))))
                                              (let ((_%tl152014152044%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e152012152039%_)))
                                                    (_%hd152013152042%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e152012152039%_))))
                                                (_%__kont157175157176%_
                                                 _%tl152014152044%_
                                                 _%hd152013152042%_)))
                                            (_%__kont157177157178%_))
                                        (_%__kont157177157178%_))
                                    (_%__kont157177157178%_))))
                            (_%__kont157177157178%_)))))))
          (let* ((_%g151936151953%_
                  (lambda (_%g151937151950%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g151937151950%_))))
                 (_%g151935151999%_
                  (lambda (_%g151937151956%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g151937151956%_))
                        (let ((_%e151940151958%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g151937151956%_))))
                          (let ((_%hd151941151961%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e151940151958%_)))
                                (_%tl151942151963%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e151940151958%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl151942151963%_))
                                (let ((_%e151943151966%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl151942151963%_))))
                                  (let ((_%hd151944151969%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e151943151966%_)))
                                        (_%tl151945151971%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e151943151966%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl151945151971%_))
                                        (let ((_%e151946151974%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl151945151971%_))))
                                          (let ((_%hd151947151977%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e151946151974%_)))
                                                (_%tl151948151979%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e151946151974%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl151948151979%_))
                                                ((lambda (_%L151982%_
                                                          _%L151983%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%L151983%_)
                                                       (if (_%generate-letrec?151933%_
                                                            _%L151983%_)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self151929%_
                                                            'letrec
                                                            _%L151983%_
                                                            _%L151982%_
                                                            '#f)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self151929%_
                                                            'letrec*
                                                            _%L151983%_
                                                            _%L151982%_
                                                            '#f))
                                                       (_%generate-values151932%_
                                                        _%L151983%_
                                                        _%L151982%_)))
                                                 _%hd151947151977%_
                                                 _%hd151944151969%_)
                                                (_%g151936151953%_
                                                 _%g151937151956%_))))
                                        (_%g151936151953%_
                                         _%g151937151956%_))))
                                (_%g151936151953%_ _%g151937151956%_))))
                        (_%g151936151953%_ _%g151937151956%_)))))
            (_%g151935151999%_ _%stx151930%_)))))
    (define gxc#generate-runtime-simple-let?
      (lambda (_%hd151866%_)
        (let _%lp151868%_ ((_%rest151870%_ _%hd151866%_))
          (let* ((_%rest151871151887%_ _%rest151870%_)
                 (_%else151874151895%_ (lambda () '#f)))
            (let ((_%K151877151908%_
                   (lambda (_%rest151906%_) (_%lp151868%_ _%rest151906%_)))
                  (_%K151876151900%_ (lambda () '#t)))
              (let ((_%try-match151873151903%_
                     (lambda ()
                       (if (null? _%rest151871151887%_)
                           (_%K151876151900%_)
                           (_%else151874151895%_)))))
                (if (pair? _%rest151871151887%_)
                    (let ((_%tl151879151913%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest151871151887%_)))
                          (_%hd151878151911%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest151871151887%_))))
                      (if (pair? _%hd151878151911%_)
                          (let ((_%tl151881151918%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd151878151911%_)))
                                (_%hd151880151916%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd151878151911%_))))
                            (if (pair? _%hd151880151916%_)
                                (let ((_%tl151885151921%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd151880151916%_))))
                                  (if (null? _%tl151885151921%_)
                                      (if (pair? _%tl151881151918%_)
                                          (let ((_%tl151883151924%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl151881151918%_))))
                                            (if (null? _%tl151883151924%_)
                                                (let ((_%rest151927%_
                                                       _%tl151879151913%_))
                                                  (_%lp151868%_
                                                   _%rest151927%_))
                                                (_%else151874151895%_)))
                                          (_%else151874151895%_))
                                      (_%else151874151895%_)))
                                (_%else151874151895%_)))
                          (_%else151874151895%_)))
                    (_%try-match151873151903%_))))))))
    (define gxc#generate-runtime-simple-let
      (lambda (_%self151777%_
               _%form151778%_
               _%hd151779%_
               _%body151780%_
               _%compiled-body?151781%_)
        (letrec ((_%generate1151783%_
                  (lambda (_%bind151822%_)
                    (let* ((_%bind151823151834%_ _%bind151822%_)
                           (_%E151825151838%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%bind151823151834%_
                                       '([[id] expr])))
                              '#!void))
                           (_%K151826151844%_
                            (lambda (_%expr151841%_ _%id151842%_)
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-binding-id*
                                       _%id151842%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self151777%_
                                             _%expr151841%_))
                                          '())))))
                      (if (pair? _%bind151823151834%_)
                          (let ((_%hd151827151847%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%bind151823151834%_)))
                                (_%tl151828151849%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%bind151823151834%_))))
                            (if (pair? _%hd151827151847%_)
                                (let ((_%hd151831151852%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd151827151847%_)))
                                      (_%tl151832151854%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd151827151847%_))))
                                  (let ((_%id151857%_ _%hd151831151852%_))
                                    (if (null? _%tl151832151854%_)
                                        (if (pair? _%tl151828151849%_)
                                            (let ((_%hd151829151859%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl151828151849%_)))
                                                  (_%tl151830151861%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl151828151849%_))))
                                              (let ((_%expr151864%_
                                                     _%hd151829151859%_))
                                                (if (null? _%tl151830151861%_)
                                                    (_%K151826151844%_
                                                     _%expr151864%_
                                                     _%id151857%_)
                                                    (_%E151825151838%_))))
                                            (_%E151825151838%_))
                                        (_%E151825151838%_))))
                                (_%E151825151838%_)))
                          (_%E151825151838%_))))))
          (let* ((_%bind151785%_ (map _%generate1151783%_ _%hd151779%_))
                 (_%body151787%_
                  (if _%compiled-body?151781%_
                      _%body151780%_
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self151777%_ _%body151780%_))))
                 (_%body151819%_
                  (let* ((_%body151788151796%_ _%body151787%_)
                         (_%else151790151804%_
                          (lambda () (cons _%body151787%_ '())))
                         (_%K151792151809%_
                          (lambda (_%exprs151807%_) _%exprs151807%_)))
                    (if (pair? _%body151788151796%_)
                        (let ((_%hd151793151812%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%body151788151796%_)))
                              (_%tl151794151814%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%body151788151796%_))))
                          (if (let ()
                                (declare (not safe))
                                (##eq? _%hd151793151812%_ 'begin))
                              (let ((_%exprs151817%_ _%tl151794151814%_))
                                (_%K151792151809%_ _%exprs151817%_))
                              (_%else151790151804%_)))
                        (_%else151790151804%_)))))
            (cons _%form151778%_ (cons _%bind151785%_ _%body151819%_))))))
    (define gxc#generate-runtime-quote%
      (lambda (_%self151677%_ _%stx151678%_)
        (letrec ((_%generate1151680%_
                  (lambda (_%datum151732%_)
                    (if (or (null? _%datum151732%_)
                            (let ()
                              (declare (not safe))
                              (interned-symbol? _%datum151732%_))
                            (let ()
                              (declare (not safe))
                              (gx#self-quoting? _%datum151732%_))
                            (eof-object? _%datum151732%_))
                        _%datum151732%_
                        (if (uninterned-symbol? _%datum151732%_)
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__%
                               _%datum151732%_
                               '#t))
                            (if (pair? _%datum151732%_)
                                (cons (_%generate1151680%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%datum151732%_)))
                                      (_%generate1151680%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%datum151732%_))))
                                (if (box? _%datum151732%_)
                                    (box (_%generate1151680%_
                                          (unbox _%datum151732%_)))
                                    (if (vector? _%datum151732%_)
                                        (vector-map
                                         _%generate1151680%_
                                         _%datum151732%_)
                                        (if (or (s8vector? _%datum151732%_)
                                                (u8vector? _%datum151732%_)
                                                (s16vector? _%datum151732%_)
                                                (u16vector? _%datum151732%_)
                                                (s32vector? _%datum151732%_)
                                                (u32vector? _%datum151732%_)
                                                (s64vector? _%datum151732%_)
                                                (u64vector? _%datum151732%_)
                                                (f32vector? _%datum151732%_)
                                                (f64vector? _%datum151732%_))
                                            _%datum151732%_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot compile non-primitive quote"
                                               _%stx151678%_)))))))))))
          (let* ((_%g151682151695%_
                  (lambda (_%g151683151692%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g151683151692%_))))
                 (_%g151681151729%_
                  (lambda (_%g151683151698%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g151683151698%_))
                        (let ((_%e151685151700%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g151683151698%_))))
                          (let ((_%hd151686151703%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e151685151700%_)))
                                (_%tl151687151705%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e151685151700%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl151687151705%_))
                                (let ((_%e151688151708%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl151687151705%_))))
                                  (let ((_%hd151689151711%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e151688151708%_)))
                                        (_%tl151690151713%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e151688151708%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl151690151713%_))
                                        ((lambda (_%L151716%_)
                                           (cons 'quote
                                                 (cons (_%generate1151680%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%L151716%_)))
                                                       '())))
                                         _%hd151689151711%_)
                                        (_%g151682151695%_
                                         _%g151683151698%_))))
                                (_%g151682151695%_ _%g151683151698%_))))
                        (_%g151682151695%_ _%g151683151698%_)))))
            (_%g151681151729%_ _%stx151678%_)))))
    (define gxc#generate-runtime-call%
      (lambda (_%self151118%_ _%stx151119%_)
        (letrec ((_%compile-call151121%_
                  (lambda (_%rator151410%_ _%rands151411%_)
                    (let ((_%rator151417%_
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self151118%_
                              _%rator151410%_)))
                          (_%rands151418%_
                           (map (lambda (_%g151412151414%_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%self151118%_
                                     _%g151412151414%_)))
                                _%rands151411%_)))
                      (let* ((_%__stx157220157221%_ _%rator151417%_)
                             (_%g151421151473%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx157220157221%_)))))
                        (let ((_%__kont157222157223%_
                               (lambda (_%L151597%_
                                        _%L151598%_
                                        _%L151599%_
                                        _%L151600%_)
                                 (if (let ((__tmp157892
                                            (let ()
                                              (declare (not safe))
                                              (##length _%rands151418%_)))
                                           (__tmp157890
                                            (length (let ((__tmp157891
                                                           (lambda (_%g151636151639%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g151637151641%_)
                     (cons _%g151636151639%_ _%g151637151641%_))))
              (declare (not safe))
              (__foldr1 __tmp157891 '() _%L151599%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp157892 __tmp157890))
                                     (let* ((_%id151644%_ _%L151600%_)
                                            (_%args151653%_
                                             (let ((__tmp157893
                                                    (lambda (_%g151645151648%_
                                                             _%g151646151650%_)
                                                      (cons _%g151645151648%_
                                                            _%g151646151650%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp157893
                                                '()
                                                _%L151599%_)))
                                            (_%body151662%_
                                             (let ((__tmp157894
                                                    (lambda (_%g151654151657%_
                                                             _%g151655151659%_)
                                                      (cons _%g151654151657%_
                                                            _%g151655151659%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp157894
                                                '()
                                                _%L151598%_)))
                                            (_%init151664%_
                                             (map list
                                                  _%args151653%_
                                                  _%rands151418%_)))
                                       (cons 'let
                                             (cons _%id151644%_
                                                   (cons _%init151664%_
                                                         _%body151662%_))))
                                     (let ((__tmp157895
                                            (let ((__tmp157896
                                                   (lambda (_%g151666151669%_
                                                            _%g151667151671%_)
                                                     (cons _%g151666151669%_
                                                           _%g151667151671%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp157896
                                               '()
                                               _%L151599%_))))
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Illegal loop application; arity mismatch"
                                        _%stx151119%_
                                        __tmp157895
                                        _%rands151418%_)))))
                              (_%__kont157228157229%_
                               (lambda ()
                                 (cons _%rator151417%_ _%rands151418%_))))
                          (let ((_%__match157287157288%_
                                 (lambda (_%e151427151485%_
                                          _%hd151428151488%_
                                          _%tl151429151490%_
                                          _%e151430151493%_
                                          _%hd151431151496%_
                                          _%tl151432151498%_
                                          _%e151433151501%_
                                          _%hd151434151504%_
                                          _%tl151435151506%_
                                          _%e151436151509%_
                                          _%hd151437151512%_
                                          _%tl151438151514%_
                                          _%e151439151517%_
                                          _%hd151440151520%_
                                          _%tl151441151522%_
                                          _%e151442151525%_
                                          _%hd151443151528%_
                                          _%tl151444151530%_
                                          _%e151445151533%_
                                          _%hd151446151536%_
                                          _%tl151447151538%_
                                          _%__splice157224157225%_
                                          _%target151448151541%_
                                          _%tl151450151543%_)
                                   (letrec ((_%loop151451151546%_
                                             (lambda (_%hd151449151549%_
                                                      _%arg151455151551%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%hd151449151549%_))
                                                   (let ((_%e151452151554%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%hd151449151549%_))))
                                                     (let ((_%lp-tl151454151559%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e151452151554%_)))
                                                           (_%lp-hd151453151557%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e151452151554%_))))
                                                       (_%loop151451151546%_
                                                        _%lp-tl151454151559%_
                                                        (cons _%lp-hd151453151557%_
                                                              _%arg151455151551%_))))
                                                   (let ((_%arg151456151562%_
                                                          (reverse _%arg151455151551%_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _%tl151447151538%_))
                                                         (let ((_%__splice157226157227%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice->vector
                           _%tl151447151538%_
                           '0))))
                   (let ((_%tl151459151567%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice157226157227%_ '1)))
                         (_%target151457151565%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice157226157227%_ '0))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl151459151567%_))
                         (letrec ((_%loop151460151570%_
                                   (lambda (_%hd151458151573%_
                                            _%body151464151575%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd151458151573%_))
                                         (let ((_%e151461151578%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd151458151573%_))))
                                           (let ((_%lp-tl151463151583%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e151461151578%_)))
                                                 (_%lp-hd151462151581%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e151461151578%_))))
                                             (_%loop151460151570%_
                                              _%lp-tl151463151583%_
                                              (cons _%lp-hd151462151581%_
                                                    _%body151464151575%_))))
                                         (let ((_%body151465151586%_
                                                (reverse _%body151464151575%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%tl151441151522%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl151435151506%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl151432151498%_))
                                                       (let ((_%e151466151589%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl151432151498%_))))
                 (let ((_%tl151468151594%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e151466151589%_)))
                       (_%hd151467151592%_
                        (let ()
                          (declare (not safe))
                          (##car _%e151466151589%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl151468151594%_))
                       (let ((_%L151597%_ _%hd151467151592%_)
                             (_%L151598%_ _%body151465151586%_)
                             (_%L151599%_ _%arg151456151562%_)
                             (_%L151600%_ _%hd151437151512%_))
                         (if (eq? _%L151600%_ _%L151597%_)
                             (_%__kont157222157223%_
                              _%L151597%_
                              _%L151598%_
                              _%L151599%_
                              _%L151600%_)
                             (_%__kont157228157229%_)))
                       (_%__kont157228157229%_))))
               (_%__kont157228157229%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont157228157229%_))
                                               (_%__kont157228157229%_)))))))
                           (_%loop151460151570%_ _%target151457151565%_ '()))
                         (_%__kont157228157229%_))))
                 (_%__kont157228157229%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%loop151451151546%_
                                      _%target151448151541%_
                                      '())))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx157220157221%_))
                                (let ((_%e151427151485%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx157220157221%_))))
                                  (let ((_%tl151429151490%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e151427151485%_)))
                                        (_%hd151428151488%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e151427151485%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd151428151488%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               'letrec
                                               _%hd151428151488%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl151429151490%_))
                                                (let ((_%e151430151493%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl151429151490%_))))
                                                  (let ((_%tl151432151498%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e151430151493%_)))
                                                        (_%hd151431151496%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e151430151493%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd151431151496%_))
                                                        (let ((_%e151433151501%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd151431151496%_))))
                  (let ((_%tl151435151506%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e151433151501%_)))
                        (_%hd151434151504%_
                         (let ()
                           (declare (not safe))
                           (##car _%e151433151501%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd151434151504%_))
                        (let ((_%e151436151509%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd151434151504%_))))
                          (let ((_%tl151438151514%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e151436151509%_)))
                                (_%hd151437151512%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e151436151509%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl151438151514%_))
                                (let ((_%e151439151517%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl151438151514%_))))
                                  (let ((_%tl151441151522%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e151439151517%_)))
                                        (_%hd151440151520%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e151439151517%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd151440151520%_))
                                        (let ((_%e151442151525%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd151440151520%_))))
                                          (let ((_%tl151444151530%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e151442151525%_)))
                                                (_%hd151443151528%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e151442151525%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd151443151528%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       'lambda
                                                       _%hd151443151528%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl151444151530%_))
                                                        (let ((_%e151445151533%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl151444151530%_))))
                  (let ((_%tl151447151538%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e151445151533%_)))
                        (_%hd151446151536%_
                         (let ()
                           (declare (not safe))
                           (##car _%e151445151533%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%hd151446151536%_))
                        (let ((_%__splice157224157225%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice->vector
                                  _%hd151446151536%_
                                  '0))))
                          (let ((_%tl151450151543%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice157224157225%_ '1)))
                                (_%target151448151541%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _%__splice157224157225%_
                                    '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl151450151543%_))
                                (_%__match157287157288%_
                                 _%e151427151485%_
                                 _%hd151428151488%_
                                 _%tl151429151490%_
                                 _%e151430151493%_
                                 _%hd151431151496%_
                                 _%tl151432151498%_
                                 _%e151433151501%_
                                 _%hd151434151504%_
                                 _%tl151435151506%_
                                 _%e151436151509%_
                                 _%hd151437151512%_
                                 _%tl151438151514%_
                                 _%e151439151517%_
                                 _%hd151440151520%_
                                 _%tl151441151522%_
                                 _%e151442151525%_
                                 _%hd151443151528%_
                                 _%tl151444151530%_
                                 _%e151445151533%_
                                 _%hd151446151536%_
                                 _%tl151447151538%_
                                 _%__splice157224157225%_
                                 _%target151448151541%_
                                 _%tl151450151543%_)
                                (_%__kont157228157229%_))))
                        (_%__kont157228157229%_))))
                (_%__kont157228157229%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont157228157229%_))
                                                (_%__kont157228157229%_))))
                                        (_%__kont157228157229%_))))
                                (_%__kont157228157229%_))))
                        (_%__kont157228157229%_))))
                (_%__kont157228157229%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont157228157229%_))
                                            (_%__kont157228157229%_))
                                        (_%__kont157228157229%_))))
                                (_%__kont157228157229%_)))))))))
          (let* ((_%g151123151146%_
                  (lambda (_%g151124151143%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g151124151143%_))))
                 (_%g151122151407%_
                  (lambda (_%g151124151149%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g151124151149%_))
                        (let ((_%e151127151151%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g151124151149%_))))
                          (let ((_%hd151128151154%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e151127151151%_)))
                                (_%tl151129151156%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e151127151151%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl151129151156%_))
                                (let ((_%e151130151159%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl151129151156%_))))
                                  (let ((_%hd151131151162%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e151130151159%_)))
                                        (_%tl151132151164%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e151130151159%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl151132151164%_))
                                        (let ((_g157897_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl151132151164%_
                                                  '0))))
                                          (begin
                                            (let ((_g157898_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g157897_)
                                                         (##values-length
                                                          _g157897_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g157898_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g157898_)))
                                            (let ((_%target151133151167%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g157897_
                                                      0)))
                                                  (_%tl151135151169%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g157897_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl151135151169%_))
                                                  (letrec ((_%loop151136151172%_
                                                            (lambda (_%hd151134151175%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%rand151140151177%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd151134151175%_))
                          (let ((_%e151137151180%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd151134151175%_))))
                            (let ((_%lp-hd151138151183%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e151137151180%_)))
                                  (_%lp-tl151139151185%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e151137151180%_))))
                              (_%loop151136151172%_
                               _%lp-tl151139151185%_
                               (cons _%lp-hd151138151183%_
                                     _%rand151140151177%_))))
                          (let ((_%rand151141151188%_
                                 (reverse _%rand151140151177%_)))
                            ((lambda (_%L151191%_ _%L151192%_)
                               (if (gxc#current-compile-decls-unsafe?)
                                   (_%compile-call151121%_
                                    _%L151192%_
                                    (let ((__tmp157899
                                           (lambda (_%g151209151212%_
                                                    _%g151210151214%_)
                                             (cons _%g151209151212%_
                                                   _%g151210151214%_))))
                                      (declare (not safe))
                                      (__foldr1 __tmp157899 '() _%L151191%_)))
                                   (let* ((_%__stx157336157337%_ _%L151192%_)
                                          (_%g151218151230%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%__stx157336157337%_)))))
                                     (let ((_%__kont157338157339%_
                                            (lambda ()
                                              (let ((_%f151267%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self151118%_
                                                        _%L151192%_))))
                                                (if (and (let ((__tmp157900
                                                                (symbol->string
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%f151267%_)))
                   (declare (not safe))
                   (##string-prefix? '"##" __tmp157900))
                 (not (let ()
                        (declare (not safe))
                        (##memq _%f151267%_ gxc#checked-primitives))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let _%lp151269%_ ((_%rest151272%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (reverse (let ((__tmp157902
                                                (lambda (_%g151389151392%_
                                                         _%g151390151394%_)
                                                  (cons _%g151389151392%_
                                                        _%g151390151394%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            __tmp157902
                                            '()
                                            _%L151191%_))))
                               (_%bind151274%_ '())
                               (_%args151275%_ '()))
              (let* ((_%rest151276151284%_ _%rest151272%_)
                     (_%else151278151292%_
                      (lambda ()
                        (cons 'let
                              (cons _%bind151274%_
                                    (cons '(declare (not safe))
                                          (cons (cons _%f151267%_
                                                      _%args151275%_)
                                                '()))))))
                     (_%K151280151378%_
                      (lambda (_%rest151295%_ _%e151296%_)
                        (let* ((_%__stx157290157291%_ _%e151296%_)
                               (_%g151301151319%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%__stx157290157291%_)))))
                          (let ((_%__kont157292157293%_
                                 (lambda ()
                                   (_%lp151269%_
                                    _%rest151295%_
                                    _%bind151274%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e151296%_))
                                          _%args151275%_))))
                                (_%__kont157294157295%_
                                 (lambda ()
                                   (_%lp151269%_
                                    _%rest151295%_
                                    _%bind151274%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e151296%_))
                                          _%args151275%_))))
                                (_%__kont157296157297%_
                                 (lambda ()
                                   (let ((_%tmp151326%_
                                          (let ((__tmp157901
                                                 (let ()
                                                   (declare (not safe))
                                                   (##gensym '__tmp))))
                                            (declare (not safe))
                                            (make-symbol__0 __tmp157901))))
                                     (_%lp151269%_
                                      _%rest151295%_
                                      (cons (cons _%tmp151326%_
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__0
                                                           _%e151296%_))
                                                        '()))
                                            _%bind151274%_)
                                      (cons _%tmp151326%_ _%args151275%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx157290157291%_))
                                (let ((_%e151303151357%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx157290157291%_))))
                                  (let ((_%tl151305151362%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e151303151357%_)))
                                        (_%hd151304151360%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e151303151357%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd151304151360%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd151304151360%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl151305151362%_))
                                                (let ((_%e151306151365%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl151305151362%_))))
                                                  (let ((_%tl151308151370%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e151306151365%_)))
                                                        (_%hd151307151368%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e151306151365%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl151308151370%_))
                                                        (_%__kont157292157293%_)
                                                        (_%__kont157296157297%_))))
                                                (_%__kont157296157297%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#quote
                                                   _%hd151304151360%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl151305151362%_))
                                                    (let ((_%e151312151342%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl151305151362%_))))
                                                      (let ((_%tl151314151347%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e151312151342%_)))
                    (_%hd151313151345%_
                     (let () (declare (not safe)) (##car _%e151312151342%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl151314151347%_))
                    (_%__kont157294157295%_)
                    (_%__kont157296157297%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont157296157297%_))
                                                (_%__kont157296157297%_)))
                                        (_%__kont157296157297%_))))
                                (_%__kont157296157297%_)))))))
                (if (pair? _%rest151276151284%_)
                    (let ((_%hd151281151381%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest151276151284%_)))
                          (_%tl151282151383%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest151276151284%_))))
                      (let* ((_%e151386%_ _%hd151281151381%_)
                             (_%rest151388%_ _%tl151282151383%_))
                        (_%K151280151378%_ _%rest151388%_ _%e151386%_)))
                    (_%else151278151292%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%compile-call151121%_
                                                     _%L151192%_
                                                     (let ((__tmp157903
                                                            (lambda (_%g151396151399%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g151397151401%_)
                      (cons _%g151396151399%_ _%g151397151401%_))))
               (declare (not safe))
               (__foldr1 __tmp157903 '() _%L151191%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%__kont157340157341%_
                                            (lambda ()
                                              (_%compile-call151121%_
                                               _%L151192%_
                                               (let ((__tmp157904
                                                      (lambda (_%g151236151239%_
                                                               _%g151237151241%_)
                                                        (cons _%g151236151239%_
                                                              _%g151237151241%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp157904
                                                  '()
                                                  _%L151191%_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%__stx157336157337%_))
                                           (let ((_%e151220151249%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%__stx157336157337%_))))
                                             (let ((_%tl151222151254%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e151220151249%_)))
                                                   (_%hd151221151252%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e151220151249%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd151221151252%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#ref
                                                          _%hd151221151252%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl151222151254%_))
                                                           (let ((_%e151223151257%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl151222151254%_))))
                     (let ((_%tl151225151262%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e151223151257%_)))
                           (_%hd151224151260%_
                            (let ()
                              (declare (not safe))
                              (##car _%e151223151257%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl151225151262%_))
                           (_%__kont157338157339%_)
                           (_%__kont157340157341%_))))
                   (_%__kont157340157341%_))
               (_%__kont157340157341%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont157340157341%_))))
                                           (_%__kont157340157341%_))))))
                             _%rand151141151188%_
                             _%hd151131151162%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop151136151172%_
                                                     _%target151133151167%_
                                                     '()))
                                                  (_%g151123151146%_
                                                   _%g151124151149%_)))))
                                        (_%g151123151146%_
                                         _%g151124151149%_))))
                                (_%g151123151146%_ _%g151124151149%_))))
                        (_%g151123151146%_ _%g151124151149%_)))))
            (_%g151122151407%_ _%stx151119%_)))))
    (define gxc#generate-runtime-call-unchecked%
      (lambda (_%self150861%_ _%stx150862%_)
        (let* ((_%__stx157408157409%_ _%stx150862%_)
               (_%g150865150894%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx157408157409%_)))))
          (let ((_%__kont157410157411%_
                 (lambda (_%L150962%_ _%L150963%_)
                   (if (gxc#current-compile-decls-unsafe?)
                       (gxc#generate-runtime-call%
                        _%self150861%_
                        _%stx150862%_)
                       (let ((_%f150985%_
                              (let ((__tmp157905
                                     (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f '%#ref))
                                           (cons _%L150963%_ '()))))
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self150861%_
                                 __tmp157905))))
                         (let _%lp150987%_ ((_%rest150990%_
                                             (reverse (let ((__tmp157907
                                                             (lambda (_%g151107151110%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g151108151112%_)
                       (cons _%g151107151110%_ _%g151108151112%_))))
                (declare (not safe))
                (__foldr1 __tmp157907 '() _%L150962%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%bind150992%_ '())
                                            (_%args150993%_ '()))
                           (let* ((_%rest150994151002%_ _%rest150990%_)
                                  (_%else150996151010%_
                                   (lambda ()
                                     (cons 'let
                                           (cons _%bind150992%_
                                                 (cons '(declare (not safe))
                                                       (cons (cons _%f150985%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%args150993%_)
                     '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%K150998151096%_
                                   (lambda (_%rest151013%_ _%e151014%_)
                                     (let* ((_%__stx157362157363%_ _%e151014%_)
                                            (_%g151019151037%_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%__stx157362157363%_)))))
                                       (let ((_%__kont157364157365%_
                                              (lambda ()
                                                (_%lp150987%_
                                                 _%rest151013%_
                                                 _%bind150992%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e151014%_))
                                                       _%args150993%_))))
                                             (_%__kont157366157367%_
                                              (lambda ()
                                                (_%lp150987%_
                                                 _%rest151013%_
                                                 _%bind150992%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e151014%_))
                                                       _%args150993%_))))
                                             (_%__kont157368157369%_
                                              (lambda ()
                                                (let ((_%tmp151044%_
                                                       (let ((__tmp157906
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##gensym '__tmp))))
                 (declare (not safe))
                 (make-symbol__0 __tmp157906))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%lp150987%_
                                                   _%rest151013%_
                                                   (cons (cons _%tmp151044%_
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__0 _%e151014%_))
                             '()))
                 _%bind150992%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _%tmp151044%_
                                                         _%args150993%_))))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%__stx157362157363%_))
                                             (let ((_%e151021151075%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%__stx157362157363%_))))
                                               (let ((_%tl151023151080%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e151021151075%_)))
                                                     (_%hd151022151078%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e151021151075%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd151022151078%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#ref
                                                            _%hd151022151078%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl151023151080%_))
                     (let ((_%e151024151083%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl151023151080%_))))
                       (let ((_%tl151026151088%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e151024151083%_)))
                             (_%hd151025151086%_
                              (let ()
                                (declare (not safe))
                                (##car _%e151024151083%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl151026151088%_))
                             (_%__kont157364157365%_)
                             (_%__kont157368157369%_))))
                     (_%__kont157368157369%_))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-eq? '%#quote _%hd151022151078%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl151023151080%_))
                         (let ((_%e151030151060%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl151023151080%_))))
                           (let ((_%tl151032151065%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e151030151060%_)))
                                 (_%hd151031151063%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e151030151060%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl151032151065%_))
                                 (_%__kont157366157367%_)
                                 (_%__kont157368157369%_))))
                         (_%__kont157368157369%_))
                     (_%__kont157368157369%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont157368157369%_))))
                                             (_%__kont157368157369%_)))))))
                             (if (pair? _%rest150994151002%_)
                                 (let ((_%hd150999151099%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%rest150994151002%_)))
                                       (_%tl151000151101%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest150994151002%_))))
                                   (let* ((_%e151104%_ _%hd150999151099%_)
                                          (_%rest151106%_ _%tl151000151101%_))
                                     (_%K150998151096%_
                                      _%rest151106%_
                                      _%e151104%_)))
                                 (_%else150996151010%_))))))))
                (_%__kont157414157415%_
                 (lambda ()
                   (gxc#generate-runtime-call% _%self150861%_ _%stx150862%_))))
            (let ((_%__match157453157454%_
                   (lambda (_%e150869150906%_
                            _%hd150870150909%_
                            _%tl150871150911%_
                            _%e150872150914%_
                            _%hd150873150917%_
                            _%tl150874150919%_
                            _%e150875150922%_
                            _%hd150876150925%_
                            _%tl150877150927%_
                            _%e150878150930%_
                            _%hd150879150933%_
                            _%tl150880150935%_
                            _%__splice157412157413%_
                            _%target150881150938%_
                            _%tl150883150940%_)
                     (letrec ((_%loop150884150943%_
                               (lambda (_%hd150882150946%_
                                        _%rand150888150948%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd150882150946%_))
                                     (let ((_%e150885150951%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd150882150946%_))))
                                       (let ((_%lp-tl150887150956%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e150885150951%_)))
                                             (_%lp-hd150886150954%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e150885150951%_))))
                                         (_%loop150884150943%_
                                          _%lp-tl150887150956%_
                                          (cons _%lp-hd150886150954%_
                                                _%rand150888150948%_))))
                                     (let ((_%rand150889150959%_
                                            (reverse _%rand150888150948%_)))
                                       (_%__kont157410157411%_
                                        _%rand150889150959%_
                                        _%hd150879150933%_))))))
                       (_%loop150884150943%_ _%target150881150938%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx157408157409%_))
                  (let ((_%e150869150906%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx157408157409%_))))
                    (let ((_%tl150871150911%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e150869150906%_)))
                          (_%hd150870150909%_
                           (let ()
                             (declare (not safe))
                             (##car _%e150869150906%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl150871150911%_))
                          (let ((_%e150872150914%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl150871150911%_))))
                            (let ((_%tl150874150919%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e150872150914%_)))
                                  (_%hd150873150917%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e150872150914%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd150873150917%_))
                                  (let ((_%e150875150922%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd150873150917%_))))
                                    (let ((_%tl150877150927%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e150875150922%_)))
                                          (_%hd150876150925%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e150875150922%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd150876150925%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd150876150925%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl150877150927%_))
                                                  (let ((_%e150878150930%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl150877150927%_))))
                                                    (let ((_%tl150880150935%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e150878150930%_)))
                                                          (_%hd150879150933%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e150878150930%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl150880150935%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl150874150919%_))
                      (let ((_%__splice157412157413%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl150874150919%_
                                '0))))
                        (let ((_%tl150883150940%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice157412157413%_ '1)))
                              (_%target150881150938%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice157412157413%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl150883150940%_))
                              (_%__match157453157454%_
                               _%e150869150906%_
                               _%hd150870150909%_
                               _%tl150871150911%_
                               _%e150872150914%_
                               _%hd150873150917%_
                               _%tl150874150919%_
                               _%e150875150922%_
                               _%hd150876150925%_
                               _%tl150877150927%_
                               _%e150878150930%_
                               _%hd150879150933%_
                               _%tl150880150935%_
                               _%__splice157412157413%_
                               _%target150881150938%_
                               _%tl150883150940%_)
                              (_%__kont157414157415%_))))
                      (_%__kont157414157415%_))
                  (_%__kont157414157415%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont157414157415%_))
                                              (_%__kont157414157415%_))
                                          (_%__kont157414157415%_))))
                                  (_%__kont157414157415%_))))
                          (_%__kont157414157415%_))))
                  (_%__kont157414157415%_)))))))
    (define gxc#generate-runtime-if%
      (lambda (_%self150673%_ _%stx150674%_)
        (letrec ((_%simplify150676%_
                  (lambda (_%code150761%_)
                    (let* ((_%code150762150780%_ _%code150761%_)
                           (_%else150764150788%_ (lambda () _%code150761%_))
                           (_%K150766150824%_
                            (lambda (_%expr150791%_ _%test150792%_)
                              (let* ((_%expr150793150801%_ _%expr150791%_)
                                     (_%else150795150809%_
                                      (lambda ()
                                        (cons 'and
                                              (cons _%test150792%_
                                                    (cons _%expr150791%_
                                                          '())))))
                                     (_%K150797150814%_
                                      (lambda (_%exprs150812%_)
                                        (cons 'and
                                              (cons _%test150792%_
                                                    _%exprs150812%_)))))
                                (if (pair? _%expr150793150801%_)
                                    (let ((_%hd150798150817%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%expr150793150801%_)))
                                          (_%tl150799150819%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%expr150793150801%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _%hd150798150817%_ 'and))
                                          (let ((_%exprs150822%_
                                                 _%tl150799150819%_))
                                            (_%K150797150814%_
                                             _%exprs150822%_))
                                          (_%else150795150809%_)))
                                    (_%else150795150809%_))))))
                      (if (pair? _%code150762150780%_)
                          (let ((_%hd150767150827%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%code150762150780%_)))
                                (_%tl150768150829%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%code150762150780%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##eq? _%hd150767150827%_ 'if))
                                (if (pair? _%tl150768150829%_)
                                    (let ((_%hd150769150832%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl150768150829%_)))
                                          (_%tl150770150834%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl150768150829%_))))
                                      (let ((_%test150837%_
                                             _%hd150769150832%_))
                                        (if (pair? _%tl150770150834%_)
                                            (let ((_%hd150771150839%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl150770150834%_)))
                                                  (_%tl150772150841%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl150770150834%_))))
                                              (let ((_%expr150844%_
                                                     _%hd150771150839%_))
                                                (if (pair? _%tl150772150841%_)
                                                    (let ((_%hd150773150846%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl150772150841%_)))
                                                          (_%tl150774150848%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl150772150841%_))))
                                                      (if (pair? _%hd150773150846%_)
                                                          (let ((_%hd150775150851%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%hd150773150846%_)))
                        (_%tl150776150853%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%hd150773150846%_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _%hd150775150851%_ 'quote))
                        (if (pair? _%tl150776150853%_)
                            (let ((_%hd150777150856%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%tl150776150853%_)))
                                  (_%tl150778150858%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%tl150776150853%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd150777150856%_ '#f))
                                  (if (null? _%tl150778150858%_)
                                      (if (null? _%tl150774150848%_)
                                          (_%K150766150824%_
                                           _%expr150844%_
                                           _%test150837%_)
                                          (_%else150764150788%_))
                                      (_%else150764150788%_))
                                  (_%else150764150788%_)))
                            (_%else150764150788%_))
                        (_%else150764150788%_)))
                  (_%else150764150788%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else150764150788%_))))
                                            (_%else150764150788%_))))
                                    (_%else150764150788%_))
                                (_%else150764150788%_)))
                          (_%else150764150788%_))))))
          (let* ((_%g150678150699%_
                  (lambda (_%g150679150696%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g150679150696%_))))
                 (_%g150677150758%_
                  (lambda (_%g150679150702%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g150679150702%_))
                        (let ((_%e150683150704%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g150679150702%_))))
                          (let ((_%hd150684150707%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e150683150704%_)))
                                (_%tl150685150709%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e150683150704%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl150685150709%_))
                                (let ((_%e150686150712%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl150685150709%_))))
                                  (let ((_%hd150687150715%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e150686150712%_)))
                                        (_%tl150688150717%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e150686150712%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl150688150717%_))
                                        (let ((_%e150689150720%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl150688150717%_))))
                                          (let ((_%hd150690150723%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e150689150720%_)))
                                                (_%tl150691150725%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e150689150720%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl150691150725%_))
                                                (let ((_%e150692150728%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl150691150725%_))))
                                                  (let ((_%hd150693150731%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e150692150728%_)))
                                                        (_%tl150694150733%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e150692150728%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl150694150733%_))
                                                        ((lambda (_%L150736%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L150737%_
                          _%L150738%_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#current-compile-boolean-context))
                       (_%simplify150676%_
                        (cons 'if
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _%self150673%_
                                       _%L150738%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self150673%_
                                             _%L150737%_))
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self150673%_
                                                   _%L150736%_))
                                                '())))))
                       (cons 'if
                             (cons (let ((__tmp157908
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self150673%_
                                               _%L150738%_)))))
                                     (declare (not safe))
                                     (call-with-parameters__1
                                      __tmp157908
                                      gxc#current-compile-boolean-context
                                      '#t))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self150673%_
                                            _%L150737%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self150673%_
                                                  _%L150736%_))
                                               '()))))))
                 _%hd150693150731%_
                 _%hd150690150723%_
                 _%hd150687150715%_)
                (_%g150678150699%_ _%g150679150702%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g150678150699%_
                                                 _%g150679150702%_))))
                                        (_%g150678150699%_
                                         _%g150679150702%_))))
                                (_%g150678150699%_ _%g150679150702%_))))
                        (_%g150678150699%_ _%g150679150702%_)))))
            (_%g150677150758%_ _%stx150674%_)))))
    (define gxc#generate-runtime-ref%
      (lambda (_%self150621%_ _%stx150622%_)
        (let* ((_%g150624150637%_
                (lambda (_%g150625150634%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g150625150634%_))))
               (_%g150623150670%_
                (lambda (_%g150625150640%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g150625150640%_))
                      (let ((_%e150627150642%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g150625150640%_))))
                        (let ((_%hd150628150645%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e150627150642%_)))
                              (_%tl150629150647%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e150627150642%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl150629150647%_))
                              (let ((_%e150630150650%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl150629150647%_))))
                                (let ((_%hd150631150653%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e150630150650%_)))
                                      (_%tl150632150655%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e150630150650%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl150632150655%_))
                                      ((lambda (_%L150658%_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#generate-runtime-binding-id
                                            _%L150658%_)))
                                       _%hd150631150653%_)
                                      (_%g150624150637%_ _%g150625150640%_))))
                              (_%g150624150637%_ _%g150625150640%_))))
                      (_%g150624150637%_ _%g150625150640%_)))))
          (_%g150623150670%_ _%stx150622%_))))
    (define gxc#generate-runtime-setq%
      (lambda (_%self150553%_ _%stx150554%_)
        (let* ((_%g150556150573%_
                (lambda (_%g150557150570%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g150557150570%_))))
               (_%g150555150618%_
                (lambda (_%g150557150576%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g150557150576%_))
                      (let ((_%e150560150578%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g150557150576%_))))
                        (let ((_%hd150561150581%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e150560150578%_)))
                              (_%tl150562150583%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e150560150578%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl150562150583%_))
                              (let ((_%e150563150586%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl150562150583%_))))
                                (let ((_%hd150564150589%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e150563150586%_)))
                                      (_%tl150565150591%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e150563150586%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl150565150591%_))
                                      (let ((_%e150566150594%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl150565150591%_))))
                                        (let ((_%hd150567150597%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e150566150594%_)))
                                              (_%tl150568150599%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e150566150594%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl150568150599%_))
                                              ((lambda (_%L150602%_
                                                        _%L150603%_)
                                                 (cons 'set!
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#generate-runtime-binding-id _%L150603%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _%self150553%_ _%L150602%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd150567150597%_
                                               _%hd150564150589%_)
                                              (_%g150556150573%_
                                               _%g150557150576%_))))
                                      (_%g150556150573%_ _%g150557150576%_))))
                              (_%g150556150573%_ _%g150557150576%_))))
                      (_%g150556150573%_ _%g150557150576%_)))))
          (_%g150555150618%_ _%stx150554%_))))
    (define gxc#generate-runtime-struct-instancep%
      (lambda (_%self150364%_ _%stx150365%_)
        (let* ((_%g150367150384%_
                (lambda (_%g150368150381%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g150368150381%_))))
               (_%g150366150550%_
                (lambda (_%g150368150387%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g150368150387%_))
                      (let ((_%e150371150389%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g150368150387%_))))
                        (let ((_%hd150372150392%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e150371150389%_)))
                              (_%tl150373150394%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e150371150389%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl150373150394%_))
                              (let ((_%e150374150397%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl150373150394%_))))
                                (let ((_%hd150375150400%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e150374150397%_)))
                                      (_%tl150376150402%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e150374150397%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl150376150402%_))
                                      (let ((_%e150377150405%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl150376150402%_))))
                                        (let ((_%hd150378150408%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e150377150405%_)))
                                              (_%tl150379150410%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e150377150405%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl150379150410%_))
                                              ((lambda (_%L150413%_
                                                        _%L150414%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self150364%_ _%L150413%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _%self150364%_ _%L150414%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp150429%_ ((_%rest150432%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L150414%_ (cons _%L150413%_ '())))
                                (_%bind150434%_ '())
                                (_%args150435%_ '()))
               (let* ((_%rest150436150444%_ _%rest150432%_)
                      (_%else150438150452%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind150434%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-instance-of?
                                                       _%args150435%_)
                                                 '()))))))
                      (_%K150440150538%_
                       (lambda (_%rest150455%_ _%e150456%_)
                         (let* ((_%__stx157456157457%_ _%e150456%_)
                                (_%g150461150479%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx157456157457%_)))))
                           (let ((_%__kont157458157459%_
                                  (lambda ()
                                    (_%lp150429%_
                                     _%rest150455%_
                                     _%bind150434%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e150456%_))
                                           _%args150435%_))))
                                 (_%__kont157460157461%_
                                  (lambda ()
                                    (_%lp150429%_
                                     _%rest150455%_
                                     _%bind150434%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e150456%_))
                                           _%args150435%_))))
                                 (_%__kont157462157463%_
                                  (lambda ()
                                    (let ((_%tmp150486%_
                                           (let ((__tmp157909
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp157909))))
                                      (_%lp150429%_
                                       _%rest150455%_
                                       (cons (cons _%tmp150486%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e150456%_))
                                                         '()))
                                             _%bind150434%_)
                                       (cons _%tmp150486%_ _%args150435%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx157456157457%_))
                                 (let ((_%e150463150517%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx157456157457%_))))
                                   (let ((_%tl150465150522%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e150463150517%_)))
                                         (_%hd150464150520%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e150463150517%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd150464150520%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd150464150520%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl150465150522%_))
                                                 (let ((_%e150466150525%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl150465150522%_))))
                                                   (let ((_%tl150468150530%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e150466150525%_)))
                                                         (_%hd150467150528%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e150466150525%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl150468150530%_))
                                                         (_%__kont157458157459%_)
                                                         (_%__kont157462157463%_))))
                                                 (_%__kont157462157463%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd150464150520%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl150465150522%_))
                                                     (let ((_%e150472150502%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl150465150522%_))))
                                                       (let ((_%tl150474150507%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e150472150502%_)))
                     (_%hd150473150505%_
                      (let () (declare (not safe)) (##car _%e150472150502%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl150474150507%_))
                     (_%__kont157460157461%_)
                     (_%__kont157462157463%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont157462157463%_))
                                                 (_%__kont157462157463%_)))
                                         (_%__kont157462157463%_))))
                                 (_%__kont157462157463%_)))))))
                 (if (pair? _%rest150436150444%_)
                     (let ((_%hd150441150541%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest150436150444%_)))
                           (_%tl150442150543%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest150436150444%_))))
                       (let* ((_%e150546%_ _%hd150441150541%_)
                              (_%rest150548%_ _%tl150442150543%_))
                         (_%K150440150538%_ _%rest150548%_ _%e150546%_)))
                     (_%else150438150452%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd150378150408%_
                                               _%hd150375150400%_)
                                              (_%g150367150384%_
                                               _%g150368150387%_))))
                                      (_%g150367150384%_ _%g150368150387%_))))
                              (_%g150367150384%_ _%g150368150387%_))))
                      (_%g150367150384%_ _%g150368150387%_)))))
          (_%g150366150550%_ _%stx150365%_))))
    (define gxc#generate-runtime-struct-direct-instancep%
      (lambda (_%self150175%_ _%stx150176%_)
        (let* ((_%g150178150195%_
                (lambda (_%g150179150192%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g150179150192%_))))
               (_%g150177150361%_
                (lambda (_%g150179150198%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g150179150198%_))
                      (let ((_%e150182150200%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g150179150198%_))))
                        (let ((_%hd150183150203%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e150182150200%_)))
                              (_%tl150184150205%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e150182150200%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl150184150205%_))
                              (let ((_%e150185150208%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl150184150205%_))))
                                (let ((_%hd150186150211%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e150185150208%_)))
                                      (_%tl150187150213%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e150185150208%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl150187150213%_))
                                      (let ((_%e150188150216%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl150187150213%_))))
                                        (let ((_%hd150189150219%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e150188150216%_)))
                                              (_%tl150190150221%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e150188150216%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl150190150221%_))
                                              ((lambda (_%L150224%_
                                                        _%L150225%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-direct-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self150175%_ _%L150224%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _%self150175%_ _%L150225%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp150240%_ ((_%rest150243%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L150225%_ (cons _%L150224%_ '())))
                                (_%bind150245%_ '())
                                (_%args150246%_ '()))
               (let* ((_%rest150247150255%_ _%rest150243%_)
                      (_%else150249150263%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind150245%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-direct-instance-of?
                                                       _%args150246%_)
                                                 '()))))))
                      (_%K150251150349%_
                       (lambda (_%rest150266%_ _%e150267%_)
                         (let* ((_%__stx157502157503%_ _%e150267%_)
                                (_%g150272150290%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx157502157503%_)))))
                           (let ((_%__kont157504157505%_
                                  (lambda ()
                                    (_%lp150240%_
                                     _%rest150266%_
                                     _%bind150245%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e150267%_))
                                           _%args150246%_))))
                                 (_%__kont157506157507%_
                                  (lambda ()
                                    (_%lp150240%_
                                     _%rest150266%_
                                     _%bind150245%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e150267%_))
                                           _%args150246%_))))
                                 (_%__kont157508157509%_
                                  (lambda ()
                                    (let ((_%tmp150297%_
                                           (let ((__tmp157910
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp157910))))
                                      (_%lp150240%_
                                       _%rest150266%_
                                       (cons (cons _%tmp150297%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e150267%_))
                                                         '()))
                                             _%bind150245%_)
                                       (cons _%tmp150297%_ _%args150246%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx157502157503%_))
                                 (let ((_%e150274150328%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx157502157503%_))))
                                   (let ((_%tl150276150333%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e150274150328%_)))
                                         (_%hd150275150331%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e150274150328%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd150275150331%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd150275150331%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl150276150333%_))
                                                 (let ((_%e150277150336%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl150276150333%_))))
                                                   (let ((_%tl150279150341%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e150277150336%_)))
                                                         (_%hd150278150339%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e150277150336%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl150279150341%_))
                                                         (_%__kont157504157505%_)
                                                         (_%__kont157508157509%_))))
                                                 (_%__kont157508157509%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd150275150331%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl150276150333%_))
                                                     (let ((_%e150283150313%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl150276150333%_))))
                                                       (let ((_%tl150285150318%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e150283150313%_)))
                     (_%hd150284150316%_
                      (let () (declare (not safe)) (##car _%e150283150313%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl150285150318%_))
                     (_%__kont157506157507%_)
                     (_%__kont157508157509%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont157508157509%_))
                                                 (_%__kont157508157509%_)))
                                         (_%__kont157508157509%_))))
                                 (_%__kont157508157509%_)))))))
                 (if (pair? _%rest150247150255%_)
                     (let ((_%hd150252150352%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest150247150255%_)))
                           (_%tl150253150354%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest150247150255%_))))
                       (let* ((_%e150357%_ _%hd150252150352%_)
                              (_%rest150359%_ _%tl150253150354%_))
                         (_%K150251150349%_ _%rest150359%_ _%e150357%_)))
                     (_%else150249150263%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd150189150219%_
                                               _%hd150186150211%_)
                                              (_%g150178150195%_
                                               _%g150179150198%_))))
                                      (_%g150178150195%_ _%g150179150198%_))))
                              (_%g150178150195%_ _%g150179150198%_))))
                      (_%g150178150195%_ _%g150179150198%_)))))
          (_%g150177150361%_ _%stx150176%_))))
    (define gxc#generate-runtime-struct-ref%
      (lambda (_%self150091%_ _%stx150092%_)
        (let* ((_%g150094150115%_
                (lambda (_%g150095150112%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g150095150112%_))))
               (_%g150093150172%_
                (lambda (_%g150095150118%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g150095150118%_))
                      (let ((_%e150099150120%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g150095150118%_))))
                        (let ((_%hd150100150123%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e150099150120%_)))
                              (_%tl150101150125%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e150099150120%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl150101150125%_))
                              (let ((_%e150102150128%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl150101150125%_))))
                                (let ((_%hd150103150131%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e150102150128%_)))
                                      (_%tl150104150133%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e150102150128%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl150104150133%_))
                                      (let ((_%e150105150136%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl150104150133%_))))
                                        (let ((_%hd150106150139%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e150105150136%_)))
                                              (_%tl150107150141%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e150105150136%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl150107150141%_))
                                              (let ((_%e150108150144%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl150107150141%_))))
                                                (let ((_%hd150109150147%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e150108150144%_)))
                                                      (_%tl150110150149%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e150108150144%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl150110150149%_))
                                                      ((lambda (_%L150152%_
                                                                _%L150153%_
                                                                _%L150154%_)
                                                         (cons '##structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1 _%self150091%_ _%L150152%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self150091%_
                                      _%L150153%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self150091%_
                                            _%L150154%_))
                                         (cons ''#f '()))))))
               _%hd150109150147%_
               _%hd150106150139%_
               _%hd150103150131%_)
              (_%g150094150115%_ _%g150095150118%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g150094150115%_
                                               _%g150095150118%_))))
                                      (_%g150094150115%_ _%g150095150118%_))))
                              (_%g150094150115%_ _%g150095150118%_))))
                      (_%g150094150115%_ _%g150095150118%_)))))
          (_%g150093150172%_ _%stx150092%_))))
    (define gxc#generate-runtime-struct-setq%
      (lambda (_%self149991%_ _%stx149992%_)
        (let* ((_%g149994150019%_
                (lambda (_%g149995150016%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149995150016%_))))
               (_%g149993150088%_
                (lambda (_%g149995150022%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149995150022%_))
                      (let ((_%e150000150024%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149995150022%_))))
                        (let ((_%hd150001150027%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e150000150024%_)))
                              (_%tl150002150029%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e150000150024%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl150002150029%_))
                              (let ((_%e150003150032%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl150002150029%_))))
                                (let ((_%hd150004150035%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e150003150032%_)))
                                      (_%tl150005150037%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e150003150032%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl150005150037%_))
                                      (let ((_%e150006150040%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl150005150037%_))))
                                        (let ((_%hd150007150043%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e150006150040%_)))
                                              (_%tl150008150045%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e150006150040%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl150008150045%_))
                                              (let ((_%e150009150048%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl150008150045%_))))
                                                (let ((_%hd150010150051%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e150009150048%_)))
                                                      (_%tl150011150053%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e150009150048%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl150011150053%_))
                                                      (let ((_%e150012150056%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl150011150053%_))))
                (let ((_%hd150013150059%_
                       (let () (declare (not safe)) (##car _%e150012150056%_)))
                      (_%tl150014150061%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e150012150056%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl150014150061%_))
                      ((lambda (_%L150064%_
                                _%L150065%_
                                _%L150066%_
                                _%L150067%_)
                         (cons '##structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self149991%_
                                        _%L150065%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self149991%_
                                              _%L150064%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self149991%_
                                                    _%L150066%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self149991%_
                                                          _%L150067%_))
                                                       (cons ''#f '())))))))
                       _%hd150013150059%_
                       _%hd150010150051%_
                       _%hd150007150043%_
                       _%hd150004150035%_)
                      (_%g149994150019%_ _%g149995150022%_))))
              (_%g149994150019%_ _%g149995150022%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g149994150019%_
                                               _%g149995150022%_))))
                                      (_%g149994150019%_ _%g149995150022%_))))
                              (_%g149994150019%_ _%g149995150022%_))))
                      (_%g149994150019%_ _%g149995150022%_)))))
          (_%g149993150088%_ _%stx149992%_))))
    (define gxc#generate-runtime-struct-direct-ref%
      (lambda (_%self149907%_ _%stx149908%_)
        (let* ((_%g149910149931%_
                (lambda (_%g149911149928%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149911149928%_))))
               (_%g149909149988%_
                (lambda (_%g149911149934%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149911149934%_))
                      (let ((_%e149915149936%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149911149934%_))))
                        (let ((_%hd149916149939%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149915149936%_)))
                              (_%tl149917149941%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149915149936%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149917149941%_))
                              (let ((_%e149918149944%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149917149941%_))))
                                (let ((_%hd149919149947%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149918149944%_)))
                                      (_%tl149920149949%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149918149944%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149920149949%_))
                                      (let ((_%e149921149952%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149920149949%_))))
                                        (let ((_%hd149922149955%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149921149952%_)))
                                              (_%tl149923149957%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149921149952%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl149923149957%_))
                                              (let ((_%e149924149960%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl149923149957%_))))
                                                (let ((_%hd149925149963%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e149924149960%_)))
                                                      (_%tl149926149965%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e149924149960%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl149926149965%_))
                                                      ((lambda (_%L149968%_
                                                                _%L149969%_
                                                                _%L149970%_)
                                                         (cons '##direct-structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1 _%self149907%_ _%L149968%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self149907%_
                                      _%L149969%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self149907%_
                                            _%L149970%_))
                                         (cons ''#f '()))))))
               _%hd149925149963%_
               _%hd149922149955%_
               _%hd149919149947%_)
              (_%g149910149931%_ _%g149911149934%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g149910149931%_
                                               _%g149911149934%_))))
                                      (_%g149910149931%_ _%g149911149934%_))))
                              (_%g149910149931%_ _%g149911149934%_))))
                      (_%g149910149931%_ _%g149911149934%_)))))
          (_%g149909149988%_ _%stx149908%_))))
    (define gxc#generate-runtime-struct-direct-setq%
      (lambda (_%self149807%_ _%stx149808%_)
        (let* ((_%g149810149835%_
                (lambda (_%g149811149832%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149811149832%_))))
               (_%g149809149904%_
                (lambda (_%g149811149838%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149811149838%_))
                      (let ((_%e149816149840%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149811149838%_))))
                        (let ((_%hd149817149843%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149816149840%_)))
                              (_%tl149818149845%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149816149840%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149818149845%_))
                              (let ((_%e149819149848%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149818149845%_))))
                                (let ((_%hd149820149851%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149819149848%_)))
                                      (_%tl149821149853%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149819149848%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149821149853%_))
                                      (let ((_%e149822149856%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149821149853%_))))
                                        (let ((_%hd149823149859%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149822149856%_)))
                                              (_%tl149824149861%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149822149856%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl149824149861%_))
                                              (let ((_%e149825149864%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl149824149861%_))))
                                                (let ((_%hd149826149867%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e149825149864%_)))
                                                      (_%tl149827149869%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e149825149864%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl149827149869%_))
                                                      (let ((_%e149828149872%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl149827149869%_))))
                (let ((_%hd149829149875%_
                       (let () (declare (not safe)) (##car _%e149828149872%_)))
                      (_%tl149830149877%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e149828149872%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl149830149877%_))
                      ((lambda (_%L149880%_
                                _%L149881%_
                                _%L149882%_
                                _%L149883%_)
                         (cons '##direct-structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self149807%_
                                        _%L149881%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self149807%_
                                              _%L149880%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self149807%_
                                                    _%L149882%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self149807%_
                                                          _%L149883%_))
                                                       (cons ''#f '())))))))
                       _%hd149829149875%_
                       _%hd149826149867%_
                       _%hd149823149859%_
                       _%hd149820149851%_)
                      (_%g149810149835%_ _%g149811149838%_))))
              (_%g149810149835%_ _%g149811149838%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g149810149835%_
                                               _%g149811149838%_))))
                                      (_%g149810149835%_ _%g149811149838%_))))
                              (_%g149810149835%_ _%g149811149838%_))))
                      (_%g149810149835%_ _%g149811149838%_)))))
          (_%g149809149904%_ _%stx149808%_))))
    (define gxc#generate-runtime-struct-unchecked-ref%
      (lambda (_%self149602%_ _%stx149603%_)
        (let* ((_%g149605149626%_
                (lambda (_%g149606149623%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149606149623%_))))
               (_%g149604149804%_
                (lambda (_%g149606149629%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149606149629%_))
                      (let ((_%e149610149631%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149606149629%_))))
                        (let ((_%hd149611149634%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149610149631%_)))
                              (_%tl149612149636%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149610149631%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149612149636%_))
                              (let ((_%e149613149639%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149612149636%_))))
                                (let ((_%hd149614149642%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149613149639%_)))
                                      (_%tl149615149644%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149613149639%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149615149644%_))
                                      (let ((_%e149616149647%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149615149644%_))))
                                        (let ((_%hd149617149650%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149616149647%_)))
                                              (_%tl149618149652%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149616149647%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl149618149652%_))
                                              (let ((_%e149619149655%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl149618149652%_))))
                                                (let ((_%hd149620149658%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e149619149655%_)))
                                                      (_%tl149621149660%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e149619149655%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl149621149660%_))
                                                      ((lambda (_%L149663%_
                                                                _%L149664%_
                                                                _%L149665%_)
                                                         (if (gxc#current-compile-decls-unsafe?)
                                                             (cons '##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__1
                                    _%self149602%_
                                    _%L149663%_))
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self149602%_
                                          _%L149664%_))
                                       (cons ''#f (cons ''#f '())))))
                     (let _%lp149683%_ ((_%rest149686%_
                                         (cons _%L149664%_
                                               (cons _%L149663%_ '())))
                                        (_%bind149688%_ '())
                                        (_%args149689%_ '()))
                       (let* ((_%rest149690149698%_ _%rest149686%_)
                              (_%else149692149706%_
                               (lambda ()
                                 (cons 'let
                                       (cons _%bind149688%_
                                             (cons '(declare (not safe))
                                                   (cons (cons '##unchecked-structure-ref
                                                               (let ((__tmp157911
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons ''#f (cons ''#f '()))))
                         (declare (not safe))
                         (__foldr1 cons __tmp157911 _%args149689%_)))
                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%K149694149792%_
                               (lambda (_%rest149709%_ _%e149710%_)
                                 (let* ((_%__stx157548157549%_ _%e149710%_)
                                        (_%g149715149733%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx157548157549%_)))))
                                   (let ((_%__kont157550157551%_
                                          (lambda ()
                                            (_%lp149683%_
                                             _%rest149709%_
                                             _%bind149688%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e149710%_))
                                                   _%args149689%_))))
                                         (_%__kont157552157553%_
                                          (lambda ()
                                            (_%lp149683%_
                                             _%rest149709%_
                                             _%bind149688%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e149710%_))
                                                   _%args149689%_))))
                                         (_%__kont157554157555%_
                                          (lambda ()
                                            (let ((_%tmp149740%_
                                                   (let ((__tmp157912
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym
                                                             '__tmp))))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp157912))))
                                              (_%lp149683%_
                                               _%rest149709%_
                                               (cons (cons _%tmp149740%_
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__0 _%e149710%_))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind149688%_)
                                               (cons _%tmp149740%_
                                                     _%args149689%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx157548157549%_))
                                         (let ((_%e149717149771%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx157548157549%_))))
                                           (let ((_%tl149719149776%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e149717149771%_)))
                                                 (_%hd149718149774%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e149717149771%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd149718149774%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#ref
                                                        _%hd149718149774%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl149719149776%_))
                                                         (let ((_%e149720149779%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl149719149776%_))))
                   (let ((_%tl149722149784%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e149720149779%_)))
                         (_%hd149721149782%_
                          (let ()
                            (declare (not safe))
                            (##car _%e149720149779%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl149722149784%_))
                         (_%__kont157550157551%_)
                         (_%__kont157554157555%_))))
                 (_%__kont157554157555%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#quote
                                                            _%hd149718149774%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl149719149776%_))
                     (let ((_%e149726149756%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl149719149776%_))))
                       (let ((_%tl149728149761%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e149726149756%_)))
                             (_%hd149727149759%_
                              (let ()
                                (declare (not safe))
                                (##car _%e149726149756%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl149728149761%_))
                             (_%__kont157552157553%_)
                             (_%__kont157554157555%_))))
                     (_%__kont157554157555%_))
                 (_%__kont157554157555%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont157554157555%_))))
                                         (_%__kont157554157555%_)))))))
                         (if (pair? _%rest149690149698%_)
                             (let ((_%hd149695149795%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest149690149698%_)))
                                   (_%tl149696149797%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest149690149698%_))))
                               (let* ((_%e149800%_ _%hd149695149795%_)
                                      (_%rest149802%_ _%tl149696149797%_))
                                 (_%K149694149792%_
                                  _%rest149802%_
                                  _%e149800%_)))
                             (_%else149692149706%_))))))
               _%hd149620149658%_
               _%hd149617149650%_
               _%hd149614149642%_)
              (_%g149605149626%_ _%g149606149629%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g149605149626%_
                                               _%g149606149629%_))))
                                      (_%g149605149626%_ _%g149606149629%_))))
                              (_%g149605149626%_ _%g149606149629%_))))
                      (_%g149605149626%_ _%g149606149629%_)))))
          (_%g149604149804%_ _%stx149603%_))))
    (define gxc#generate-runtime-struct-unchecked-setq%
      (lambda (_%self149381%_ _%stx149382%_)
        (let* ((_%g149384149409%_
                (lambda (_%g149385149406%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149385149406%_))))
               (_%g149383149599%_
                (lambda (_%g149385149412%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149385149412%_))
                      (let ((_%e149390149414%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149385149412%_))))
                        (let ((_%hd149391149417%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149390149414%_)))
                              (_%tl149392149419%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149390149414%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149392149419%_))
                              (let ((_%e149393149422%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149392149419%_))))
                                (let ((_%hd149394149425%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149393149422%_)))
                                      (_%tl149395149427%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149393149422%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149395149427%_))
                                      (let ((_%e149396149430%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149395149427%_))))
                                        (let ((_%hd149397149433%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149396149430%_)))
                                              (_%tl149398149435%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149396149430%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl149398149435%_))
                                              (let ((_%e149399149438%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl149398149435%_))))
                                                (let ((_%hd149400149441%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e149399149438%_)))
                                                      (_%tl149401149443%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e149399149438%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl149401149443%_))
                                                      (let ((_%e149402149446%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl149401149443%_))))
                (let ((_%hd149403149449%_
                       (let () (declare (not safe)) (##car _%e149402149446%_)))
                      (_%tl149404149451%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e149402149446%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl149404149451%_))
                      ((lambda (_%L149454%_
                                _%L149455%_
                                _%L149456%_
                                _%L149457%_)
                         (if (gxc#current-compile-decls-unsafe?)
                             (cons '##unchecked-structure-set!
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self149381%_
                                            _%L149455%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self149381%_
                                                  _%L149454%_))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self149381%_
                                                        _%L149456%_))
                                                     (cons ''#f
                                                           (cons ''#f '()))))))
                             (let _%lp149478%_ ((_%rest149481%_
                                                 (cons _%L149456%_
                                                       (cons _%L149454%_
                                                             (cons _%L149455%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%bind149483%_ '())
                                                (_%args149484%_ '()))
                               (let* ((_%rest149485149493%_ _%rest149481%_)
                                      (_%else149487149501%_
                                       (lambda ()
                                         (cons 'let
                                               (cons _%bind149483%_
                                                     (cons '(declare
                                                              (not safe))
                                                           (cons (cons '##unchecked-structure-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp157913 (cons ''#f (cons ''#f '()))))
                                 (declare (not safe))
                                 (__foldr1 cons __tmp157913 _%args149484%_)))
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%K149489149587%_
                                       (lambda (_%rest149504%_ _%e149505%_)
                                         (let* ((_%__stx157594157595%_
                                                 _%e149505%_)
                                                (_%g149510149528%_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%__stx157594157595%_)))))
                                           (let ((_%__kont157596157597%_
                                                  (lambda ()
                                                    (_%lp149478%_
                                                     _%rest149504%_
                                                     _%bind149483%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e149505%_))
                                                           _%args149484%_))))
                                                 (_%__kont157598157599%_
                                                  (lambda ()
                                                    (_%lp149478%_
                                                     _%rest149504%_
                                                     _%bind149483%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e149505%_))
                                                           _%args149484%_))))
                                                 (_%__kont157600157601%_
                                                  (lambda ()
                                                    (let ((_%tmp149535%_
                                                           (let ((__tmp157914
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__tmp))))
                     (declare (not safe))
                     (make-symbol__0 __tmp157914))))
              (_%lp149478%_
               _%rest149504%_
               (cons (cons _%tmp149535%_
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__0 _%e149505%_))
                                 '()))
                     _%bind149483%_)
               (cons _%tmp149535%_ _%args149484%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%__stx157594157595%_))
                                                 (let ((_%e149512149566%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%__stx157594157595%_))))
                                                   (let ((_%tl149514149571%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e149512149566%_)))
                                                         (_%hd149513149569%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e149512149566%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _%hd149513149569%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-eq? '%#ref _%hd149513149569%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl149514149571%_))
                         (let ((_%e149515149574%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl149514149571%_))))
                           (let ((_%tl149517149579%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e149515149574%_)))
                                 (_%hd149516149577%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e149515149574%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl149517149579%_))
                                 (_%__kont157596157597%_)
                                 (_%__kont157600157601%_))))
                         (_%__kont157600157601%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-eq? '%#quote _%hd149513149569%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%tl149514149571%_))
                             (let ((_%e149521149551%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%tl149514149571%_))))
                               (let ((_%tl149523149556%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e149521149551%_)))
                                     (_%hd149522149554%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e149521149551%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%tl149523149556%_))
                                     (_%__kont157598157599%_)
                                     (_%__kont157600157601%_))))
                             (_%__kont157600157601%_))
                         (_%__kont157600157601%_)))
                 (_%__kont157600157601%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont157600157601%_)))))))
                                 (if (pair? _%rest149485149493%_)
                                     (let ((_%hd149490149590%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%rest149485149493%_)))
                                           (_%tl149491149592%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%rest149485149493%_))))
                                       (let* ((_%e149595%_ _%hd149490149590%_)
                                              (_%rest149597%_
                                               _%tl149491149592%_))
                                         (_%K149489149587%_
                                          _%rest149597%_
                                          _%e149595%_)))
                                     (_%else149487149501%_))))))
                       _%hd149403149449%_
                       _%hd149400149441%_
                       _%hd149397149433%_
                       _%hd149394149425%_)
                      (_%g149384149409%_ _%g149385149412%_))))
              (_%g149384149409%_ _%g149385149412%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g149384149409%_
                                               _%g149385149412%_))))
                                      (_%g149384149409%_ _%g149385149412%_))))
                              (_%g149384149409%_ _%g149385149412%_))))
                      (_%g149384149409%_ _%g149385149412%_)))))
          (_%g149383149599%_ _%stx149382%_))))
    (define gxc#generate-runtime-loader-import%
      (lambda (_%self149220%_ _%stx149221%_)
        (letrec ((_%import-set-template149223%_
                  (lambda (_%in149326%_ _%phi149327%_)
                    (let ((_%iphi149329%_
                           (fx+ _%phi149327%_
                                (##direct-structure-ref
                                 _%in149326%_
                                 '2
                                 gx#import-set::t
                                 '#f)))
                          (_%imports149330%_
                           (##structure-ref
                            (##direct-structure-ref
                             _%in149326%_
                             '1
                             gx#import-set::t
                             '#f)
                            '8
                            gx#module-context::t
                            '#f)))
                      (let _%lp149332%_ ((_%rest149334%_ _%imports149330%_)
                                         (_%r149335%_ '()))
                        (let* ((_%rest149336149344%_ _%rest149334%_)
                               (_%else149338149352%_ (lambda () _%r149335%_))
                               (_%K149340149369%_
                                (lambda (_%rest149355%_ _%in149356%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%in149356%_
                                         'gx#module-context::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxzero? _%iphi149329%_))
                                          (_%lp149332%_
                                           _%rest149355%_
                                           (cons _%in149356%_ _%r149335%_))
                                          (_%lp149332%_
                                           _%rest149355%_
                                           _%r149335%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%in149356%_
                                             'gx#module-import::t))
                                          (let ((_%iphi149360%_
                                                 (fx+ _%phi149327%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%in149356%_
                                                         '3
                                                         '#f
                                                         '#f)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##fxzero? _%iphi149360%_))
                                                (_%lp149332%_
                                                 _%rest149355%_
                                                 (cons (##direct-structure-ref
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%in149356%_
                                                           '1
                                                           '#f
                                                           '#f))
                                                        '1
                                                        gx#module-export::t
                                                        '#f)
                                                       _%r149335%_))
                                                (_%lp149332%_
                                                 _%rest149355%_
                                                 _%r149335%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 _%in149356%_
                                                 'gx#import-set::t))
                                              (let ((_%xphi149363%_
                                                     (fx+ _%iphi149329%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%in149356%_
                                                             '2
                                                             '#f
                                                             '#f)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##fxzero?
                                                       _%xphi149363%_))
                                                    (_%lp149332%_
                                                     _%rest149355%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in149356%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           _%r149335%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##fxpositive?
                                                           _%xphi149363%_))
                                                        (_%lp149332%_
                                                         _%rest149355%_
                                                         (let ((__tmp157915
                                                                (_%import-set-template149223%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in149356%_
                         _%iphi149329%_)))
                   (declare (not safe))
                   (__foldl1 cons _%r149335%_ __tmp157915)))
                (_%lp149332%_ _%rest149355%_ _%r149335%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%lp149332%_
                                               _%rest149355%_
                                               _%r149335%_)))))))
                          (if (pair? _%rest149336149344%_)
                              (let ((_%hd149341149372%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest149336149344%_)))
                                    (_%tl149342149374%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest149336149344%_))))
                                (let* ((_%in149377%_ _%hd149341149372%_)
                                       (_%rest149379%_ _%tl149342149374%_))
                                  (_%K149340149369%_
                                   _%rest149379%_
                                   _%in149377%_)))
                              (_%else149338149352%_))))))))
          (let* ((_%g149225149235%_
                  (lambda (_%g149226149232%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g149226149232%_))))
                 (_%g149224149323%_
                  (lambda (_%g149226149238%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g149226149238%_))
                        (let ((_%e149228149240%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g149226149238%_))))
                          (let ((_%hd149229149243%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e149228149240%_)))
                                (_%tl149230149245%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e149228149240%_))))
                            ((lambda (_%L149248%_)
                               (let ((_%ht149259%_
                                      (let ()
                                        (declare (not safe))
                                        (make-hash-table-eq))))
                                 (let _%lp149261%_ ((_%rest149263%_
                                                     _%L149248%_)
                                                    (_%loads149264%_ '()))
                                   (letrec ((_%K149266%_
                                             (lambda (_%ctx149316%_
                                                      _%rest149317%_)
                                               (let ((_%id149319%_
                                                      (##structure-ref
                                                       _%ctx149316%_
                                                       '1
                                                       gx#expander-context::t
                                                       '#f)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (__hash-get
                                                        _%ht149259%_
                                                        _%id149319%_))
                                                     (_%lp149261%_
                                                      _%rest149317%_
                                                      _%loads149264%_)
                                                     (let ((_%rt149321%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#module-id->path-string
                                                               _%id149319%_))))
                                                       (let ()
                                                         (declare (not safe))
                                                         (__hash-put!
                                                          _%ht149259%_
                                                          _%id149319%_
                                                          _%rt149321%_))
                                                       (_%lp149261%_
                                                        _%rest149317%_
                                                        (cons _%rt149321%_
                                                              _%loads149264%_))))))))
                                     (let* ((_%rest149267149275%_
                                             _%rest149263%_)
                                            (_%else149269149287%_
                                             (lambda ()
                                               (cons 'begin
                                                     (let ((__tmp157917
                                                            (lambda (_%g149282149284%_)
                                                              (list 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g149282149284%_)))
                   (__tmp157916 (reverse _%loads149264%_)))
               (declare (not safe))
               (##map __tmp157917 __tmp157916)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%K149271149304%_
                                             (lambda (_%rest149290%_
                                                      _%in149291%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-instance-of?
                                                      _%in149291%_
                                                      'gx#module-context::t))
                                                   (_%K149266%_
                                                    _%in149291%_
                                                    _%rest149290%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          _%in149291%_
                                                          'gx#module-import::t))
                                                       (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%in149291%_
                               '3
                               '#f
                               '#f)))
                   (_%K149266%_
                    (##direct-structure-ref
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%in149291%_ '1 '#f '#f))
                     '1
                     gx#module-export::t
                     '#f)
                    _%rest149290%_)
                   (_%lp149261%_ _%rest149290%_ _%loads149264%_))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%in149291%_
                      'gx#import-set::t))
                   (let ((_%phi149296%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%in149291%_
                             '2
                             '#f
                             '#f))))
                     (if (fxzero? _%phi149296%_)
                         (_%K149266%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%in149291%_
                             '1
                             '#f
                             '#f))
                          _%rest149290%_)
                         (if (fxpositive? _%phi149296%_)
                             (let ((_%deps149300%_
                                    (_%import-set-template149223%_
                                     _%in149291%_
                                     '0)))
                               (_%lp149261%_
                                (let ()
                                  (declare (not safe))
                                  (__foldl1
                                   cons
                                   _%rest149290%_
                                   _%deps149300%_))
                                _%loads149264%_))
                             (_%lp149261%_ _%rest149290%_ _%loads149264%_))))
                   (let ()
                     (declare (not safe))
                     (gxc#raise-compile-error
                      '"Unexpected import"
                      _%stx149221%_
                      _%in149291%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (pair? _%rest149267149275%_)
                                           (let ((_%hd149272149307%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%rest149267149275%_)))
                                                 (_%tl149273149309%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%rest149267149275%_))))
                                             (let* ((_%in149312%_
                                                     _%hd149272149307%_)
                                                    (_%rest149314%_
                                                     _%tl149273149309%_))
                                               (_%K149271149304%_
                                                _%rest149314%_
                                                _%in149312%_)))
                                           (_%else149269149287%_)))))))
                             _%tl149230149245%_)))
                        (_%g149225149235%_ _%g149226149238%_)))))
            (_%g149224149323%_ _%stx149221%_)))))
    (define gxc#generate-runtime-quote-syntax%
      (lambda (_%self149033%_ _%stx149034%_)
        (letrec ((_%add-lift!149036%_
                  (lambda (_%expr149218%_)
                    (set-box!
                     (let () (declare (not safe)) (gxc#current-compile-lift))
                     (cons _%expr149218%_
                           (unbox (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-lift)))))))
                 (_%generate-syntax-quote149037%_
                  (lambda (_%id149215%_ _%marks149216%_)
                    (cons '##structure
                          (cons 'gx#syntax-quote::t
                                (cons (cons 'quote (cons _%id149215%_ '()))
                                      (cons '#f
                                            (cons '(gx#current-expander-context)
                                                  (cons _%marks149216%_
                                                        '()))))))))
                 (_%generate-simple149038%_
                  (lambda (_%stxq149210%_)
                    (let ((_%gid149212%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__% '#t)))
                          (_%qid149213%_
                           (gxc#generate-runtime-identifier _%stxq149210%_)))
                      (_%add-lift!149036%_
                       (cons 'define
                             (cons _%gid149212%_
                                   (cons (_%generate-syntax-quote149037%_
                                          _%qid149213%_
                                          ''())
                                         '()))))
                      (let ((__tmp157918
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp157918 _%stxq149210%_ _%gid149212%_))
                      _%gid149212%_)))
                 (_%generate-serialized149039%_
                  (lambda (_%stxq149200%_ _%marks149201%_)
                    (let* ((_%mark-refs149203%_
                            (map _%generate-mark149040%_ _%marks149201%_))
                           (_%gid149205%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%qid149207%_
                            (gxc#generate-runtime-identifier _%stxq149200%_)))
                      (_%add-lift!149036%_
                       (cons 'define
                             (cons _%gid149205%_
                                   (cons (_%generate-syntax-quote149037%_
                                          _%qid149207%_
                                          (cons 'list _%mark-refs149203%_))
                                         '()))))
                      (let ((__tmp157919
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp157919 _%stxq149200%_ _%gid149205%_))
                      _%gid149205%_)))
                 (_%generate-mark149040%_
                  (lambda (_%mark149185%_)
                    (let ((_%$e149187%_
                           (let ((__tmp157920
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-marks))))
                             (declare (not safe))
                             (hash-get __tmp157920 _%mark149185%_))))
                      (if _%$e149187%_
                          _%$e149187%_
                          (let* ((_%gid149191%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-temporary__% '#t)))
                                 (_%repr149193%_
                                  (_%serialize-mark149041%_ _%mark149185%_))
                                 (_%ctx149195%_
                                  (let ((__tmp157921
                                         (##structure-ref
                                          _%mark149185%_
                                          '2
                                          gx#expander-mark::t
                                          '#f)))
                                    (declare (not safe))
                                    (gx#core-context-top__1 __tmp157921)))
                                 (_%ctx-ref149197%_
                                  (if (eq? _%ctx149195%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-context)))
                                      '(gx#current-expander-context)
                                      (cons 'gx#import-module
                                            (cons (cons 'quote
                                                        (cons (_%context-ref149042%_
                                                               _%ctx149195%_)
                                                              '()))
                                                  '())))))
                            (let ((__tmp157922
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-marks))))
                              (declare (not safe))
                              (hash-put!
                               __tmp157922
                               _%mark149185%_
                               _%gid149191%_))
                            (_%add-lift!149036%_
                             (cons 'define
                                   (cons _%gid149191%_
                                         (cons (cons 'gx#core-deserialize-mark
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%repr149193%_ '()))
                   (cons _%ctx-ref149197%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            _%gid149191%_)))))
                 (_%serialize-mark149041%_
                  (lambda (_%mark149132%_)
                    (letrec ((_%quote-e149134%_
                              (lambda (_%sym149183%_)
                                (if (let ()
                                      (declare (not safe))
                                      (interned-symbol? _%sym149183%_))
                                    _%sym149183%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-gensym-reference__0
                                       _%sym149183%_))))))
                      (let* ((_%mark149135149144%_ _%mark149132%_)
                             (_%E149137149148%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%mark149135149144%_
                                         '((expander-mark
                                            subst
                                            ctx
                                            phi
                                            trace))))
                                '#!void))
                             (_%K149138149160%_
                              (lambda (_%trace149151%_
                                       _%phi149152%_
                                       _%ctx149153%_
                                       _%subst149154%_)
                                (let ((_%subs149156%_
                                       (if _%subst149154%_
                                           (let ()
                                             (declare (not safe))
                                             (hash->list _%subst149154%_))
                                           '())))
                                  (cons _%phi149152%_
                                        (let ((__tmp157923
                                               (lambda (_%pair149158%_)
                                                 (cons (_%quote-e149134%_
                                                        (car _%pair149158%_))
                                                       (_%quote-e149134%_
                                                        (cdr _%pair149158%_))))))
                                          (declare (not safe))
                                          (##map __tmp157923
                                                 _%subs149156%_)))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%mark149135149144%_
                               'gx#expander-mark::t))
                            (let* ((_%e149139149163%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark149135149144%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%subst149166%_ _%e149139149163%_)
                                   (_%e149140149168%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark149135149144%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%ctx149171%_ _%e149140149168%_)
                                   (_%e149141149173%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark149135149144%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%phi149176%_ _%e149141149173%_)
                                   (_%e149142149178%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark149135149144%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%trace149181%_ _%e149142149178%_))
                              (_%K149138149160%_
                               _%trace149181%_
                               _%phi149176%_
                               _%ctx149171%_
                               _%subst149166%_))
                            (_%E149137149148%_))))))
                 (_%context-ref149042%_
                  (lambda (_%ctx149119%_)
                    (if (let ((__tmp157924
                               (##structure-ref
                                _%ctx149119%_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (declare (not safe))
                          (##structure-instance-of?
                           __tmp157924
                           'gx#module-context::t))
                        (let ((_%ctx-ref149121%_
                               (_%context-ref-nested149044%_ _%ctx149119%_))
                              (_%ctx-origin149122%_
                               (_%context-ref-origin149043%_ _%ctx149119%_))
                              (_%origin149123%_
                               (_%context-ref-origin149043%_
                                (let ()
                                  (declare (not safe))
                                  (gx#current-expander-context)))))
                          (if (eq? _%origin149123%_ _%ctx-origin149122%_)
                              (let ((_%ref149125%_
                                     (_%context-ref-nested149044%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context)))))
                                (let _%lp149127%_ ((_%ref149129%_
                                                    (cdr _%ref149125%_))
                                                   (_%ctx-ref149130%_
                                                    (cdr _%ctx-ref149121%_)))
                                  (if (and (pair? _%ref149129%_)
                                           (eq? (let ()
                                                  (declare (not safe))
                                                  (##car _%ref149129%_))
                                                (car _%ctx-ref149130%_)))
                                      (_%lp149127%_
                                       (cdr _%ref149129%_)
                                       (cdr _%ctx-ref149130%_))
                                      (cons '#f _%ctx-ref149130%_))))
                              _%ctx-ref149121%_))
                        (let ((__tmp157925
                               (##structure-ref
                                _%ctx149119%_
                                '1
                                gx#expander-context::t
                                '#f)))
                          (declare (not safe))
                          (make-symbol__1 '":" __tmp157925)))))
                 (_%context-ref-origin149043%_
                  (lambda (_%ctx149111%_)
                    (let _%lp149113%_ ((_%ctx149115%_ _%ctx149111%_))
                      (let ((_%super149117%_
                             (##structure-ref
                              _%ctx149115%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super149117%_
                               'gx#module-context::t))
                            (_%lp149113%_ _%super149117%_)
                            _%ctx149115%_)))))
                 (_%context-ref-nested149044%_
                  (lambda (_%ctx149102%_)
                    (let _%lp149104%_ ((_%ctx149106%_ _%ctx149102%_)
                                       (_%r149107%_ '()))
                      (let ((_%super149109%_
                             (##structure-ref
                              _%ctx149106%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super149109%_
                               'gx#module-context::t))
                            (_%lp149104%_
                             _%super149109%_
                             (cons (car (##structure-ref
                                         _%ctx149106%_
                                         '7
                                         gx#module-context::t
                                         '#f))
                                   _%r149107%_))
                            (cons (let ((__tmp157926
                                         (##structure-ref
                                          _%ctx149106%_
                                          '1
                                          gx#expander-context::t
                                          '#f)))
                                    (declare (not safe))
                                    (make-symbol__1 '":" __tmp157926))
                                  _%r149107%_)))))))
          (let* ((_%g149046149059%_
                  (lambda (_%g149047149056%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g149047149056%_))))
                 (_%g149045149099%_
                  (lambda (_%g149047149062%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g149047149062%_))
                        (let ((_%e149049149064%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g149047149062%_))))
                          (let ((_%hd149050149067%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e149049149064%_)))
                                (_%tl149051149069%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e149049149064%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl149051149069%_))
                                (let ((_%e149052149072%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl149051149069%_))))
                                  (let ((_%hd149053149075%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e149052149072%_)))
                                        (_%tl149054149077%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e149052149072%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl149054149077%_))
                                        ((lambda (_%L149080%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#identifier? _%L149080%_))
                                               (let ((_%$e149093%_
                                                      (let ((__tmp157927
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#current-compile-identifiers))))
                (declare (not safe))
                (hash-get __tmp157927 _%L149080%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e149093%_
                                                     _%$e149093%_
                                                     (let ((_%marks149097%_
                                                            (##direct-structure-ref
                                                             _%L149080%_
                                                             '4
                                                             gx#syntax-quote::t
                                                             '#f)))
                                                       (if (null? _%marks149097%_)
                                                           (_%generate-simple149038%_
                                                            _%L149080%_)
                                                           (_%generate-serialized149039%_
                                                            _%L149080%_
                                                            _%marks149097%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"Cannot quote non-identifier syntax"
                                                  _%L149080%_))))
                                         _%hd149053149075%_)
                                        (_%g149046149059%_
                                         _%g149047149062%_))))
                                (_%g149046149059%_ _%g149047149062%_))))
                        (_%g149046149059%_ _%g149047149062%_)))))
            (_%g149045149099%_ _%stx149034%_)))))
    (define gxc#generate-runtime-phi-define-runtime%
      (lambda (_%self148965%_ _%stx148966%_)
        (let* ((_%g148968148985%_
                (lambda (_%g148969148982%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148969148982%_))))
               (_%g148967149030%_
                (lambda (_%g148969148988%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148969148988%_))
                      (let ((_%e148972148990%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148969148988%_))))
                        (let ((_%hd148973148993%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148972148990%_)))
                              (_%tl148974148995%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148972148990%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148974148995%_))
                              (let ((_%e148975148998%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148974148995%_))))
                                (let ((_%hd148976149001%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148975148998%_)))
                                      (_%tl148977149003%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148975148998%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl148977149003%_))
                                      (let ((_%e148978149006%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl148977149003%_))))
                                        (let ((_%hd148979149009%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e148978149006%_)))
                                              (_%tl148980149011%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e148978149006%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl148980149011%_))
                                              ((lambda (_%L149014%_
                                                        _%L149015%_)
                                                 (cons 'define
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%L149015%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _%self148965%_ _%L149014%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd148979149009%_
                                               _%hd148976149001%_)
                                              (_%g148968148985%_
                                               _%g148969148988%_))))
                                      (_%g148968148985%_ _%g148969148988%_))))
                              (_%g148968148985%_ _%g148969148988%_))))
                      (_%g148968148985%_ _%g148969148988%_)))))
          (_%g148967149030%_ _%stx148966%_))))
    (define gxc#generate-meta-begin%
      (lambda (_%self148914%_ _%stx148915%_)
        (let* ((_%g148917148927%_
                (lambda (_%g148918148924%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148918148924%_))))
               (_%g148916148962%_
                (lambda (_%g148918148930%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148918148930%_))
                      (let ((_%e148920148932%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148918148930%_))))
                        (let ((_%hd148921148935%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148920148932%_)))
                              (_%tl148922148937%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148920148932%_))))
                          ((lambda (_%L148940%_)
                             (let* ((_%c-body148954%_
                                     (map (lambda (_%g148949148951%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self148914%_
                                               _%g148949148951%_)))
                                          _%L148940%_))
                                    (_%c-body148959%_
                                     (let ((__tmp157928
                                            (lambda (_%$obj148956%_)
                                              (not (eq? _%$obj148956%_
                                                        '#!void)))))
                                       (declare (not safe))
                                       (##filter
                                        __tmp157928
                                        _%c-body148954%_))))
                               (cons '%#begin _%c-body148959%_)))
                           _%tl148922148937%_)))
                      (_%g148917148927%_ _%g148918148930%_)))))
          (_%g148916148962%_ _%stx148915%_))))
    (define gxc#generate-meta-begin-syntax%
      (lambda (_%self148819%_ _%stx148820%_)
        (let* ((_%g148822148832%_
                (lambda (_%g148823148829%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148823148829%_))))
               (_%g148821148911%_
                (lambda (_%g148823148835%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148823148835%_))
                      (let ((_%e148825148837%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148823148835%_))))
                        (let ((_%hd148826148840%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148825148837%_)))
                              (_%tl148827148842%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148825148837%_))))
                          ((lambda (_%L148845%_)
                             (let* ((_%phi148855%_
                                     (let ((__tmp157929
                                            (let ()
                                              (declare (not safe))
                                              (gx#current-expander-phi))))
                                       (declare (not safe))
                                       (##fx+ __tmp157929 '1)))
                                    (_%block148857%_
                                     (gxc#meta-state-begin-phi!
                                      (let ()
                                        (declare (not safe))
                                        (slot-ref__0 _%self148819%_ 'state))
                                      _%phi148855%_))
                                    (_%compiled148860%_
                                     (let ((__tmp157930
                                            (lambda ()
                                              (gxc#apply-generate-meta-phi__%
                                               '#f
                                               (let ()
                                                 (declare (not safe))
                                                 (slot-ref__0
                                                  _%self148819%_
                                                  'state))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#begin))
                                                     _%L148845%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp157930
                                        gx#current-expander-phi
                                        _%phi148855%_)))
                                    (_%g148863148873%_
                                     (lambda (_%g148864148870%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g148864148870%_))))
                                    (_%g148862148908%_
                                     (lambda (_%g148864148876%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%g148864148876%_))
                                           (let ((_%e148866148878%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%g148864148876%_))))
                                             (let ((_%hd148867148881%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e148866148878%_)))
                                                   (_%tl148868148883%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e148866148878%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd148867148881%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#begin
                                                          _%hd148867148881%_))
                                                       ((lambda (_%L148886%_)
                                                          (let ((_%c-body148903%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (filter (lambda (_%$obj148900%_)
                                   (not (eq? _%$obj148900%_ '#!void)))
                                 _%L148886%_)))
                    (if _%block148857%_
                        (cons '%#begin-syntax
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'load-module '()))
                                                (cons (cons '%#quote
                                                            (cons _%block148857%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%c-body148903%_))
                        (if (null? _%c-body148903%_)
                            '#!void
                            (cons '%#begin-syntax _%c-body148903%_)))))
                _%tl148868148883%_)
               (_%g148863148873%_ _%g148864148876%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g148863148873%_
                                                    _%g148864148876%_))))
                                           (_%g148863148873%_
                                            _%g148864148876%_)))))
                               (_%g148862148908%_ _%compiled148860%_)))
                           _%tl148827148842%_)))
                      (_%g148822148832%_ _%g148823148835%_)))))
          (_%g148821148911%_ _%stx148820%_))))
    (define gxc#generate-meta-module%
      (lambda (_%self148750%_ _%stx148751%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self148750%_ 'state)))
        (let* ((_%g148753148767%_
                (lambda (_%g148754148764%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148754148764%_))))
               (_%g148752148816%_
                (lambda (_%g148754148770%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148754148770%_))
                      (let ((_%e148757148772%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148754148770%_))))
                        (let ((_%hd148758148775%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148757148772%_)))
                              (_%tl148759148777%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148757148772%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148759148777%_))
                              (let ((_%e148760148780%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148759148777%_))))
                                (let ((_%hd148761148783%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148760148780%_)))
                                      (_%tl148762148785%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148760148780%_))))
                                  ((lambda (_%L148788%_ _%L148789%_)
                                     (let ((_%key148802%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#core-identifier-key
                                               _%L148789%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (interned-symbol? _%key148802%_))
                                           '#!void
                                           (let ()
                                             (declare (not safe))
                                             (gxc#raise-compile-error
                                              '"Cannot compile module with uninterned id"
                                              _%stx148751%_
                                              _%L148789%_
                                              _%key148802%_)))
                                       (let* ((_%ctx148804%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-local-e__0
                                                  _%L148789%_)))
                                              (_%code148807%_
                                               (let ((__tmp157931
                                                      (lambda ()
                                                        (let ((__tmp157932
                                                               (##structure-ref
                                                                _%ctx148804%_
                                                                '11
                                                                gx#module-context::t
                                                                '#f)))
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self148750%_
                                                           __tmp157932)))))
                                                 (declare (not safe))
                                                 (call-with-parameters__1
                                                  __tmp157931
                                                  gx#current-expander-context
                                                  _%ctx148804%_)))
                                              (_%rt148809%_
                                               (let ((__tmp157933
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#current-compile-runtime-sections))))
                                                 (declare (not safe))
                                                 (hash-get
                                                  __tmp157933
                                                  _%ctx148804%_)))
                                              (_%loader148811%_
                                               (if _%rt148809%_
                                                   (cons (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons 'load-module '()))
                             (cons (cons '%#quote (cons _%rt148809%_ '()))
                                   '())))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                              (_%modid148813%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _%L148789%_))))
                                         (gxc#meta-state-end-phi!
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self148750%_
                                             'state)))
                                         (cons '%#module
                                               (cons _%modid148813%_
                                                     (cons _%code148807%_
                                                           _%loader148811%_))))))
                                   _%tl148762148785%_
                                   _%hd148761148783%_)))
                              (_%g148753148767%_ _%g148754148770%_))))
                      (_%g148753148767%_ _%g148754148770%_)))))
          (_%g148752148816%_ _%stx148751%_))))
    (define gxc#generate-meta-import-path
      (lambda (_%ctx148737%_ _%context-chain148738%_)
        (let _%lp148740%_ ((_%ctx148742%_ _%ctx148737%_) (_%path148743%_ '()))
          (let ((_%super148745%_
                 (##structure-ref _%ctx148742%_ '3 gx#phi-context::t '#f)))
            (if (memq _%super148745%_ _%context-chain148738%_)
                (cons '#f
                      (cons (car (##structure-ref
                                  _%ctx148742%_
                                  '7
                                  gx#module-context::t
                                  '#f))
                            _%path148743%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%super148745%_
                       'gx#module-context::t))
                    (_%lp148740%_
                     _%super148745%_
                     (cons (car (##structure-ref
                                 _%ctx148742%_
                                 '7
                                 gx#module-context::t
                                 '#f))
                           _%path148743%_))
                    (cons (let ((__tmp157934
                                 (##structure-ref
                                  _%ctx148742%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (make-symbol__1 '":" __tmp157934))
                          _%path148743%_)))))))
    (define gxc#current-context-chain
      (lambda ()
        (let _%lp148730%_ ((_%ctx148732%_
                            (let ()
                              (declare (not safe))
                              (gx#current-expander-context)))
                           (_%r148733%_ '()))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%ctx148732%_ 'gx#module-context::t))
              (_%lp148730%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%ctx148732%_ '3 '#f '#f))
               (cons _%ctx148732%_ _%r148733%_))
              _%r148733%_))))
    (define gxc#generate-meta-import%
      (lambda (_%self148493%_ _%stx148494%_)
        (letrec* ((_%context-chain148496%_ (gxc#current-context-chain))
                  (_%make-import-spec148497%_
                   (lambda (_%in148666%_)
                     (let* ((_%in148667148679%_ _%in148666%_)
                            (_%E148669148683%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%in148667148679%_
                                        '((module-import
                                           (module-export
                                            src-ctx
                                            src-key
                                            src-phi
                                            src-name)
                                           name
                                           phi))))
                               '#!void))
                            (_%K148670148693%_
                             (lambda (_%phi148686%_
                                      _%name148687%_
                                      _%src-name148688%_
                                      _%src-phi148689%_
                                      _%src-key148690%_
                                      _%src-ctx148691%_)
                               (cons _%phi148686%_
                                     (cons (gxc#generate-runtime-identifier-key
                                            _%name148687%_)
                                           (cons _%src-phi148689%_
                                                 (cons (gxc#generate-runtime-identifier-key
                                                        _%src-name148688%_)
                                                       '())))))))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              _%in148667148679%_
                              'gx#module-import::t))
                           (let ((_%e148671148696%_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%in148667148679%_
                                     '1
                                     '#f
                                     '#f))))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    _%e148671148696%_
                                    'gx#module-export::t))
                                 (let* ((_%e148674148699%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e148671148696%_
                                            '1
                                            '#f
                                            '#f)))
                                        (_%src-ctx148702%_ _%e148674148699%_)
                                        (_%e148675148704%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e148671148696%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%src-key148707%_ _%e148675148704%_)
                                        (_%e148676148709%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e148671148696%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%src-phi148712%_ _%e148676148709%_)
                                        (_%e148677148714%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e148671148696%_
                                            '4
                                            '#f
                                            '#f)))
                                        (_%src-name148717%_ _%e148677148714%_)
                                        (_%e148672148719%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in148667148679%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%name148722%_ _%e148672148719%_)
                                        (_%e148673148724%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in148667148679%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%phi148727%_ _%e148673148724%_))
                                   (_%K148670148693%_
                                    _%phi148727%_
                                    _%name148722%_
                                    _%src-name148717%_
                                    _%src-phi148712%_
                                    _%src-key148707%_
                                    _%src-ctx148702%_))
                                 (_%E148669148683%_)))
                           (_%E148669148683%_)))))
                  (_%make-import-path148498%_
                   (lambda (_%ctx148664%_)
                     (gxc#generate-meta-import-path
                      _%ctx148664%_
                      _%context-chain148496%_)))
                  (_%make-import-spec-in148499%_
                   (lambda (_%ctx148661%_ _%in148662%_)
                     (cons 'spec:
                           (cons (_%make-import-path148498%_ _%ctx148661%_)
                                 (reverse _%in148662%_))))))
          (gxc#meta-state-end-phi!
           (let () (declare (not safe)) (slot-ref__0 _%self148493%_ 'state)))
          (let* ((_%g148501148511%_
                  (lambda (_%g148502148508%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g148502148508%_))))
                 (_%g148500148658%_
                  (lambda (_%g148502148514%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g148502148514%_))
                        (let ((_%e148504148516%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g148502148514%_))))
                          (let ((_%hd148505148519%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e148504148516%_)))
                                (_%tl148506148521%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e148504148516%_))))
                            ((lambda (_%L148524%_)
                               (let _%lp148535%_ ((_%rest148537%_ _%L148524%_)
                                                  (_%current-src148538%_ '#f)
                                                  (_%current-in148539%_ '())
                                                  (_%r148540%_ '()))
                                 (let* ((_%rest148541148549%_ _%rest148537%_)
                                        (_%else148543148559%_
                                         (lambda ()
                                           (let ((_%r148557%_
                                                  (if _%current-src148538%_
                                                      (cons (_%make-import-spec-in148499%_
                                                             _%current-src148538%_
                                                             _%current-in148539%_)
                                                            _%r148540%_)
                                                      _%r148540%_)))
                                             (cons '%#import
                                                   (reverse _%r148557%_)))))
                                        (_%K148545148646%_
                                         (lambda (_%rest148562%_ _%in148563%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in148563%_
                                                  'gx#module-import::t))
                                               (let* ((_%in148565148572%_
                                                       _%in148563%_)
                                                      (_%E148567148576%_
                                                       (lambda ()
                                                         (let ()
                                                           (declare (not safe))
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%in148565148572%_
                          '((module-import (module-export src-ctx)))))
                 '#!void))
              (_%K148568148584%_
               (lambda (_%src-ctx148579%_)
                 (if (eq? _%current-src148538%_ _%src-ctx148579%_)
                     (_%lp148535%_
                      _%rest148562%_
                      _%current-src148538%_
                      (cons (_%make-import-spec148497%_ _%in148563%_)
                            _%current-in148539%_)
                      _%r148540%_)
                     (if _%current-src148538%_
                         (_%lp148535%_
                          _%rest148562%_
                          _%src-ctx148579%_
                          (cons (_%make-import-spec148497%_ _%in148563%_) '())
                          (cons (_%make-import-spec-in148499%_
                                 _%current-src148538%_
                                 _%current-in148539%_)
                                _%r148540%_))
                         (_%lp148535%_
                          _%rest148562%_
                          _%src-ctx148579%_
                          (cons (_%make-import-spec148497%_ _%in148563%_) '())
                          _%r148540%_)))))
              (_%e148569148587%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%in148565148572%_ '1 '#f '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%e148569148587%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e148570148590%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%e148569148587%_
                        '1
                        '#f
                        '#f)))
                    (_%src-ctx148593%_ _%e148570148590%_))
               (_%K148568148584%_ _%src-ctx148593%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E148567148576%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%in148563%_
                                                      'gx#import-set::t))
                                                   (let* ((_%phi148596%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in148563%_
                                                              '2
                                                              '#f
                                                              '#f)))
                                                          (_%src148598%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in148563%_
                                                              '1
                                                              '#f
                                                              '#f)))
                                                          (_%src-in148638%_
                                                           (let* ((_%g148599148608%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (_%make-import-path148498%_ _%src148598%_))
                          (_%E148602148612%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (error '"No clause matching"
                                      _%g148599148608%_
                                      '([path])
                                      '(path)))
                             '#!void)))
                     (let ((_%K148604148628%_
                            (lambda (_%path148626%_) _%path148626%_))
                           (_%K148603148618%_
                            (lambda (_%path148616%_)
                              (cons 'in: _%path148616%_))))
                       (if (pair? _%g148599148608%_)
                           (let ((_%tl148606148633%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%g148599148608%_)))
                                 (_%hd148605148631%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%g148599148608%_))))
                             (if (null? _%tl148606148633%_)
                                 (let ((_%path148636%_ _%hd148605148631%_))
                                   (_%K148604148628%_ _%path148636%_))
                                 (let ((_%path148621%_ _%g148599148608%_))
                                   (_%K148603148618%_ _%path148621%_))))
                           (let ((_%path148621%_ _%g148599148608%_))
                             (_%K148603148618%_ _%path148621%_))))))
                  (_%r148640%_
                   (if _%current-src148538%_
                       (cons (_%make-import-spec-in148499%_
                              _%current-src148538%_
                              _%current-in148539%_)
                             _%r148540%_)
                       _%r148540%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%lp148535%_
                                                      _%rest148562%_
                                                      '#f
                                                      '()
                                                      (cons (if (fxzero? _%phi148596%_)
                                                                _%src-in148638%_
                                                                (cons 'phi:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%phi148596%_
                                    (cons _%src-in148638%_ '()))))
                    _%r148640%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-instance-of?
                                                          _%in148563%_
                                                          'gx#module-context::t))
                                                       (let ((_%r148644%_
                                                              (if _%current-src148538%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (_%make-import-spec-in148499%_
                                 _%current-src148538%_
                                 _%current-in148539%_)
                                _%r148540%_)
                          _%r148540%_)))
                 (_%lp148535%_
                  _%rest148562%_
                  '#f
                  '()
                  (cons (cons 'runtime:
                              (_%make-import-path148498%_ _%in148563%_))
                        _%r148644%_)))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (pair? _%rest148541148549%_)
                                       (let ((_%hd148546148649%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest148541148549%_)))
                                             (_%tl148547148651%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest148541148549%_))))
                                         (let* ((_%in148654%_
                                                 _%hd148546148649%_)
                                                (_%rest148656%_
                                                 _%tl148547148651%_))
                                           (_%K148545148646%_
                                            _%rest148656%_
                                            _%in148654%_)))
                                       (_%else148543148559%_)))))
                             _%tl148506148521%_)))
                        (_%g148501148511%_ _%g148502148514%_)))))
            (_%g148500148658%_ _%stx148494%_)))))
    (define gxc#generate-meta-export%
      (lambda (_%self148303%_ _%stx148304%_)
        (letrec* ((_%context-chain148306%_ (gxc#current-context-chain))
                  (_%make-import-path148307%_
                   (lambda (_%ctx148491%_)
                     (gxc#generate-meta-import-path
                      _%ctx148491%_
                      _%context-chain148306%_))))
          (let* ((_%g148309148319%_
                  (lambda (_%g148310148316%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g148310148316%_))))
                 (_%g148308148488%_
                  (lambda (_%g148310148322%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g148310148322%_))
                        (let ((_%e148312148324%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g148310148322%_))))
                          (let ((_%hd148313148327%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e148312148324%_)))
                                (_%tl148314148329%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e148312148324%_))))
                            ((lambda (_%L148332%_)
                               (let _%lp148343%_ ((_%rest148345%_ _%L148332%_)
                                                  (_%r148346%_ '()))
                                 (let* ((_%rest148347148355%_ _%rest148345%_)
                                        (_%else148349148363%_
                                         (lambda ()
                                           (cons '%#export
                                                 (reverse _%r148346%_))))
                                        (_%K148351148476%_
                                         (lambda (_%rest148366%_ _%out148367%_)
                                           (let* ((_%out148368148381%_
                                                   _%out148367%_)
                                                  (_%E148371148385%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%out148368148381%_
                                                              '((module-export
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _
                         key
                         phi
                         name))
                      '((export-set src phi))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#!void)))
                                             (let ((_%K148375148455%_
                                                    (lambda (_%name148451%_
                                                             _%phi148452%_
                                                             _%key148453%_)
                                                      (_%lp148343%_
                                                       _%rest148366%_
                                                       (cons (cons 'spec:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%phi148452%_
                                 (cons (gxc#generate-runtime-identifier-key
                                        _%key148453%_)
                                       (cons (gxc#generate-runtime-identifier-key
                                              _%name148451%_)
                                             '()))))
                     _%r148346%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K148372148435%_
                                                    (lambda (_%phi148389%_
                                                             _%src148390%_)
                                                      (let* ((_%out148430%_
                                                              (if _%src148390%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'import:
                                (cons (let* ((_%g148391148400%_
                                              (_%make-import-path148307%_
                                               _%src148390%_))
                                             (_%E148394148404%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (error '"No clause matching"
                                                         _%g148391148400%_
                                                         '([path])
                                                         '(path)))
                                                '#!void)))
                                        (let ((_%K148396148420%_
                                               (lambda (_%path148418%_)
                                                 _%path148418%_))
                                              (_%K148395148410%_
                                               (lambda (_%path148408%_)
                                                 (cons 'in: _%path148408%_))))
                                          (if (pair? _%g148391148400%_)
                                              (let ((_%tl148398148425%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%g148391148400%_)))
                                                    (_%hd148397148423%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%g148391148400%_))))
                                                (if (null? _%tl148398148425%_)
                                                    (let ((_%path148428%_
                                                           _%hd148397148423%_))
                                                      (_%K148396148420%_
                                                       _%path148428%_))
                                                    (let ((_%path148413%_
                                                           _%g148391148400%_))
                                                      (_%K148395148410%_
                                                       _%path148413%_))))
                                              (let ((_%path148413%_
                                                     _%g148391148400%_))
                                                (_%K148395148410%_
                                                 _%path148413%_)))))
                                      '()))
                          '#t))
                     (_%out148432%_
                      (if (fxzero? _%phi148389%_)
                          _%out148430%_
                          (cons 'phi:
                                (cons _%phi148389%_
                                      (cons _%out148430%_ '()))))))
                (_%lp148343%_
                 _%rest148366%_
                 (cons _%out148432%_ _%r148346%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_%try-match148370148448%_
                                                      (lambda ()
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-direct-instance-of?
                                                               _%out148368148381%_
                                                               'gx#export-set::t))
                                                            (let* ((_%e148373148438%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out148368148381%_
                               '1
                               '#f
                               '#f)))
                           (_%e148374148443%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out148368148381%_
                               '2
                               '#f
                               '#f))))
                      (let ((_%src148441%_ _%e148373148438%_)
                            (_%phi148446%_ _%e148374148443%_))
                        (_%K148372148435%_ _%phi148446%_ _%src148441%_)))
                    (_%E148371148385%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%out148368148381%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e148376148458%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%out148368148381%_
                        '1
                        '#f
                        '#f)))
                    (_%e148377148461%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out148368148381%_
                        '2
                        '#f
                        '#f)))
                    (_%e148378148466%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out148368148381%_
                        '3
                        '#f
                        '#f)))
                    (_%e148379148471%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out148368148381%_
                        '4
                        '#f
                        '#f))))
               (let ((_%key148464%_ _%e148377148461%_)
                     (_%phi148469%_ _%e148378148466%_)
                     (_%name148474%_ _%e148379148471%_))
                 (_%K148375148455%_
                  _%name148474%_
                  _%phi148469%_
                  _%key148464%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%try-match148370148448%_))))))))
                                   (if (pair? _%rest148347148355%_)
                                       (let ((_%hd148352148479%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest148347148355%_)))
                                             (_%tl148353148481%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest148347148355%_))))
                                         (let* ((_%out148484%_
                                                 _%hd148352148479%_)
                                                (_%rest148486%_
                                                 _%tl148353148481%_))
                                           (_%K148351148476%_
                                            _%rest148486%_
                                            _%out148484%_)))
                                       (_%else148349148363%_)))))
                             _%tl148314148329%_)))
                        (_%g148309148319%_ _%g148310148322%_)))))
            (_%g148308148488%_ _%stx148304%_)))))
    (define gxc#generate-meta-provide%
      (lambda (_%self148264%_ _%stx148265%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self148264%_ 'state)))
        (let* ((_%g148267148277%_
                (lambda (_%g148268148274%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148268148274%_))))
               (_%g148266148300%_
                (lambda (_%g148268148280%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148268148280%_))
                      (let ((_%e148270148282%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148268148280%_))))
                        (let ((_%hd148271148285%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148270148282%_)))
                              (_%tl148272148287%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148270148282%_))))
                          ((lambda (_%L148290%_)
                             (cons '%#provide
                                   (map gxc#generate-runtime-identifier
                                        _%L148290%_)))
                           _%tl148272148287%_)))
                      (_%g148267148277%_ _%g148268148280%_)))))
          (_%g148266148300%_ _%stx148265%_))))
    (define gxc#generate-meta-extern%
      (lambda (_%self148135%_ _%stx148136%_)
        (letrec ((_%generate1148138%_
                  (lambda (_%id148259%_ _%eid148260%_)
                    (let ((_%eid148262%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%eid148260%_))))
                      (if (let ()
                            (declare (not safe))
                            (interned-symbol? _%eid148262%_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"Cannot compile extern reference"
                             _%stx148136%_
                             _%eid148262%_)))
                      (cons (gxc#generate-runtime-identifier _%id148259%_)
                            (cons _%eid148262%_ '()))))))
          (let* ((_%g148140148168%_
                  (lambda (_%g148141148165%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g148141148165%_))))
                 (_%g148139148256%_
                  (lambda (_%g148141148171%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g148141148171%_))
                        (let ((_%e148144148173%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g148141148171%_))))
                          (let ((_%hd148145148176%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e148144148173%_)))
                                (_%tl148146148178%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e148144148173%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl148146148178%_))
                                (let ((_g157935_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl148146148178%_
                                          '0))))
                                  (begin
                                    (let ((_g157936_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g157935_)
                                                 (##values-length _g157935_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g157936_ 2)))
                                          (error "Context expects 2 values"
                                                 _g157936_)))
                                    (let ((_%target148147148181%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g157935_ 0)))
                                          (_%tl148149148183%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g157935_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl148149148183%_))
                                          (letrec ((_%loop148150148186%_
                                                    (lambda (_%hd148148148189%_
                                                             _%eid148154148191%_
                                                             _%id148155148193%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd148148148189%_))
                                                          (let ((_%e148151148196%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd148148148189%_))))
                    (let ((_%lp-hd148152148199%_
                           (let ()
                             (declare (not safe))
                             (##car _%e148151148196%_)))
                          (_%lp-tl148153148201%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e148151148196%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd148152148199%_))
                          (let ((_%e148158148204%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd148152148199%_))))
                            (let ((_%hd148159148207%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e148158148204%_)))
                                  (_%tl148160148209%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e148158148204%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl148160148209%_))
                                  (let ((_%e148161148212%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl148160148209%_))))
                                    (let ((_%hd148162148215%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e148161148212%_)))
                                          (_%tl148163148217%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e148161148212%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl148163148217%_))
                                          (_%loop148150148186%_
                                           _%lp-tl148153148201%_
                                           (cons _%hd148162148215%_
                                                 _%eid148154148191%_)
                                           (cons _%hd148159148207%_
                                                 _%id148155148193%_))
                                          (_%g148140148168%_
                                           _%g148141148171%_))))
                                  (_%g148140148168%_ _%g148141148171%_))))
                          (_%g148140148168%_ _%g148141148171%_))))
                  (let ((_%eid148156148220%_ (reverse _%eid148154148191%_))
                        (_%id148157148222%_ (reverse _%id148155148193%_)))
                    ((lambda (_%L148225%_ _%L148226%_)
                       (cons '%#extern
                             (map _%generate1148138%_
                                  (let ((__tmp157937
                                         (lambda (_%g148241148244%_
                                                  _%g148242148246%_)
                                           (cons _%g148241148244%_
                                                 _%g148242148246%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp157937 '() _%L148226%_))
                                  (let ((__tmp157938
                                         (lambda (_%g148248148251%_
                                                  _%g148249148253%_)
                                           (cons _%g148248148251%_
                                                 _%g148249148253%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp157938 '() _%L148225%_)))))
                     _%eid148156148220%_
                     _%id148157148222%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop148150148186%_
                                             _%target148147148181%_
                                             '()
                                             '()))
                                          (_%g148140148168%_
                                           _%g148141148171%_)))))
                                (_%g148140148168%_ _%g148141148171%_))))
                        (_%g148140148168%_ _%g148141148171%_)))))
            (_%g148139148256%_ _%stx148136%_)))))
    (define gxc#generate-meta-define-values%
      (lambda (_%self147925%_ _%stx147926%_)
        (letrec ((_%generate1147928%_
                  (lambda (_%id148130%_)
                    (let ((_%eid148132%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%id148130%_)))
                          (_%ident148133%_
                           (gxc#generate-runtime-identifier _%id148130%_)))
                      (cons '%#define-runtime
                            (cons _%ident148133%_ (cons _%eid148132%_ '()))))))
                 (_%generate*147929%_
                  (lambda (_%all148098%_)
                    (let* ((_%all148099148107%_ _%all148098%_)
                           (_%else148101148115%_
                            (lambda () (cons '%#begin _%all148098%_)))
                           (_%K148103148120%_
                            (lambda (_%one148118%_) _%one148118%_)))
                      (if (pair? _%all148099148107%_)
                          (let ((_%hd148104148123%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all148099148107%_)))
                                (_%tl148105148125%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all148099148107%_))))
                            (let ((_%one148128%_ _%hd148104148123%_))
                              (if (null? _%tl148105148125%_)
                                  (_%K148103148120%_ _%one148128%_)
                                  (_%else148101148115%_))))
                          (_%else148101148115%_))))))
          (let* ((_%g147931147948%_
                  (lambda (_%g147932147945%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g147932147945%_))))
                 (_%g147930148095%_
                  (lambda (_%g147932147951%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g147932147951%_))
                        (let ((_%e147935147953%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g147932147951%_))))
                          (let ((_%hd147936147956%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e147935147953%_)))
                                (_%tl147937147958%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e147935147953%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl147937147958%_))
                                (let ((_%e147938147961%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl147937147958%_))))
                                  (let ((_%hd147939147964%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e147938147961%_)))
                                        (_%tl147940147966%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e147938147961%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl147940147966%_))
                                        (let ((_%e147941147969%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl147940147966%_))))
                                          (let ((_%hd147942147972%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e147941147969%_)))
                                                (_%tl147943147974%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e147941147969%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl147943147974%_))
                                                ((lambda (_%L147977%_
                                                          _%L147978%_)
                                                   (let _%lp147994%_ ((_%rest147996%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%L147978%_)
                              (_%r147997%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((_%__stx157673157674%_
                                                             _%rest147996%_)
                                                            (_%g148002148019%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%__stx157673157674%_)))))
               (let ((_%__kont157675157676%_
                      (lambda (_%L148082%_)
                        (_%lp147994%_ _%L148082%_ _%r147997%_)))
                     (_%__kont157677157678%_
                      (lambda (_%L148055%_ _%L148056%_)
                        (_%lp147994%_
                         _%L148055%_
                         (cons (_%generate1147928%_ _%L148056%_)
                               _%r147997%_))))
                     (_%__kont157679157680%_
                      (lambda (_%L148031%_)
                        (_%generate*147929%_
                         (let ((__tmp157939
                                (cons (_%generate1147928%_ _%L148031%_) '())))
                           (declare (not safe))
                           (__foldl1 cons __tmp157939 _%r147997%_)))))
                     (_%__kont157681157682%_
                      (lambda () (_%generate*147929%_ (reverse _%r147997%_)))))
                 (let ((_%g148000148042%_
                        (lambda ()
                          (let ((_%L148031%_ _%__stx157673157674%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L148031%_))
                                (_%__kont157679157680%_ _%L148031%_)
                                (_%__kont157681157682%_))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%__stx157673157674%_))
                       (let ((_%e148005148071%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%__stx157673157674%_))))
                         (let ((_%tl148007148076%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e148005148071%_)))
                               (_%hd148006148074%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e148005148071%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-datum? _%hd148006148074%_))
                               (let ((_%e148008148079%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd148006148074%_))))
                                 (if (equal? _%e148008148079%_ '#f)
                                     (_%__kont157675157676%_
                                      _%tl148007148076%_)
                                     (_%__kont157677157678%_
                                      _%tl148007148076%_
                                      _%hd148006148074%_)))
                               (_%__kont157677157678%_
                                _%tl148007148076%_
                                _%hd148006148074%_))))
                       (let () (declare (not safe)) (_%g148000148042%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd147942147972%_
                                                 _%hd147939147964%_)
                                                (_%g147931147948%_
                                                 _%g147932147951%_))))
                                        (_%g147931147948%_
                                         _%g147932147951%_))))
                                (_%g147931147948%_ _%g147932147951%_))))
                        (_%g147931147948%_ _%g147932147951%_)))))
            (_%g147930148095%_ _%stx147926%_)))))
    (define gxc#generate-meta-define-syntax%
      (lambda (_%self147822%_ _%stx147823%_)
        (let* ((_%g147825147842%_
                (lambda (_%g147826147839%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g147826147839%_))))
               (_%g147824147922%_
                (lambda (_%g147826147845%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g147826147845%_))
                      (let ((_%e147829147847%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g147826147845%_))))
                        (let ((_%hd147830147850%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e147829147847%_)))
                              (_%tl147831147852%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e147829147847%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl147831147852%_))
                              (let ((_%e147832147855%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl147831147852%_))))
                                (let ((_%hd147833147858%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e147832147855%_)))
                                      (_%tl147834147860%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e147832147855%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl147834147860%_))
                                      (let ((_%e147835147863%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl147834147860%_))))
                                        (let ((_%hd147836147866%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e147835147863%_)))
                                              (_%tl147837147868%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e147835147863%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl147837147868%_))
                                              ((lambda (_%L147871%_
                                                        _%L147872%_)
                                                 (let* ((_%eid147887%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#generate-runtime-binding-id
                                                            _%L147872%_)))
                                                        (_%phi147889%_
                                                         (let ((__tmp157940
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#current-expander-phi))))
                   (declare (not safe))
                   (##fx+ __tmp157940 '1)))
                (_%block147891%_
                 (gxc#meta-state-begin-phi!
                  (let ()
                    (declare (not safe))
                    (slot-ref__0 _%self147822%_ 'state))
                  _%phi147889%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%g147894147901%_
                                                           (lambda (_%g147895147898%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g147895147898%_))))
                  (_%g147893147919%_
                   (lambda (_%g147895147904%_)
                     ((lambda (_%L147906%_)
                        (gxc#meta-state-add-phi!
                         (let ()
                           (declare (not safe))
                           (slot-ref__0 _%self147822%_ 'state))
                         _%phi147889%_
                         (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#define-runtime))
                               (cons _%L147906%_ (cons _%L147871%_ '())))))
                      _%g147895147904%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g147893147919%_
                                                      _%eid147887%_))
                                                   (if _%block147891%_
                                                       (cons '%#begin
                                                             (cons (cons '%#begin-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons 'load-module
                                                               '()))
                                                   (cons (cons '%#quote
                                                               (cons _%block147891%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons '%#define-syntax
                                       (cons (gxc#generate-runtime-identifier
                                              _%L147872%_)
                                             (cons _%eid147887%_ '())))
                                 '())))
               (cons '%#define-syntax
                     (cons (gxc#generate-runtime-identifier _%L147872%_)
                           (cons _%eid147887%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd147836147866%_
                                               _%hd147833147858%_)
                                              (_%g147825147842%_
                                               _%g147826147845%_))))
                                      (_%g147825147842%_ _%g147826147845%_))))
                              (_%g147825147842%_ _%g147826147845%_))))
                      (_%g147825147842%_ _%g147826147845%_)))))
          (_%g147824147922%_ _%stx147823%_))))
    (define gxc#generate-meta-define-alias%
      (lambda (_%self147754%_ _%stx147755%_)
        (let* ((_%g147757147774%_
                (lambda (_%g147758147771%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g147758147771%_))))
               (_%g147756147819%_
                (lambda (_%g147758147777%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g147758147777%_))
                      (let ((_%e147761147779%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g147758147777%_))))
                        (let ((_%hd147762147782%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e147761147779%_)))
                              (_%tl147763147784%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e147761147779%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl147763147784%_))
                              (let ((_%e147764147787%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl147763147784%_))))
                                (let ((_%hd147765147790%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e147764147787%_)))
                                      (_%tl147766147792%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e147764147787%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl147766147792%_))
                                      (let ((_%e147767147795%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl147766147792%_))))
                                        (let ((_%hd147768147798%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e147767147795%_)))
                                              (_%tl147769147800%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e147767147795%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl147769147800%_))
                                              ((lambda (_%L147803%_
                                                        _%L147804%_)
                                                 (cons '%#define-alias
                                                       (cons (gxc#generate-runtime-identifier
                                                              _%L147804%_)
                                                             (cons (gxc#generate-runtime-identifier
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%L147803%_)
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd147768147798%_
                                               _%hd147765147790%_)
                                              (_%g147757147774%_
                                               _%g147758147777%_))))
                                      (_%g147757147774%_ _%g147758147777%_))))
                              (_%g147757147774%_ _%g147758147777%_))))
                      (_%g147757147774%_ _%g147758147777%_)))))
          (_%g147756147819%_ _%stx147755%_))))
    (define gxc#generate-meta-phi-define-values%
      (lambda (_%self147751%_ _%stx147752%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self147751%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx147752%_)
        (gxc#generate-meta-define-values% _%self147751%_ _%stx147752%_)))
    (define gxc#generate-meta-phi-expr
      (lambda (_%self147748%_ _%stx147749%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self147748%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx147749%_)
        '#!void))
    (define gxc#meta-state::t
      (let ((__tmp157942 (list)) (__tmp157941 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state::t
         'meta-state
         __tmp157942
         '(src n open blocks)
         __tmp157941
         ':init!)))
    (define gxc#meta-state?
      (let () (declare (not safe)) (__make-class-predicate gxc#meta-state::t)))
    (define gxc#make-meta-state
      (lambda _%$args147745%_
        (apply make-instance gxc#meta-state::t _%$args147745%_)))
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
      (lambda (_%self147731%_ _%ctx147732%_)
        (let ((_%self147735%_ _%self147731%_))
          (if (let ((__tmp157943
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self147735%_))))
                (declare (not safe))
                (##fx< '4 __tmp157943))
              (begin
                (let ((__tmp157944
                       (let ((__tmp157945
                              (##structure-ref
                               _%ctx147732%_
                               '1
                               gx#expander-context::t
                               '#f)))
                         (declare (not safe))
                         (gxc#module-id->path-string __tmp157945))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self147735%_
                   __tmp157944
                   '1
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self147735%_ '1 '2 '#f '#f))
                (let ((__tmp157946
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self147735%_
                   __tmp157946
                   '3
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self147735%_ '() '4 '#f '#f))
                '#!void)
              (let ((__tmp157947
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self147735%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self147735%_
                       '4
                       __tmp157947))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#meta-state::t ':init! gxc#meta-state:::init! '#f))
    (define gxc#meta-state-block::t
      (let ((__tmp157949 (list)) (__tmp157948 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state-block::t
         'meta-state-block
         __tmp157949
         '(ctx phi n code)
         __tmp157948
         '#f)))
    (define gxc#meta-state-block?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#meta-state-block::t)))
    (define gxc#make-meta-state-block
      (lambda _%$args147606%_
        (apply make-instance gxc#meta-state-block::t _%$args147606%_)))
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
      (lambda (_%state147565%_ _%phi147566%_)
        (let* ((_%state147567147575%_ _%state147565%_)
               (_%E147569147579%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%state147567147575%_
                           '((meta-state src n open))))
                  '#!void))
               (_%K147570147588%_
                (lambda (_%open147582%_ _%n147583%_ _%src147584%_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _%open147582%_ _%phi147566%_))
                      '#f
                      (let ((_%block-ref147586%_
                             (let ((__tmp157950 (number->string _%n147583%_)))
                               (declare (not safe))
                               (##string-append
                                _%src147584%_
                                '"~"
                                __tmp157950))))
                        (##structure-set!
                         _%state147565%_
                         (let () (declare (not safe)) (##fx+ _%n147583%_ '1))
                         '2
                         gxc#meta-state::t
                         '#f)
                        (let ((__tmp157951
                               (let ((__tmp157952
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context))))
                                 (declare (not safe))
                                 (##structure
                                  gxc#meta-state-block::t
                                  __tmp157952
                                  _%phi147566%_
                                  _%n147583%_
                                  '()))))
                          (declare (not safe))
                          (hash-put! _%open147582%_ _%phi147566%_ __tmp157951))
                        _%block-ref147586%_)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _%state147567147575%_
                 'gxc#meta-state::t))
              (let* ((_%e147571147591%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state147567147575%_
                         '1
                         '#f
                         '#f)))
                     (_%src147594%_ _%e147571147591%_)
                     (_%e147572147596%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state147567147575%_
                         '2
                         '#f
                         '#f)))
                     (_%n147599%_ _%e147572147596%_)
                     (_%e147573147601%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state147567147575%_
                         '3
                         '#f
                         '#f)))
                     (_%open147604%_ _%e147573147601%_))
                (_%K147570147588%_ _%open147604%_ _%n147599%_ _%src147594%_))
              (_%E147569147579%_)))))
    (define gxc#meta-state-add-phi!
      (lambda (_%state147559%_ _%phi147560%_ _%stx147561%_)
        (let ((_%block147563%_
               (let ((__tmp157953
                      (##structure-ref
                       _%state147559%_
                       '3
                       gxc#meta-state::t
                       '#f)))
                 (declare (not safe))
                 (hash-get __tmp157953 _%phi147560%_))))
          (##structure-set!
           _%block147563%_
           (cons _%stx147561%_
                 (##structure-ref
                  _%block147563%_
                  '4
                  gxc#meta-state-block::t
                  '#f))
           '4
           gxc#meta-state-block::t
           '#f))))
    (define gxc#meta-state-end-phi!
      (lambda (_%state147553%_)
        (##structure-set!
         _%state147553%_
         (let ((__tmp157956
                (lambda (_%_147555%_ _%block147556%_ _%r147557%_)
                  (cons _%block147556%_ _%r147557%_)))
               (__tmp157955
                (##structure-ref _%state147553%_ '4 gxc#meta-state::t '#f))
               (__tmp157954
                (##structure-ref _%state147553%_ '3 gxc#meta-state::t '#f)))
           (declare (not safe))
           (hash-fold __tmp157956 __tmp157955 __tmp157954))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _%state147553%_
         (let () (declare (not safe)) (make-hash-table-eq))
         '3
         gxc#meta-state::t
         '#f)))
    (define gxc#meta-state-end!
      (lambda (_%state147505%_)
        (gxc#meta-state-end-phi! _%state147505%_)
        (let ((__tmp157958
               (lambda (_%block147507%_ _%r147508%_)
                 (let* ((_%block147509147518%_ _%block147507%_)
                        (_%E147511147522%_
                         (lambda ()
                           (let ()
                             (declare (not safe))
                             (error '"No clause matching"
                                    _%block147509147518%_
                                    '((meta-state-block ctx phi n code))))
                           '#!void))
                        (_%K147512147530%_
                         (lambda (_%code147525%_
                                  _%n147526%_
                                  _%phi147527%_
                                  _%ctx147528%_)
                           (if (null? _%code147525%_)
                               _%r147508%_
                               (cons (cons _%ctx147528%_
                                           (cons _%phi147527%_
                                                 (cons _%n147526%_
                                                       (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (reverse _%code147525%_))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%r147508%_)))))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%block147509147518%_
                          'gxc#meta-state-block::t))
                       (let* ((_%e147513147533%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block147509147518%_
                                  '1
                                  '#f
                                  '#f)))
                              (_%ctx147536%_ _%e147513147533%_)
                              (_%e147514147538%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block147509147518%_
                                  '2
                                  '#f
                                  '#f)))
                              (_%phi147541%_ _%e147514147538%_)
                              (_%e147515147543%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block147509147518%_
                                  '3
                                  '#f
                                  '#f)))
                              (_%n147546%_ _%e147515147543%_)
                              (_%e147516147548%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block147509147518%_
                                  '4
                                  '#f
                                  '#f)))
                              (_%code147551%_ _%e147516147548%_))
                         (_%K147512147530%_
                          _%code147551%_
                          _%n147546%_
                          _%phi147541%_
                          _%ctx147536%_))
                       (_%E147511147522%_)))))
              (__tmp157957
               (##structure-ref _%state147505%_ '4 gxc#meta-state::t '#f)))
          (declare (not safe))
          (__foldl1 __tmp157958 '() __tmp157957))))
    (define gxc#collect-expression-refs
      (lambda (_%stx147501%_)
        (let ((_%ht147503%_
               (let () (declare (not safe)) (make-hash-table-eq))))
          (gxc#apply-collect-expression-refs__% '#f _%ht147503%_ _%stx147501%_)
          _%ht147503%_)))
    (define gxc#collect-refs-ref%
      (lambda (_%self147444%_ _%stx147445%_)
        (let* ((_%g147447147460%_
                (lambda (_%g147448147457%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g147448147457%_))))
               (_%g147446147498%_
                (lambda (_%g147448147463%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g147448147463%_))
                      (let ((_%e147450147465%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g147448147463%_))))
                        (let ((_%hd147451147468%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e147450147465%_)))
                              (_%tl147452147470%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e147450147465%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl147452147470%_))
                              (let ((_%e147453147473%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl147452147470%_))))
                                (let ((_%hd147454147476%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e147453147473%_)))
                                      (_%tl147455147478%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e147453147473%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl147455147478%_))
                                      ((lambda (_%L147481%_)
                                         (let* ((_%bind147493%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#resolve-identifier__0
                                                    _%L147481%_)))
                                                (_%eid147495%_
                                                 (if _%bind147493%_
                                                     (##structure-ref
                                                      _%bind147493%_
                                                      '1
                                                      gx#binding::t
                                                      '#f)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%L147481%_))))
                                                (__tmp157959
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self147444%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-put!
                                            __tmp157959
                                            _%eid147495%_
                                            _%eid147495%_)))
                                       _%hd147454147476%_)
                                      (_%g147447147460%_ _%g147448147463%_))))
                              (_%g147447147460%_ _%g147448147463%_))))
                      (_%g147447147460%_ _%g147448147463%_)))))
          (_%g147446147498%_ _%stx147445%_))))
    (define gxc#collect-refs-setq%
      (lambda (_%self147371%_ _%stx147372%_)
        (let* ((_%g147374147391%_
                (lambda (_%g147375147388%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g147375147388%_))))
               (_%g147373147441%_
                (lambda (_%g147375147394%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g147375147394%_))
                      (let ((_%e147378147396%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g147375147394%_))))
                        (let ((_%hd147379147399%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e147378147396%_)))
                              (_%tl147380147401%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e147378147396%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl147380147401%_))
                              (let ((_%e147381147404%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl147380147401%_))))
                                (let ((_%hd147382147407%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e147381147404%_)))
                                      (_%tl147383147409%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e147381147404%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl147383147409%_))
                                      (let ((_%e147384147412%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl147383147409%_))))
                                        (let ((_%hd147385147415%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e147384147412%_)))
                                              (_%tl147386147417%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e147384147412%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl147386147417%_))
                                              ((lambda (_%L147420%_
                                                        _%L147421%_)
                                                 (let* ((_%bind147436%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#resolve-identifier__0
                                                            _%L147421%_)))
                                                        (_%eid147438%_
                                                         (if _%bind147436%_
                                                             (##structure-ref
                                                              _%bind147436%_
                                                              '1
                                                              gx#binding::t
                                                              '#f)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%L147421%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp157960
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self147371%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp157960
                                                      _%eid147438%_
                                                      _%eid147438%_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self147371%_
                                                      _%L147420%_))))
                                               _%hd147385147415%_
                                               _%hd147382147407%_)
                                              (_%g147374147391%_
                                               _%g147375147394%_))))
                                      (_%g147374147391%_ _%g147375147394%_))))
                              (_%g147374147391%_ _%g147375147394%_))))
                      (_%g147374147391%_ _%g147375147394%_)))))
          (_%g147373147441%_ _%stx147372%_))))
    (define gxc#find-runtime-begin%
      (lambda (_%self147328%_ _%stx147329%_)
        (let* ((_%g147331147341%_
                (lambda (_%g147332147338%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g147332147338%_))))
               (_%g147330147368%_
                (lambda (_%g147332147344%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g147332147344%_))
                      (let ((_%e147334147346%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g147332147344%_))))
                        (let ((_%hd147335147349%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e147334147346%_)))
                              (_%tl147336147351%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e147334147346%_))))
                          ((lambda (_%L147354%_)
                             (let ((__tmp157961
                                    (lambda (_%g147363147365%_)
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self147328%_
                                         _%g147363147365%_)))))
                               (declare (not safe))
                               (__ormap1 __tmp157961 _%L147354%_)))
                           _%tl147336147351%_)))
                      (_%g147331147341%_ _%g147332147344%_)))))
          (_%g147330147368%_ _%stx147329%_))))
    (define gxc#count-values-single%
      (lambda (_%self147325%_ _%stx147326%_) '1))
    (define gxc#count-values-call%
      (lambda (_%self147191%_ _%stx147192%_)
        (let* ((_%__stx157703157704%_ _%stx147192%_)
               (_%g147195147224%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx157703157704%_)))))
          (let ((_%__kont157705157706%_
                 (lambda (_%L147292%_ _%L147293%_)
                   (length (let ((__tmp157962
                                  (lambda (_%g147314147317%_ _%g147315147319%_)
                                    (cons _%g147314147317%_
                                          _%g147315147319%_))))
                             (declare (not safe))
                             (__foldr1 __tmp157962 '() _%L147292%_)))))
                (_%__kont157709157710%_ (lambda () '#f)))
            (let ((_%__match157748157749%_
                   (lambda (_%e147199147236%_
                            _%hd147200147239%_
                            _%tl147201147241%_
                            _%e147202147244%_
                            _%hd147203147247%_
                            _%tl147204147249%_
                            _%e147205147252%_
                            _%hd147206147255%_
                            _%tl147207147257%_
                            _%e147208147260%_
                            _%hd147209147263%_
                            _%tl147210147265%_
                            _%__splice157707157708%_
                            _%target147211147268%_
                            _%tl147213147270%_)
                     (letrec ((_%loop147214147273%_
                               (lambda (_%hd147212147276%_
                                        _%rand147218147278%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd147212147276%_))
                                     (let ((_%e147215147281%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd147212147276%_))))
                                       (let ((_%lp-tl147217147286%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e147215147281%_)))
                                             (_%lp-hd147216147284%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e147215147281%_))))
                                         (_%loop147214147273%_
                                          _%lp-tl147217147286%_
                                          (cons _%lp-hd147216147284%_
                                                _%rand147218147278%_))))
                                     (let ((_%rand147219147289%_
                                            (reverse _%rand147218147278%_)))
                                       (let ((_%L147292%_ _%rand147219147289%_)
                                             (_%L147293%_ _%hd147209147263%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L147293%_
                                                'values))
                                             (_%__kont157705157706%_
                                              _%L147292%_
                                              _%L147293%_)
                                             (_%__kont157709157710%_))))))))
                       (_%loop147214147273%_ _%target147211147268%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx157703157704%_))
                  (let ((_%e147199147236%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx157703157704%_))))
                    (let ((_%tl147201147241%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e147199147236%_)))
                          (_%hd147200147239%_
                           (let ()
                             (declare (not safe))
                             (##car _%e147199147236%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl147201147241%_))
                          (let ((_%e147202147244%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl147201147241%_))))
                            (let ((_%tl147204147249%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e147202147244%_)))
                                  (_%hd147203147247%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e147202147244%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd147203147247%_))
                                  (let ((_%e147205147252%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd147203147247%_))))
                                    (let ((_%tl147207147257%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e147205147252%_)))
                                          (_%hd147206147255%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e147205147252%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd147206147255%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd147206147255%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl147207147257%_))
                                                  (let ((_%e147208147260%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl147207147257%_))))
                                                    (let ((_%tl147210147265%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e147208147260%_)))
                                                          (_%hd147209147263%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e147208147260%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl147210147265%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl147204147249%_))
                      (let ((_%__splice157707157708%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl147204147249%_
                                '0))))
                        (let ((_%tl147213147270%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice157707157708%_ '1)))
                              (_%target147211147268%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice157707157708%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl147213147270%_))
                              (_%__match157748157749%_
                               _%e147199147236%_
                               _%hd147200147239%_
                               _%tl147201147241%_
                               _%e147202147244%_
                               _%hd147203147247%_
                               _%tl147204147249%_
                               _%e147205147252%_
                               _%hd147206147255%_
                               _%tl147207147257%_
                               _%e147208147260%_
                               _%hd147209147263%_
                               _%tl147210147265%_
                               _%__splice157707157708%_
                               _%target147211147268%_
                               _%tl147213147270%_)
                              (_%__kont157709157710%_))))
                      (_%__kont157709157710%_))
                  (_%__kont157709157710%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont157709157710%_))
                                              (_%__kont157709157710%_))
                                          (_%__kont157709157710%_))))
                                  (_%__kont157709157710%_))))
                          (_%__kont157709157710%_))))
                  (_%__kont157709157710%_)))))))
    (define gxc#count-values-if%
      (lambda (_%self147094%_ _%stx147095%_)
        (let* ((_%g147097147118%_
                (lambda (_%g147098147115%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g147098147115%_))))
               (_%g147096147188%_
                (lambda (_%g147098147121%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g147098147121%_))
                      (let ((_%e147102147123%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g147098147121%_))))
                        (let ((_%hd147103147126%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e147102147123%_)))
                              (_%tl147104147128%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e147102147123%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl147104147128%_))
                              (let ((_%e147105147131%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl147104147128%_))))
                                (let ((_%hd147106147134%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e147105147131%_)))
                                      (_%tl147107147136%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e147105147131%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl147107147136%_))
                                      (let ((_%e147108147139%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl147107147136%_))))
                                        (let ((_%hd147109147142%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e147108147139%_)))
                                              (_%tl147110147144%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e147108147139%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl147110147144%_))
                                              (let ((_%e147111147147%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl147110147144%_))))
                                                (let ((_%hd147112147150%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e147111147147%_)))
                                                      (_%tl147113147152%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e147111147147%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl147113147152%_))
                                                      ((lambda (_%L147155%_
                                                                _%L147156%_
                                                                _%L147157%_)
                                                         (let ((_%c1147174147176%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1 _%self147094%_ _%L147156%_))))
                   (if _%c1147174147176%_
                       (let* ((_%c1147179%_ _%c1147174147176%_)
                              (_%c2147180147182%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self147094%_
                                  _%L147155%_))))
                         (if _%c2147180147182%_
                             (let ((_%c2147185%_ _%c2147180147182%_))
                               (if (fx= _%c1147179%_ _%c2147185%_)
                                   _%c1147179%_
                                   '#f))
                             '#f))
                       '#f)))
               _%hd147112147150%_
               _%hd147109147142%_
               _%hd147106147134%_)
              (_%g147097147118%_ _%g147098147121%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g147097147118%_
                                               _%g147098147121%_))))
                                      (_%g147097147118%_ _%g147098147121%_))))
                              (_%g147097147118%_ _%g147098147121%_))))
                      (_%g147097147118%_ _%g147098147121%_)))))
          (_%g147096147188%_ _%stx147095%_))))))
