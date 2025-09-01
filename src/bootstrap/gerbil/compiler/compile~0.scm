(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/compile::timestamp 1756721296)
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
        (letrec ((_%hash-e156387%_
                  (lambda (_%id156389%_)
                    (symbol-hash
                     (let () (declare (not safe)) (gx#stx-e _%id156389%_))))))
          (let ()
            (declare (not safe))
            (make-hash-table__%
             '#f
             absent-value
             absent-value
             gx#bound-identifier=?
             _%hash-e156387%_
             absent-value
             absent-value
             absent-value
             absent-value)))))
    (define gxc#::collect-bindings::t
      (let ((__tmp157774 (list gxc#::void::t))
            (__tmp157773 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-bindings::t
         '::collect-bindings
         __tmp157774
         '()
         __tmp157773
         '#f)))
    (define gxc#::collect-bindings?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-bindings::t)))
    (define gxc#make-::collect-bindings
      (lambda _%$args156383%_
        (apply make-instance gxc#::collect-bindings::t _%$args156383%_)))
    (define gxc#::collect-bindings-bind-methods!
      (let ((__tmp157775
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
        (__make-atomic-promise __tmp157775)))
    (define gxc#apply-collect-bindings
      (lambda (_%stx156375%_)
        (force gxc#::collect-bindings-bind-methods!)
        (let* ((_%self156378%_
                (let ((__obj157749
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::collect-bindings::t))))
                  __obj157749))
               (__tmp157776
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self156378%_ _%stx156375%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp157776
           gxc#current-compile-method
           _%self156378%_))))
    (define gxc#::lift-modules::t
      (let ((__tmp157778 (list gxc#::void::t))
            (__tmp157777 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::lift-modules::t
         '::lift-modules
         __tmp157778
         '(modules)
         __tmp157777
         '#f)))
    (define gxc#::lift-modules?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::lift-modules::t)))
    (define gxc#make-::lift-modules
      (lambda _%$args156372%_
        (apply make-instance gxc#::lift-modules::t _%$args156372%_)))
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
      (let ((__tmp157779
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
        (__make-atomic-promise __tmp157779)))
    (define gxc#apply-lift-modules__%
      (lambda (_%@@keywords156346%_ _%modules156343156347%_ _%stx156349%_)
        (let ((_%modules156352%_
               (if (eq? _%modules156343156347%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'modules:))
                   _%modules156343156347%_)))
          (force gxc#::lift-modules-bind-methods!)
          (let* ((_%self156354%_
                  (let ((__obj157751
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::lift-modules::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj157751
                       _%modules156352%_
                       '1
                       '#f
                       '#f))
                    __obj157751))
                 (__tmp157780
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self156354%_ _%stx156349%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp157780
             gxc#current-compile-method
             _%self156354%_)))))
    (define gxc#apply-lift-modules__@
      (lambda (_%@@keywords156361%_ . _%args156362%_)
        (apply gxc#apply-lift-modules__%
               _%@@keywords156361%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords156361%_
                  'modules:
                  absent-value))
               _%args156362%_)))
    (define gxc#apply-lift-modules
      (lambda _%args156344156368%_
        (apply keyword-dispatch
               '#(modules:)
               gxc#apply-lift-modules__@
               _%args156344156368%_)))
    (define gxc#::find-runtime-code::t
      (let ((__tmp157782 (list)) (__tmp157781 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-runtime-code::t
         '::find-runtime-code
         __tmp157782
         '()
         __tmp157781
         '#f)))
    (define gxc#::find-runtime-code?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-runtime-code::t)))
    (define gxc#make-::find-runtime-code
      (lambda _%$args156339%_
        (apply make-instance gxc#::find-runtime-code::t _%$args156339%_)))
    (define gxc#::find-runtime-code-bind-methods!
      (let ((__tmp157783
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
        (__make-atomic-promise __tmp157783)))
    (define gxc#apply-find-runtime-code
      (lambda (_%stx156331%_)
        (force gxc#::find-runtime-code-bind-methods!)
        (let* ((_%self156334%_
                (let ((__obj157753
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-runtime-code::t))))
                  __obj157753))
               (__tmp157784
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self156334%_ _%stx156331%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp157784
           gxc#current-compile-method
           _%self156334%_))))
    (define gxc#::find-lambda-expression::t
      (let ((__tmp157786 (list gxc#::false::t))
            (__tmp157785 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::find-lambda-expression::t
         '::find-lambda-expression
         __tmp157786
         '()
         __tmp157785
         '#f)))
    (define gxc#::find-lambda-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::find-lambda-expression::t)))
    (define gxc#make-::find-lambda-expression
      (lambda _%$args156328%_
        (apply make-instance gxc#::find-lambda-expression::t _%$args156328%_)))
    (define gxc#::find-lambda-expression-bind-methods!
      (let ((__tmp157787
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
        (__make-atomic-promise __tmp157787)))
    (define gxc#apply-find-lambda-expression
      (lambda (_%stx156320%_)
        (force gxc#::find-lambda-expression-bind-methods!)
        (let* ((_%self156323%_
                (let ((__obj157755
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::find-lambda-expression::t))))
                  __obj157755))
               (__tmp157788
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self156323%_ _%stx156320%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp157788
           gxc#current-compile-method
           _%self156323%_))))
    (define gxc#::count-values::t
      (let ((__tmp157790 (list gxc#::false-expression::t))
            (__tmp157789 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::count-values::t
         '::count-values
         __tmp157790
         '()
         __tmp157789
         '#f)))
    (define gxc#::count-values?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::count-values::t)))
    (define gxc#make-::count-values
      (lambda _%$args156317%_
        (apply make-instance gxc#::count-values::t _%$args156317%_)))
    (define gxc#::count-values-bind-methods!
      (let ((__tmp157791
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
        (__make-atomic-promise __tmp157791)))
    (define gxc#apply-count-values
      (lambda (_%stx156309%_)
        (force gxc#::count-values-bind-methods!)
        (let* ((_%self156312%_
                (let ((__obj157757
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::count-values::t))))
                  __obj157757))
               (__tmp157792
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self156312%_ _%stx156309%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp157792
           gxc#current-compile-method
           _%self156312%_))))
    (define gxc#::generate-runtime-empty::t
      (let ((__tmp157793 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-empty::t
         '::generate-runtime-empty
         __tmp157793
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime-empty?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-empty::t)))
    (define gxc#make-::generate-runtime-empty
      (lambda _%$args156306%_
        (apply make-instance gxc#::generate-runtime-empty::t _%$args156306%_)))
    (define gxc#::generate-runtime-empty-bind-methods!
      (let ((__tmp157794
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
        (__make-atomic-promise __tmp157794)))
    (define gxc#::generate-loader::t
      (let ((__tmp157796 (list gxc#::generate-runtime-empty::t))
            (__tmp157795 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-loader::t
         '::generate-loader
         __tmp157796
         '()
         __tmp157795
         '#f)))
    (define gxc#::generate-loader?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-loader::t)))
    (define gxc#make-::generate-loader
      (lambda _%$args156302%_
        (apply make-instance gxc#::generate-loader::t _%$args156302%_)))
    (define gxc#::generate-loader-bind-methods!
      (let ((__tmp157797
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
        (__make-atomic-promise __tmp157797)))
    (define gxc#apply-generate-loader
      (lambda (_%stx156294%_)
        (force gxc#::generate-loader-bind-methods!)
        (let* ((_%self156297%_
                (let ((__obj157760
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-loader::t))))
                  __obj157760))
               (__tmp157798
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self156297%_ _%stx156294%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp157798
           gxc#current-compile-method
           _%self156297%_))))
    (define gxc#::generate-runtime::t
      (let ((__tmp157799 (list gxc#::generate-runtime-empty::t)))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime::t
         '::generate-runtime
         __tmp157799
         '()
         '()
         '#f)))
    (define gxc#::generate-runtime?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime::t)))
    (define gxc#make-::generate-runtime
      (lambda _%$args156291%_
        (apply make-instance gxc#::generate-runtime::t _%$args156291%_)))
    (define gxc#::generate-runtime-bind-methods!
      (let ((__tmp157800
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
        (__make-atomic-promise __tmp157800)))
    (define gxc#apply-generate-runtime
      (lambda (_%stx156283%_)
        (force gxc#::generate-runtime-bind-methods!)
        (let* ((_%self156286%_
                (let ((__obj157762
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime::t))))
                  __obj157762))
               (__tmp157801
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self156286%_ _%stx156283%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp157801
           gxc#current-compile-method
           _%self156286%_))))
    (define gxc#::generate-runtime-phi::t
      (let ((__tmp157803 (list gxc#::generate-runtime::t))
            (__tmp157802 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-runtime-phi::t
         '::generate-runtime-phi
         __tmp157803
         '()
         __tmp157802
         '#f)))
    (define gxc#::generate-runtime-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-runtime-phi::t)))
    (define gxc#make-::generate-runtime-phi
      (lambda _%$args156280%_
        (apply make-instance gxc#::generate-runtime-phi::t _%$args156280%_)))
    (define gxc#::generate-runtime-phi-bind-methods!
      (let ((__tmp157804
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
        (__make-atomic-promise __tmp157804)))
    (define gxc#apply-generate-runtime-phi
      (lambda (_%stx156272%_)
        (force gxc#::generate-runtime-phi-bind-methods!)
        (let* ((_%self156275%_
                (let ((__obj157764
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-runtime-phi::t))))
                  __obj157764))
               (__tmp157805
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self156275%_ _%stx156272%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp157805
           gxc#current-compile-method
           _%self156275%_))))
    (define gxc#::collect-expression-refs::t
      (let ((__tmp157806 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-expression-refs::t
         '::collect-expression-refs
         __tmp157806
         '(table)
         '()
         '#f)))
    (define gxc#::collect-expression-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-expression-refs::t)))
    (define gxc#make-::collect-expression-refs
      (lambda _%$args156269%_
        (apply make-instance
               gxc#::collect-expression-refs::t
               _%$args156269%_)))
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
      (let ((__tmp157807
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
        (__make-atomic-promise __tmp157807)))
    (define gxc#apply-collect-expression-refs__%
      (lambda (_%@@keywords156243%_ _%table156240156244%_ _%stx156246%_)
        (let ((_%table156249%_
               (if (eq? _%table156240156244%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'table:))
                   _%table156240156244%_)))
          (force gxc#::collect-expression-refs-bind-methods!)
          (let* ((_%self156251%_
                  (let ((__obj157766
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#::collect-expression-refs::t
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj157766
                       _%table156249%_
                       '1
                       '#f
                       '#f))
                    __obj157766))
                 (__tmp157808
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self156251%_ _%stx156246%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp157808
             gxc#current-compile-method
             _%self156251%_)))))
    (define gxc#apply-collect-expression-refs__@
      (lambda (_%@@keywords156258%_ . _%args156259%_)
        (apply gxc#apply-collect-expression-refs__%
               _%@@keywords156258%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords156258%_
                  'table:
                  absent-value))
               _%args156259%_)))
    (define gxc#apply-collect-expression-refs
      (lambda _%args156241156265%_
        (apply keyword-dispatch
               '#(table:)
               gxc#apply-collect-expression-refs__@
               _%args156241156265%_)))
    (define gxc#::generate-meta::t
      (let ((__tmp157810 (list gxc#::void-expression::t))
            (__tmp157809 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta::t
         '::generate-meta
         __tmp157810
         '(state)
         __tmp157809
         '#f)))
    (define gxc#::generate-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta::t)))
    (define gxc#make-::generate-meta
      (lambda _%$args156236%_
        (apply make-instance gxc#::generate-meta::t _%$args156236%_)))
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
      (let ((__tmp157811
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
        (__make-atomic-promise __tmp157811)))
    (define gxc#apply-generate-meta__%
      (lambda (_%@@keywords156210%_ _%state156207156211%_ _%stx156213%_)
        (let ((_%state156216%_
               (if (eq? _%state156207156211%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state156207156211%_)))
          (force gxc#::generate-meta-bind-methods!)
          (let* ((_%self156218%_
                  (let ((__obj157768
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj157768
                       _%state156216%_
                       '1
                       '#f
                       '#f))
                    __obj157768))
                 (__tmp157812
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self156218%_ _%stx156213%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp157812
             gxc#current-compile-method
             _%self156218%_)))))
    (define gxc#apply-generate-meta__@
      (lambda (_%@@keywords156225%_ . _%args156226%_)
        (apply gxc#apply-generate-meta__%
               _%@@keywords156225%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords156225%_
                  'state:
                  absent-value))
               _%args156226%_)))
    (define gxc#apply-generate-meta
      (lambda _%args156208156232%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta__@
               _%args156208156232%_)))
    (define gxc#::generate-meta-phi::t
      (let ((__tmp157814 (list)) (__tmp157813 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-meta-phi::t
         '::generate-meta-phi
         __tmp157814
         '(state)
         __tmp157813
         '#f)))
    (define gxc#::generate-meta-phi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-meta-phi::t)))
    (define gxc#make-::generate-meta-phi
      (lambda _%$args156203%_
        (apply make-instance gxc#::generate-meta-phi::t _%$args156203%_)))
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
      (let ((__tmp157815
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
        (__make-atomic-promise __tmp157815)))
    (define gxc#apply-generate-meta-phi__%
      (lambda (_%@@keywords156177%_ _%state156174156178%_ _%stx156180%_)
        (let ((_%state156183%_
               (if (eq? _%state156174156178%_ absent-value)
                   (let ()
                     (declare (not safe))
                     (error '"Missing required keyword argument" 'state:))
                   _%state156174156178%_)))
          (force gxc#::generate-meta-phi-bind-methods!)
          (let* ((_%self156185%_
                  (let ((__obj157770
                         (let ()
                           (declare (not safe))
                           (##structure gxc#::generate-meta-phi::t '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj157770
                       _%state156183%_
                       '1
                       '#f
                       '#f))
                    __obj157770))
                 (__tmp157816
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self156185%_ _%stx156180%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp157816
             gxc#current-compile-method
             _%self156185%_)))))
    (define gxc#apply-generate-meta-phi__@
      (lambda (_%@@keywords156192%_ . _%args156193%_)
        (apply gxc#apply-generate-meta-phi__%
               _%@@keywords156192%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords156192%_
                  'state:
                  absent-value))
               _%args156193%_)))
    (define gxc#apply-generate-meta-phi
      (lambda _%args156175156199%_
        (apply keyword-dispatch
               '#(state:)
               gxc#apply-generate-meta-phi__@
               _%args156175156199%_)))
    (define gxc#collect-bindings-define-values%
      (lambda (_%self156103%_ _%stx156104%_)
        (let* ((_%g156106156123%_
                (lambda (_%g156107156120%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g156107156120%_))))
               (_%g156105156170%_
                (lambda (_%g156107156126%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g156107156126%_))
                      (let ((_%e156110156128%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g156107156126%_))))
                        (let ((_%hd156111156131%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e156110156128%_)))
                              (_%tl156112156133%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e156110156128%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl156112156133%_))
                              (let ((_%e156113156136%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl156112156133%_))))
                                (let ((_%hd156114156139%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e156113156136%_)))
                                      (_%tl156115156141%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e156113156136%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl156115156141%_))
                                      (let ((_%e156116156144%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl156115156141%_))))
                                        (let ((_%hd156117156147%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e156116156144%_)))
                                              (_%tl156118156149%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e156116156144%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl156118156149%_))
                                              ((lambda (_%L156152%_
                                                        _%L156153%_)
                                                 (let ((__tmp157817
                                                        (lambda (_%bind156168%_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#identifier? _%bind156168%_))
                      (gxc#add-module-binding! _%bind156168%_ '#f)
                      '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#stx-for-each1
                                                    __tmp157817
                                                    _%L156153%_)))
                                               _%hd156117156147%_
                                               _%hd156114156139%_)
                                              (_%g156106156123%_
                                               _%g156107156126%_))))
                                      (_%g156106156123%_ _%g156107156126%_))))
                              (_%g156106156123%_ _%g156107156126%_))))
                      (_%g156106156123%_ _%g156107156126%_)))))
          (_%g156105156170%_ _%stx156104%_))))
    (define gxc#collect-bindings-define-syntax%
      (lambda (_%self156035%_ _%stx156036%_)
        (let* ((_%g156038156055%_
                (lambda (_%g156039156052%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g156039156052%_))))
               (_%g156037156100%_
                (lambda (_%g156039156058%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g156039156058%_))
                      (let ((_%e156042156060%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g156039156058%_))))
                        (let ((_%hd156043156063%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e156042156060%_)))
                              (_%tl156044156065%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e156042156060%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl156044156065%_))
                              (let ((_%e156045156068%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl156044156065%_))))
                                (let ((_%hd156046156071%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e156045156068%_)))
                                      (_%tl156047156073%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e156045156068%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl156047156073%_))
                                      (let ((_%e156048156076%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl156047156073%_))))
                                        (let ((_%hd156049156079%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e156048156076%_)))
                                              (_%tl156050156081%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e156048156076%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl156050156081%_))
                                              ((lambda (_%L156084%_
                                                        _%L156085%_)
                                                 (gxc#add-module-binding!
                                                  _%L156085%_
                                                  '#t))
                                               _%hd156049156079%_
                                               _%hd156046156071%_)
                                              (_%g156038156055%_
                                               _%g156039156058%_))))
                                      (_%g156038156055%_ _%g156039156058%_))))
                              (_%g156038156055%_ _%g156039156058%_))))
                      (_%g156038156055%_ _%g156039156058%_)))))
          (_%g156037156100%_ _%stx156036%_))))
    (define gxc#lift-modules-module%
      (lambda (_%self155977%_ _%stx155978%_)
        (let* ((_%g155980155994%_
                (lambda (_%g155981155991%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g155981155991%_))))
               (_%g155979156032%_
                (lambda (_%g155981155997%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g155981155997%_))
                      (let ((_%e155984155999%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g155981155997%_))))
                        (let ((_%hd155985156002%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e155984155999%_)))
                              (_%tl155986156004%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e155984155999%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl155986156004%_))
                              (let ((_%e155987156007%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl155986156004%_))))
                                (let ((_%hd155988156010%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e155987156007%_)))
                                      (_%tl155989156012%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e155987156007%_))))
                                  ((lambda (_%L156015%_ _%L156016%_)
                                     (let ((_%ctx156029%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-local-e__0
                                               _%L156016%_))))
                                       (set-box!
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self155977%_
                                           'modules))
                                        (cons _%ctx156029%_
                                              (unbox (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self155977%_
                                                        'modules)))))
                                       (let ((__tmp157818
                                              (lambda ()
                                                (let ((__tmp157819
                                                       (##structure-ref
                                                        _%ctx156029%_
                                                        '11
                                                        gx#module-context::t
                                                        '#f)))
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self155977%_
                                                   __tmp157819)))))
                                         (declare (not safe))
                                         (call-with-parameters__1
                                          __tmp157818
                                          gx#current-expander-context
                                          _%ctx156029%_))))
                                   _%tl155989156012%_
                                   _%hd155988156010%_)))
                              (_%g155980155994%_ _%g155981155997%_))))
                      (_%g155980155994%_ _%g155981155997%_)))))
          (_%g155979156032%_ _%stx155978%_))))
    (define gxc#current-compile-decls-unsafe?
      (lambda ()
        (let ((_%decls155930155932%_
               (let () (declare (not safe)) (gxc#current-compile-decls))))
          (if _%decls155930155932%_
              (let ((_%decls155935%_ _%decls155930155932%_))
                (let _%lp155937%_ ((_%rest155939%_ _%decls155935%_))
                  (let* ((_%rest155940155948%_ _%rest155939%_)
                         (_%else155942155956%_ (lambda () '#f))
                         (_%K155944155965%_
                          (lambda (_%decls155959%_ _%decl155960%_)
                            (if (equal? _%decl155960%_ '(not safe))
                                '#t
                                (if (equal? _%decl155960%_ '(safe))
                                    '#f
                                    (_%lp155937%_ _%decls155959%_))))))
                    (if (pair? _%rest155940155948%_)
                        (let ((_%hd155945155968%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%rest155940155948%_)))
                              (_%tl155946155970%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%rest155940155948%_))))
                          (let* ((_%decl155973%_ _%hd155945155968%_)
                                 (_%decls155975%_ _%tl155946155970%_))
                            (_%K155944155965%_
                             _%decls155975%_
                             _%decl155973%_)))
                        (_%else155942155956%_)))))
              '#f))))
    (define gxc#add-module-binding!
      (lambda (_%id155924%_ _%syntax?155925%_)
        (let ((_%eid155927%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id155924%_))
                '1
                gx#binding::t
                '#f))
              (_%ht155928%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-symbol-table))
                '2
                gxc#symbol-table::t
                '#f)))
          (if (let () (declare (not safe)) (interned-symbol? _%eid155927%_))
              '#!void
              (let ((__tmp157820
                     (let ((__tmp157821
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__0
                               _%eid155927%_))))
                       (declare (not safe))
                       (gx#make-binding-id__1 __tmp157821 _%syntax?155925%_))))
                (declare (not safe))
                (hash-put! _%ht155928%_ _%eid155927%_ __tmp157820))))))
    (define gxc#generate-runtime-identifier
      (lambda (_%id155922%_)
        (gxc#generate-runtime-identifier-key
         (let () (declare (not safe)) (gx#core-identifier-key _%id155922%_)))))
    (define gxc#generate-runtime-identifier-key
      (lambda (_%key155877%_)
        (if (let () (declare (not safe)) (interned-symbol? _%key155877%_))
            _%key155877%_
            (if (uninterned-symbol? _%key155877%_)
                (let ()
                  (declare (not safe))
                  (gxc#generate-runtime-gensym-reference__0 _%key155877%_))
                (let* ((_%key155881155888%_ _%key155877%_)
                       (_%E155883155892%_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (error '"No clause matching"
                                   _%key155881155888%_
                                   '([eid . mark])))
                          '#!void))
                       (_%K155884155910%_
                        (lambda (_%mark155895%_ _%eid155896%_)
                          (let ((_%$e155898%_
                                 (##structure-ref
                                  _%mark155895%_
                                  '1
                                  gx#expander-mark::t
                                  '#f)))
                            (if _%$e155898%_
                                ((lambda (_%ht155901%_)
                                   (let ((_%$e155903%_
                                          (let ()
                                            (declare (not safe))
                                            (hash-get
                                             _%ht155901%_
                                             _%eid155896%_))))
                                     (if _%$e155903%_
                                         ((lambda (_%id155906%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (interned-symbol?
                                                   _%id155906%_))
                                                _%id155906%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#generate-runtime-gensym-reference__0
                                                   _%id155906%_))))
                                          _%$e155903%_)
                                         (gxc#generate-runtime-identifier-key
                                          _%eid155896%_))))
                                 _%$e155898%_)
                                (gxc#generate-runtime-identifier-key
                                 _%eid155896%_))))))
                  (if (pair? _%key155881155888%_)
                      (let ((_%hd155885155913%_
                             (let ()
                               (declare (not safe))
                               (##car _%key155881155888%_)))
                            (_%tl155886155915%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%key155881155888%_))))
                        (let* ((_%eid155918%_ _%hd155885155913%_)
                               (_%mark155920%_ _%tl155886155915%_))
                          (_%K155884155910%_ _%mark155920%_ _%eid155918%_)))
                      (_%E155883155892%_)))))))
    (define gxc#generate-runtime-empty
      (lambda (_%self155874%_ _%stx155875%_) '(begin)))
    (define gxc#generate-runtime-begin%
      (lambda (_%self155721%_ _%stx155722%_)
        (letrec ((_%simplify155724%_
                  (lambda (_%body155772%_)
                    (let _%lp155774%_ ((_%rest155776%_ _%body155772%_)
                                       (_%r155777%_ '()))
                      (let* ((_%rest155778155786%_ _%rest155776%_)
                             (_%else155780155794%_
                              (lambda () (reverse _%r155777%_)))
                             (_%K155782155862%_
                              (lambda (_%rest155797%_ _%hd155798%_)
                                (let* ((_%hd155799155815%_ _%hd155798%_)
                                       (_%else155803155823%_
                                        (lambda ()
                                          (_%lp155774%_
                                           _%rest155797%_
                                           (cons _%hd155798%_ _%r155777%_)))))
                                  (let ((_%K155811155852%_
                                         (lambda (_%exprs155850%_)
                                           (_%lp155774%_
                                            (let ()
                                              (declare (not safe))
                                              (__foldr1
                                               cons
                                               _%rest155797%_
                                               _%exprs155850%_))
                                            _%r155777%_)))
                                        (_%K155806155836%_
                                         (lambda ()
                                           (if (null? _%rest155797%_)
                                               (_%lp155774%_
                                                _%rest155797%_
                                                (cons _%hd155798%_
                                                      _%r155777%_))
                                               (_%lp155774%_
                                                _%rest155797%_
                                                _%r155777%_))))
                                        (_%K155805155828%_
                                         (lambda ()
                                           (if (null? _%rest155797%_)
                                               (_%lp155774%_
                                                _%rest155797%_
                                                (cons _%hd155798%_
                                                      _%r155777%_))
                                               (_%lp155774%_
                                                _%rest155797%_
                                                _%r155777%_)))))
                                    (let ((_%try-match155802155831%_
                                           (lambda ()
                                             (if (symbol? _%hd155799155815%_)
                                                 (_%K155805155828%_)
                                                 (_%else155803155823%_)))))
                                      (if (pair? _%hd155799155815%_)
                                          (let ((_%tl155813155857%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd155799155815%_)))
                                                (_%hd155812155855%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd155799155815%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd155812155855%_
                                                         'begin))
                                                (let ((_%exprs155860%_
                                                       _%tl155813155857%_))
                                                  (_%K155811155852%_
                                                   _%exprs155860%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%hd155812155855%_
                                                             'quote))
                                                    (if (pair? _%tl155813155857%_)
                                                        (let ((_%tl155810155844%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%tl155813155857%_))))
                  (if (null? _%tl155810155844%_)
                      (_%K155806155836%_)
                      (_%try-match155802155831%_)))
                (_%try-match155802155831%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%try-match155802155831%_))))
                                          (_%try-match155802155831%_))))))))
                        (if (pair? _%rest155778155786%_)
                            (let ((_%hd155783155865%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest155778155786%_)))
                                  (_%tl155784155867%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest155778155786%_))))
                              (let* ((_%hd155870%_ _%hd155783155865%_)
                                     (_%rest155872%_ _%tl155784155867%_))
                                (_%K155782155862%_
                                 _%rest155872%_
                                 _%hd155870%_)))
                            (_%else155780155794%_)))))))
          (let* ((_%g155726155736%_
                  (lambda (_%g155727155733%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g155727155733%_))))
                 (_%g155725155769%_
                  (lambda (_%g155727155739%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g155727155739%_))
                        (let ((_%e155729155741%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g155727155739%_))))
                          (let ((_%hd155730155744%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e155729155741%_)))
                                (_%tl155731155746%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e155729155741%_))))
                            ((lambda (_%L155749%_)
                               (let* ((_%body155764%_
                                       (map (lambda (_%g155759155761%_)
                                              (let ()
                                                (declare (not safe))
                                                (gxc#compile-e__1
                                                 _%self155721%_
                                                 _%g155759155761%_)))
                                            _%L155749%_))
                                      (_%body155766%_
                                       (_%simplify155724%_ _%body155764%_)))
                                 (if (let ((__tmp157822
                                            (length _%body155766%_)))
                                       (declare (not safe))
                                       (##fx= __tmp157822 '1))
                                     (car _%body155766%_)
                                     (cons 'begin _%body155766%_))))
                             _%tl155731155746%_)))
                        (_%g155726155736%_ _%g155727155739%_)))))
            (_%g155725155769%_ _%stx155722%_)))))
    (define gxc#generate-runtime-begin-foreign%
      (lambda (_%self155682%_ _%stx155683%_)
        (let* ((_%g155685155695%_
                (lambda (_%g155686155692%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g155686155692%_))))
               (_%g155684155718%_
                (lambda (_%g155686155698%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g155686155698%_))
                      (let ((_%e155688155700%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g155686155698%_))))
                        (let ((_%hd155689155703%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e155688155700%_)))
                              (_%tl155690155705%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e155688155700%_))))
                          ((lambda (_%L155708%_)
                             (cons 'begin
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax->datum _%L155708%_))))
                           _%tl155690155705%_)))
                      (_%g155685155695%_ _%g155686155698%_)))))
          (_%g155684155718%_ _%stx155683%_))))
    (define gxc#generate-runtime-begin-annotation%
      (lambda (_%self155446%_ _%stx155447%_)
        (let* ((_%__stx156412156413%_ _%stx155447%_)
               (_%g155451155503%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx156412156413%_)))))
          (let ((_%__kont156414156415%_
                 (lambda (_%L155664%_ _%L155665%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self155446%_ _%L155664%_))))
                (_%__kont156416156417%_
                 (lambda (_%L155612%_ _%L155613%_ _%L155614%_)
                   (if (let ((__tmp157823
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%L155614%_))))
                         (declare (not safe))
                         (##memq __tmp157823 '(@inline)))
                       '(begin)
                       (let ()
                         (declare (not safe))
                         (gxc#compile-e__1 _%self155446%_ _%L155612%_)))))
                (_%__kont156420156421%_
                 (lambda (_%L155532%_ _%L155533%_)
                   (let ((_%decls155548%_ (map gx#syntax->datum _%L155533%_)))
                     (let ((__tmp157826
                            (lambda ()
                              (cons 'begin
                                    (cons (cons 'declare _%decls155548%_)
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self155446%_
                                                   _%L155532%_))
                                                '())))))
                           (__tmp157824
                            (let ((__tmp157825
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-decls))))
                              (declare (not safe))
                              (__foldr1 cons __tmp157825 _%decls155548%_))))
                       (declare (not safe))
                       (call-with-parameters__1
                        __tmp157826
                        gxc#current-compile-decls
                        __tmp157824))))))
            (let* ((_%__match156467156468%_
                    (lambda (_%e155467155556%_
                             _%hd155468155559%_
                             _%tl155469155561%_
                             _%e155470155564%_
                             _%hd155471155567%_
                             _%tl155472155569%_
                             _%e155473155572%_
                             _%hd155474155575%_
                             _%tl155475155577%_
                             _%__splice156418156419%_
                             _%target155476155580%_
                             _%tl155478155582%_)
                      (letrec ((_%loop155479155585%_
                                (lambda (_%hd155477155588%_
                                         _%param155483155590%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd155477155588%_))
                                      (let ((_%e155480155593%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd155477155588%_))))
                                        (let ((_%lp-tl155482155598%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e155480155593%_)))
                                              (_%lp-hd155481155596%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e155480155593%_))))
                                          (_%loop155479155585%_
                                           _%lp-tl155482155598%_
                                           (cons _%lp-hd155481155596%_
                                                 _%param155483155590%_))))
                                      (let ((_%param155484155601%_
                                             (reverse _%param155483155590%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl155472155569%_))
                                            (let ((_%e155485155604%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl155472155569%_))))
                                              (let ((_%tl155487155609%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e155485155604%_)))
                                                    (_%hd155486155607%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e155485155604%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl155487155609%_))
                                                    (let ((_%L155612%_
                                                           _%hd155486155607%_)
                                                          (_%L155613%_
                                                           _%param155484155601%_)
                                                          (_%L155614%_
                                                           _%hd155474155575%_))
                                                      (if (and (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#identifier? _%L155614%_))
                       (not (let ((__tmp157827
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L155614%_))))
                              (declare (not safe))
                              (##memq __tmp157827 gxc#gambit-annotations))))
                  (_%__kont156416156417%_ _%L155612%_ _%L155613%_ _%L155614%_)
                  (_%__kont156420156421%_
                   _%hd155486155607%_
                   _%hd155471155567%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g155451155503%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g155451155503%_))))))))
                        (_%loop155479155585%_ _%target155476155580%_ '()))))
                   (_%__match156441156442%_
                    (lambda (_%e155455155640%_
                             _%hd155456155643%_
                             _%tl155457155645%_
                             _%e155458155648%_
                             _%hd155459155651%_
                             _%tl155460155653%_
                             _%e155461155656%_
                             _%hd155462155659%_
                             _%tl155463155661%_)
                      (let ((_%L155664%_ _%hd155462155659%_)
                            (_%L155665%_ _%hd155459155651%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _%L155665%_))
                            (_%__kont156414156415%_ _%L155664%_ _%L155665%_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd155459155651%_))
                                (let ((_%e155473155572%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd155459155651%_))))
                                  (let ((_%tl155475155577%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e155473155572%_)))
                                        (_%hd155474155575%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e155473155572%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl155475155577%_))
                                        (let ((_%__splice156418156419%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%tl155475155577%_
                                                  '0))))
                                          (let ((_%tl155478155582%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice156418156419%_
                                                    '1)))
                                                (_%target155476155580%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice156418156419%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl155478155582%_))
                                                (_%__match156467156468%_
                                                 _%e155455155640%_
                                                 _%hd155456155643%_
                                                 _%tl155457155645%_
                                                 _%e155458155648%_
                                                 _%hd155459155651%_
                                                 _%tl155460155653%_
                                                 _%e155473155572%_
                                                 _%hd155474155575%_
                                                 _%tl155475155577%_
                                                 _%__splice156418156419%_
                                                 _%target155476155580%_
                                                 _%tl155478155582%_)
                                                (_%__kont156420156421%_
                                                 _%hd155462155659%_
                                                 _%hd155459155651%_))))
                                        (_%__kont156420156421%_
                                         _%hd155462155659%_
                                         _%hd155459155651%_))))
                                (_%__kont156420156421%_
                                 _%hd155462155659%_
                                 _%hd155459155651%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx156412156413%_))
                  (let ((_%e155455155640%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx156412156413%_))))
                    (let ((_%tl155457155645%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e155455155640%_)))
                          (_%hd155456155643%_
                           (let ()
                             (declare (not safe))
                             (##car _%e155455155640%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl155457155645%_))
                          (let ((_%e155458155648%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl155457155645%_))))
                            (let ((_%tl155460155653%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e155458155648%_)))
                                  (_%hd155459155651%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e155458155648%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl155460155653%_))
                                  (let ((_%e155461155656%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl155460155653%_))))
                                    (let ((_%tl155463155661%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e155461155656%_)))
                                          (_%hd155462155659%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e155461155656%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl155463155661%_))
                                          (_%__match156441156442%_
                                           _%e155455155640%_
                                           _%hd155456155643%_
                                           _%tl155457155645%_
                                           _%e155458155648%_
                                           _%hd155459155651%_
                                           _%tl155460155653%_
                                           _%e155461155656%_
                                           _%hd155462155659%_
                                           _%tl155463155661%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd155459155651%_))
                                              (let ((_%e155473155572%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd155459155651%_))))
                                                (let ((_%tl155475155577%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e155473155572%_)))
                                                      (_%hd155474155575%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e155473155572%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl155475155577%_))
                                                      (let ((_%__splice156418156419%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%tl155475155577%_
                        '0))))
                (let ((_%tl155478155582%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice156418156419%_ '1)))
                      (_%target155476155580%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice156418156419%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl155478155582%_))
                      (_%__match156467156468%_
                       _%e155455155640%_
                       _%hd155456155643%_
                       _%tl155457155645%_
                       _%e155458155648%_
                       _%hd155459155651%_
                       _%tl155460155653%_
                       _%e155473155572%_
                       _%hd155474155575%_
                       _%tl155475155577%_
                       _%__splice156418156419%_
                       _%target155476155580%_
                       _%tl155478155582%_)
                      (let () (declare (not safe)) (_%g155451155503%_)))))
              (let () (declare (not safe)) (_%g155451155503%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g155451155503%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd155459155651%_))
                                      (let ((_%e155473155572%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd155459155651%_))))
                                        (let ((_%tl155475155577%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e155473155572%_)))
                                              (_%hd155474155575%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e155473155572%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl155475155577%_))
                                              (let ((_%__splice156418156419%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%tl155475155577%_
                                                        '0))))
                                                (let ((_%tl155478155582%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice156418156419%_
                                                          '1)))
                                                      (_%target155476155580%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice156418156419%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl155478155582%_))
                                                      (_%__match156467156468%_
                                                       _%e155455155640%_
                                                       _%hd155456155643%_
                                                       _%tl155457155645%_
                                                       _%e155458155648%_
                                                       _%hd155459155651%_
                                                       _%tl155460155653%_
                                                       _%e155473155572%_
                                                       _%hd155474155575%_
                                                       _%tl155475155577%_
                                                       _%__splice156418156419%_
                                                       _%target155476155580%_
                                                       _%tl155478155582%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g155451155503%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g155451155503%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g155451155503%_))))))
                          (let () (declare (not safe)) (_%g155451155503%_)))))
                  (let () (declare (not safe)) (_%g155451155503%_))))))))
    (define gxc#generate-runtime-declare%
      (lambda (_%self155405%_ _%stx155406%_)
        (let* ((_%g155408155418%_
                (lambda (_%g155409155415%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g155409155415%_))))
               (_%g155407155443%_
                (lambda (_%g155409155421%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g155409155421%_))
                      (let ((_%e155411155423%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g155409155421%_))))
                        (let ((_%hd155412155426%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e155411155423%_)))
                              (_%tl155413155428%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e155411155423%_))))
                          ((lambda (_%L155431%_)
                             (let ((_%decls155441%_
                                    (map gx#syntax->datum _%L155431%_)))
                               (let ((__tmp157828
                                      (let ((__tmp157829
                                             (let ()
                                               (declare (not safe))
                                               (gxc#current-compile-decls))))
                                        (declare (not safe))
                                        (__foldr1
                                         cons
                                         __tmp157829
                                         _%decls155441%_))))
                                 (declare (not safe))
                                 (gxc#current-compile-decls __tmp157828))
                               (cons 'declare _%decls155441%_)))
                           _%tl155413155428%_)))
                      (_%g155408155418%_ _%g155409155421%_)))))
          (_%g155407155443%_ _%stx155406%_))))
    (define gxc#generate-runtime-define-values%
      (lambda (_%self155151%_ _%stx155152%_)
        (let* ((_%g155154155171%_
                (lambda (_%g155155155168%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g155155155168%_))))
               (_%g155153155402%_
                (lambda (_%g155155155174%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g155155155174%_))
                      (let ((_%e155158155176%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g155155155174%_))))
                        (let ((_%hd155159155179%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e155158155176%_)))
                              (_%tl155160155181%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e155158155176%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl155160155181%_))
                              (let ((_%e155161155184%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl155160155181%_))))
                                (let ((_%hd155162155187%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e155161155184%_)))
                                      (_%tl155163155189%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e155161155184%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl155163155189%_))
                                      (let ((_%e155164155192%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl155163155189%_))))
                                        (let ((_%hd155165155195%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e155164155192%_)))
                                              (_%tl155166155197%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e155164155192%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl155166155197%_))
                                              ((lambda (_%L155200%_
                                                        _%L155201%_)
                                                 (let* ((_%__stx156520156521%_
                                                         _%L155201%_)
                                                        (_%g155218155232%_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%__stx156520156521%_)))))
                                                   (let ((_%__kont156522156523%_
                                                          (lambda ()
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#compile-e__1
                                                               _%self155151%_
                                                               _%L155200%_))))
                                                         (_%__kont156524156525%_
                                                          (lambda (_%L155364%_)
                                                            (let ((_%eid155373%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%L155364%_))))
                      (let ((_%lambda-expr155374155376%_
                             (gxc#apply-find-lambda-expression _%L155200%_)))
                        (if _%lambda-expr155374155376%_
                            (let* ((_%lambda-expr155379%_
                                    _%lambda-expr155374155376%_)
                                   (__tmp157830
                                    (let ()
                                      (declare (not safe))
                                      (gxc#current-compile-runtime-names))))
                              (declare (not safe))
                              (hash-put!
                               __tmp157830
                               _%lambda-expr155379%_
                               _%eid155373%_))
                            '#f))
                      (cons 'define
                            (cons _%eid155373%_
                                  (cons (let ()
                                          (declare (not safe))
                                          (gxc#compile-e__1
                                           _%self155151%_
                                           _%L155200%_))
                                        '()))))))
                 (_%__kont156526156527%_
                  (lambda ()
                    (let* ((_%tmp155239%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%body155348%_
                            (let _%lp155241%_ ((_%rest155243%_ _%L155201%_)
                                               (_%k155244%_ '0)
                                               (_%r155245%_ '()))
                              (let* ((_%__stx156490156491%_ _%rest155243%_)
                                     (_%g155250155267%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx156490156491%_)))))
                                (let ((_%__kont156492156493%_
                                       (lambda (_%L155335%_)
                                         (_%lp155241%_
                                          _%L155335%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k155244%_ '1))
                                          _%r155245%_)))
                                      (_%__kont156494156495%_
                                       (lambda (_%L155308%_ _%L155309%_)
                                         (_%lp155241%_
                                          _%L155308%_
                                          (let ()
                                            (declare (not safe))
                                            (##fx+ _%k155244%_ '1))
                                          (cons (cons 'define
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#generate-runtime-binding-id
                                                               _%L155309%_))
                                                            (cons (gxc#generate-runtime-values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tmp155239%_
                           _%k155244%_
                           _%L155308%_)
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%r155245%_))))
                                      (_%__kont156496156497%_
                                       (lambda (_%L155279%_)
                                         (let ((__tmp157831
                                                (cons (cons 'define
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gxc#generate-runtime-binding-id _%L155279%_))
                          (cons (gxc#generate-runtime-values->list
                                 _%tmp155239%_
                                 _%k155244%_)
                                '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (__foldl1
                                            cons
                                            __tmp157831
                                            _%r155245%_))))
                                      (_%__kont156498156499%_
                                       (lambda () (reverse _%r155245%_))))
                                  (let ((_%g155248155295%_
                                         (lambda ()
                                           (let ((_%L155279%_
                                                  _%__stx156490156491%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%L155279%_))
                                                 (_%__kont156496156497%_
                                                  _%L155279%_)
                                                 (_%__kont156498156499%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx156490156491%_))
                                        (let ((_%e155253155324%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx156490156491%_))))
                                          (let ((_%tl155255155329%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e155253155324%_)))
                                                (_%hd155254155327%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e155253155324%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd155254155327%_))
                                                (let ((_%e155256155332%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd155254155327%_))))
                                                  (if (equal? _%e155256155332%_
                                                              '#f)
                                                      (_%__kont156492156493%_
                                                       _%tl155255155329%_)
                                                      (_%__kont156494156495%_
                                                       _%tl155255155329%_
                                                       _%hd155254155327%_)))
                                                (_%__kont156494156495%_
                                                 _%tl155255155329%_
                                                 _%hd155254155327%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g155248155295%_)))))))))
                      (cons 'begin
                            (cons (cons 'define
                                        (cons _%tmp155239%_
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self155151%_
                                                       _%L155200%_))
                                                    '())))
                                  (cons (gxc#generate-runtime-check-values
                                         _%tmp155239%_
                                         _%L155201%_
                                         _%L155200%_)
                                        _%body155348%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%__stx156520156521%_))
                                                         (let ((_%e155220155386%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%__stx156520156521%_))))
                   (let ((_%tl155222155391%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e155220155386%_)))
                         (_%hd155221155389%_
                          (let ()
                            (declare (not safe))
                            (##car _%e155220155386%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-datum? _%hd155221155389%_))
                         (let ((_%e155223155394%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%hd155221155389%_))))
                           (if (equal? _%e155223155394%_ '#f)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl155222155391%_))
                                   (_%__kont156522156523%_)
                                   (_%__kont156526156527%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%tl155222155391%_))
                                   (_%__kont156524156525%_ _%hd155221155389%_)
                                   (_%__kont156526156527%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl155222155391%_))
                             (_%__kont156524156525%_ _%hd155221155389%_)
                             (_%__kont156526156527%_)))))
                 (_%__kont156526156527%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd155165155195%_
                                               _%hd155162155187%_)
                                              (_%g155154155171%_
                                               _%g155155155174%_))))
                                      (_%g155154155171%_ _%g155155155174%_))))
                              (_%g155154155171%_ _%g155155155174%_))))
                      (_%g155154155171%_ _%g155155155174%_)))))
          (_%g155153155402%_ _%stx155152%_))))
    (define gxc#generate-runtime-check-values
      (lambda (_%vals155126%_ _%hd155127%_ _%expr155128%_)
        (let ((_%$e155130%_ (gxc#apply-count-values _%expr155128%_)))
          (if _%$e155130%_
              ((lambda (_%count155133%_)
                 (let ((_%len155135%_
                        (let ()
                          (declare (not safe))
                          (gx#stx-length _%hd155127%_)))
                       (_%cmp155136%_
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-list? _%hd155127%_))
                            fx=
                            fx>=)))
                   (if (or (let ()
                             (declare (not safe))
                             (##fx= _%len155135%_ '0))
                           (_%cmp155136%_ _%count155133%_ _%len155135%_))
                       '#!void
                       (let ()
                         (declare (not safe))
                         (gxc#raise-compile-error
                          '"Value count mismatch"
                          _%expr155128%_
                          _%hd155127%_)))))
               _%$e155130%_)
              (let* ((_%len155142%_
                      (let ()
                        (declare (not safe))
                        (gx#stx-length _%hd155127%_)))
                     (_%cmp155144%_
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-list? _%hd155127%_))
                          '##fx=
                          '##fx>=))
                     (_%errmsg155146%_
                      (let ((__tmp157833
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-list? _%hd155127%_))
                                 '"Context expects "
                                 '"Context expects at least "))
                            (__tmp157832 (number->string _%len155142%_)))
                        (declare (not safe))
                        (##string-append __tmp157833 __tmp157832 '" values")))
                     (_%count155148%_
                      (let ()
                        (declare (not safe))
                        (gxc#generate-runtime-temporary__0))))
                (if (if (let ()
                          (declare (not safe))
                          (gx#stx-list? _%hd155127%_))
                        '#f
                        (let () (declare (not safe)) (##fx= _%len155142%_ '0)))
                    '#!void
                    (cons 'let
                          (cons (cons (cons _%count155148%_
                                            (cons (gxc#generate-runtime-values-count
                                                   _%vals155126%_)
                                                  '()))
                                      '())
                                (cons (cons 'if
                                            (cons (cons 'not
                                                        (cons (if (gxc#current-compile-decls-unsafe?)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%cmp155144%_
                                (cons _%count155148%_
                                      (cons _%len155142%_ '())))
                          (cons 'let
                                (cons '()
                                      (cons '(declare (not safe))
                                            (cons (cons _%cmp155144%_
                                                        (cons _%count155148%_
                                                              (cons _%len155142%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons 'error
                                                              (cons _%errmsg155146%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%count155148%_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '())))))))))
    (define gxc#generate-runtime-values-count
      (lambda (_%var155121%_)
        (letrec ((_%generate-inline155123%_
                  (lambda ()
                    (cons 'if
                          (cons (cons '##values? (cons _%var155121%_ '()))
                                (cons (cons '##values-length
                                            (cons _%var155121%_ '()))
                                      (cons '1 '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline155123%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline155123%_) '()))))))))
    (define gxc#generate-runtime-values-ref
      (lambda (_%var155114%_ _%i155115%_ _%rest155116%_)
        (letrec ((_%generate-inline155118%_
                  (lambda ()
                    (if (and (let ()
                               (declare (not safe))
                               (##fx= _%i155115%_ '0))
                             (not (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%rest155116%_))))
                        (cons 'if
                              (cons (cons '##values? (cons _%var155114%_ '()))
                                    (cons (cons '##values-ref
                                                (cons _%var155114%_
                                                      (cons '0 '())))
                                          (cons _%var155114%_ '()))))
                        (cons '##values-ref
                              (cons _%var155114%_ (cons _%i155115%_ '())))))))
          (if (gxc#current-compile-decls-unsafe?)
              (_%generate-inline155118%_)
              (cons 'let
                    (cons '()
                          (cons '(declare (not safe))
                                (cons (_%generate-inline155118%_) '()))))))))
    (define gxc#generate-runtime-values->list
      (lambda (_%var155108%_ _%i155109%_)
        (if (let () (declare (not safe)) (##fx= _%i155109%_ '0))
            (if (gxc#current-compile-decls-unsafe?)
                (cons 'if
                      (cons (cons '##values? (cons _%var155108%_ '()))
                            (cons (cons '##values->list
                                        (cons _%var155108%_ '()))
                                  (cons (cons 'list (cons _%var155108%_ '()))
                                        '()))))
                (cons 'let
                      (cons '()
                            (cons '(declare (not safe))
                                  (cons (cons 'if
                                              (cons (cons '##values?
                                                          (cons _%var155108%_
                                                                '()))
                                                    (cons (cons '##values->list
                                                                (cons _%var155108%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  (cons (cons 'list (cons _%var155108%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))
            (if (let () (declare (not safe)) (##fx= _%i155109%_ '1))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons 'if
                          (cons (cons '##values? (cons _%var155108%_ '()))
                                (cons (cons '##cdr
                                            (cons (cons '##values->list
                                                        (cons _%var155108%_
                                                              '()))
                                                  '()))
                                      (cons ''() '()))))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons 'if
                                                  (cons (cons '##values?
                                                              (cons _%var155108%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons '##cdr
                            (cons (cons '##values->list
                                        (cons _%var155108%_ '()))
                                  '()))
                      (cons ''() '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))
                (if (gxc#current-compile-decls-unsafe?)
                    (cons '##list-tail
                          (cons (cons '##values->list (cons _%var155108%_ '()))
                                (cons _%i155109%_ '())))
                    (cons 'let
                          (cons '()
                                (cons '(declare (not safe))
                                      (cons (cons '##list-tail
                                                  (cons (cons '##values->list
                                                              (cons _%var155108%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons _%i155109%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))))))
    (define gxc#generate-runtime-lambda%
      (lambda (_%self155040%_ _%stx155041%_)
        (let* ((_%g155043155060%_
                (lambda (_%g155044155057%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g155044155057%_))))
               (_%g155042155105%_
                (lambda (_%g155044155063%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g155044155063%_))
                      (let ((_%e155047155065%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g155044155063%_))))
                        (let ((_%hd155048155068%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e155047155065%_)))
                              (_%tl155049155070%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e155047155065%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl155049155070%_))
                              (let ((_%e155050155073%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl155049155070%_))))
                                (let ((_%hd155051155076%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e155050155073%_)))
                                      (_%tl155052155078%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e155050155073%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl155052155078%_))
                                      (let ((_%e155053155081%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl155052155078%_))))
                                        (let ((_%hd155054155084%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e155053155081%_)))
                                              (_%tl155055155086%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e155053155081%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl155055155086%_))
                                              ((lambda (_%L155089%_
                                                        _%L155090%_)
                                                 (gxc#generate-runtime-lambda-form
                                                  _%self155040%_
                                                  _%L155090%_
                                                  _%L155089%_))
                                               _%hd155054155084%_
                                               _%hd155051155076%_)
                                              (_%g155043155060%_
                                               _%g155044155063%_))))
                                      (_%g155043155060%_ _%g155044155063%_))))
                              (_%g155043155060%_ _%g155044155063%_))))
                      (_%g155043155060%_ _%g155044155063%_)))))
          (_%g155042155105%_ _%stx155041%_))))
    (define gxc#generate-runtime-lambda-form
      (lambda (_%self154999%_ _%hd155000%_ _%body155001%_)
        (let* ((_%hd155003%_ (gxc#generate-runtime-lambda-head _%hd155000%_))
               (_%body155005%_
                (let ()
                  (declare (not safe))
                  (gxc#compile-e__1 _%self154999%_ _%body155001%_)))
               (_%body155037%_
                (let* ((_%body155006155014%_ _%body155005%_)
                       (_%else155008155022%_
                        (lambda () (cons _%body155005%_ '())))
                       (_%K155010155027%_
                        (lambda (_%exprs155025%_) _%exprs155025%_)))
                  (if (pair? _%body155006155014%_)
                      (let ((_%hd155011155030%_
                             (let ()
                               (declare (not safe))
                               (##car _%body155006155014%_)))
                            (_%tl155012155032%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%body155006155014%_))))
                        (if (let ()
                              (declare (not safe))
                              (##eq? _%hd155011155030%_ 'begin))
                            (let ((_%exprs155035%_ _%tl155012155032%_))
                              (_%K155010155027%_ _%exprs155035%_))
                            (_%else155008155022%_)))
                      (_%else155008155022%_)))))
          (cons 'lambda (cons _%hd155003%_ _%body155037%_)))))
    (define gxc#generate-runtime-lambda-head
      (lambda (_%hd154997%_)
        (let ()
          (declare (not safe))
          (gx#stx-map1 gxc#generate-runtime-binding-id* _%hd154997%_))))
    (define gxc#generate-runtime-case-lambda%
      (lambda (_%self153536%_ _%stx153537%_)
        (letrec ((_%dispatch-case?153539%_
                  (lambda (_%hd154227%_ _%body154228%_)
                    (let* ((_%form154230%_
                            (cons _%hd154227%_ (cons _%body154228%_ '())))
                           (_%__stx156552156553%_ _%form154230%_)
                           (_%g154235154392%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx156552156553%_)))))
                      (let ((_%__kont156554156555%_
                             (lambda (_%L154917%_ _%L154918%_ _%L154919%_)
                               '#t))
                            (_%__kont156560156561%_
                             (lambda (_%L154705%_
                                      _%L154706%_
                                      _%L154707%_
                                      _%L154708%_
                                      _%L154709%_
                                      _%L154710%_)
                               '#t))
                            (_%__kont156566156567%_
                             (lambda (_%L154500%_
                                      _%L154501%_
                                      _%L154502%_
                                      _%L154503%_)
                               '#t))
                            (_%__kont156568156569%_ (lambda () '#f)))
                        (let* ((_%__match156693156694%_
                                (lambda (_%e154352154404%_
                                         _%hd154353154407%_
                                         _%tl154354154409%_
                                         _%e154355154412%_
                                         _%hd154356154415%_
                                         _%tl154357154417%_
                                         _%e154358154420%_
                                         _%hd154359154423%_
                                         _%tl154360154425%_
                                         _%e154361154428%_
                                         _%hd154362154431%_
                                         _%tl154363154433%_
                                         _%e154364154436%_
                                         _%hd154365154439%_
                                         _%tl154366154441%_
                                         _%e154367154444%_
                                         _%hd154368154447%_
                                         _%tl154369154449%_
                                         _%e154370154452%_
                                         _%hd154371154455%_
                                         _%tl154372154457%_
                                         _%e154373154460%_
                                         _%hd154374154463%_
                                         _%tl154375154465%_
                                         _%e154376154468%_
                                         _%hd154377154471%_
                                         _%tl154378154473%_
                                         _%e154379154476%_
                                         _%hd154380154479%_
                                         _%tl154381154481%_
                                         _%e154382154484%_
                                         _%hd154383154487%_
                                         _%tl154384154489%_
                                         _%e154385154492%_
                                         _%hd154386154495%_
                                         _%tl154387154497%_)
                                  (let ((_%L154500%_ _%hd154386154495%_)
                                        (_%L154501%_ _%hd154377154471%_)
                                        (_%L154502%_ _%hd154368154447%_)
                                        (_%L154503%_ _%hd154353154407%_))
                                    (if (and (let ()
                                               (declare (not safe))
                                               (gx#identifier? _%L154503%_))
                                             (let ()
                                               (declare (not safe))
                                               (gxc#runtime-identifier=?
                                                _%L154502%_
                                                'apply))
                                             (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L154503%_
                                                _%L154500%_))
                                             (not (let ()
                                                    (declare (not safe))
                                                    (gx#free-identifier=?
                                                     _%L154501%_
                                                     _%L154503%_))))
                                        (_%__kont156566156567%_
                                         _%L154500%_
                                         _%L154501%_
                                         _%L154502%_
                                         _%L154503%_)
                                        (_%__kont156568156569%_)))))
                               (_%__match156665156666%_
                                (lambda (_%e154352154404%_
                                         _%hd154353154407%_
                                         _%tl154354154409%_
                                         _%e154355154412%_
                                         _%hd154356154415%_
                                         _%tl154357154417%_
                                         _%e154358154420%_
                                         _%hd154359154423%_
                                         _%tl154360154425%_
                                         _%e154361154428%_
                                         _%hd154362154431%_
                                         _%tl154363154433%_
                                         _%e154364154436%_
                                         _%hd154365154439%_
                                         _%tl154366154441%_
                                         _%e154367154444%_
                                         _%hd154368154447%_
                                         _%tl154369154449%_
                                         _%e154370154452%_
                                         _%hd154371154455%_
                                         _%tl154372154457%_
                                         _%e154373154460%_
                                         _%hd154374154463%_
                                         _%tl154375154465%_
                                         _%e154376154468%_
                                         _%hd154377154471%_
                                         _%tl154378154473%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl154372154457%_))
                                      (let ((_%e154379154476%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl154372154457%_))))
                                        (let ((_%tl154381154481%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e154379154476%_)))
                                              (_%hd154380154479%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e154379154476%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%hd154380154479%_))
                                              (let ((_%e154382154484%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd154380154479%_))))
                                                (let ((_%tl154384154489%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e154382154484%_)))
                                                      (_%hd154383154487%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e154382154484%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#identifier?
                                                         _%hd154383154487%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-eq?
                                                             '%#ref
                                                             _%hd154383154487%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl154384154489%_))
                      (let ((_%e154385154492%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl154384154489%_))))
                        (let ((_%tl154387154497%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e154385154492%_)))
                              (_%hd154386154495%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e154385154492%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl154387154497%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl154381154481%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl154357154417%_))
                                      (_%__match156693156694%_
                                       _%e154352154404%_
                                       _%hd154353154407%_
                                       _%tl154354154409%_
                                       _%e154355154412%_
                                       _%hd154356154415%_
                                       _%tl154357154417%_
                                       _%e154358154420%_
                                       _%hd154359154423%_
                                       _%tl154360154425%_
                                       _%e154361154428%_
                                       _%hd154362154431%_
                                       _%tl154363154433%_
                                       _%e154364154436%_
                                       _%hd154365154439%_
                                       _%tl154366154441%_
                                       _%e154367154444%_
                                       _%hd154368154447%_
                                       _%tl154369154449%_
                                       _%e154370154452%_
                                       _%hd154371154455%_
                                       _%tl154372154457%_
                                       _%e154373154460%_
                                       _%hd154374154463%_
                                       _%tl154375154465%_
                                       _%e154376154468%_
                                       _%hd154377154471%_
                                       _%tl154378154473%_
                                       _%e154379154476%_
                                       _%hd154380154479%_
                                       _%tl154381154481%_
                                       _%e154382154484%_
                                       _%hd154383154487%_
                                       _%tl154384154489%_
                                       _%e154385154492%_
                                       _%hd154386154495%_
                                       _%tl154387154497%_)
                                      (_%__kont156568156569%_))
                                  (_%__kont156568156569%_))
                              (_%__kont156568156569%_))))
                      (_%__kont156568156569%_))
                  (_%__kont156568156569%_))
              (_%__kont156568156569%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont156568156569%_))))
                                      (_%__kont156568156569%_))))
                               (_%__match156595156596%_
                                (lambda (_%e154288154545%_
                                         _%hd154289154548%_
                                         _%tl154290154550%_
                                         _%__splice156562156563%_
                                         _%target154291154553%_
                                         _%tl154293154555%_)
                                  (letrec ((_%loop154294154558%_
                                            (lambda (_%hd154292154561%_
                                                     _%arg154298154563%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd154292154561%_))
                                                  (let ((_%e154295154566%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd154292154561%_))))
                                                    (let ((_%lp-tl154297154571%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e154295154566%_)))
                                                          (_%lp-hd154296154569%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e154295154566%_))))
                                                      (_%loop154294154558%_
                                                       _%lp-tl154297154571%_
                                                       (cons _%lp-hd154296154569%_
                                                             _%arg154298154563%_))))
                                                  (let ((_%arg154299154574%_
                                                         (reverse _%arg154298154563%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl154290154550%_))
                                                        (let ((_%e154300154577%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl154290154550%_))))
                  (let ((_%tl154302154582%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e154300154577%_)))
                        (_%hd154301154580%_
                         (let ()
                           (declare (not safe))
                           (##car _%e154300154577%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd154301154580%_))
                        (let ((_%e154303154585%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd154301154580%_))))
                          (let ((_%tl154305154590%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e154303154585%_)))
                                (_%hd154304154588%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e154303154585%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd154304154588%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd154304154588%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl154305154590%_))
                                        (let ((_%e154306154593%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl154305154590%_))))
                                          (let ((_%tl154308154598%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e154306154593%_)))
                                                (_%hd154307154596%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e154306154593%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd154307154596%_))
                                                (let ((_%e154309154601%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd154307154596%_))))
                                                  (let ((_%tl154311154606%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e154309154601%_)))
                                                        (_%hd154310154604%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e154309154601%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd154310154604%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd154310154604%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl154311154606%_))
                        (let ((_%e154312154609%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl154311154606%_))))
                          (let ((_%tl154314154614%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e154312154609%_)))
                                (_%hd154313154612%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e154312154609%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl154314154614%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl154308154598%_))
                                    (let ((_%e154315154617%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl154308154598%_))))
                                      (let ((_%tl154317154622%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e154315154617%_)))
                                            (_%hd154316154620%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e154315154617%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd154316154620%_))
                                            (let ((_%e154318154625%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd154316154620%_))))
                                              (let ((_%tl154320154630%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e154318154625%_)))
                                                    (_%hd154319154628%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e154318154625%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd154319154628%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd154319154628%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl154320154630%_))
                                                            (let ((_%e154321154633%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl154320154630%_))))
                      (let ((_%tl154323154638%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e154321154633%_)))
                            (_%hd154322154636%_
                             (let ()
                               (declare (not safe))
                               (##car _%e154321154633%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl154323154638%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl154317154622%_))
                                (if (let ((__tmp157834
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-length
                                              _%tl154317154622%_))))
                                      (declare (not safe))
                                      (##fx>= __tmp157834 '1))
                                    (let ((_%__splice156564156565%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl154317154622%_
                                              '1))))
                                      (let ((_%tl154326154643%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice156564156565%_
                                                '1)))
                                            (_%target154324154641%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice156564156565%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl154326154643%_))
                                            (let ((_%e154333154646%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl154326154643%_))))
                                              (let ((_%tl154335154651%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e154333154646%_)))
                                                    (_%hd154334154649%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e154333154646%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%hd154334154649%_))
                                                    (let ((_%e154336154654%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd154334154649%_))))
                                                      (let ((_%tl154338154659%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e154336154654%_)))
                    (_%hd154337154657%_
                     (let () (declare (not safe)) (##car _%e154336154654%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%hd154337154657%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#ref _%hd154337154657%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl154338154659%_))
                            (let ((_%e154339154662%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%tl154338154659%_))))
                              (let ((_%tl154341154667%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e154339154662%_)))
                                    (_%hd154340154665%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e154339154662%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl154341154667%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl154335154651%_))
                                        (letrec ((_%loop154327154670%_
                                                  (lambda (_%hd154325154673%_
                                                           _%xarg154331154675%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd154325154673%_))
                                                        (let ((_%e154328154678%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd154325154673%_))))
                  (let ((_%lp-tl154330154683%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e154328154678%_)))
                        (_%lp-hd154329154681%_
                         (let ()
                           (declare (not safe))
                           (##car _%e154328154678%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd154329154681%_))
                        (let ((_%e154342154686%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%lp-hd154329154681%_))))
                          (let ((_%tl154344154691%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e154342154686%_)))
                                (_%hd154343154689%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e154342154686%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd154343154689%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#ref _%hd154343154689%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl154344154691%_))
                                        (let ((_%e154345154694%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl154344154691%_))))
                                          (let ((_%tl154347154699%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e154345154694%_)))
                                                (_%hd154346154697%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e154345154694%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl154347154699%_))
                                                (_%loop154327154670%_
                                                 _%lp-tl154330154683%_
                                                 (cons _%hd154346154697%_
                                                       _%xarg154331154675%_))
                                                (_%__match156665156666%_
                                                 _%e154288154545%_
                                                 _%hd154289154548%_
                                                 _%tl154290154550%_
                                                 _%e154300154577%_
                                                 _%hd154301154580%_
                                                 _%tl154302154582%_
                                                 _%e154303154585%_
                                                 _%hd154304154588%_
                                                 _%tl154305154590%_
                                                 _%e154306154593%_
                                                 _%hd154307154596%_
                                                 _%tl154308154598%_
                                                 _%e154309154601%_
                                                 _%hd154310154604%_
                                                 _%tl154311154606%_
                                                 _%e154312154609%_
                                                 _%hd154313154612%_
                                                 _%tl154314154614%_
                                                 _%e154315154617%_
                                                 _%hd154316154620%_
                                                 _%tl154317154622%_
                                                 _%e154318154625%_
                                                 _%hd154319154628%_
                                                 _%tl154320154630%_
                                                 _%e154321154633%_
                                                 _%hd154322154636%_
                                                 _%tl154323154638%_))))
                                        (_%__match156665156666%_
                                         _%e154288154545%_
                                         _%hd154289154548%_
                                         _%tl154290154550%_
                                         _%e154300154577%_
                                         _%hd154301154580%_
                                         _%tl154302154582%_
                                         _%e154303154585%_
                                         _%hd154304154588%_
                                         _%tl154305154590%_
                                         _%e154306154593%_
                                         _%hd154307154596%_
                                         _%tl154308154598%_
                                         _%e154309154601%_
                                         _%hd154310154604%_
                                         _%tl154311154606%_
                                         _%e154312154609%_
                                         _%hd154313154612%_
                                         _%tl154314154614%_
                                         _%e154315154617%_
                                         _%hd154316154620%_
                                         _%tl154317154622%_
                                         _%e154318154625%_
                                         _%hd154319154628%_
                                         _%tl154320154630%_
                                         _%e154321154633%_
                                         _%hd154322154636%_
                                         _%tl154323154638%_))
                                    (_%__match156665156666%_
                                     _%e154288154545%_
                                     _%hd154289154548%_
                                     _%tl154290154550%_
                                     _%e154300154577%_
                                     _%hd154301154580%_
                                     _%tl154302154582%_
                                     _%e154303154585%_
                                     _%hd154304154588%_
                                     _%tl154305154590%_
                                     _%e154306154593%_
                                     _%hd154307154596%_
                                     _%tl154308154598%_
                                     _%e154309154601%_
                                     _%hd154310154604%_
                                     _%tl154311154606%_
                                     _%e154312154609%_
                                     _%hd154313154612%_
                                     _%tl154314154614%_
                                     _%e154315154617%_
                                     _%hd154316154620%_
                                     _%tl154317154622%_
                                     _%e154318154625%_
                                     _%hd154319154628%_
                                     _%tl154320154630%_
                                     _%e154321154633%_
                                     _%hd154322154636%_
                                     _%tl154323154638%_))
                                (_%__match156665156666%_
                                 _%e154288154545%_
                                 _%hd154289154548%_
                                 _%tl154290154550%_
                                 _%e154300154577%_
                                 _%hd154301154580%_
                                 _%tl154302154582%_
                                 _%e154303154585%_
                                 _%hd154304154588%_
                                 _%tl154305154590%_
                                 _%e154306154593%_
                                 _%hd154307154596%_
                                 _%tl154308154598%_
                                 _%e154309154601%_
                                 _%hd154310154604%_
                                 _%tl154311154606%_
                                 _%e154312154609%_
                                 _%hd154313154612%_
                                 _%tl154314154614%_
                                 _%e154315154617%_
                                 _%hd154316154620%_
                                 _%tl154317154622%_
                                 _%e154318154625%_
                                 _%hd154319154628%_
                                 _%tl154320154630%_
                                 _%e154321154633%_
                                 _%hd154322154636%_
                                 _%tl154323154638%_))))
                        (_%__match156665156666%_
                         _%e154288154545%_
                         _%hd154289154548%_
                         _%tl154290154550%_
                         _%e154300154577%_
                         _%hd154301154580%_
                         _%tl154302154582%_
                         _%e154303154585%_
                         _%hd154304154588%_
                         _%tl154305154590%_
                         _%e154306154593%_
                         _%hd154307154596%_
                         _%tl154308154598%_
                         _%e154309154601%_
                         _%hd154310154604%_
                         _%tl154311154606%_
                         _%e154312154609%_
                         _%hd154313154612%_
                         _%tl154314154614%_
                         _%e154315154617%_
                         _%hd154316154620%_
                         _%tl154317154622%_
                         _%e154318154625%_
                         _%hd154319154628%_
                         _%tl154320154630%_
                         _%e154321154633%_
                         _%hd154322154636%_
                         _%tl154323154638%_))))
                (let ((_%xarg154332154702%_ (reverse _%xarg154331154675%_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl154302154582%_))
                      (let ((_%L154705%_ _%hd154340154665%_)
                            (_%L154706%_ _%xarg154332154702%_)
                            (_%L154707%_ _%hd154322154636%_)
                            (_%L154708%_ _%hd154313154612%_)
                            (_%L154709%_ _%tl154293154555%_)
                            (_%L154710%_ _%arg154299154574%_))
                        (if (and (let ((__tmp157835
                                        (let ((__tmp157836
                                               (lambda (_%g154753154756%_
                                                        _%g154754154758%_)
                                                 (cons _%g154753154756%_
                                                       _%g154754154758%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp157836
                                           '()
                                           _%L154710%_))))
                                   (declare (not safe))
                                   (gx#identifier-list? __tmp157835))
                                 (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L154709%_))
                                 (let ()
                                   (declare (not safe))
                                   (gxc#runtime-identifier=?
                                    _%L154708%_
                                    'apply))
                                 (let ((__tmp157839
                                        (length (let ((__tmp157840
                                                       (lambda (_%g154760154763%_
                                                                _%g154761154765%_)
                                                         (cons _%g154760154763%_
                                                               _%g154761154765%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp157840
                                                   '()
                                                   _%L154710%_))))
                                       (__tmp157837
                                        (length (let ((__tmp157838
                                                       (lambda (_%g154767154770%_
                                                                _%g154768154772%_)
                                                         (cons _%g154767154770%_
                                                               _%g154768154772%_))))
                                                  (declare (not safe))
                                                  (__foldr1
                                                   __tmp157838
                                                   '()
                                                   _%L154706%_)))))
                                   (declare (not safe))
                                   (##fx= __tmp157839 __tmp157837))
                                 (let ((__tmp157843
                                        (let ((__tmp157844
                                               (lambda (_%g154774154777%_
                                                        _%g154775154779%_)
                                                 (cons _%g154774154777%_
                                                       _%g154775154779%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp157844
                                           '()
                                           _%L154710%_)))
                                       (__tmp157841
                                        (let ((__tmp157842
                                               (lambda (_%g154781154784%_
                                                        _%g154782154786%_)
                                                 (cons _%g154781154784%_
                                                       _%g154782154786%_))))
                                          (declare (not safe))
                                          (__foldr1
                                           __tmp157842
                                           '()
                                           _%L154706%_))))
                                   (declare (not safe))
                                   (__andmap2
                                    gx#free-identifier=?
                                    __tmp157843
                                    __tmp157841))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%L154709%_
                                    _%L154705%_))
                                 (not (let ((__tmp157848
                                             (lambda (_%g154788154790%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#free-identifier=?
                                                  _%g154788154790%_
                                                  _%L154707%_))))
                                            (__tmp157845
                                             (let ((__tmp157847
                                                    (lambda (_%g154792154795%_
                                                             _%g154793154797%_)
                                                      (cons _%g154792154795%_
                                                            _%g154793154797%_)))
                                                   (__tmp157846
                                                    (cons _%L154709%_ '())))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp157847
                                                __tmp157846
                                                _%L154710%_))))
                                        (declare (not safe))
                                        (__find __tmp157848 __tmp157845))))
                            (_%__kont156560156561%_
                             _%L154705%_
                             _%L154706%_
                             _%L154707%_
                             _%L154708%_
                             _%L154709%_
                             _%L154710%_)
                            (_%__match156665156666%_
                             _%e154288154545%_
                             _%hd154289154548%_
                             _%tl154290154550%_
                             _%e154300154577%_
                             _%hd154301154580%_
                             _%tl154302154582%_
                             _%e154303154585%_
                             _%hd154304154588%_
                             _%tl154305154590%_
                             _%e154306154593%_
                             _%hd154307154596%_
                             _%tl154308154598%_
                             _%e154309154601%_
                             _%hd154310154604%_
                             _%tl154311154606%_
                             _%e154312154609%_
                             _%hd154313154612%_
                             _%tl154314154614%_
                             _%e154315154617%_
                             _%hd154316154620%_
                             _%tl154317154622%_
                             _%e154318154625%_
                             _%hd154319154628%_
                             _%tl154320154630%_
                             _%e154321154633%_
                             _%hd154322154636%_
                             _%tl154323154638%_)))
                      (_%__match156665156666%_
                       _%e154288154545%_
                       _%hd154289154548%_
                       _%tl154290154550%_
                       _%e154300154577%_
                       _%hd154301154580%_
                       _%tl154302154582%_
                       _%e154303154585%_
                       _%hd154304154588%_
                       _%tl154305154590%_
                       _%e154306154593%_
                       _%hd154307154596%_
                       _%tl154308154598%_
                       _%e154309154601%_
                       _%hd154310154604%_
                       _%tl154311154606%_
                       _%e154312154609%_
                       _%hd154313154612%_
                       _%tl154314154614%_
                       _%e154315154617%_
                       _%hd154316154620%_
                       _%tl154317154622%_
                       _%e154318154625%_
                       _%hd154319154628%_
                       _%tl154320154630%_
                       _%e154321154633%_
                       _%hd154322154636%_
                       _%tl154323154638%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop154327154670%_
                                           _%target154324154641%_
                                           '()))
                                        (_%__match156665156666%_
                                         _%e154288154545%_
                                         _%hd154289154548%_
                                         _%tl154290154550%_
                                         _%e154300154577%_
                                         _%hd154301154580%_
                                         _%tl154302154582%_
                                         _%e154303154585%_
                                         _%hd154304154588%_
                                         _%tl154305154590%_
                                         _%e154306154593%_
                                         _%hd154307154596%_
                                         _%tl154308154598%_
                                         _%e154309154601%_
                                         _%hd154310154604%_
                                         _%tl154311154606%_
                                         _%e154312154609%_
                                         _%hd154313154612%_
                                         _%tl154314154614%_
                                         _%e154315154617%_
                                         _%hd154316154620%_
                                         _%tl154317154622%_
                                         _%e154318154625%_
                                         _%hd154319154628%_
                                         _%tl154320154630%_
                                         _%e154321154633%_
                                         _%hd154322154636%_
                                         _%tl154323154638%_))
                                    (_%__match156665156666%_
                                     _%e154288154545%_
                                     _%hd154289154548%_
                                     _%tl154290154550%_
                                     _%e154300154577%_
                                     _%hd154301154580%_
                                     _%tl154302154582%_
                                     _%e154303154585%_
                                     _%hd154304154588%_
                                     _%tl154305154590%_
                                     _%e154306154593%_
                                     _%hd154307154596%_
                                     _%tl154308154598%_
                                     _%e154309154601%_
                                     _%hd154310154604%_
                                     _%tl154311154606%_
                                     _%e154312154609%_
                                     _%hd154313154612%_
                                     _%tl154314154614%_
                                     _%e154315154617%_
                                     _%hd154316154620%_
                                     _%tl154317154622%_
                                     _%e154318154625%_
                                     _%hd154319154628%_
                                     _%tl154320154630%_
                                     _%e154321154633%_
                                     _%hd154322154636%_
                                     _%tl154323154638%_))))
                            (_%__match156665156666%_
                             _%e154288154545%_
                             _%hd154289154548%_
                             _%tl154290154550%_
                             _%e154300154577%_
                             _%hd154301154580%_
                             _%tl154302154582%_
                             _%e154303154585%_
                             _%hd154304154588%_
                             _%tl154305154590%_
                             _%e154306154593%_
                             _%hd154307154596%_
                             _%tl154308154598%_
                             _%e154309154601%_
                             _%hd154310154604%_
                             _%tl154311154606%_
                             _%e154312154609%_
                             _%hd154313154612%_
                             _%tl154314154614%_
                             _%e154315154617%_
                             _%hd154316154620%_
                             _%tl154317154622%_
                             _%e154318154625%_
                             _%hd154319154628%_
                             _%tl154320154630%_
                             _%e154321154633%_
                             _%hd154322154636%_
                             _%tl154323154638%_))
                        (_%__match156665156666%_
                         _%e154288154545%_
                         _%hd154289154548%_
                         _%tl154290154550%_
                         _%e154300154577%_
                         _%hd154301154580%_
                         _%tl154302154582%_
                         _%e154303154585%_
                         _%hd154304154588%_
                         _%tl154305154590%_
                         _%e154306154593%_
                         _%hd154307154596%_
                         _%tl154308154598%_
                         _%e154309154601%_
                         _%hd154310154604%_
                         _%tl154311154606%_
                         _%e154312154609%_
                         _%hd154313154612%_
                         _%tl154314154614%_
                         _%e154315154617%_
                         _%hd154316154620%_
                         _%tl154317154622%_
                         _%e154318154625%_
                         _%hd154319154628%_
                         _%tl154320154630%_
                         _%e154321154633%_
                         _%hd154322154636%_
                         _%tl154323154638%_))
                    (_%__match156665156666%_
                     _%e154288154545%_
                     _%hd154289154548%_
                     _%tl154290154550%_
                     _%e154300154577%_
                     _%hd154301154580%_
                     _%tl154302154582%_
                     _%e154303154585%_
                     _%hd154304154588%_
                     _%tl154305154590%_
                     _%e154306154593%_
                     _%hd154307154596%_
                     _%tl154308154598%_
                     _%e154309154601%_
                     _%hd154310154604%_
                     _%tl154311154606%_
                     _%e154312154609%_
                     _%hd154313154612%_
                     _%tl154314154614%_
                     _%e154315154617%_
                     _%hd154316154620%_
                     _%tl154317154622%_
                     _%e154318154625%_
                     _%hd154319154628%_
                     _%tl154320154630%_
                     _%e154321154633%_
                     _%hd154322154636%_
                     _%tl154323154638%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match156665156666%_
                                                     _%e154288154545%_
                                                     _%hd154289154548%_
                                                     _%tl154290154550%_
                                                     _%e154300154577%_
                                                     _%hd154301154580%_
                                                     _%tl154302154582%_
                                                     _%e154303154585%_
                                                     _%hd154304154588%_
                                                     _%tl154305154590%_
                                                     _%e154306154593%_
                                                     _%hd154307154596%_
                                                     _%tl154308154598%_
                                                     _%e154309154601%_
                                                     _%hd154310154604%_
                                                     _%tl154311154606%_
                                                     _%e154312154609%_
                                                     _%hd154313154612%_
                                                     _%tl154314154614%_
                                                     _%e154315154617%_
                                                     _%hd154316154620%_
                                                     _%tl154317154622%_
                                                     _%e154318154625%_
                                                     _%hd154319154628%_
                                                     _%tl154320154630%_
                                                     _%e154321154633%_
                                                     _%hd154322154636%_
                                                     _%tl154323154638%_))))
                                            (_%__match156665156666%_
                                             _%e154288154545%_
                                             _%hd154289154548%_
                                             _%tl154290154550%_
                                             _%e154300154577%_
                                             _%hd154301154580%_
                                             _%tl154302154582%_
                                             _%e154303154585%_
                                             _%hd154304154588%_
                                             _%tl154305154590%_
                                             _%e154306154593%_
                                             _%hd154307154596%_
                                             _%tl154308154598%_
                                             _%e154309154601%_
                                             _%hd154310154604%_
                                             _%tl154311154606%_
                                             _%e154312154609%_
                                             _%hd154313154612%_
                                             _%tl154314154614%_
                                             _%e154315154617%_
                                             _%hd154316154620%_
                                             _%tl154317154622%_
                                             _%e154318154625%_
                                             _%hd154319154628%_
                                             _%tl154320154630%_
                                             _%e154321154633%_
                                             _%hd154322154636%_
                                             _%tl154323154638%_))))
                                    (_%__match156665156666%_
                                     _%e154288154545%_
                                     _%hd154289154548%_
                                     _%tl154290154550%_
                                     _%e154300154577%_
                                     _%hd154301154580%_
                                     _%tl154302154582%_
                                     _%e154303154585%_
                                     _%hd154304154588%_
                                     _%tl154305154590%_
                                     _%e154306154593%_
                                     _%hd154307154596%_
                                     _%tl154308154598%_
                                     _%e154309154601%_
                                     _%hd154310154604%_
                                     _%tl154311154606%_
                                     _%e154312154609%_
                                     _%hd154313154612%_
                                     _%tl154314154614%_
                                     _%e154315154617%_
                                     _%hd154316154620%_
                                     _%tl154317154622%_
                                     _%e154318154625%_
                                     _%hd154319154628%_
                                     _%tl154320154630%_
                                     _%e154321154633%_
                                     _%hd154322154636%_
                                     _%tl154323154638%_))
                                (_%__match156665156666%_
                                 _%e154288154545%_
                                 _%hd154289154548%_
                                 _%tl154290154550%_
                                 _%e154300154577%_
                                 _%hd154301154580%_
                                 _%tl154302154582%_
                                 _%e154303154585%_
                                 _%hd154304154588%_
                                 _%tl154305154590%_
                                 _%e154306154593%_
                                 _%hd154307154596%_
                                 _%tl154308154598%_
                                 _%e154309154601%_
                                 _%hd154310154604%_
                                 _%tl154311154606%_
                                 _%e154312154609%_
                                 _%hd154313154612%_
                                 _%tl154314154614%_
                                 _%e154315154617%_
                                 _%hd154316154620%_
                                 _%tl154317154622%_
                                 _%e154318154625%_
                                 _%hd154319154628%_
                                 _%tl154320154630%_
                                 _%e154321154633%_
                                 _%hd154322154636%_
                                 _%tl154323154638%_))
                            (_%__kont156568156569%_))))
                    (_%__kont156568156569%_))
                (_%__kont156568156569%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont156568156569%_))))
                                            (_%__kont156568156569%_))))
                                    (_%__kont156568156569%_))
                                (_%__kont156568156569%_))))
                        (_%__kont156568156569%_))
                    (_%__kont156568156569%_))
                (_%__kont156568156569%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont156568156569%_))))
                                        (_%__kont156568156569%_))
                                    (_%__kont156568156569%_))
                                (_%__kont156568156569%_))))
                        (_%__kont156568156569%_))))
                (_%__kont156568156569%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop154294154558%_
                                     _%target154291154553%_
                                     '()))))
                               (_%__match156583156584%_
                                (lambda (_%e154240154805%_
                                         _%hd154241154808%_
                                         _%tl154242154810%_
                                         _%__splice156556156557%_
                                         _%target154243154813%_
                                         _%tl154245154815%_)
                                  (letrec ((_%loop154246154818%_
                                            (lambda (_%hd154244154821%_
                                                     _%arg154250154823%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd154244154821%_))
                                                  (let ((_%e154247154826%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd154244154821%_))))
                                                    (let ((_%lp-tl154249154831%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e154247154826%_)))
                                                          (_%lp-hd154248154829%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e154247154826%_))))
                                                      (_%loop154246154818%_
                                                       _%lp-tl154249154831%_
                                                       (cons _%lp-hd154248154829%_
                                                             _%arg154250154823%_))))
                                                  (let ((_%arg154251154834%_
                                                         (reverse _%arg154250154823%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl154242154810%_))
                                                        (let ((_%e154252154837%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl154242154810%_))))
                  (let ((_%tl154254154842%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e154252154837%_)))
                        (_%hd154253154840%_
                         (let ()
                           (declare (not safe))
                           (##car _%e154252154837%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd154253154840%_))
                        (let ((_%e154255154845%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd154253154840%_))))
                          (let ((_%tl154257154850%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e154255154845%_)))
                                (_%hd154256154848%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e154255154845%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd154256154848%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd154256154848%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl154257154850%_))
                                        (let ((_%e154258154853%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl154257154850%_))))
                                          (let ((_%tl154260154858%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e154258154853%_)))
                                                (_%hd154259154856%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e154258154853%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd154259154856%_))
                                                (let ((_%e154261154861%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd154259154856%_))))
                                                  (let ((_%tl154263154866%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e154261154861%_)))
                                                        (_%hd154262154864%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e154261154861%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd154262154864%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd154262154864%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl154263154866%_))
                        (let ((_%e154264154869%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl154263154866%_))))
                          (let ((_%tl154266154874%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e154264154869%_)))
                                (_%hd154265154872%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e154264154869%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl154266154874%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl154260154858%_))
                                    (let ((_%__splice156558156559%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl154260154858%_
                                              '0))))
                                      (let ((_%tl154269154879%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice156558156559%_
                                                '1)))
                                            (_%target154267154877%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice156558156559%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl154269154879%_))
                                            (letrec ((_%loop154270154882%_
                                                      (lambda (_%hd154268154885%_
                                                               _%xarg154274154887%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd154268154885%_))
                                                            (let ((_%e154271154890%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd154268154885%_))))
                      (let ((_%lp-tl154273154895%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e154271154890%_)))
                            (_%lp-hd154272154893%_
                             (let ()
                               (declare (not safe))
                               (##car _%e154271154890%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd154272154893%_))
                            (let ((_%e154276154898%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd154272154893%_))))
                              (let ((_%tl154278154903%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e154276154898%_)))
                                    (_%hd154277154901%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e154276154898%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd154277154901%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd154277154901%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl154278154903%_))
                                            (let ((_%e154279154906%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl154278154903%_))))
                                              (let ((_%tl154281154911%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e154279154906%_)))
                                                    (_%hd154280154909%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e154279154906%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl154281154911%_))
                                                    (_%loop154270154882%_
                                                     _%lp-tl154273154895%_
                                                     (cons _%hd154280154909%_
                                                           _%xarg154274154887%_))
                                                    (_%__match156595156596%_
                                                     _%e154240154805%_
                                                     _%hd154241154808%_
                                                     _%tl154242154810%_
                                                     _%__splice156556156557%_
                                                     _%target154243154813%_
                                                     _%tl154245154815%_))))
                                            (_%__match156595156596%_
                                             _%e154240154805%_
                                             _%hd154241154808%_
                                             _%tl154242154810%_
                                             _%__splice156556156557%_
                                             _%target154243154813%_
                                             _%tl154245154815%_))
                                        (_%__match156595156596%_
                                         _%e154240154805%_
                                         _%hd154241154808%_
                                         _%tl154242154810%_
                                         _%__splice156556156557%_
                                         _%target154243154813%_
                                         _%tl154245154815%_))
                                    (_%__match156595156596%_
                                     _%e154240154805%_
                                     _%hd154241154808%_
                                     _%tl154242154810%_
                                     _%__splice156556156557%_
                                     _%target154243154813%_
                                     _%tl154245154815%_))))
                            (_%__match156595156596%_
                             _%e154240154805%_
                             _%hd154241154808%_
                             _%tl154242154810%_
                             _%__splice156556156557%_
                             _%target154243154813%_
                             _%tl154245154815%_))))
                    (let ((_%xarg154275154914%_
                           (reverse _%xarg154274154887%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl154254154842%_))
                          (let ((_%L154917%_ _%xarg154275154914%_)
                                (_%L154918%_ _%hd154265154872%_)
                                (_%L154919%_ _%arg154251154834%_))
                            (if (and (let ((__tmp157849
                                            (let ((__tmp157850
                                                   (lambda (_%g154947154950%_
                                                            _%g154948154952%_)
                                                     (cons _%g154947154950%_
                                                           _%g154948154952%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp157850
                                               '()
                                               _%L154919%_))))
                                       (declare (not safe))
                                       (gx#identifier-list? __tmp157849))
                                     (let ((__tmp157853
                                            (length (let ((__tmp157854
                                                           (lambda (_%g154954154957%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g154955154959%_)
                     (cons _%g154954154957%_ _%g154955154959%_))))
              (declare (not safe))
              (__foldr1 __tmp157854 '() _%L154919%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (__tmp157851
                                            (length (let ((__tmp157852
                                                           (lambda (_%g154961154964%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g154962154966%_)
                     (cons _%g154961154964%_ _%g154962154966%_))))
              (declare (not safe))
              (__foldr1 __tmp157852 '() _%L154917%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp157853 __tmp157851))
                                     (let ((__tmp157857
                                            (let ((__tmp157858
                                                   (lambda (_%g154968154971%_
                                                            _%g154969154973%_)
                                                     (cons _%g154968154971%_
                                                           _%g154969154973%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp157858
                                               '()
                                               _%L154919%_)))
                                           (__tmp157855
                                            (let ((__tmp157856
                                                   (lambda (_%g154975154978%_
                                                            _%g154976154980%_)
                                                     (cons _%g154975154978%_
                                                           _%g154976154980%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp157856
                                               '()
                                               _%L154917%_))))
                                       (declare (not safe))
                                       (__andmap2
                                        gx#free-identifier=?
                                        __tmp157857
                                        __tmp157855))
                                     (not (let ((__tmp157861
                                                 (lambda (_%g154982154984%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%g154982154984%_
                                                      _%L154918%_))))
                                                (__tmp157859
                                                 (let ((__tmp157860
                                                        (lambda (_%g154986154989%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g154987154991%_)
                  (cons _%g154986154989%_ _%g154987154991%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (__foldr1
                                                    __tmp157860
                                                    '()
                                                    _%L154919%_))))
                                            (declare (not safe))
                                            (__find __tmp157861 __tmp157859))))
                                (_%__kont156554156555%_
                                 _%L154917%_
                                 _%L154918%_
                                 _%L154919%_)
                                (_%__match156595156596%_
                                 _%e154240154805%_
                                 _%hd154241154808%_
                                 _%tl154242154810%_
                                 _%__splice156556156557%_
                                 _%target154243154813%_
                                 _%tl154245154815%_)))
                          (_%__match156595156596%_
                           _%e154240154805%_
                           _%hd154241154808%_
                           _%tl154242154810%_
                           _%__splice156556156557%_
                           _%target154243154813%_
                           _%tl154245154815%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop154270154882%_
                                               _%target154267154877%_
                                               '()))
                                            (_%__match156595156596%_
                                             _%e154240154805%_
                                             _%hd154241154808%_
                                             _%tl154242154810%_
                                             _%__splice156556156557%_
                                             _%target154243154813%_
                                             _%tl154245154815%_))))
                                    (_%__match156595156596%_
                                     _%e154240154805%_
                                     _%hd154241154808%_
                                     _%tl154242154810%_
                                     _%__splice156556156557%_
                                     _%target154243154813%_
                                     _%tl154245154815%_))
                                (_%__match156595156596%_
                                 _%e154240154805%_
                                 _%hd154241154808%_
                                 _%tl154242154810%_
                                 _%__splice156556156557%_
                                 _%target154243154813%_
                                 _%tl154245154815%_))))
                        (_%__match156595156596%_
                         _%e154240154805%_
                         _%hd154241154808%_
                         _%tl154242154810%_
                         _%__splice156556156557%_
                         _%target154243154813%_
                         _%tl154245154815%_))
                    (_%__match156595156596%_
                     _%e154240154805%_
                     _%hd154241154808%_
                     _%tl154242154810%_
                     _%__splice156556156557%_
                     _%target154243154813%_
                     _%tl154245154815%_))
                (_%__match156595156596%_
                 _%e154240154805%_
                 _%hd154241154808%_
                 _%tl154242154810%_
                 _%__splice156556156557%_
                 _%target154243154813%_
                 _%tl154245154815%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match156595156596%_
                                                 _%e154240154805%_
                                                 _%hd154241154808%_
                                                 _%tl154242154810%_
                                                 _%__splice156556156557%_
                                                 _%target154243154813%_
                                                 _%tl154245154815%_))))
                                        (_%__match156595156596%_
                                         _%e154240154805%_
                                         _%hd154241154808%_
                                         _%tl154242154810%_
                                         _%__splice156556156557%_
                                         _%target154243154813%_
                                         _%tl154245154815%_))
                                    (_%__match156595156596%_
                                     _%e154240154805%_
                                     _%hd154241154808%_
                                     _%tl154242154810%_
                                     _%__splice156556156557%_
                                     _%target154243154813%_
                                     _%tl154245154815%_))
                                (_%__match156595156596%_
                                 _%e154240154805%_
                                 _%hd154241154808%_
                                 _%tl154242154810%_
                                 _%__splice156556156557%_
                                 _%target154243154813%_
                                 _%tl154245154815%_))))
                        (_%__match156595156596%_
                         _%e154240154805%_
                         _%hd154241154808%_
                         _%tl154242154810%_
                         _%__splice156556156557%_
                         _%target154243154813%_
                         _%tl154245154815%_))))
                (_%__match156595156596%_
                 _%e154240154805%_
                 _%hd154241154808%_
                 _%tl154242154810%_
                 _%__splice156556156557%_
                 _%target154243154813%_
                 _%tl154245154815%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop154246154818%_
                                     _%target154243154813%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx156552156553%_))
                              (let ((_%e154240154805%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx156552156553%_))))
                                (let ((_%tl154242154810%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e154240154805%_)))
                                      (_%hd154241154808%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e154240154805%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd154241154808%_))
                                      (let ((_%__splice156556156557%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%hd154241154808%_
                                                '0))))
                                        (let ((_%tl154245154815%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice156556156557%_
                                                  '1)))
                                              (_%target154243154813%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice156556156557%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl154245154815%_))
                                              (_%__match156583156584%_
                                               _%e154240154805%_
                                               _%hd154241154808%_
                                               _%tl154242154810%_
                                               _%__splice156556156557%_
                                               _%target154243154813%_
                                               _%tl154245154815%_)
                                              (_%__match156595156596%_
                                               _%e154240154805%_
                                               _%hd154241154808%_
                                               _%tl154242154810%_
                                               _%__splice156556156557%_
                                               _%target154243154813%_
                                               _%tl154245154815%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl154242154810%_))
                                          (let ((_%e154355154412%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl154242154810%_))))
                                            (let ((_%tl154357154417%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e154355154412%_)))
                                                  (_%hd154356154415%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e154355154412%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd154356154415%_))
                                                  (let ((_%e154358154420%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd154356154415%_))))
                                                    (let ((_%tl154360154425%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e154358154420%_)))
                                                          (_%hd154359154423%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e154358154420%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd154359154423%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd154359154423%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl154360154425%_))
                          (let ((_%e154361154428%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl154360154425%_))))
                            (let ((_%tl154363154433%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e154361154428%_)))
                                  (_%hd154362154431%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e154361154428%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd154362154431%_))
                                  (let ((_%e154364154436%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd154362154431%_))))
                                    (let ((_%tl154366154441%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e154364154436%_)))
                                          (_%hd154365154439%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e154364154436%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd154365154439%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd154365154439%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl154366154441%_))
                                                  (let ((_%e154367154444%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl154366154441%_))))
                                                    (let ((_%tl154369154449%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e154367154444%_)))
                                                          (_%hd154368154447%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e154367154444%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl154369154449%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl154363154433%_))
                      (let ((_%e154370154452%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl154363154433%_))))
                        (let ((_%tl154372154457%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e154370154452%_)))
                              (_%hd154371154455%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e154370154452%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd154371154455%_))
                              (let ((_%e154373154460%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd154371154455%_))))
                                (let ((_%tl154375154465%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e154373154460%_)))
                                      (_%hd154374154463%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e154373154460%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd154374154463%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd154374154463%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl154375154465%_))
                                              (let ((_%e154376154468%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl154375154465%_))))
                                                (let ((_%tl154378154473%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e154376154468%_)))
                                                      (_%hd154377154471%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e154376154468%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl154378154473%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl154372154457%_))
                                                          (let ((_%e154379154476%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl154372154457%_))))
                    (let ((_%tl154381154481%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e154379154476%_)))
                          (_%hd154380154479%_
                           (let ()
                             (declare (not safe))
                             (##car _%e154379154476%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd154380154479%_))
                          (let ((_%e154382154484%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd154380154479%_))))
                            (let ((_%tl154384154489%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e154382154484%_)))
                                  (_%hd154383154487%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e154382154484%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%hd154383154487%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#ref _%hd154383154487%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl154384154489%_))
                                          (let ((_%e154385154492%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl154384154489%_))))
                                            (let ((_%tl154387154497%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e154385154492%_)))
                                                  (_%hd154386154495%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e154385154492%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl154387154497%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl154381154481%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl154357154417%_))
                                                          (_%__match156693156694%_
                                                           _%e154240154805%_
                                                           _%hd154241154808%_
                                                           _%tl154242154810%_
                                                           _%e154355154412%_
                                                           _%hd154356154415%_
                                                           _%tl154357154417%_
                                                           _%e154358154420%_
                                                           _%hd154359154423%_
                                                           _%tl154360154425%_
                                                           _%e154361154428%_
                                                           _%hd154362154431%_
                                                           _%tl154363154433%_
                                                           _%e154364154436%_
                                                           _%hd154365154439%_
                                                           _%tl154366154441%_
                                                           _%e154367154444%_
                                                           _%hd154368154447%_
                                                           _%tl154369154449%_
                                                           _%e154370154452%_
                                                           _%hd154371154455%_
                                                           _%tl154372154457%_
                                                           _%e154373154460%_
                                                           _%hd154374154463%_
                                                           _%tl154375154465%_
                                                           _%e154376154468%_
                                                           _%hd154377154471%_
                                                           _%tl154378154473%_
                                                           _%e154379154476%_
                                                           _%hd154380154479%_
                                                           _%tl154381154481%_
                                                           _%e154382154484%_
                                                           _%hd154383154487%_
                                                           _%tl154384154489%_
                                                           _%e154385154492%_
                                                           _%hd154386154495%_
                                                           _%tl154387154497%_)
                                                          (_%__kont156568156569%_))
                                                      (_%__kont156568156569%_))
                                                  (_%__kont156568156569%_))))
                                          (_%__kont156568156569%_))
                                      (_%__kont156568156569%_))
                                  (_%__kont156568156569%_))))
                          (_%__kont156568156569%_))))
                  (_%__kont156568156569%_))
              (_%__kont156568156569%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont156568156569%_))
                                          (_%__kont156568156569%_))
                                      (_%__kont156568156569%_))))
                              (_%__kont156568156569%_))))
                      (_%__kont156568156569%_))
                  (_%__kont156568156569%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont156568156569%_))
                                              (_%__kont156568156569%_))
                                          (_%__kont156568156569%_))))
                                  (_%__kont156568156569%_))))
                          (_%__kont156568156569%_))
                      (_%__kont156568156569%_))
                  (_%__kont156568156569%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont156568156569%_))))
                                          (_%__kont156568156569%_)))))
                              (_%__kont156568156569%_)))))))
                 (_%dispatch-case-e153540%_
                  (lambda (_%hd153691%_ _%body153692%_)
                    (let* ((_%form153694%_
                            (cons _%hd153691%_ (cons _%body153692%_ '())))
                           (_%__stx156696156697%_ _%form153694%_)
                           (_%g153698153822%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx156696156697%_)))))
                      (let ((_%__kont156698156699%_
                             (lambda (_%L154193%_ _%L154194%_ _%L154195%_)
                               (let ((__tmp157862
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L154194%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self153536%_
                                  __tmp157862))))
                            (_%__kont156704156705%_
                             (lambda (_%L154041%_
                                      _%L154042%_
                                      _%L154043%_
                                      _%L154044%_)
                               (let ((__tmp157863
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L154041%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self153536%_
                                  __tmp157863))))
                            (_%__kont156708156709%_
                             (lambda (_%L153907%_ _%L153908%_ _%L153909%_)
                               (let ((__tmp157864
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f '%#ref))
                                            (cons _%L153907%_ '()))))
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self153536%_
                                  __tmp157864)))))
                        (let* ((_%__match156805156806%_
                                (lambda (_%e153788153827%_
                                         _%hd153789153830%_
                                         _%tl153790153832%_
                                         _%e153791153835%_
                                         _%hd153792153838%_
                                         _%tl153793153840%_
                                         _%e153794153843%_
                                         _%hd153795153846%_
                                         _%tl153796153848%_
                                         _%e153797153851%_
                                         _%hd153798153854%_
                                         _%tl153799153856%_
                                         _%e153800153859%_
                                         _%hd153801153862%_
                                         _%tl153802153864%_
                                         _%e153803153867%_
                                         _%hd153804153870%_
                                         _%tl153805153872%_
                                         _%e153806153875%_
                                         _%hd153807153878%_
                                         _%tl153808153880%_
                                         _%e153809153883%_
                                         _%hd153810153886%_
                                         _%tl153811153888%_
                                         _%e153812153891%_
                                         _%hd153813153894%_
                                         _%tl153814153896%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl153808153880%_))
                                      (let ((_%e153815153899%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl153808153880%_))))
                                        (let ((_%tl153817153904%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e153815153899%_)))
                                              (_%hd153816153902%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e153815153899%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl153817153904%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl153793153840%_))
                                                  (_%__kont156708156709%_
                                                   _%hd153813153894%_
                                                   _%hd153804153870%_
                                                   _%hd153789153830%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g153698153822%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g153698153822%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g153698153822%_)))))
                               (_%__match156735156736%_
                                (lambda (_%e153749153945%_
                                         _%hd153750153948%_
                                         _%tl153751153950%_
                                         _%__splice156706156707%_
                                         _%target153752153953%_
                                         _%tl153754153955%_)
                                  (letrec ((_%loop153755153958%_
                                            (lambda (_%hd153753153961%_
                                                     _%arg153759153963%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd153753153961%_))
                                                  (let ((_%e153756153966%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd153753153961%_))))
                                                    (let ((_%lp-tl153758153971%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e153756153966%_)))
                                                          (_%lp-hd153757153969%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e153756153966%_))))
                                                      (_%loop153755153958%_
                                                       _%lp-tl153758153971%_
                                                       (cons _%lp-hd153757153969%_
                                                             _%arg153759153963%_))))
                                                  (let ((_%arg153760153974%_
                                                         (reverse _%arg153759153963%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl153751153950%_))
                                                        (let ((_%e153761153977%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl153751153950%_))))
                  (let ((_%tl153763153982%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e153761153977%_)))
                        (_%hd153762153980%_
                         (let ()
                           (declare (not safe))
                           (##car _%e153761153977%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd153762153980%_))
                        (let ((_%e153764153985%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd153762153980%_))))
                          (let ((_%tl153766153990%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e153764153985%_)))
                                (_%hd153765153988%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e153764153985%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd153765153988%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd153765153988%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl153766153990%_))
                                        (let ((_%e153767153993%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl153766153990%_))))
                                          (let ((_%tl153769153998%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e153767153993%_)))
                                                (_%hd153768153996%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e153767153993%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd153768153996%_))
                                                (let ((_%e153770154001%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd153768153996%_))))
                                                  (let ((_%tl153772154006%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e153770154001%_)))
                                                        (_%hd153771154004%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e153770154001%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd153771154004%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd153771154004%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl153772154006%_))
                        (let ((_%e153773154009%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl153772154006%_))))
                          (let ((_%tl153775154014%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e153773154009%_)))
                                (_%hd153774154012%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e153773154009%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl153775154014%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl153769153998%_))
                                    (let ((_%e153776154017%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%tl153769153998%_))))
                                      (let ((_%tl153778154022%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e153776154017%_)))
                                            (_%hd153777154020%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e153776154017%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd153777154020%_))
                                            (let ((_%e153779154025%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%hd153777154020%_))))
                                              (let ((_%tl153781154030%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e153779154025%_)))
                                                    (_%hd153780154028%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e153779154025%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd153780154028%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _%hd153780154028%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl153781154030%_))
                                                            (let ((_%e153782154033%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl153781154030%_))))
                      (let ((_%tl153784154038%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e153782154033%_)))
                            (_%hd153783154036%_
                             (let ()
                               (declare (not safe))
                               (##car _%e153782154033%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl153784154038%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl153763153982%_))
                                (_%__kont156704156705%_
                                 _%hd153783154036%_
                                 _%hd153774154012%_
                                 _%tl153754153955%_
                                 _%arg153760153974%_)
                                (_%__match156805156806%_
                                 _%e153749153945%_
                                 _%hd153750153948%_
                                 _%tl153751153950%_
                                 _%e153761153977%_
                                 _%hd153762153980%_
                                 _%tl153763153982%_
                                 _%e153764153985%_
                                 _%hd153765153988%_
                                 _%tl153766153990%_
                                 _%e153767153993%_
                                 _%hd153768153996%_
                                 _%tl153769153998%_
                                 _%e153770154001%_
                                 _%hd153771154004%_
                                 _%tl153772154006%_
                                 _%e153773154009%_
                                 _%hd153774154012%_
                                 _%tl153775154014%_
                                 _%e153776154017%_
                                 _%hd153777154020%_
                                 _%tl153778154022%_
                                 _%e153779154025%_
                                 _%hd153780154028%_
                                 _%tl153781154030%_
                                 _%e153782154033%_
                                 _%hd153783154036%_
                                 _%tl153784154038%_))
                            (let ()
                              (declare (not safe))
                              (_%g153698153822%_)))))
                    (let () (declare (not safe)) (_%g153698153822%_)))
                (let () (declare (not safe)) (_%g153698153822%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g153698153822%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g153698153822%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g153698153822%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g153698153822%_)))))
                        (let () (declare (not safe)) (_%g153698153822%_)))
                    (let () (declare (not safe)) (_%g153698153822%_)))
                (let () (declare (not safe)) (_%g153698153822%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g153698153822%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g153698153822%_)))
                                    (let ()
                                      (declare (not safe))
                                      (_%g153698153822%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g153698153822%_)))))
                        (let () (declare (not safe)) (_%g153698153822%_)))))
                (let () (declare (not safe)) (_%g153698153822%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop153755153958%_
                                     _%target153752153953%_
                                     '()))))
                               (_%__match156723156724%_
                                (lambda (_%e153703154081%_
                                         _%hd153704154084%_
                                         _%tl153705154086%_
                                         _%__splice156700156701%_
                                         _%target153706154089%_
                                         _%tl153708154091%_)
                                  (letrec ((_%loop153709154094%_
                                            (lambda (_%hd153707154097%_
                                                     _%arg153713154099%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd153707154097%_))
                                                  (let ((_%e153710154102%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd153707154097%_))))
                                                    (let ((_%lp-tl153712154107%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e153710154102%_)))
                                                          (_%lp-hd153711154105%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e153710154102%_))))
                                                      (_%loop153709154094%_
                                                       _%lp-tl153712154107%_
                                                       (cons _%lp-hd153711154105%_
                                                             _%arg153713154099%_))))
                                                  (let ((_%arg153714154110%_
                                                         (reverse _%arg153713154099%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl153705154086%_))
                                                        (let ((_%e153715154113%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl153705154086%_))))
                  (let ((_%tl153717154118%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e153715154113%_)))
                        (_%hd153716154116%_
                         (let ()
                           (declare (not safe))
                           (##car _%e153715154113%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd153716154116%_))
                        (let ((_%e153718154121%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd153716154116%_))))
                          (let ((_%tl153720154126%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e153718154121%_)))
                                (_%hd153719154124%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e153718154121%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%hd153719154124%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-eq? '%#call _%hd153719154124%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl153720154126%_))
                                        (let ((_%e153721154129%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl153720154126%_))))
                                          (let ((_%tl153723154134%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e153721154129%_)))
                                                (_%hd153722154132%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e153721154129%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd153722154132%_))
                                                (let ((_%e153724154137%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd153722154132%_))))
                                                  (let ((_%tl153726154142%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e153724154137%_)))
                                                        (_%hd153725154140%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e153724154137%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%hd153725154140%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-eq?
                                                               '%#ref
                                                               _%hd153725154140%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl153726154142%_))
                        (let ((_%e153727154145%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%tl153726154142%_))))
                          (let ((_%tl153729154150%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e153727154145%_)))
                                (_%hd153728154148%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e153727154145%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl153729154150%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _%tl153723154134%_))
                                    (let ((_%__splice156702156703%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice->vector
                                              _%tl153723154134%_
                                              '0))))
                                      (let ((_%tl153732154155%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice156702156703%_
                                                '1)))
                                            (_%target153730154153%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice156702156703%_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl153732154155%_))
                                            (letrec ((_%loop153733154158%_
                                                      (lambda (_%hd153731154161%_
                                                               _%xarg153737154163%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%hd153731154161%_))
                                                            (let ((_%e153734154166%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%hd153731154161%_))))
                      (let ((_%lp-tl153736154171%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e153734154166%_)))
                            (_%lp-hd153735154169%_
                             (let ()
                               (declare (not safe))
                               (##car _%e153734154166%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%lp-hd153735154169%_))
                            (let ((_%e153739154174%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%lp-hd153735154169%_))))
                              (let ((_%tl153741154179%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e153739154174%_)))
                                    (_%hd153740154177%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e153739154174%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd153740154177%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#ref
                                           _%hd153740154177%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl153741154179%_))
                                            (let ((_%e153742154182%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl153741154179%_))))
                                              (let ((_%tl153744154187%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e153742154182%_)))
                                                    (_%hd153743154185%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e153742154182%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl153744154187%_))
                                                    (_%loop153733154158%_
                                                     _%lp-tl153736154171%_
                                                     (cons _%hd153743154185%_
                                                           _%xarg153737154163%_))
                                                    (_%__match156735156736%_
                                                     _%e153703154081%_
                                                     _%hd153704154084%_
                                                     _%tl153705154086%_
                                                     _%__splice156700156701%_
                                                     _%target153706154089%_
                                                     _%tl153708154091%_))))
                                            (_%__match156735156736%_
                                             _%e153703154081%_
                                             _%hd153704154084%_
                                             _%tl153705154086%_
                                             _%__splice156700156701%_
                                             _%target153706154089%_
                                             _%tl153708154091%_))
                                        (_%__match156735156736%_
                                         _%e153703154081%_
                                         _%hd153704154084%_
                                         _%tl153705154086%_
                                         _%__splice156700156701%_
                                         _%target153706154089%_
                                         _%tl153708154091%_))
                                    (_%__match156735156736%_
                                     _%e153703154081%_
                                     _%hd153704154084%_
                                     _%tl153705154086%_
                                     _%__splice156700156701%_
                                     _%target153706154089%_
                                     _%tl153708154091%_))))
                            (_%__match156735156736%_
                             _%e153703154081%_
                             _%hd153704154084%_
                             _%tl153705154086%_
                             _%__splice156700156701%_
                             _%target153706154089%_
                             _%tl153708154091%_))))
                    (let ((_%xarg153738154190%_
                           (reverse _%xarg153737154163%_)))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl153717154118%_))
                          (_%__kont156698156699%_
                           _%xarg153738154190%_
                           _%hd153728154148%_
                           _%arg153714154110%_)
                          (_%__match156735156736%_
                           _%e153703154081%_
                           _%hd153704154084%_
                           _%tl153705154086%_
                           _%__splice156700156701%_
                           _%target153706154089%_
                           _%tl153708154091%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop153733154158%_
                                               _%target153730154153%_
                                               '()))
                                            (_%__match156735156736%_
                                             _%e153703154081%_
                                             _%hd153704154084%_
                                             _%tl153705154086%_
                                             _%__splice156700156701%_
                                             _%target153706154089%_
                                             _%tl153708154091%_))))
                                    (_%__match156735156736%_
                                     _%e153703154081%_
                                     _%hd153704154084%_
                                     _%tl153705154086%_
                                     _%__splice156700156701%_
                                     _%target153706154089%_
                                     _%tl153708154091%_))
                                (_%__match156735156736%_
                                 _%e153703154081%_
                                 _%hd153704154084%_
                                 _%tl153705154086%_
                                 _%__splice156700156701%_
                                 _%target153706154089%_
                                 _%tl153708154091%_))))
                        (_%__match156735156736%_
                         _%e153703154081%_
                         _%hd153704154084%_
                         _%tl153705154086%_
                         _%__splice156700156701%_
                         _%target153706154089%_
                         _%tl153708154091%_))
                    (_%__match156735156736%_
                     _%e153703154081%_
                     _%hd153704154084%_
                     _%tl153705154086%_
                     _%__splice156700156701%_
                     _%target153706154089%_
                     _%tl153708154091%_))
                (_%__match156735156736%_
                 _%e153703154081%_
                 _%hd153704154084%_
                 _%tl153705154086%_
                 _%__splice156700156701%_
                 _%target153706154089%_
                 _%tl153708154091%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__match156735156736%_
                                                 _%e153703154081%_
                                                 _%hd153704154084%_
                                                 _%tl153705154086%_
                                                 _%__splice156700156701%_
                                                 _%target153706154089%_
                                                 _%tl153708154091%_))))
                                        (_%__match156735156736%_
                                         _%e153703154081%_
                                         _%hd153704154084%_
                                         _%tl153705154086%_
                                         _%__splice156700156701%_
                                         _%target153706154089%_
                                         _%tl153708154091%_))
                                    (_%__match156735156736%_
                                     _%e153703154081%_
                                     _%hd153704154084%_
                                     _%tl153705154086%_
                                     _%__splice156700156701%_
                                     _%target153706154089%_
                                     _%tl153708154091%_))
                                (_%__match156735156736%_
                                 _%e153703154081%_
                                 _%hd153704154084%_
                                 _%tl153705154086%_
                                 _%__splice156700156701%_
                                 _%target153706154089%_
                                 _%tl153708154091%_))))
                        (_%__match156735156736%_
                         _%e153703154081%_
                         _%hd153704154084%_
                         _%tl153705154086%_
                         _%__splice156700156701%_
                         _%target153706154089%_
                         _%tl153708154091%_))))
                (_%__match156735156736%_
                 _%e153703154081%_
                 _%hd153704154084%_
                 _%tl153705154086%_
                 _%__splice156700156701%_
                 _%target153706154089%_
                 _%tl153708154091%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop153709154094%_
                                     _%target153706154089%_
                                     '())))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx156696156697%_))
                              (let ((_%e153703154081%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx156696156697%_))))
                                (let ((_%tl153705154086%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e153703154081%_)))
                                      (_%hd153704154084%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e153703154081%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%hd153704154084%_))
                                      (let ((_%__splice156700156701%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%hd153704154084%_
                                                '0))))
                                        (let ((_%tl153708154091%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice156700156701%_
                                                  '1)))
                                              (_%target153706154089%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice156700156701%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl153708154091%_))
                                              (_%__match156723156724%_
                                               _%e153703154081%_
                                               _%hd153704154084%_
                                               _%tl153705154086%_
                                               _%__splice156700156701%_
                                               _%target153706154089%_
                                               _%tl153708154091%_)
                                              (_%__match156735156736%_
                                               _%e153703154081%_
                                               _%hd153704154084%_
                                               _%tl153705154086%_
                                               _%__splice156700156701%_
                                               _%target153706154089%_
                                               _%tl153708154091%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl153705154086%_))
                                          (let ((_%e153791153835%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%tl153705154086%_))))
                                            (let ((_%tl153793153840%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e153791153835%_)))
                                                  (_%hd153792153838%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e153791153835%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd153792153838%_))
                                                  (let ((_%e153794153843%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%hd153792153838%_))))
                                                    (let ((_%tl153796153848%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e153794153843%_)))
                                                          (_%hd153795153846%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e153794153843%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%hd153795153846%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#call _%hd153795153846%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl153796153848%_))
                          (let ((_%e153797153851%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl153796153848%_))))
                            (let ((_%tl153799153856%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e153797153851%_)))
                                  (_%hd153798153854%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e153797153851%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd153798153854%_))
                                  (let ((_%e153800153859%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd153798153854%_))))
                                    (let ((_%tl153802153864%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e153800153859%_)))
                                          (_%hd153801153862%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e153800153859%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd153801153862%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd153801153862%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl153802153864%_))
                                                  (let ((_%e153803153867%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl153802153864%_))))
                                                    (let ((_%tl153805153872%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e153803153867%_)))
                                                          (_%hd153804153870%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e153803153867%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl153805153872%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%tl153799153856%_))
                      (let ((_%e153806153875%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%tl153799153856%_))))
                        (let ((_%tl153808153880%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e153806153875%_)))
                              (_%hd153807153878%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e153806153875%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd153807153878%_))
                              (let ((_%e153809153883%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%hd153807153878%_))))
                                (let ((_%tl153811153888%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e153809153883%_)))
                                      (_%hd153810153886%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e153809153883%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd153810153886%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%hd153810153886%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl153811153888%_))
                                              (let ((_%e153812153891%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl153811153888%_))))
                                                (let ((_%tl153814153896%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e153812153891%_)))
                                                      (_%hd153813153894%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e153812153891%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl153814153896%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl153808153880%_))
                                                          (let ((_%e153815153899%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%tl153808153880%_))))
                    (let ((_%tl153817153904%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e153815153899%_)))
                          (_%hd153816153902%_
                           (let ()
                             (declare (not safe))
                             (##car _%e153815153899%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl153817153904%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl153793153840%_))
                              (_%__kont156708156709%_
                               _%hd153813153894%_
                               _%hd153804153870%_
                               _%hd153704154084%_)
                              (let ()
                                (declare (not safe))
                                (_%g153698153822%_)))
                          (let () (declare (not safe)) (_%g153698153822%_)))))
                  (let () (declare (not safe)) (_%g153698153822%_)))
              (let () (declare (not safe)) (_%g153698153822%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g153698153822%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g153698153822%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g153698153822%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g153698153822%_)))))
                      (let () (declare (not safe)) (_%g153698153822%_)))
                  (let () (declare (not safe)) (_%g153698153822%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g153698153822%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g153698153822%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g153698153822%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g153698153822%_)))))
                          (let () (declare (not safe)) (_%g153698153822%_)))
                      (let () (declare (not safe)) (_%g153698153822%_)))
                  (let () (declare (not safe)) (_%g153698153822%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g153698153822%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g153698153822%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g153698153822%_))))))))
                 (_%generate1153541%_
                  (lambda (_%args153676%_
                           _%arglen153677%_
                           _%hd153678%_
                           _%body153679%_)
                    (let* ((_%len153681%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-length _%hd153678%_)))
                           (_%condition153686%_
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-list? _%hd153678%_))
                                (if (gxc#current-compile-decls-unsafe?)
                                    (cons '##fx=
                                          (cons _%arglen153677%_
                                                (cons _%len153681%_ '())))
                                    (cons 'let
                                          (cons '()
                                                (cons '(declare (not safe))
                                                      (cons (cons '##fx=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%arglen153677%_ (cons _%len153681%_ '())))
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (if (> _%len153681%_ '0)
                                    (if (gxc#current-compile-decls-unsafe?)
                                        (cons '##fx>=
                                              (cons _%arglen153677%_
                                                    (cons _%len153681%_ '())))
                                        (cons 'let
                                              (cons '()
                                                    (cons '(declare (not safe))
                                                          (cons (cons '##fx>=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%arglen153677%_ (cons _%len153681%_ '())))
                        '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '#t)))
                           (_%dispatch153688%_
                            (if (_%dispatch-case?153539%_
                                 _%hd153678%_
                                 _%body153679%_)
                                (_%dispatch-case-e153540%_
                                 _%hd153678%_
                                 _%body153679%_)
                                (gxc#generate-runtime-lambda-form
                                 _%self153536%_
                                 _%hd153678%_
                                 _%body153679%_))))
                      (cons _%condition153686%_
                            (cons (cons 'apply
                                        (cons _%dispatch153688%_
                                              (cons _%args153676%_ '())))
                                  '()))))))
          (let* ((_%g153543153571%_
                  (lambda (_%g153544153568%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g153544153568%_))))
                 (_%g153542153673%_
                  (lambda (_%g153544153574%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g153544153574%_))
                        (let ((_%e153547153576%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g153544153574%_))))
                          (let ((_%hd153548153579%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e153547153576%_)))
                                (_%tl153549153581%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e153547153576%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl153549153581%_))
                                (let ((_g157865_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl153549153581%_
                                          '0))))
                                  (begin
                                    (let ((_g157866_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g157865_)
                                                 (##values-length _g157865_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g157866_ 2)))
                                          (error "Context expects 2 values"
                                                 _g157866_)))
                                    (let ((_%target153550153584%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g157865_ 0)))
                                          (_%tl153552153586%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g157865_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl153552153586%_))
                                          (letrec ((_%loop153553153589%_
                                                    (lambda (_%hd153551153592%_
                                                             _%body153557153594%_
                                                             _%hd153558153596%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd153551153592%_))
                                                          (let ((_%e153554153599%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd153551153592%_))))
                    (let ((_%lp-hd153555153602%_
                           (let ()
                             (declare (not safe))
                             (##car _%e153554153599%_)))
                          (_%lp-tl153556153604%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e153554153599%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd153555153602%_))
                          (let ((_%e153561153607%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd153555153602%_))))
                            (let ((_%hd153562153610%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e153561153607%_)))
                                  (_%tl153563153612%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e153561153607%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl153563153612%_))
                                  (let ((_%e153564153615%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl153563153612%_))))
                                    (let ((_%hd153565153618%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e153564153615%_)))
                                          (_%tl153566153620%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e153564153615%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl153566153620%_))
                                          (_%loop153553153589%_
                                           _%lp-tl153556153604%_
                                           (cons _%hd153565153618%_
                                                 _%body153557153594%_)
                                           (cons _%hd153562153610%_
                                                 _%hd153558153596%_))
                                          (_%g153543153571%_
                                           _%g153544153574%_))))
                                  (_%g153543153571%_ _%g153544153574%_))))
                          (_%g153543153571%_ _%g153544153574%_))))
                  (let ((_%body153559153623%_ (reverse _%body153557153594%_))
                        (_%hd153560153625%_ (reverse _%hd153558153596%_)))
                    ((lambda (_%L153628%_ _%L153629%_)
                       (let ((_%args153648%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%arglen153649%_
                              (let ()
                                (declare (not safe))
                                (gxc#generate-runtime-temporary__0)))
                             (_%name153650%_
                              (let ((_%$e153645%_
                                     (let ((__tmp157867
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-runtime-names))))
                                       (declare (not safe))
                                       (hash-get __tmp157867 _%stx153537%_))))
                                (if _%$e153645%_
                                    _%$e153645%_
                                    ''case-lambda-dispatch))))
                         (cons 'lambda
                               (cons _%args153648%_
                                     (cons (cons 'let
                                                 (cons (cons (cons _%arglen153649%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (if (gxc#current-compile-decls-unsafe?)
                                     (cons '##length (cons _%args153648%_ '()))
                                     (cons 'let
                                           (cons '()
                                                 (cons '(declare (not safe))
                                                       (cons (cons '##length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%args153648%_ '()))
                     '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 '()))
                     '())
               (cons (cons 'cond
                           (let ((__tmp157871
                                  (cons (cons 'else
                                              (cons (cons '##raise-wrong-number-of-arguments-exception
                                                          (cons _%name153650%_
                                                                (cons _%args153648%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        '()))
                                 (__tmp157868
                                  (map (lambda (_%g153651153654%_
                                                _%g153652153656%_)
                                         (_%generate1153541%_
                                          _%args153648%_
                                          _%arglen153649%_
                                          _%g153651153654%_
                                          _%g153652153656%_))
                                       (let ((__tmp157869
                                              (lambda (_%g153658153661%_
                                                       _%g153659153663%_)
                                                (cons _%g153658153661%_
                                                      _%g153659153663%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp157869
                                          '()
                                          _%L153629%_))
                                       (let ((__tmp157870
                                              (lambda (_%g153665153668%_
                                                       _%g153666153670%_)
                                                (cons _%g153665153668%_
                                                      _%g153666153670%_))))
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp157870
                                          '()
                                          _%L153628%_)))))
                             (declare (not safe))
                             (__foldr1 cons __tmp157871 __tmp157868)))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))
                     _%body153559153623%_
                     _%hd153560153625%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop153553153589%_
                                             _%target153550153584%_
                                             '()
                                             '()))
                                          (_%g153543153571%_
                                           _%g153544153574%_)))))
                                (_%g153543153571%_ _%g153544153574%_))))
                        (_%g153543153571%_ _%g153544153574%_)))))
            (_%g153542153673%_ _%stx153537%_)))))
    (define gxc#generate-runtime-let-values%__%
      (lambda (_%self152773%_ _%stx152774%_ _%compiled-body?152775%_)
        (letrec ((_%generate-simple152777%_
                  (lambda (_%hd153521%_ _%body153522%_)
                    (_%coalesce-boolean152778%_
                     (_%simplify-let152779%_
                      (gxc#generate-runtime-simple-let
                       _%self152773%_
                       'let
                       _%hd153521%_
                       _%body153522%_
                       _%compiled-body?152775%_)))))
                 (_%coalesce-boolean152778%_
                  (lambda (_%code153382%_)
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-boolean-context))
                        (let* ((_%code153383153409%_ _%code153382%_)
                               (_%else153385153417%_
                                (lambda () _%code153382%_))
                               (_%K153387153454%_
                                (lambda (_%expr2153420%_
                                         _%expr1153421%_
                                         _%id153422%_)
                                  (let* ((_%expr2153423153431%_
                                          _%expr2153420%_)
                                         (_%else153425153439%_
                                          (lambda ()
                                            (cons 'or
                                                  (cons _%expr1153421%_
                                                        (cons _%expr2153420%_
                                                              '())))))
                                         (_%K153427153444%_
                                          (lambda (_%exprs153442%_)
                                            (cons 'or
                                                  (cons _%expr1153421%_
                                                        _%exprs153442%_)))))
                                    (if (pair? _%expr2153423153431%_)
                                        (let ((_%hd153428153447%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%expr2153423153431%_)))
                                              (_%tl153429153449%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%expr2153423153431%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd153428153447%_ 'or))
                                              (let ((_%exprs153452%_
                                                     _%tl153429153449%_))
                                                (_%K153427153444%_
                                                 _%exprs153452%_))
                                              (_%else153425153439%_)))
                                        (_%else153425153439%_))))))
                          (if (pair? _%code153383153409%_)
                              (let ((_%hd153388153457%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%code153383153409%_)))
                                    (_%tl153389153459%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%code153383153409%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%hd153388153457%_ 'let))
                                    (if (pair? _%tl153389153459%_)
                                        (let ((_%hd153390153462%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%tl153389153459%_)))
                                              (_%tl153391153464%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%tl153389153459%_))))
                                          (if (pair? _%hd153390153462%_)
                                              (let ((_%hd153402153467%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%hd153390153462%_)))
                                                    (_%tl153403153469%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%hd153390153462%_))))
                                                (if (pair? _%hd153402153467%_)
                                                    (let ((_%hd153404153472%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%hd153402153467%_)))
                                                          (_%tl153405153474%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%hd153402153467%_))))
                                                      (let ((_%id153477%_
                                                             _%hd153404153472%_))
                                                        (if (pair? _%tl153405153474%_)
                                                            (let ((_%hd153406153479%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (##car _%tl153405153474%_)))
                          (_%tl153407153481%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl153405153474%_))))
                      (let ((_%expr1153484%_ _%hd153406153479%_))
                        (if (null? _%tl153407153481%_)
                            (if (null? _%tl153403153469%_)
                                (if (pair? _%tl153391153464%_)
                                    (let ((_%hd153392153486%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl153391153464%_)))
                                          (_%tl153393153488%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl153391153464%_))))
                                      (if (pair? _%hd153392153486%_)
                                          (let ((_%hd153394153491%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%hd153392153486%_)))
                                                (_%tl153395153493%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%hd153392153486%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%hd153394153491%_
                                                         'if))
                                                (if (pair? _%tl153395153493%_)
                                                    (let ((_%hd153396153496%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl153395153493%_)))
                                                          (_%tl153397153498%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl153395153493%_))))
                                                      (if ((lambda (_%g153500153502%_)
                                                             (eq? _%g153500153502%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id153477%_))
                   _%hd153396153496%_)
                  (if (pair? _%tl153397153498%_)
                      (let ((_%hd153398153505%_
                             (let ()
                               (declare (not safe))
                               (##car _%tl153397153498%_)))
                            (_%tl153399153507%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%tl153397153498%_))))
                        (if ((lambda (_%g153509153511%_)
                               (eq? _%g153509153511%_ _%id153477%_))
                             _%hd153398153505%_)
                            (if (pair? _%tl153399153507%_)
                                (let ((_%hd153400153514%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl153399153507%_)))
                                      (_%tl153401153516%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl153399153507%_))))
                                  (let ((_%expr2153519%_ _%hd153400153514%_))
                                    (if (null? _%tl153401153516%_)
                                        (if (null? _%tl153393153488%_)
                                            (_%K153387153454%_
                                             _%expr2153519%_
                                             _%expr1153484%_
                                             _%id153477%_)
                                            (_%else153385153417%_))
                                        (_%else153385153417%_))))
                                (_%else153385153417%_))
                            (_%else153385153417%_)))
                      (_%else153385153417%_))
                  (_%else153385153417%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else153385153417%_))
                                                (_%else153385153417%_)))
                                          (_%else153385153417%_)))
                                    (_%else153385153417%_))
                                (_%else153385153417%_))
                            (_%else153385153417%_))))
                    (_%else153385153417%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else153385153417%_)))
                                              (_%else153385153417%_)))
                                        (_%else153385153417%_))
                                    (_%else153385153417%_)))
                              (_%else153385153417%_)))
                        _%code153382%_)))
                 (_%simplify-let152779%_
                  (lambda (_%code153081%_)
                    (let* ((_%code153082153154%_ _%code153081%_)
                           (_%else153087153162%_ (lambda () _%code153081%_)))
                      (let ((_%K153146153362%_
                             (lambda (_%expr153360%_) _%expr153360%_))
                            (_%K153129153308%_
                             (lambda (_%body153304%_
                                      _%expr153305%_
                                      _%id153306%_)
                               (cons 'let
                                     (cons (cons (cons _%id153306%_
                                                       (cons _%expr153305%_
                                                             '()))
                                                 '())
                                           _%body153304%_))))
                            (_%K153106153232%_
                             (lambda (_%body153226%_
                                      _%expr2153227%_
                                      _%id2153228%_
                                      _%expr1153229%_
                                      _%id1153230%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1153230%_
                                                       (cons _%expr1153229%_
                                                             '()))
                                                 (cons (cons _%id2153228%_
                                                             (cons _%expr2153227%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%body153226%_))))
                            (_%K153089153171%_
                             (lambda (_%body153166%_
                                      _%bind153167%_
                                      _%expr1153168%_
                                      _%id1153169%_)
                               (cons 'let*
                                     (cons (cons (cons _%id1153169%_
                                                       (cons _%expr1153168%_
                                                             '()))
                                                 _%bind153167%_)
                                           _%body153166%_)))))
                        (if (pair? _%code153082153154%_)
                            (let ((_%tl153148153367%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%code153082153154%_)))
                                  (_%hd153147153365%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%code153082153154%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd153147153365%_ 'let))
                                  (if (pair? _%tl153148153367%_)
                                      (let ((_%tl153150153372%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%tl153148153367%_)))
                                            (_%hd153149153370%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%tl153148153367%_))))
                                        (if (null? _%hd153149153370%_)
                                            (if (pair? _%tl153150153372%_)
                                                (let ((_%tl153152153377%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%tl153150153372%_)))
                                                      (_%hd153151153375%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%tl153150153372%_))))
                                                  (if (null? _%tl153152153377%_)
                                                      (let ((_%expr153380%_
                                                             _%hd153151153375%_))
                                                        (_%K153146153362%_
                                                         _%expr153380%_))
                                                      (_%else153087153162%_)))
                                                (_%else153087153162%_))
                                            (if (pair? _%hd153149153370%_)
                                                (let ((_%tl153141153323%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%hd153149153370%_)))
                                                      (_%hd153140153321%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%hd153149153370%_))))
                                                  (if (pair? _%hd153140153321%_)
                                                      (let ((_%tl153143153328%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%hd153140153321%_)))
                    (_%hd153142153326%_
                     (let () (declare (not safe)) (##car _%hd153140153321%_))))
                (if (pair? _%tl153143153328%_)
                    (let ((_%tl153145153335%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%tl153143153328%_)))
                          (_%hd153144153333%_
                           (let ()
                             (declare (not safe))
                             (##car _%tl153143153328%_))))
                      (if (null? _%tl153145153335%_)
                          (if (null? _%tl153141153323%_)
                              (if (pair? _%tl153150153372%_)
                                  (let ((_%tl153135153342%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%tl153150153372%_)))
                                        (_%hd153134153340%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%tl153150153372%_))))
                                    (if (pair? _%hd153134153340%_)
                                        (let ((_%tl153137153347%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%hd153134153340%_)))
                                              (_%hd153136153345%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%hd153134153340%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (##eq? _%hd153136153345%_
                                                       'let))
                                              (if (pair? _%tl153137153347%_)
                                                  (let ((_%tl153139153352%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%tl153137153347%_)))
                                                        (_%hd153138153350%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%tl153137153347%_))))
                                                    (if (null? _%hd153138153350%_)
                                                        (if (null? _%tl153135153342%_)
                                                            (let ((_%id153331%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%hd153142153326%_)
                          (_%expr153338%_ _%hd153144153333%_)
                          (_%body153355%_ _%tl153139153352%_))
                      (_%K153129153308%_
                       _%body153355%_
                       _%expr153338%_
                       _%id153331%_))
                    (_%else153087153162%_))
                (if (pair? _%hd153138153350%_)
                    (let ((_%tl153118153281%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%hd153138153350%_)))
                          (_%hd153117153279%_
                           (let ()
                             (declare (not safe))
                             (##car _%hd153138153350%_))))
                      (if (pair? _%hd153117153279%_)
                          (let ((_%tl153120153286%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd153117153279%_)))
                                (_%hd153119153284%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd153117153279%_))))
                            (if (pair? _%tl153120153286%_)
                                (let ((_%tl153122153293%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%tl153120153286%_)))
                                      (_%hd153121153291%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%tl153120153286%_))))
                                  (if (null? _%tl153122153293%_)
                                      (if (null? _%tl153118153281%_)
                                          (if (null? _%tl153135153342%_)
                                              (let ((_%id1153255%_
                                                     _%hd153142153326%_)
                                                    (_%expr1153262%_
                                                     _%hd153144153333%_)
                                                    (_%id2153289%_
                                                     _%hd153119153284%_)
                                                    (_%expr2153296%_
                                                     _%hd153121153291%_)
                                                    (_%body153298%_
                                                     _%tl153139153352%_))
                                                (_%K153106153232%_
                                                 _%body153298%_
                                                 _%expr2153296%_
                                                 _%id2153289%_
                                                 _%expr1153262%_
                                                 _%id1153255%_))
                                              (_%else153087153162%_))
                                          (_%else153087153162%_))
                                      (_%else153087153162%_)))
                                (_%else153087153162%_)))
                          (_%else153087153162%_)))
                    (_%else153087153162%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else153087153162%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##eq? _%hd153136153345%_
                                                           'let*))
                                                  (if (pair? _%tl153137153347%_)
                                                      (let ((_%tl153099153215%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%tl153137153347%_)))
                    (_%hd153098153213%_
                     (let () (declare (not safe)) (##car _%tl153137153347%_))))
                (if (null? _%tl153135153342%_)
                    (let ((_%id1153194%_ _%hd153142153326%_)
                          (_%expr1153201%_ _%hd153144153333%_)
                          (_%bind153218%_ _%hd153098153213%_)
                          (_%body153220%_ _%tl153099153215%_))
                      (_%K153089153171%_
                       _%body153220%_
                       _%bind153218%_
                       _%expr1153201%_
                       _%id1153194%_))
                    (_%else153087153162%_)))
              (_%else153087153162%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%else153087153162%_))))
                                        (_%else153087153162%_)))
                                  (_%else153087153162%_))
                              (_%else153087153162%_))
                          (_%else153087153162%_)))
                    (_%else153087153162%_)))
              (_%else153087153162%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%else153087153162%_))))
                                      (_%else153087153162%_))
                                  (_%else153087153162%_)))
                            (_%else153087153162%_))))))
                 (_%generate-values152780%_
                  (lambda (_%hd152894%_ _%body152895%_)
                    (let _%lp152897%_ ((_%rest152899%_ _%hd152894%_)
                                       (_%bind152900%_ '())
                                       (_%check152901%_ '())
                                       (_%post152902%_ '()))
                      (let* ((_%__stx157025157026%_ _%rest152899%_)
                             (_%g152905152916%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx157025157026%_)))))
                        (let ((_%__kont157027157028%_
                               (lambda (_%L152943%_ _%L152944%_)
                                 (let* ((_%__stx156981156982%_ _%L152944%_)
                                        (_%g152959152984%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx156981156982%_)))))
                                   (let ((_%__kont156983156984%_
                                          (lambda (_%L153057%_ _%L153058%_)
                                            (let ((_%eid153072%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%L153058%_)))
                                                  (_%expr153073%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self152773%_
                                                      _%L153057%_))))
                                              (_%lp152897%_
                                               _%L152943%_
                                               (cons (cons _%eid153072%_
                                                           (cons _%expr153073%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind152900%_)
                                               _%check152901%_
                                               _%post152902%_))))
                                         (_%__kont156985156986%_
                                          (lambda (_%L153005%_ _%L153006%_)
                                            (let* ((_%vals153019%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values153021%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals153019%_
                                                     _%L153006%_
                                                     _%L153005%_))
                                                   (_%refs153023%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals153019%_
                                                     _%L153006%_))
                                                   (_%expr153025%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self152773%_
                                                       _%L153005%_))))
                                              (_%lp152897%_
                                               _%L152943%_
                                               (cons (cons _%vals153019%_
                                                           (cons _%expr153025%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind152900%_)
                                               (cons _%check-values153021%_
                                                     _%check152901%_)
                                               (cons _%refs153023%_
                                                     _%post152902%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx156981156982%_))
                                         (let ((_%e152963153033%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx156981156982%_))))
                                           (let ((_%tl152965153038%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e152963153033%_)))
                                                 (_%hd152964153036%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e152963153033%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd152964153036%_))
                                                 (let ((_%e152966153041%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd152964153036%_))))
                                                   (let ((_%tl152968153046%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e152966153041%_)))
                                                         (_%hd152967153044%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e152966153041%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl152968153046%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl152965153038%_))
                     (let ((_%e152969153049%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl152965153038%_))))
                       (let ((_%tl152971153054%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e152969153049%_)))
                             (_%hd152970153052%_
                              (let ()
                                (declare (not safe))
                                (##car _%e152969153049%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl152971153054%_))
                             (_%__kont156983156984%_
                              _%hd152970153052%_
                              _%hd152967153044%_)
                             (let ()
                               (declare (not safe))
                               (_%g152959152984%_)))))
                     (let () (declare (not safe)) (_%g152959152984%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl152965153038%_))
                     (let ((_%e152977152997%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl152965153038%_))))
                       (let ((_%tl152979153002%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e152977152997%_)))
                             (_%hd152978153000%_
                              (let ()
                                (declare (not safe))
                                (##car _%e152977152997%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl152979153002%_))
                             (_%__kont156985156986%_
                              _%hd152978153000%_
                              _%hd152964153036%_)
                             (let ()
                               (declare (not safe))
                               (_%g152959152984%_)))))
                     (let () (declare (not safe)) (_%g152959152984%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl152965153038%_))
                                                     (let ((_%e152977152997%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl152965153038%_))))
                                                       (let ((_%tl152979153002%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e152977152997%_)))
                     (_%hd152978153000%_
                      (let () (declare (not safe)) (##car _%e152977152997%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl152979153002%_))
                     (_%__kont156985156986%_
                      _%hd152978153000%_
                      _%hd152964153036%_)
                     (let () (declare (not safe)) (_%g152959152984%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g152959152984%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g152959152984%_)))))))
                              (_%__kont157029157030%_
                               (lambda ()
                                 (let* ((_%body152923%_
                                         (if _%compiled-body?152775%_
                                             _%body152895%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self152773%_
                                                _%body152895%_))))
                                        (_%body152925%_
                                         (_%generate-values-post152781%_
                                          _%post152902%_
                                          _%body152923%_))
                                        (_%body152927%_
                                         (_%generate-values-check152782%_
                                          _%check152901%_
                                          _%body152925%_)))
                                   (cons 'let
                                         (cons (reverse _%bind152900%_)
                                               (cons _%body152927%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx157025157026%_))
                              (let ((_%e152909152935%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx157025157026%_))))
                                (let ((_%tl152911152940%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e152909152935%_)))
                                      (_%hd152910152938%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e152909152935%_))))
                                  (_%__kont157027157028%_
                                   _%tl152911152940%_
                                   _%hd152910152938%_)))
                              (_%__kont157029157030%_)))))))
                 (_%generate-values-post152781%_
                  (lambda (_%post152853%_ _%body152854%_)
                    (let _%lp152856%_ ((_%rest152858%_ _%post152853%_)
                                       (_%body152859%_ _%body152854%_))
                      (let* ((_%rest152860152868%_ _%rest152858%_)
                             (_%else152862152876%_ (lambda () _%body152859%_))
                             (_%K152864152882%_
                              (lambda (_%rest152879%_ _%bind152880%_)
                                (_%lp152856%_
                                 _%rest152879%_
                                 (cons 'let
                                       (cons _%bind152880%_
                                             (cons _%body152859%_ '())))))))
                        (if (pair? _%rest152860152868%_)
                            (let ((_%hd152865152885%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest152860152868%_)))
                                  (_%tl152866152887%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest152860152868%_))))
                              (let* ((_%bind152890%_ _%hd152865152885%_)
                                     (_%rest152892%_ _%tl152866152887%_))
                                (_%K152864152882%_
                                 _%rest152892%_
                                 _%bind152890%_)))
                            (_%else152862152876%_))))))
                 (_%generate-values-check152782%_
                  (lambda (_%check152850%_ _%body152851%_)
                    (cons 'begin
                          (let ((__tmp157873 (cons _%body152851%_ '()))
                                (__tmp157872 (reverse _%check152850%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp157873 __tmp157872))))))
          (let* ((_%g152784152801%_
                  (lambda (_%g152785152798%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g152785152798%_))))
                 (_%g152783152847%_
                  (lambda (_%g152785152804%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g152785152804%_))
                        (let ((_%e152788152806%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g152785152804%_))))
                          (let ((_%hd152789152809%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e152788152806%_)))
                                (_%tl152790152811%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e152788152806%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl152790152811%_))
                                (let ((_%e152791152814%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl152790152811%_))))
                                  (let ((_%hd152792152817%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e152791152814%_)))
                                        (_%tl152793152819%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e152791152814%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl152793152819%_))
                                        (let ((_%e152794152822%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl152793152819%_))))
                                          (let ((_%hd152795152825%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e152794152822%_)))
                                                (_%tl152796152827%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e152794152822%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl152796152827%_))
                                                ((lambda (_%L152830%_
                                                          _%L152831%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%L152831%_)
                                                       (_%generate-simple152777%_
                                                        _%L152831%_
                                                        _%L152830%_)
                                                       (_%generate-values152780%_
                                                        _%L152831%_
                                                        _%L152830%_)))
                                                 _%hd152795152825%_
                                                 _%hd152792152817%_)
                                                (_%g152784152801%_
                                                 _%g152785152804%_))))
                                        (_%g152784152801%_
                                         _%g152785152804%_))))
                                (_%g152784152801%_ _%g152785152804%_))))
                        (_%g152784152801%_ _%g152785152804%_)))))
            (_%g152783152847%_ _%stx152774%_)))))
    (define gxc#generate-runtime-let-values%__0
      (lambda (_%self153527%_ _%stx153528%_)
        (let ((_%compiled-body?153530%_ '#f))
          (gxc#generate-runtime-let-values%__%
           _%self153527%_
           _%stx153528%_
           _%compiled-body?153530%_))))
    (define gxc#generate-runtime-let-values%
      (lambda _g157874_
        (let ((_g157875_ (let () (declare (not safe)) (##length _g157874_))))
          (cond ((let () (declare (not safe)) (##fx= _g157875_ 2))
                 (apply gxc#generate-runtime-let-values%__0 _g157874_))
                ((let () (declare (not safe)) (##fx= _g157875_ 3))
                 (apply gxc#generate-runtime-let-values%__% _g157874_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-let-values%
                  _g157874_))))))
    (define gxc#generate-runtime-let-values-bind
      (lambda (_%vals152667%_ _%hd152668%_)
        (let _%lp152670%_ ((_%rest152672%_ _%hd152668%_)
                           (_%k152673%_ '0)
                           (_%r152674%_ '()))
          (let* ((_%__stx157039157040%_ _%rest152672%_)
                 (_%g152679152696%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx157039157040%_)))))
            (let ((_%__kont157041157042%_
                   (lambda (_%L152759%_)
                     (_%lp152670%_
                      _%L152759%_
                      (let () (declare (not safe)) (##fx+ _%k152673%_ '1))
                      _%r152674%_)))
                  (_%__kont157043157044%_
                   (lambda (_%L152732%_ _%L152733%_)
                     (_%lp152670%_
                      _%L152732%_
                      (let () (declare (not safe)) (##fx+ _%k152673%_ '1))
                      (cons (cons (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-binding-id
                                     _%L152733%_))
                                  (cons (gxc#generate-runtime-values-ref
                                         _%vals152667%_
                                         _%k152673%_
                                         _%L152732%_)
                                        '()))
                            _%r152674%_))))
                  (_%__kont157045157046%_
                   (lambda (_%L152708%_)
                     (let ((__tmp157876
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gxc#generate-runtime-binding-id
                                           _%L152708%_))
                                        (cons (gxc#generate-runtime-values->list
                                               _%vals152667%_
                                               _%k152673%_)
                                              '()))
                                  '())))
                       (declare (not safe))
                       (__foldl1 cons __tmp157876 _%r152674%_))))
                  (_%__kont157047157048%_ (lambda () (reverse _%r152674%_))))
              (let ((_%g152677152719%_
                     (lambda ()
                       (let ((_%L152708%_ _%__stx157039157040%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#identifier? _%L152708%_))
                             (_%__kont157045157046%_ _%L152708%_)
                             (_%__kont157047157048%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx157039157040%_))
                    (let ((_%e152682152748%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx157039157040%_))))
                      (let ((_%tl152684152753%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e152682152748%_)))
                            (_%hd152683152751%_
                             (let ()
                               (declare (not safe))
                               (##car _%e152682152748%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-datum? _%hd152683152751%_))
                            (let ((_%e152685152756%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%hd152683152751%_))))
                              (if (equal? _%e152685152756%_ '#f)
                                  (_%__kont157041157042%_ _%tl152684152753%_)
                                  (_%__kont157043157044%_
                                   _%tl152684152753%_
                                   _%hd152683152751%_)))
                            (_%__kont157043157044%_
                             _%tl152684152753%_
                             _%hd152683152751%_))))
                    (let () (declare (not safe)) (_%g152677152719%_)))))))))
    (define gxc#generate-runtime-letrec-values%__%
      (lambda (_%self152346%_ _%stx152347%_ _%compiled-body?152348%_)
        (letrec ((_%generate-simple152350%_
                  (lambda (_%hd152652%_ _%body152653%_)
                    (gxc#generate-runtime-simple-let
                     _%self152346%_
                     'letrec
                     _%hd152652%_
                     _%body152653%_
                     _%compiled-body?152348%_)))
                 (_%generate-values152351%_
                  (lambda (_%hd152431%_ _%body152432%_)
                    (let _%lp152434%_ ((_%rest152436%_ _%hd152431%_)
                                       (_%bind152437%_ '())
                                       (_%check152438%_ '())
                                       (_%post152439%_ '()))
                      (let* ((_%__stx157113157114%_ _%rest152436%_)
                             (_%g152442152453%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx157113157114%_)))))
                        (let ((_%__kont157115157116%_
                               (lambda (_%L152480%_ _%L152481%_)
                                 (let* ((_%__stx157069157070%_ _%L152481%_)
                                        (_%g152496152521%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx157069157070%_)))))
                                   (let ((_%__kont157071157072%_
                                          (lambda (_%L152628%_ _%L152629%_)
                                            (let ((_%eid152643%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-binding-id*
                                                      _%L152629%_)))
                                                  (_%expr152644%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self152346%_
                                                      _%L152628%_))))
                                              (_%lp152434%_
                                               _%L152480%_
                                               (cons (cons _%eid152643%_
                                                           (cons _%expr152644%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind152437%_)
                                               _%check152438%_
                                               _%post152439%_))))
                                         (_%__kont157073157074%_
                                          (lambda (_%L152542%_ _%L152543%_)
                                            (let* ((_%vals152556%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#generate-runtime-temporary__0)))
                                                   (_%check-values152558%_
                                                    (gxc#generate-runtime-check-values
                                                     _%vals152556%_
                                                     _%L152543%_
                                                     _%L152542%_))
                                                   (_%refs152560%_
                                                    (gxc#generate-runtime-let-values-bind
                                                     _%vals152556%_
                                                     _%L152543%_))
                                                   (_%expr152562%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gxc#compile-e__1
                                                       _%self152346%_
                                                       _%L152542%_))))
                                              (_%lp152434%_
                                               _%L152480%_
                                               (let ((__tmp157878
                                                      (cons (cons _%vals152556%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%expr152562%_ '()))
                    _%bind152437%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp157877
                                                      (map (lambda (_%e152564152566%_)
                                                             (let* ((_%g152568152577%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%e152564152566%_)
                            (_%E152570152581%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%g152568152577%_
                                        '([eid _])))
                               '#!void))
                            (_%K152571152586%_
                             (lambda (_%eid152584%_)
                               (cons _%eid152584%_ (cons '#!void '())))))
                       (if (pair? _%g152568152577%_)
                           (let ((_%hd152572152589%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%g152568152577%_)))
                                 (_%tl152573152591%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%g152568152577%_))))
                             (let ((_%eid152594%_ _%hd152572152589%_))
                               (if (pair? _%tl152573152591%_)
                                   (let ((_%tl152575152596%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%tl152573152591%_))))
                                     (if (null? _%tl152575152596%_)
                                         (_%K152571152586%_ _%eid152594%_)
                                         (_%E152570152581%_)))
                                   (_%E152570152581%_))))
                           (_%E152570152581%_))))
                   _%refs152560%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (__foldl1
                                                  cons
                                                  __tmp157878
                                                  __tmp157877))
                                               (cons _%check-values152558%_
                                                     _%check152438%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (__foldl1
                                                  cons
                                                  _%refs152560%_
                                                  _%post152439%_)))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx157069157070%_))
                                         (let ((_%e152500152604%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx157069157070%_))))
                                           (let ((_%tl152502152609%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e152500152604%_)))
                                                 (_%hd152501152607%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e152500152604%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%hd152501152607%_))
                                                 (let ((_%e152503152612%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%hd152501152607%_))))
                                                   (let ((_%tl152505152617%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e152503152612%_)))
                                                         (_%hd152504152615%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e152503152612%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl152505152617%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl152502152609%_))
                     (let ((_%e152506152620%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl152502152609%_))))
                       (let ((_%tl152508152625%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e152506152620%_)))
                             (_%hd152507152623%_
                              (let ()
                                (declare (not safe))
                                (##car _%e152506152620%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl152508152625%_))
                             (_%__kont157071157072%_
                              _%hd152507152623%_
                              _%hd152504152615%_)
                             (let ()
                               (declare (not safe))
                               (_%g152496152521%_)))))
                     (let () (declare (not safe)) (_%g152496152521%_)))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%tl152502152609%_))
                     (let ((_%e152514152534%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl152502152609%_))))
                       (let ((_%tl152516152539%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e152514152534%_)))
                             (_%hd152515152537%_
                              (let ()
                                (declare (not safe))
                                (##car _%e152514152534%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl152516152539%_))
                             (_%__kont157073157074%_
                              _%hd152515152537%_
                              _%hd152501152607%_)
                             (let ()
                               (declare (not safe))
                               (_%g152496152521%_)))))
                     (let () (declare (not safe)) (_%g152496152521%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl152502152609%_))
                                                     (let ((_%e152514152534%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl152502152609%_))))
                                                       (let ((_%tl152516152539%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e152514152534%_)))
                     (_%hd152515152537%_
                      (let () (declare (not safe)) (##car _%e152514152534%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl152516152539%_))
                     (_%__kont157073157074%_
                      _%hd152515152537%_
                      _%hd152501152607%_)
                     (let () (declare (not safe)) (_%g152496152521%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%g152496152521%_))))))
                                         (let ()
                                           (declare (not safe))
                                           (_%g152496152521%_)))))))
                              (_%__kont157117157118%_
                               (lambda ()
                                 (let* ((_%body152460%_
                                         (if _%compiled-body?152348%_
                                             _%body152432%_
                                             (let ()
                                               (declare (not safe))
                                               (gxc#compile-e__1
                                                _%self152346%_
                                                _%body152432%_))))
                                        (_%body152462%_
                                         (_%generate-values-post152353%_
                                          _%post152439%_
                                          _%body152460%_))
                                        (_%body152464%_
                                         (_%generate-values-check152352%_
                                          _%check152438%_
                                          _%body152462%_)))
                                   (cons 'letrec
                                         (cons (reverse _%bind152437%_)
                                               (cons _%body152464%_ '())))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx157113157114%_))
                              (let ((_%e152446152472%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx157113157114%_))))
                                (let ((_%tl152448152477%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e152446152472%_)))
                                      (_%hd152447152475%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e152446152472%_))))
                                  (_%__kont157115157116%_
                                   _%tl152448152477%_
                                   _%hd152447152475%_)))
                              (_%__kont157117157118%_)))))))
                 (_%generate-values-check152352%_
                  (lambda (_%check152428%_ _%body152429%_)
                    (cons 'begin
                          (let ((__tmp157880 (cons _%body152429%_ '()))
                                (__tmp157879 (reverse _%check152428%_)))
                            (declare (not safe))
                            (__foldr1 cons __tmp157880 __tmp157879)))))
                 (_%generate-values-post152353%_
                  (lambda (_%post152421%_ _%body152422%_)
                    (cons 'begin
                          (let ((__tmp157884 (cons _%body152422%_ '()))
                                (__tmp157881
                                 (let ((__tmp157883
                                        (lambda (_%g152423152425%_)
                                          (cons 'set! _%g152423152425%_)))
                                       (__tmp157882 (reverse _%post152421%_)))
                                   (declare (not safe))
                                   (##map __tmp157883 __tmp157882))))
                            (declare (not safe))
                            (__foldr1 cons __tmp157884 __tmp157881))))))
          (let* ((_%g152355152372%_
                  (lambda (_%g152356152369%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g152356152369%_))))
                 (_%g152354152418%_
                  (lambda (_%g152356152375%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g152356152375%_))
                        (let ((_%e152359152377%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g152356152375%_))))
                          (let ((_%hd152360152380%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e152359152377%_)))
                                (_%tl152361152382%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e152359152377%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl152361152382%_))
                                (let ((_%e152362152385%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl152361152382%_))))
                                  (let ((_%hd152363152388%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e152362152385%_)))
                                        (_%tl152364152390%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e152362152385%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl152364152390%_))
                                        (let ((_%e152365152393%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl152364152390%_))))
                                          (let ((_%hd152366152396%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e152365152393%_)))
                                                (_%tl152367152398%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e152365152393%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl152367152398%_))
                                                ((lambda (_%L152401%_
                                                          _%L152402%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%L152402%_)
                                                       (_%generate-simple152350%_
                                                        _%L152402%_
                                                        _%L152401%_)
                                                       (_%generate-values152351%_
                                                        _%L152402%_
                                                        _%L152401%_)))
                                                 _%hd152366152396%_
                                                 _%hd152363152388%_)
                                                (_%g152355152372%_
                                                 _%g152356152375%_))))
                                        (_%g152355152372%_
                                         _%g152356152375%_))))
                                (_%g152355152372%_ _%g152356152375%_))))
                        (_%g152355152372%_ _%g152356152375%_)))))
            (_%g152354152418%_ _%stx152347%_)))))
    (define gxc#generate-runtime-letrec-values%__0
      (lambda (_%self152658%_ _%stx152659%_)
        (let ((_%compiled-body?152661%_ '#f))
          (gxc#generate-runtime-letrec-values%__%
           _%self152658%_
           _%stx152659%_
           _%compiled-body?152661%_))))
    (define gxc#generate-runtime-letrec-values%
      (lambda _g157885_
        (let ((_g157886_ (let () (declare (not safe)) (##length _g157885_))))
          (cond ((let () (declare (not safe)) (##fx= _g157886_ 2))
                 (apply gxc#generate-runtime-letrec-values%__0 _g157885_))
                ((let () (declare (not safe)) (##fx= _g157886_ 3))
                 (apply gxc#generate-runtime-letrec-values%__% _g157885_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-letrec-values%
                  _g157885_))))))
    (define gxc#generate-runtime-letrec*-values%
      (lambda (_%self151927%_ _%stx151928%_)
        (letrec ((_%generate-values151930%_
                  (lambda (_%hd152173%_ _%body152174%_)
                    (let _%lp152176%_ ((_%rest152178%_ _%hd152173%_)
                                       (_%bind152179%_ '()))
                      (let* ((_%rest152180152188%_ _%rest152178%_)
                             (_%else152182152199%_
                              (lambda ()
                                (let ((_%bind152196%_ (reverse _%bind152179%_))
                                      (_%body152197%_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self151927%_
                                          _%body152174%_))))
                                  (cons 'letrec*
                                        (cons _%bind152196%_
                                              (cons _%body152197%_ '()))))))
                             (_%K152184152333%_
                              (lambda (_%rest152202%_ _%hd-bind152203%_)
                                (let* ((_%__stx157127157128%_
                                        _%hd-bind152203%_)
                                       (_%g152206152231%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx157127157128%_)))))
                                  (let ((_%__kont157129157130%_
                                         (lambda (_%L152312%_ _%L152313%_)
                                           (let ((_%eid152327%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#generate-runtime-binding-id*
                                                     _%L152313%_)))
                                                 (_%expr152328%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#compile-e__1
                                                     _%self151927%_
                                                     _%L152312%_))))
                                             (_%lp152176%_
                                              _%rest152202%_
                                              (cons (cons _%eid152327%_
                                                          (cons _%expr152328%_
                                                                '()))
                                                    _%bind152179%_)))))
                                        (_%__kont157131157132%_
                                         (lambda (_%L152252%_ _%L152253%_)
                                           (let* ((_%vals152272%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%tmp152274%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#generate-runtime-temporary__0)))
                                                  (_%check-values152276%_
                                                   (gxc#generate-runtime-check-values
                                                    _%tmp152274%_
                                                    _%L152253%_
                                                    _%L152252%_))
                                                  (_%refs152278%_
                                                   (gxc#generate-runtime-let-values-bind
                                                    _%vals152272%_
                                                    _%L152253%_))
                                                  (_%expr152280%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self151927%_
                                                      _%L152252%_))))
                                             (_%lp152176%_
                                              _%rest152202%_
                                              (let ((__tmp157887
                                                     (cons (cons _%vals152272%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons 'let
                                     (cons (cons (cons _%tmp152274%_
                                                       (cons _%expr152280%_
                                                             '()))
                                                 '())
                                           (cons _%check-values152276%_
                                                 (cons _%tmp152274%_ '()))))
                               '()))
                   _%bind152179%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 __tmp157887
                                                 _%refs152278%_)))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%__stx157127157128%_))
                                        (let ((_%e152210152288%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%__stx157127157128%_))))
                                          (let ((_%tl152212152293%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e152210152288%_)))
                                                (_%hd152211152291%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e152210152288%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%hd152211152291%_))
                                                (let ((_%e152213152296%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd152211152291%_))))
                                                  (let ((_%tl152215152301%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e152213152296%_)))
                                                        (_%hd152214152299%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e152213152296%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl152215152301%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl152212152293%_))
                                                            (let ((_%e152216152304%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl152212152293%_))))
                      (let ((_%tl152218152309%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e152216152304%_)))
                            (_%hd152217152307%_
                             (let ()
                               (declare (not safe))
                               (##car _%e152216152304%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl152218152309%_))
                            (_%__kont157129157130%_
                             _%hd152217152307%_
                             _%hd152214152299%_)
                            (let ()
                              (declare (not safe))
                              (_%g152206152231%_)))))
                    (let () (declare (not safe)) (_%g152206152231%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%tl152212152293%_))
                    (let ((_%e152224152244%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%tl152212152293%_))))
                      (let ((_%tl152226152249%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e152224152244%_)))
                            (_%hd152225152247%_
                             (let ()
                               (declare (not safe))
                               (##car _%e152224152244%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl152226152249%_))
                            (_%__kont157131157132%_
                             _%hd152225152247%_
                             _%hd152211152291%_)
                            (let ()
                              (declare (not safe))
                              (_%g152206152231%_)))))
                    (let () (declare (not safe)) (_%g152206152231%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl152212152293%_))
                                                    (let ((_%e152224152244%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl152212152293%_))))
                                                      (let ((_%tl152226152249%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e152224152244%_)))
                    (_%hd152225152247%_
                     (let () (declare (not safe)) (##car _%e152224152244%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl152226152249%_))
                    (_%__kont157131157132%_
                     _%hd152225152247%_
                     _%hd152211152291%_)
                    (let () (declare (not safe)) (_%g152206152231%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g152206152231%_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g152206152231%_))))))))
                        (if (pair? _%rest152180152188%_)
                            (let ((_%hd152185152336%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest152180152188%_)))
                                  (_%tl152186152338%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest152180152188%_))))
                              (let* ((_%hd-bind152341%_ _%hd152185152336%_)
                                     (_%rest152343%_ _%tl152186152338%_))
                                (_%K152184152333%_
                                 _%rest152343%_
                                 _%hd-bind152341%_)))
                            (_%else152182152199%_))))))
                 (_%generate-letrec?151931%_
                  (lambda (_%hd152063%_)
                    (let _%lp152065%_ ((_%rest152067%_ _%hd152063%_))
                      (let* ((_%rest152068152076%_ _%rest152067%_)
                             (_%else152070152084%_ (lambda () '#t))
                             (_%K152072152161%_
                              (lambda (_%rest152087%_ _%hd-bind152088%_)
                                (let* ((_%g152090152107%_
                                        (lambda (_%g152091152104%_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g152091152104%_))))
                                       (_%g152089152158%_
                                        (lambda (_%g152091152110%_)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%g152091152110%_))
                                              (let ((_%e152094152112%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%g152091152110%_))))
                                                (let ((_%hd152095152115%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e152094152112%_)))
                                                      (_%tl152096152117%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e152094152112%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%hd152095152115%_))
                                                      (let ((_%e152097152120%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd152095152115%_))))
                (let ((_%hd152098152123%_
                       (let () (declare (not safe)) (##car _%e152097152120%_)))
                      (_%tl152099152125%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e152097152120%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl152099152125%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl152096152117%_))
                          (let ((_%e152100152128%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl152096152117%_))))
                            (let ((_%hd152101152131%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e152100152128%_)))
                                  (_%tl152102152133%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e152100152128%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl152102152133%_))
                                  ((lambda (_%L152136%_ _%L152137%_)
                                     (if (_%is-lambda-expr?151932%_
                                          _%L152136%_)
                                         (_%lp152065%_ _%rest152087%_)
                                         '#f))
                                   _%hd152101152131%_
                                   _%hd152098152123%_)
                                  (_%g152090152107%_ _%g152091152110%_))))
                          (_%g152090152107%_ _%g152091152110%_))
                      (_%g152090152107%_ _%g152091152110%_))))
              (_%g152090152107%_ _%g152091152110%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g152090152107%_
                                               _%g152091152110%_)))))
                                  (_%g152089152158%_ _%hd-bind152088%_)))))
                        (if (pair? _%rest152068152076%_)
                            (let ((_%hd152073152164%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%rest152068152076%_)))
                                  (_%tl152074152166%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%rest152068152076%_))))
                              (let* ((_%hd-bind152169%_ _%hd152073152164%_)
                                     (_%rest152171%_ _%tl152074152166%_))
                                (_%K152072152161%_
                                 _%rest152171%_
                                 _%hd-bind152169%_)))
                            (_%else152070152084%_))))))
                 (_%is-lambda-expr?151932%_
                  (lambda (_%expr152000%_)
                    (let* ((_%__stx157171157172%_ _%expr152000%_)
                           (_%g152003152017%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx157171157172%_)))))
                      (let ((_%__kont157173157174%_
                             (lambda (_%L152045%_ _%L152046%_) '#t))
                            (_%__kont157175157176%_ (lambda () '#f)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%__stx157171157172%_))
                            (let ((_%e152007152029%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%__stx157171157172%_))))
                              (let ((_%tl152009152034%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e152007152029%_)))
                                    (_%hd152008152032%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e152007152029%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%hd152008152032%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _%hd152008152032%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl152009152034%_))
                                            (let ((_%e152010152037%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%tl152009152034%_))))
                                              (let ((_%tl152012152042%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e152010152037%_)))
                                                    (_%hd152011152040%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e152010152037%_))))
                                                (_%__kont157173157174%_
                                                 _%tl152012152042%_
                                                 _%hd152011152040%_)))
                                            (_%__kont157175157176%_))
                                        (_%__kont157175157176%_))
                                    (_%__kont157175157176%_))))
                            (_%__kont157175157176%_)))))))
          (let* ((_%g151934151951%_
                  (lambda (_%g151935151948%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g151935151948%_))))
                 (_%g151933151997%_
                  (lambda (_%g151935151954%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g151935151954%_))
                        (let ((_%e151938151956%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g151935151954%_))))
                          (let ((_%hd151939151959%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e151938151956%_)))
                                (_%tl151940151961%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e151938151956%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl151940151961%_))
                                (let ((_%e151941151964%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl151940151961%_))))
                                  (let ((_%hd151942151967%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e151941151964%_)))
                                        (_%tl151943151969%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e151941151964%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl151943151969%_))
                                        (let ((_%e151944151972%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl151943151969%_))))
                                          (let ((_%hd151945151975%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e151944151972%_)))
                                                (_%tl151946151977%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e151944151972%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl151946151977%_))
                                                ((lambda (_%L151980%_
                                                          _%L151981%_)
                                                   (if (gxc#generate-runtime-simple-let?
                                                        _%L151981%_)
                                                       (if (_%generate-letrec?151931%_
                                                            _%L151981%_)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self151927%_
                                                            'letrec
                                                            _%L151981%_
                                                            _%L151980%_
                                                            '#f)
                                                           (gxc#generate-runtime-simple-let
                                                            _%self151927%_
                                                            'letrec*
                                                            _%L151981%_
                                                            _%L151980%_
                                                            '#f))
                                                       (_%generate-values151930%_
                                                        _%L151981%_
                                                        _%L151980%_)))
                                                 _%hd151945151975%_
                                                 _%hd151942151967%_)
                                                (_%g151934151951%_
                                                 _%g151935151954%_))))
                                        (_%g151934151951%_
                                         _%g151935151954%_))))
                                (_%g151934151951%_ _%g151935151954%_))))
                        (_%g151934151951%_ _%g151935151954%_)))))
            (_%g151933151997%_ _%stx151928%_)))))
    (define gxc#generate-runtime-simple-let?
      (lambda (_%hd151864%_)
        (let _%lp151866%_ ((_%rest151868%_ _%hd151864%_))
          (let* ((_%rest151869151885%_ _%rest151868%_)
                 (_%else151872151893%_ (lambda () '#f)))
            (let ((_%K151875151906%_
                   (lambda (_%rest151904%_) (_%lp151866%_ _%rest151904%_)))
                  (_%K151874151898%_ (lambda () '#t)))
              (let ((_%try-match151871151901%_
                     (lambda ()
                       (if (null? _%rest151869151885%_)
                           (_%K151874151898%_)
                           (_%else151872151893%_)))))
                (if (pair? _%rest151869151885%_)
                    (let ((_%tl151877151911%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest151869151885%_)))
                          (_%hd151876151909%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest151869151885%_))))
                      (if (pair? _%hd151876151909%_)
                          (let ((_%tl151879151916%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%hd151876151909%_)))
                                (_%hd151878151914%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%hd151876151909%_))))
                            (if (pair? _%hd151878151914%_)
                                (let ((_%tl151883151919%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd151878151914%_))))
                                  (if (null? _%tl151883151919%_)
                                      (if (pair? _%tl151879151916%_)
                                          (let ((_%tl151881151922%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tl151879151916%_))))
                                            (if (null? _%tl151881151922%_)
                                                (let ((_%rest151925%_
                                                       _%tl151877151911%_))
                                                  (_%lp151866%_
                                                   _%rest151925%_))
                                                (_%else151872151893%_)))
                                          (_%else151872151893%_))
                                      (_%else151872151893%_)))
                                (_%else151872151893%_)))
                          (_%else151872151893%_)))
                    (_%try-match151871151901%_))))))))
    (define gxc#generate-runtime-simple-let
      (lambda (_%self151775%_
               _%form151776%_
               _%hd151777%_
               _%body151778%_
               _%compiled-body?151779%_)
        (letrec ((_%generate1151781%_
                  (lambda (_%bind151820%_)
                    (let* ((_%bind151821151832%_ _%bind151820%_)
                           (_%E151823151836%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%bind151821151832%_
                                       '([[id] expr])))
                              '#!void))
                           (_%K151824151842%_
                            (lambda (_%expr151839%_ _%id151840%_)
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-binding-id*
                                       _%id151840%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self151775%_
                                             _%expr151839%_))
                                          '())))))
                      (if (pair? _%bind151821151832%_)
                          (let ((_%hd151825151845%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%bind151821151832%_)))
                                (_%tl151826151847%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%bind151821151832%_))))
                            (if (pair? _%hd151825151845%_)
                                (let ((_%hd151829151850%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%hd151825151845%_)))
                                      (_%tl151830151852%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%hd151825151845%_))))
                                  (let ((_%id151855%_ _%hd151829151850%_))
                                    (if (null? _%tl151830151852%_)
                                        (if (pair? _%tl151826151847%_)
                                            (let ((_%hd151827151857%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl151826151847%_)))
                                                  (_%tl151828151859%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl151826151847%_))))
                                              (let ((_%expr151862%_
                                                     _%hd151827151857%_))
                                                (if (null? _%tl151828151859%_)
                                                    (_%K151824151842%_
                                                     _%expr151862%_
                                                     _%id151855%_)
                                                    (_%E151823151836%_))))
                                            (_%E151823151836%_))
                                        (_%E151823151836%_))))
                                (_%E151823151836%_)))
                          (_%E151823151836%_))))))
          (let* ((_%bind151783%_ (map _%generate1151781%_ _%hd151777%_))
                 (_%body151785%_
                  (if _%compiled-body?151779%_
                      _%body151778%_
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self151775%_ _%body151778%_))))
                 (_%body151817%_
                  (let* ((_%body151786151794%_ _%body151785%_)
                         (_%else151788151802%_
                          (lambda () (cons _%body151785%_ '())))
                         (_%K151790151807%_
                          (lambda (_%exprs151805%_) _%exprs151805%_)))
                    (if (pair? _%body151786151794%_)
                        (let ((_%hd151791151810%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%body151786151794%_)))
                              (_%tl151792151812%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%body151786151794%_))))
                          (if (let ()
                                (declare (not safe))
                                (##eq? _%hd151791151810%_ 'begin))
                              (let ((_%exprs151815%_ _%tl151792151812%_))
                                (_%K151790151807%_ _%exprs151815%_))
                              (_%else151788151802%_)))
                        (_%else151788151802%_)))))
            (cons _%form151776%_ (cons _%bind151783%_ _%body151817%_))))))
    (define gxc#generate-runtime-quote%
      (lambda (_%self151675%_ _%stx151676%_)
        (letrec ((_%generate1151678%_
                  (lambda (_%datum151730%_)
                    (if (or (null? _%datum151730%_)
                            (let ()
                              (declare (not safe))
                              (interned-symbol? _%datum151730%_))
                            (let ()
                              (declare (not safe))
                              (gx#self-quoting? _%datum151730%_))
                            (eof-object? _%datum151730%_))
                        _%datum151730%_
                        (if (uninterned-symbol? _%datum151730%_)
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-gensym-reference__%
                               _%datum151730%_
                               '#t))
                            (if (pair? _%datum151730%_)
                                (cons (_%generate1151678%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%datum151730%_)))
                                      (_%generate1151678%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%datum151730%_))))
                                (if (box? _%datum151730%_)
                                    (box (_%generate1151678%_
                                          (unbox _%datum151730%_)))
                                    (if (vector? _%datum151730%_)
                                        (vector-map
                                         _%generate1151678%_
                                         _%datum151730%_)
                                        (if (or (s8vector? _%datum151730%_)
                                                (u8vector? _%datum151730%_)
                                                (s16vector? _%datum151730%_)
                                                (u16vector? _%datum151730%_)
                                                (s32vector? _%datum151730%_)
                                                (u32vector? _%datum151730%_)
                                                (s64vector? _%datum151730%_)
                                                (u64vector? _%datum151730%_)
                                                (f32vector? _%datum151730%_)
                                                (f64vector? _%datum151730%_))
                                            _%datum151730%_
                                            (let ()
                                              (declare (not safe))
                                              (gxc#raise-compile-error
                                               '"Cannot compile non-primitive quote"
                                               _%stx151676%_)))))))))))
          (let* ((_%g151680151693%_
                  (lambda (_%g151681151690%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g151681151690%_))))
                 (_%g151679151727%_
                  (lambda (_%g151681151696%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g151681151696%_))
                        (let ((_%e151683151698%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g151681151696%_))))
                          (let ((_%hd151684151701%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e151683151698%_)))
                                (_%tl151685151703%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e151683151698%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl151685151703%_))
                                (let ((_%e151686151706%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl151685151703%_))))
                                  (let ((_%hd151687151709%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e151686151706%_)))
                                        (_%tl151688151711%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e151686151706%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl151688151711%_))
                                        ((lambda (_%L151714%_)
                                           (cons 'quote
                                                 (cons (_%generate1151678%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%L151714%_)))
                                                       '())))
                                         _%hd151687151709%_)
                                        (_%g151680151693%_
                                         _%g151681151696%_))))
                                (_%g151680151693%_ _%g151681151696%_))))
                        (_%g151680151693%_ _%g151681151696%_)))))
            (_%g151679151727%_ _%stx151676%_)))))
    (define gxc#generate-runtime-call%
      (lambda (_%self151116%_ _%stx151117%_)
        (letrec ((_%compile-call151119%_
                  (lambda (_%rator151408%_ _%rands151409%_)
                    (let ((_%rator151415%_
                           (let ()
                             (declare (not safe))
                             (gxc#compile-e__1
                              _%self151116%_
                              _%rator151408%_)))
                          (_%rands151416%_
                           (map (lambda (_%g151410151412%_)
                                  (let ()
                                    (declare (not safe))
                                    (gxc#compile-e__1
                                     _%self151116%_
                                     _%g151410151412%_)))
                                _%rands151409%_)))
                      (let* ((_%__stx157218157219%_ _%rator151415%_)
                             (_%g151419151471%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx157218157219%_)))))
                        (let ((_%__kont157220157221%_
                               (lambda (_%L151595%_
                                        _%L151596%_
                                        _%L151597%_
                                        _%L151598%_)
                                 (if (let ((__tmp157890
                                            (let ()
                                              (declare (not safe))
                                              (##length _%rands151416%_)))
                                           (__tmp157888
                                            (length (let ((__tmp157889
                                                           (lambda (_%g151634151637%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g151635151639%_)
                     (cons _%g151634151637%_ _%g151635151639%_))))
              (declare (not safe))
              (__foldr1 __tmp157889 '() _%L151597%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##fx= __tmp157890 __tmp157888))
                                     (let* ((_%id151642%_ _%L151598%_)
                                            (_%args151651%_
                                             (let ((__tmp157891
                                                    (lambda (_%g151643151646%_
                                                             _%g151644151648%_)
                                                      (cons _%g151643151646%_
                                                            _%g151644151648%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp157891
                                                '()
                                                _%L151597%_)))
                                            (_%body151660%_
                                             (let ((__tmp157892
                                                    (lambda (_%g151652151655%_
                                                             _%g151653151657%_)
                                                      (cons _%g151652151655%_
                                                            _%g151653151657%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp157892
                                                '()
                                                _%L151596%_)))
                                            (_%init151662%_
                                             (map list
                                                  _%args151651%_
                                                  _%rands151416%_)))
                                       (cons 'let
                                             (cons _%id151642%_
                                                   (cons _%init151662%_
                                                         _%body151660%_))))
                                     (let ((__tmp157893
                                            (let ((__tmp157894
                                                   (lambda (_%g151664151667%_
                                                            _%g151665151669%_)
                                                     (cons _%g151664151667%_
                                                           _%g151665151669%_))))
                                              (declare (not safe))
                                              (__foldr1
                                               __tmp157894
                                               '()
                                               _%L151597%_))))
                                       (declare (not safe))
                                       (gxc#raise-compile-error
                                        '"Illegal loop application; arity mismatch"
                                        _%stx151117%_
                                        __tmp157893
                                        _%rands151416%_)))))
                              (_%__kont157226157227%_
                               (lambda ()
                                 (cons _%rator151415%_ _%rands151416%_))))
                          (let ((_%__match157285157286%_
                                 (lambda (_%e151425151483%_
                                          _%hd151426151486%_
                                          _%tl151427151488%_
                                          _%e151428151491%_
                                          _%hd151429151494%_
                                          _%tl151430151496%_
                                          _%e151431151499%_
                                          _%hd151432151502%_
                                          _%tl151433151504%_
                                          _%e151434151507%_
                                          _%hd151435151510%_
                                          _%tl151436151512%_
                                          _%e151437151515%_
                                          _%hd151438151518%_
                                          _%tl151439151520%_
                                          _%e151440151523%_
                                          _%hd151441151526%_
                                          _%tl151442151528%_
                                          _%e151443151531%_
                                          _%hd151444151534%_
                                          _%tl151445151536%_
                                          _%__splice157222157223%_
                                          _%target151446151539%_
                                          _%tl151448151541%_)
                                   (letrec ((_%loop151449151544%_
                                             (lambda (_%hd151447151547%_
                                                      _%arg151453151549%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%hd151447151547%_))
                                                   (let ((_%e151450151552%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%hd151447151547%_))))
                                                     (let ((_%lp-tl151452151557%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e151450151552%_)))
                                                           (_%lp-hd151451151555%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e151450151552%_))))
                                                       (_%loop151449151544%_
                                                        _%lp-tl151452151557%_
                                                        (cons _%lp-hd151451151555%_
                                                              _%arg151453151549%_))))
                                                   (let ((_%arg151454151560%_
                                                          (reverse _%arg151453151549%_)))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair/null?
                                                            _%tl151445151536%_))
                                                         (let ((_%__splice157224157225%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-split-splice->vector
                           _%tl151445151536%_
                           '0))))
                   (let ((_%tl151457151565%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice157224157225%_ '1)))
                         (_%target151455151563%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice157224157225%_ '0))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl151457151565%_))
                         (letrec ((_%loop151458151568%_
                                   (lambda (_%hd151456151571%_
                                            _%body151462151573%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%hd151456151571%_))
                                         (let ((_%e151459151576%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd151456151571%_))))
                                           (let ((_%lp-tl151461151581%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e151459151576%_)))
                                                 (_%lp-hd151460151579%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e151459151576%_))))
                                             (_%loop151458151568%_
                                              _%lp-tl151461151581%_
                                              (cons _%lp-hd151460151579%_
                                                    _%body151462151573%_))))
                                         (let ((_%body151463151584%_
                                                (reverse _%body151462151573%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-null?
                                                  _%tl151439151520%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%tl151433151504%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl151430151496%_))
                                                       (let ((_%e151464151587%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%tl151430151496%_))))
                 (let ((_%tl151466151592%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e151464151587%_)))
                       (_%hd151465151590%_
                        (let ()
                          (declare (not safe))
                          (##car _%e151464151587%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl151466151592%_))
                       (let ((_%L151595%_ _%hd151465151590%_)
                             (_%L151596%_ _%body151463151584%_)
                             (_%L151597%_ _%arg151454151560%_)
                             (_%L151598%_ _%hd151435151510%_))
                         (if (eq? _%L151598%_ _%L151595%_)
                             (_%__kont157220157221%_
                              _%L151595%_
                              _%L151596%_
                              _%L151597%_
                              _%L151598%_)
                             (_%__kont157226157227%_)))
                       (_%__kont157226157227%_))))
               (_%__kont157226157227%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont157226157227%_))
                                               (_%__kont157226157227%_)))))))
                           (_%loop151458151568%_ _%target151455151563%_ '()))
                         (_%__kont157226157227%_))))
                 (_%__kont157226157227%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%loop151449151544%_
                                      _%target151446151539%_
                                      '())))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx157218157219%_))
                                (let ((_%e151425151483%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx157218157219%_))))
                                  (let ((_%tl151427151488%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e151425151483%_)))
                                        (_%hd151426151486%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e151425151483%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd151426151486%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               'letrec
                                               _%hd151426151486%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl151427151488%_))
                                                (let ((_%e151428151491%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl151427151488%_))))
                                                  (let ((_%tl151430151496%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e151428151491%_)))
                                                        (_%hd151429151494%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e151428151491%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd151429151494%_))
                                                        (let ((_%e151431151499%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd151429151494%_))))
                  (let ((_%tl151433151504%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e151431151499%_)))
                        (_%hd151432151502%_
                         (let ()
                           (declare (not safe))
                           (##car _%e151431151499%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd151432151502%_))
                        (let ((_%e151434151507%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%hd151432151502%_))))
                          (let ((_%tl151436151512%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e151434151507%_)))
                                (_%hd151435151510%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e151434151507%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl151436151512%_))
                                (let ((_%e151437151515%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl151436151512%_))))
                                  (let ((_%tl151439151520%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e151437151515%_)))
                                        (_%hd151438151518%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e151437151515%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd151438151518%_))
                                        (let ((_%e151440151523%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd151438151518%_))))
                                          (let ((_%tl151442151528%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e151440151523%_)))
                                                (_%hd151441151526%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e151440151523%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _%hd151441151526%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       'lambda
                                                       _%hd151441151526%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl151442151528%_))
                                                        (let ((_%e151443151531%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%tl151442151528%_))))
                  (let ((_%tl151445151536%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e151443151531%_)))
                        (_%hd151444151534%_
                         (let ()
                           (declare (not safe))
                           (##car _%e151443151531%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%hd151444151534%_))
                        (let ((_%__splice157222157223%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice->vector
                                  _%hd151444151534%_
                                  '0))))
                          (let ((_%tl151448151541%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice157222157223%_ '1)))
                                (_%target151446151539%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref
                                    _%__splice157222157223%_
                                    '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl151448151541%_))
                                (_%__match157285157286%_
                                 _%e151425151483%_
                                 _%hd151426151486%_
                                 _%tl151427151488%_
                                 _%e151428151491%_
                                 _%hd151429151494%_
                                 _%tl151430151496%_
                                 _%e151431151499%_
                                 _%hd151432151502%_
                                 _%tl151433151504%_
                                 _%e151434151507%_
                                 _%hd151435151510%_
                                 _%tl151436151512%_
                                 _%e151437151515%_
                                 _%hd151438151518%_
                                 _%tl151439151520%_
                                 _%e151440151523%_
                                 _%hd151441151526%_
                                 _%tl151442151528%_
                                 _%e151443151531%_
                                 _%hd151444151534%_
                                 _%tl151445151536%_
                                 _%__splice157222157223%_
                                 _%target151446151539%_
                                 _%tl151448151541%_)
                                (_%__kont157226157227%_))))
                        (_%__kont157226157227%_))))
                (_%__kont157226157227%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont157226157227%_))
                                                (_%__kont157226157227%_))))
                                        (_%__kont157226157227%_))))
                                (_%__kont157226157227%_))))
                        (_%__kont157226157227%_))))
                (_%__kont157226157227%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont157226157227%_))
                                            (_%__kont157226157227%_))
                                        (_%__kont157226157227%_))))
                                (_%__kont157226157227%_)))))))))
          (let* ((_%g151121151144%_
                  (lambda (_%g151122151141%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g151122151141%_))))
                 (_%g151120151405%_
                  (lambda (_%g151122151147%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g151122151147%_))
                        (let ((_%e151125151149%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g151122151147%_))))
                          (let ((_%hd151126151152%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e151125151149%_)))
                                (_%tl151127151154%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e151125151149%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl151127151154%_))
                                (let ((_%e151128151157%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl151127151154%_))))
                                  (let ((_%hd151129151160%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e151128151157%_)))
                                        (_%tl151130151162%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e151128151157%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%tl151130151162%_))
                                        (let ((_g157895_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _%tl151130151162%_
                                                  '0))))
                                          (begin
                                            (let ((_g157896_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g157895_)
                                                         (##values-length
                                                          _g157895_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g157896_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g157896_)))
                                            (let ((_%target151131151165%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g157895_
                                                      0)))
                                                  (_%tl151133151167%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##values-ref
                                                      _g157895_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%tl151133151167%_))
                                                  (letrec ((_%loop151134151170%_
                                                            (lambda (_%hd151132151173%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%rand151138151175%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%hd151132151173%_))
                          (let ((_%e151135151178%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd151132151173%_))))
                            (let ((_%lp-hd151136151181%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e151135151178%_)))
                                  (_%lp-tl151137151183%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e151135151178%_))))
                              (_%loop151134151170%_
                               _%lp-tl151137151183%_
                               (cons _%lp-hd151136151181%_
                                     _%rand151138151175%_))))
                          (let ((_%rand151139151186%_
                                 (reverse _%rand151138151175%_)))
                            ((lambda (_%L151189%_ _%L151190%_)
                               (if (gxc#current-compile-decls-unsafe?)
                                   (_%compile-call151119%_
                                    _%L151190%_
                                    (let ((__tmp157897
                                           (lambda (_%g151207151210%_
                                                    _%g151208151212%_)
                                             (cons _%g151207151210%_
                                                   _%g151208151212%_))))
                                      (declare (not safe))
                                      (__foldr1 __tmp157897 '() _%L151189%_)))
                                   (let* ((_%__stx157334157335%_ _%L151190%_)
                                          (_%g151216151228%_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%__stx157334157335%_)))))
                                     (let ((_%__kont157336157337%_
                                            (lambda ()
                                              (let ((_%f151265%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self151116%_
                                                        _%L151190%_))))
                                                (if (and (let ((__tmp157898
                                                                (symbol->string
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%f151265%_)))
                   (declare (not safe))
                   (##string-prefix? '"##" __tmp157898))
                 (not (let ()
                        (declare (not safe))
                        (##memq _%f151265%_ gxc#checked-primitives))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let _%lp151267%_ ((_%rest151270%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (reverse (let ((__tmp157900
                                                (lambda (_%g151387151390%_
                                                         _%g151388151392%_)
                                                  (cons _%g151387151390%_
                                                        _%g151388151392%_))))
                                           (declare (not safe))
                                           (__foldr1
                                            __tmp157900
                                            '()
                                            _%L151189%_))))
                               (_%bind151272%_ '())
                               (_%args151273%_ '()))
              (let* ((_%rest151274151282%_ _%rest151270%_)
                     (_%else151276151290%_
                      (lambda ()
                        (cons 'let
                              (cons _%bind151272%_
                                    (cons '(declare (not safe))
                                          (cons (cons _%f151265%_
                                                      _%args151273%_)
                                                '()))))))
                     (_%K151278151376%_
                      (lambda (_%rest151293%_ _%e151294%_)
                        (let* ((_%__stx157288157289%_ _%e151294%_)
                               (_%g151299151317%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%__stx157288157289%_)))))
                          (let ((_%__kont157290157291%_
                                 (lambda ()
                                   (_%lp151267%_
                                    _%rest151293%_
                                    _%bind151272%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e151294%_))
                                          _%args151273%_))))
                                (_%__kont157292157293%_
                                 (lambda ()
                                   (_%lp151267%_
                                    _%rest151293%_
                                    _%bind151272%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__0 _%e151294%_))
                                          _%args151273%_))))
                                (_%__kont157294157295%_
                                 (lambda ()
                                   (let ((_%tmp151324%_
                                          (let ((__tmp157899
                                                 (let ()
                                                   (declare (not safe))
                                                   (##gensym '__tmp))))
                                            (declare (not safe))
                                            (make-symbol__0 __tmp157899))))
                                     (_%lp151267%_
                                      _%rest151293%_
                                      (cons (cons _%tmp151324%_
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gxc#compile-e__0
                                                           _%e151294%_))
                                                        '()))
                                            _%bind151272%_)
                                      (cons _%tmp151324%_ _%args151273%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%__stx157288157289%_))
                                (let ((_%e151301151355%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%__stx157288157289%_))))
                                  (let ((_%tl151303151360%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e151301151355%_)))
                                        (_%hd151302151358%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e151301151355%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd151302151358%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%hd151302151358%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl151303151360%_))
                                                (let ((_%e151304151363%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl151303151360%_))))
                                                  (let ((_%tl151306151368%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e151304151363%_)))
                                                        (_%hd151305151366%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e151304151363%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl151306151368%_))
                                                        (_%__kont157290157291%_)
                                                        (_%__kont157294157295%_))))
                                                (_%__kont157294157295%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#quote
                                                   _%hd151302151358%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%tl151303151360%_))
                                                    (let ((_%e151310151340%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%tl151303151360%_))))
                                                      (let ((_%tl151312151345%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e151310151340%_)))
                    (_%hd151311151343%_
                     (let () (declare (not safe)) (##car _%e151310151340%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%tl151312151345%_))
                    (_%__kont157292157293%_)
                    (_%__kont157294157295%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont157294157295%_))
                                                (_%__kont157294157295%_)))
                                        (_%__kont157294157295%_))))
                                (_%__kont157294157295%_)))))))
                (if (pair? _%rest151274151282%_)
                    (let ((_%hd151279151379%_
                           (let ()
                             (declare (not safe))
                             (##car _%rest151274151282%_)))
                          (_%tl151280151381%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%rest151274151282%_))))
                      (let* ((_%e151384%_ _%hd151279151379%_)
                             (_%rest151386%_ _%tl151280151381%_))
                        (_%K151278151376%_ _%rest151386%_ _%e151384%_)))
                    (_%else151276151290%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%compile-call151119%_
                                                     _%L151190%_
                                                     (let ((__tmp157901
                                                            (lambda (_%g151394151397%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g151395151399%_)
                      (cons _%g151394151397%_ _%g151395151399%_))))
               (declare (not safe))
               (__foldr1 __tmp157901 '() _%L151189%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%__kont157338157339%_
                                            (lambda ()
                                              (_%compile-call151119%_
                                               _%L151190%_
                                               (let ((__tmp157902
                                                      (lambda (_%g151234151237%_
                                                               _%g151235151239%_)
                                                        (cons _%g151234151237%_
                                                              _%g151235151239%_))))
                                                 (declare (not safe))
                                                 (__foldr1
                                                  __tmp157902
                                                  '()
                                                  _%L151189%_))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%__stx157334157335%_))
                                           (let ((_%e151218151247%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%__stx157334157335%_))))
                                             (let ((_%tl151220151252%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e151218151247%_)))
                                                   (_%hd151219151250%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e151218151247%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd151219151250%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#ref
                                                          _%hd151219151250%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl151220151252%_))
                                                           (let ((_%e151221151255%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%tl151220151252%_))))
                     (let ((_%tl151223151260%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e151221151255%_)))
                           (_%hd151222151258%_
                            (let ()
                              (declare (not safe))
                              (##car _%e151221151255%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%tl151223151260%_))
                           (_%__kont157336157337%_)
                           (_%__kont157338157339%_))))
                   (_%__kont157338157339%_))
               (_%__kont157338157339%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont157338157339%_))))
                                           (_%__kont157338157339%_))))))
                             _%rand151139151186%_
                             _%hd151129151160%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop151134151170%_
                                                     _%target151131151165%_
                                                     '()))
                                                  (_%g151121151144%_
                                                   _%g151122151147%_)))))
                                        (_%g151121151144%_
                                         _%g151122151147%_))))
                                (_%g151121151144%_ _%g151122151147%_))))
                        (_%g151121151144%_ _%g151122151147%_)))))
            (_%g151120151405%_ _%stx151117%_)))))
    (define gxc#generate-runtime-call-unchecked%
      (lambda (_%self150859%_ _%stx150860%_)
        (let* ((_%__stx157406157407%_ _%stx150860%_)
               (_%g150863150892%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx157406157407%_)))))
          (let ((_%__kont157408157409%_
                 (lambda (_%L150960%_ _%L150961%_)
                   (if (gxc#current-compile-decls-unsafe?)
                       (gxc#generate-runtime-call%
                        _%self150859%_
                        _%stx150860%_)
                       (let ((_%f150983%_
                              (let ((__tmp157903
                                     (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f '%#ref))
                                           (cons _%L150961%_ '()))))
                                (declare (not safe))
                                (gxc#compile-e__1
                                 _%self150859%_
                                 __tmp157903))))
                         (let _%lp150985%_ ((_%rest150988%_
                                             (reverse (let ((__tmp157905
                                                             (lambda (_%g151105151108%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g151106151110%_)
                       (cons _%g151105151108%_ _%g151106151110%_))))
                (declare (not safe))
                (__foldr1 __tmp157905 '() _%L150960%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%bind150990%_ '())
                                            (_%args150991%_ '()))
                           (let* ((_%rest150992151000%_ _%rest150988%_)
                                  (_%else150994151008%_
                                   (lambda ()
                                     (cons 'let
                                           (cons _%bind150990%_
                                                 (cons '(declare (not safe))
                                                       (cons (cons _%f150983%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%args150991%_)
                     '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%K150996151094%_
                                   (lambda (_%rest151011%_ _%e151012%_)
                                     (let* ((_%__stx157360157361%_ _%e151012%_)
                                            (_%g151017151035%_
                                             (lambda ()
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%__stx157360157361%_)))))
                                       (let ((_%__kont157362157363%_
                                              (lambda ()
                                                (_%lp150985%_
                                                 _%rest151011%_
                                                 _%bind150990%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e151012%_))
                                                       _%args150991%_))))
                                             (_%__kont157364157365%_
                                              (lambda ()
                                                (_%lp150985%_
                                                 _%rest151011%_
                                                 _%bind150990%_
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__0
                                                          _%e151012%_))
                                                       _%args150991%_))))
                                             (_%__kont157366157367%_
                                              (lambda ()
                                                (let ((_%tmp151042%_
                                                       (let ((__tmp157904
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##gensym '__tmp))))
                 (declare (not safe))
                 (make-symbol__0 __tmp157904))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%lp150985%_
                                                   _%rest151011%_
                                                   (cons (cons _%tmp151042%_
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__0 _%e151012%_))
                             '()))
                 _%bind150990%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _%tmp151042%_
                                                         _%args150991%_))))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%__stx157360157361%_))
                                             (let ((_%e151019151073%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%__stx157360157361%_))))
                                               (let ((_%tl151021151078%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e151019151073%_)))
                                                     (_%hd151020151076%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e151019151073%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd151020151076%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#ref
                                                            _%hd151020151076%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl151021151078%_))
                     (let ((_%e151022151081%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl151021151078%_))))
                       (let ((_%tl151024151086%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e151022151081%_)))
                             (_%hd151023151084%_
                              (let ()
                                (declare (not safe))
                                (##car _%e151022151081%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl151024151086%_))
                             (_%__kont157362157363%_)
                             (_%__kont157366157367%_))))
                     (_%__kont157366157367%_))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-eq? '%#quote _%hd151020151076%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl151021151078%_))
                         (let ((_%e151028151058%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl151021151078%_))))
                           (let ((_%tl151030151063%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e151028151058%_)))
                                 (_%hd151029151061%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e151028151058%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl151030151063%_))
                                 (_%__kont157364157365%_)
                                 (_%__kont157366157367%_))))
                         (_%__kont157366157367%_))
                     (_%__kont157366157367%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont157366157367%_))))
                                             (_%__kont157366157367%_)))))))
                             (if (pair? _%rest150992151000%_)
                                 (let ((_%hd150997151097%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%rest150992151000%_)))
                                       (_%tl150998151099%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest150992151000%_))))
                                   (let* ((_%e151102%_ _%hd150997151097%_)
                                          (_%rest151104%_ _%tl150998151099%_))
                                     (_%K150996151094%_
                                      _%rest151104%_
                                      _%e151102%_)))
                                 (_%else150994151008%_))))))))
                (_%__kont157412157413%_
                 (lambda ()
                   (gxc#generate-runtime-call% _%self150859%_ _%stx150860%_))))
            (let ((_%__match157451157452%_
                   (lambda (_%e150867150904%_
                            _%hd150868150907%_
                            _%tl150869150909%_
                            _%e150870150912%_
                            _%hd150871150915%_
                            _%tl150872150917%_
                            _%e150873150920%_
                            _%hd150874150923%_
                            _%tl150875150925%_
                            _%e150876150928%_
                            _%hd150877150931%_
                            _%tl150878150933%_
                            _%__splice157410157411%_
                            _%target150879150936%_
                            _%tl150881150938%_)
                     (letrec ((_%loop150882150941%_
                               (lambda (_%hd150880150944%_
                                        _%rand150886150946%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd150880150944%_))
                                     (let ((_%e150883150949%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd150880150944%_))))
                                       (let ((_%lp-tl150885150954%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e150883150949%_)))
                                             (_%lp-hd150884150952%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e150883150949%_))))
                                         (_%loop150882150941%_
                                          _%lp-tl150885150954%_
                                          (cons _%lp-hd150884150952%_
                                                _%rand150886150946%_))))
                                     (let ((_%rand150887150957%_
                                            (reverse _%rand150886150946%_)))
                                       (_%__kont157408157409%_
                                        _%rand150887150957%_
                                        _%hd150877150931%_))))))
                       (_%loop150882150941%_ _%target150879150936%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx157406157407%_))
                  (let ((_%e150867150904%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx157406157407%_))))
                    (let ((_%tl150869150909%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e150867150904%_)))
                          (_%hd150868150907%_
                           (let ()
                             (declare (not safe))
                             (##car _%e150867150904%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl150869150909%_))
                          (let ((_%e150870150912%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl150869150909%_))))
                            (let ((_%tl150872150917%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e150870150912%_)))
                                  (_%hd150871150915%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e150870150912%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd150871150915%_))
                                  (let ((_%e150873150920%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd150871150915%_))))
                                    (let ((_%tl150875150925%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e150873150920%_)))
                                          (_%hd150874150923%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e150873150920%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd150874150923%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd150874150923%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl150875150925%_))
                                                  (let ((_%e150876150928%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl150875150925%_))))
                                                    (let ((_%tl150878150933%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e150876150928%_)))
                                                          (_%hd150877150931%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e150876150928%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl150878150933%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl150872150917%_))
                      (let ((_%__splice157410157411%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl150872150917%_
                                '0))))
                        (let ((_%tl150881150938%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice157410157411%_ '1)))
                              (_%target150879150936%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice157410157411%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl150881150938%_))
                              (_%__match157451157452%_
                               _%e150867150904%_
                               _%hd150868150907%_
                               _%tl150869150909%_
                               _%e150870150912%_
                               _%hd150871150915%_
                               _%tl150872150917%_
                               _%e150873150920%_
                               _%hd150874150923%_
                               _%tl150875150925%_
                               _%e150876150928%_
                               _%hd150877150931%_
                               _%tl150878150933%_
                               _%__splice157410157411%_
                               _%target150879150936%_
                               _%tl150881150938%_)
                              (_%__kont157412157413%_))))
                      (_%__kont157412157413%_))
                  (_%__kont157412157413%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont157412157413%_))
                                              (_%__kont157412157413%_))
                                          (_%__kont157412157413%_))))
                                  (_%__kont157412157413%_))))
                          (_%__kont157412157413%_))))
                  (_%__kont157412157413%_)))))))
    (define gxc#generate-runtime-if%
      (lambda (_%self150671%_ _%stx150672%_)
        (letrec ((_%simplify150674%_
                  (lambda (_%code150759%_)
                    (let* ((_%code150760150778%_ _%code150759%_)
                           (_%else150762150786%_ (lambda () _%code150759%_))
                           (_%K150764150822%_
                            (lambda (_%expr150789%_ _%test150790%_)
                              (let* ((_%expr150791150799%_ _%expr150789%_)
                                     (_%else150793150807%_
                                      (lambda ()
                                        (cons 'and
                                              (cons _%test150790%_
                                                    (cons _%expr150789%_
                                                          '())))))
                                     (_%K150795150812%_
                                      (lambda (_%exprs150810%_)
                                        (cons 'and
                                              (cons _%test150790%_
                                                    _%exprs150810%_)))))
                                (if (pair? _%expr150791150799%_)
                                    (let ((_%hd150796150815%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%expr150791150799%_)))
                                          (_%tl150797150817%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%expr150791150799%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##eq? _%hd150796150815%_ 'and))
                                          (let ((_%exprs150820%_
                                                 _%tl150797150817%_))
                                            (_%K150795150812%_
                                             _%exprs150820%_))
                                          (_%else150793150807%_)))
                                    (_%else150793150807%_))))))
                      (if (pair? _%code150760150778%_)
                          (let ((_%hd150765150825%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%code150760150778%_)))
                                (_%tl150766150827%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%code150760150778%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##eq? _%hd150765150825%_ 'if))
                                (if (pair? _%tl150766150827%_)
                                    (let ((_%hd150767150830%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl150766150827%_)))
                                          (_%tl150768150832%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl150766150827%_))))
                                      (let ((_%test150835%_
                                             _%hd150767150830%_))
                                        (if (pair? _%tl150768150832%_)
                                            (let ((_%hd150769150837%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%tl150768150832%_)))
                                                  (_%tl150770150839%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%tl150768150832%_))))
                                              (let ((_%expr150842%_
                                                     _%hd150769150837%_))
                                                (if (pair? _%tl150770150839%_)
                                                    (let ((_%hd150771150844%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tl150770150839%_)))
                                                          (_%tl150772150846%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tl150770150839%_))))
                                                      (if (pair? _%hd150771150844%_)
                                                          (let ((_%hd150773150849%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%hd150771150844%_)))
                        (_%tl150774150851%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%hd150771150844%_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _%hd150773150849%_ 'quote))
                        (if (pair? _%tl150774150851%_)
                            (let ((_%hd150775150854%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%tl150774150851%_)))
                                  (_%tl150776150856%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%tl150774150851%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (##eq? _%hd150775150854%_ '#f))
                                  (if (null? _%tl150776150856%_)
                                      (if (null? _%tl150772150846%_)
                                          (_%K150764150822%_
                                           _%expr150842%_
                                           _%test150835%_)
                                          (_%else150762150786%_))
                                      (_%else150762150786%_))
                                  (_%else150762150786%_)))
                            (_%else150762150786%_))
                        (_%else150762150786%_)))
                  (_%else150762150786%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else150762150786%_))))
                                            (_%else150762150786%_))))
                                    (_%else150762150786%_))
                                (_%else150762150786%_)))
                          (_%else150762150786%_))))))
          (let* ((_%g150676150697%_
                  (lambda (_%g150677150694%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g150677150694%_))))
                 (_%g150675150756%_
                  (lambda (_%g150677150700%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g150677150700%_))
                        (let ((_%e150681150702%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g150677150700%_))))
                          (let ((_%hd150682150705%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e150681150702%_)))
                                (_%tl150683150707%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e150681150702%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl150683150707%_))
                                (let ((_%e150684150710%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl150683150707%_))))
                                  (let ((_%hd150685150713%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e150684150710%_)))
                                        (_%tl150686150715%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e150684150710%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl150686150715%_))
                                        (let ((_%e150687150718%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl150686150715%_))))
                                          (let ((_%hd150688150721%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e150687150718%_)))
                                                (_%tl150689150723%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e150687150718%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl150689150723%_))
                                                (let ((_%e150690150726%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%tl150689150723%_))))
                                                  (let ((_%hd150691150729%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e150690150726%_)))
                                                        (_%tl150692150731%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e150690150726%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl150692150731%_))
                                                        ((lambda (_%L150734%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L150735%_
                          _%L150736%_)
                   (if (let ()
                         (declare (not safe))
                         (gxc#current-compile-boolean-context))
                       (_%simplify150674%_
                        (cons 'if
                              (cons (let ()
                                      (declare (not safe))
                                      (gxc#compile-e__1
                                       _%self150671%_
                                       _%L150736%_))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gxc#compile-e__1
                                             _%self150671%_
                                             _%L150735%_))
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gxc#compile-e__1
                                                   _%self150671%_
                                                   _%L150734%_))
                                                '())))))
                       (cons 'if
                             (cons (let ((__tmp157906
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self150671%_
                                               _%L150736%_)))))
                                     (declare (not safe))
                                     (call-with-parameters__1
                                      __tmp157906
                                      gxc#current-compile-boolean-context
                                      '#t))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self150671%_
                                            _%L150735%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self150671%_
                                                  _%L150734%_))
                                               '()))))))
                 _%hd150691150729%_
                 _%hd150688150721%_
                 _%hd150685150713%_)
                (_%g150676150697%_ _%g150677150700%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g150676150697%_
                                                 _%g150677150700%_))))
                                        (_%g150676150697%_
                                         _%g150677150700%_))))
                                (_%g150676150697%_ _%g150677150700%_))))
                        (_%g150676150697%_ _%g150677150700%_)))))
            (_%g150675150756%_ _%stx150672%_)))))
    (define gxc#generate-runtime-ref%
      (lambda (_%self150619%_ _%stx150620%_)
        (let* ((_%g150622150635%_
                (lambda (_%g150623150632%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g150623150632%_))))
               (_%g150621150668%_
                (lambda (_%g150623150638%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g150623150638%_))
                      (let ((_%e150625150640%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g150623150638%_))))
                        (let ((_%hd150626150643%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e150625150640%_)))
                              (_%tl150627150645%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e150625150640%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl150627150645%_))
                              (let ((_%e150628150648%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl150627150645%_))))
                                (let ((_%hd150629150651%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e150628150648%_)))
                                      (_%tl150630150653%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e150628150648%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl150630150653%_))
                                      ((lambda (_%L150656%_)
                                         (let ()
                                           (declare (not safe))
                                           (gxc#generate-runtime-binding-id
                                            _%L150656%_)))
                                       _%hd150629150651%_)
                                      (_%g150622150635%_ _%g150623150638%_))))
                              (_%g150622150635%_ _%g150623150638%_))))
                      (_%g150622150635%_ _%g150623150638%_)))))
          (_%g150621150668%_ _%stx150620%_))))
    (define gxc#generate-runtime-setq%
      (lambda (_%self150551%_ _%stx150552%_)
        (let* ((_%g150554150571%_
                (lambda (_%g150555150568%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g150555150568%_))))
               (_%g150553150616%_
                (lambda (_%g150555150574%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g150555150574%_))
                      (let ((_%e150558150576%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g150555150574%_))))
                        (let ((_%hd150559150579%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e150558150576%_)))
                              (_%tl150560150581%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e150558150576%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl150560150581%_))
                              (let ((_%e150561150584%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl150560150581%_))))
                                (let ((_%hd150562150587%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e150561150584%_)))
                                      (_%tl150563150589%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e150561150584%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl150563150589%_))
                                      (let ((_%e150564150592%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl150563150589%_))))
                                        (let ((_%hd150565150595%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e150564150592%_)))
                                              (_%tl150566150597%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e150564150592%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl150566150597%_))
                                              ((lambda (_%L150600%_
                                                        _%L150601%_)
                                                 (cons 'set!
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#generate-runtime-binding-id _%L150601%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _%self150551%_ _%L150600%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd150565150595%_
                                               _%hd150562150587%_)
                                              (_%g150554150571%_
                                               _%g150555150574%_))))
                                      (_%g150554150571%_ _%g150555150574%_))))
                              (_%g150554150571%_ _%g150555150574%_))))
                      (_%g150554150571%_ _%g150555150574%_)))))
          (_%g150553150616%_ _%stx150552%_))))
    (define gxc#generate-runtime-struct-instancep%
      (lambda (_%self150362%_ _%stx150363%_)
        (let* ((_%g150365150382%_
                (lambda (_%g150366150379%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g150366150379%_))))
               (_%g150364150548%_
                (lambda (_%g150366150385%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g150366150385%_))
                      (let ((_%e150369150387%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g150366150385%_))))
                        (let ((_%hd150370150390%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e150369150387%_)))
                              (_%tl150371150392%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e150369150387%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl150371150392%_))
                              (let ((_%e150372150395%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl150371150392%_))))
                                (let ((_%hd150373150398%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e150372150395%_)))
                                      (_%tl150374150400%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e150372150395%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl150374150400%_))
                                      (let ((_%e150375150403%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl150374150400%_))))
                                        (let ((_%hd150376150406%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e150375150403%_)))
                                              (_%tl150377150408%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e150375150403%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl150377150408%_))
                                              ((lambda (_%L150411%_
                                                        _%L150412%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self150362%_ _%L150411%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _%self150362%_ _%L150412%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp150427%_ ((_%rest150430%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L150412%_ (cons _%L150411%_ '())))
                                (_%bind150432%_ '())
                                (_%args150433%_ '()))
               (let* ((_%rest150434150442%_ _%rest150430%_)
                      (_%else150436150450%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind150432%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-instance-of?
                                                       _%args150433%_)
                                                 '()))))))
                      (_%K150438150536%_
                       (lambda (_%rest150453%_ _%e150454%_)
                         (let* ((_%__stx157454157455%_ _%e150454%_)
                                (_%g150459150477%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx157454157455%_)))))
                           (let ((_%__kont157456157457%_
                                  (lambda ()
                                    (_%lp150427%_
                                     _%rest150453%_
                                     _%bind150432%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e150454%_))
                                           _%args150433%_))))
                                 (_%__kont157458157459%_
                                  (lambda ()
                                    (_%lp150427%_
                                     _%rest150453%_
                                     _%bind150432%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e150454%_))
                                           _%args150433%_))))
                                 (_%__kont157460157461%_
                                  (lambda ()
                                    (let ((_%tmp150484%_
                                           (let ((__tmp157907
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp157907))))
                                      (_%lp150427%_
                                       _%rest150453%_
                                       (cons (cons _%tmp150484%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e150454%_))
                                                         '()))
                                             _%bind150432%_)
                                       (cons _%tmp150484%_ _%args150433%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx157454157455%_))
                                 (let ((_%e150461150515%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx157454157455%_))))
                                   (let ((_%tl150463150520%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e150461150515%_)))
                                         (_%hd150462150518%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e150461150515%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd150462150518%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd150462150518%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl150463150520%_))
                                                 (let ((_%e150464150523%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl150463150520%_))))
                                                   (let ((_%tl150466150528%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e150464150523%_)))
                                                         (_%hd150465150526%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e150464150523%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl150466150528%_))
                                                         (_%__kont157456157457%_)
                                                         (_%__kont157460157461%_))))
                                                 (_%__kont157460157461%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd150462150518%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl150463150520%_))
                                                     (let ((_%e150470150500%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl150463150520%_))))
                                                       (let ((_%tl150472150505%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e150470150500%_)))
                     (_%hd150471150503%_
                      (let () (declare (not safe)) (##car _%e150470150500%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl150472150505%_))
                     (_%__kont157458157459%_)
                     (_%__kont157460157461%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont157460157461%_))
                                                 (_%__kont157460157461%_)))
                                         (_%__kont157460157461%_))))
                                 (_%__kont157460157461%_)))))))
                 (if (pair? _%rest150434150442%_)
                     (let ((_%hd150439150539%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest150434150442%_)))
                           (_%tl150440150541%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest150434150442%_))))
                       (let* ((_%e150544%_ _%hd150439150539%_)
                              (_%rest150546%_ _%tl150440150541%_))
                         (_%K150438150536%_ _%rest150546%_ _%e150544%_)))
                     (_%else150436150450%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd150376150406%_
                                               _%hd150373150398%_)
                                              (_%g150365150382%_
                                               _%g150366150385%_))))
                                      (_%g150365150382%_ _%g150366150385%_))))
                              (_%g150365150382%_ _%g150366150385%_))))
                      (_%g150365150382%_ _%g150366150385%_)))))
          (_%g150364150548%_ _%stx150363%_))))
    (define gxc#generate-runtime-struct-direct-instancep%
      (lambda (_%self150173%_ _%stx150174%_)
        (let* ((_%g150176150193%_
                (lambda (_%g150177150190%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g150177150190%_))))
               (_%g150175150359%_
                (lambda (_%g150177150196%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g150177150196%_))
                      (let ((_%e150180150198%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g150177150196%_))))
                        (let ((_%hd150181150201%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e150180150198%_)))
                              (_%tl150182150203%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e150180150198%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl150182150203%_))
                              (let ((_%e150183150206%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl150182150203%_))))
                                (let ((_%hd150184150209%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e150183150206%_)))
                                      (_%tl150185150211%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e150183150206%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl150185150211%_))
                                      (let ((_%e150186150214%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl150185150211%_))))
                                        (let ((_%hd150187150217%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e150186150214%_)))
                                              (_%tl150188150219%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e150186150214%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl150188150219%_))
                                              ((lambda (_%L150222%_
                                                        _%L150223%_)
                                                 (if (gxc#current-compile-decls-unsafe?)
                                                     (cons '##structure-direct-instance-of?
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__1 _%self150173%_ _%L150222%_))
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1 _%self150173%_ _%L150223%_))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let _%lp150238%_ ((_%rest150241%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%L150223%_ (cons _%L150222%_ '())))
                                (_%bind150243%_ '())
                                (_%args150244%_ '()))
               (let* ((_%rest150245150253%_ _%rest150241%_)
                      (_%else150247150261%_
                       (lambda ()
                         (cons 'let
                               (cons _%bind150243%_
                                     (cons '(declare (not safe))
                                           (cons (cons '##structure-direct-instance-of?
                                                       _%args150244%_)
                                                 '()))))))
                      (_%K150249150347%_
                       (lambda (_%rest150264%_ _%e150265%_)
                         (let* ((_%__stx157500157501%_ _%e150265%_)
                                (_%g150270150288%_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%__stx157500157501%_)))))
                           (let ((_%__kont157502157503%_
                                  (lambda ()
                                    (_%lp150238%_
                                     _%rest150264%_
                                     _%bind150243%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e150265%_))
                                           _%args150244%_))))
                                 (_%__kont157504157505%_
                                  (lambda ()
                                    (_%lp150238%_
                                     _%rest150264%_
                                     _%bind150243%_
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__0 _%e150265%_))
                                           _%args150244%_))))
                                 (_%__kont157506157507%_
                                  (lambda ()
                                    (let ((_%tmp150295%_
                                           (let ((__tmp157908
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym '__tmp))))
                                             (declare (not safe))
                                             (make-symbol__0 __tmp157908))))
                                      (_%lp150238%_
                                       _%rest150264%_
                                       (cons (cons _%tmp150295%_
                                                   (cons (let ()
                                                           (declare (not safe))
                                                           (gxc#compile-e__0
                                                            _%e150265%_))
                                                         '()))
                                             _%bind150243%_)
                                       (cons _%tmp150295%_ _%args150244%_))))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%__stx157500157501%_))
                                 (let ((_%e150272150326%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%__stx157500157501%_))))
                                   (let ((_%tl150274150331%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e150272150326%_)))
                                         (_%hd150273150329%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e150272150326%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd150273150329%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%hd150273150329%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl150274150331%_))
                                                 (let ((_%e150275150334%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%tl150274150331%_))))
                                                   (let ((_%tl150277150339%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e150275150334%_)))
                                                         (_%hd150276150337%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e150275150334%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl150277150339%_))
                                                         (_%__kont157502157503%_)
                                                         (_%__kont157506157507%_))))
                                                 (_%__kont157506157507%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#quote
                                                    _%hd150273150329%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%tl150274150331%_))
                                                     (let ((_%e150281150311%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%tl150274150331%_))))
                                                       (let ((_%tl150283150316%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%e150281150311%_)))
                     (_%hd150282150314%_
                      (let () (declare (not safe)) (##car _%e150281150311%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%tl150283150316%_))
                     (_%__kont157504157505%_)
                     (_%__kont157506157507%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont157506157507%_))
                                                 (_%__kont157506157507%_)))
                                         (_%__kont157506157507%_))))
                                 (_%__kont157506157507%_)))))))
                 (if (pair? _%rest150245150253%_)
                     (let ((_%hd150250150350%_
                            (let ()
                              (declare (not safe))
                              (##car _%rest150245150253%_)))
                           (_%tl150251150352%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%rest150245150253%_))))
                       (let* ((_%e150355%_ _%hd150250150350%_)
                              (_%rest150357%_ _%tl150251150352%_))
                         (_%K150249150347%_ _%rest150357%_ _%e150355%_)))
                     (_%else150247150261%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd150187150217%_
                                               _%hd150184150209%_)
                                              (_%g150176150193%_
                                               _%g150177150196%_))))
                                      (_%g150176150193%_ _%g150177150196%_))))
                              (_%g150176150193%_ _%g150177150196%_))))
                      (_%g150176150193%_ _%g150177150196%_)))))
          (_%g150175150359%_ _%stx150174%_))))
    (define gxc#generate-runtime-struct-ref%
      (lambda (_%self150089%_ _%stx150090%_)
        (let* ((_%g150092150113%_
                (lambda (_%g150093150110%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g150093150110%_))))
               (_%g150091150170%_
                (lambda (_%g150093150116%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g150093150116%_))
                      (let ((_%e150097150118%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g150093150116%_))))
                        (let ((_%hd150098150121%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e150097150118%_)))
                              (_%tl150099150123%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e150097150118%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl150099150123%_))
                              (let ((_%e150100150126%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl150099150123%_))))
                                (let ((_%hd150101150129%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e150100150126%_)))
                                      (_%tl150102150131%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e150100150126%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl150102150131%_))
                                      (let ((_%e150103150134%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl150102150131%_))))
                                        (let ((_%hd150104150137%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e150103150134%_)))
                                              (_%tl150105150139%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e150103150134%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl150105150139%_))
                                              (let ((_%e150106150142%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl150105150139%_))))
                                                (let ((_%hd150107150145%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e150106150142%_)))
                                                      (_%tl150108150147%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e150106150142%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl150108150147%_))
                                                      ((lambda (_%L150150%_
                                                                _%L150151%_
                                                                _%L150152%_)
                                                         (cons '##structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1 _%self150089%_ _%L150150%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self150089%_
                                      _%L150151%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self150089%_
                                            _%L150152%_))
                                         (cons ''#f '()))))))
               _%hd150107150145%_
               _%hd150104150137%_
               _%hd150101150129%_)
              (_%g150092150113%_ _%g150093150116%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g150092150113%_
                                               _%g150093150116%_))))
                                      (_%g150092150113%_ _%g150093150116%_))))
                              (_%g150092150113%_ _%g150093150116%_))))
                      (_%g150092150113%_ _%g150093150116%_)))))
          (_%g150091150170%_ _%stx150090%_))))
    (define gxc#generate-runtime-struct-setq%
      (lambda (_%self149989%_ _%stx149990%_)
        (let* ((_%g149992150017%_
                (lambda (_%g149993150014%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149993150014%_))))
               (_%g149991150086%_
                (lambda (_%g149993150020%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149993150020%_))
                      (let ((_%e149998150022%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149993150020%_))))
                        (let ((_%hd149999150025%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149998150022%_)))
                              (_%tl150000150027%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149998150022%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl150000150027%_))
                              (let ((_%e150001150030%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl150000150027%_))))
                                (let ((_%hd150002150033%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e150001150030%_)))
                                      (_%tl150003150035%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e150001150030%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl150003150035%_))
                                      (let ((_%e150004150038%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl150003150035%_))))
                                        (let ((_%hd150005150041%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e150004150038%_)))
                                              (_%tl150006150043%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e150004150038%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl150006150043%_))
                                              (let ((_%e150007150046%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl150006150043%_))))
                                                (let ((_%hd150008150049%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e150007150046%_)))
                                                      (_%tl150009150051%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e150007150046%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl150009150051%_))
                                                      (let ((_%e150010150054%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl150009150051%_))))
                (let ((_%hd150011150057%_
                       (let () (declare (not safe)) (##car _%e150010150054%_)))
                      (_%tl150012150059%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e150010150054%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl150012150059%_))
                      ((lambda (_%L150062%_
                                _%L150063%_
                                _%L150064%_
                                _%L150065%_)
                         (cons '##structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self149989%_
                                        _%L150063%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self149989%_
                                              _%L150062%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self149989%_
                                                    _%L150064%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self149989%_
                                                          _%L150065%_))
                                                       (cons ''#f '())))))))
                       _%hd150011150057%_
                       _%hd150008150049%_
                       _%hd150005150041%_
                       _%hd150002150033%_)
                      (_%g149992150017%_ _%g149993150020%_))))
              (_%g149992150017%_ _%g149993150020%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g149992150017%_
                                               _%g149993150020%_))))
                                      (_%g149992150017%_ _%g149993150020%_))))
                              (_%g149992150017%_ _%g149993150020%_))))
                      (_%g149992150017%_ _%g149993150020%_)))))
          (_%g149991150086%_ _%stx149990%_))))
    (define gxc#generate-runtime-struct-direct-ref%
      (lambda (_%self149905%_ _%stx149906%_)
        (let* ((_%g149908149929%_
                (lambda (_%g149909149926%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149909149926%_))))
               (_%g149907149986%_
                (lambda (_%g149909149932%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149909149932%_))
                      (let ((_%e149913149934%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149909149932%_))))
                        (let ((_%hd149914149937%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149913149934%_)))
                              (_%tl149915149939%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149913149934%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149915149939%_))
                              (let ((_%e149916149942%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149915149939%_))))
                                (let ((_%hd149917149945%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149916149942%_)))
                                      (_%tl149918149947%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149916149942%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149918149947%_))
                                      (let ((_%e149919149950%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149918149947%_))))
                                        (let ((_%hd149920149953%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149919149950%_)))
                                              (_%tl149921149955%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149919149950%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl149921149955%_))
                                              (let ((_%e149922149958%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl149921149955%_))))
                                                (let ((_%hd149923149961%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e149922149958%_)))
                                                      (_%tl149924149963%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e149922149958%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl149924149963%_))
                                                      ((lambda (_%L149966%_
                                                                _%L149967%_
                                                                _%L149968%_)
                                                         (cons '##direct-structure-ref
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gxc#compile-e__1 _%self149905%_ _%L149966%_))
                             (cons (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self149905%_
                                      _%L149967%_))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self149905%_
                                            _%L149968%_))
                                         (cons ''#f '()))))))
               _%hd149923149961%_
               _%hd149920149953%_
               _%hd149917149945%_)
              (_%g149908149929%_ _%g149909149932%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g149908149929%_
                                               _%g149909149932%_))))
                                      (_%g149908149929%_ _%g149909149932%_))))
                              (_%g149908149929%_ _%g149909149932%_))))
                      (_%g149908149929%_ _%g149909149932%_)))))
          (_%g149907149986%_ _%stx149906%_))))
    (define gxc#generate-runtime-struct-direct-setq%
      (lambda (_%self149805%_ _%stx149806%_)
        (let* ((_%g149808149833%_
                (lambda (_%g149809149830%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149809149830%_))))
               (_%g149807149902%_
                (lambda (_%g149809149836%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149809149836%_))
                      (let ((_%e149814149838%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149809149836%_))))
                        (let ((_%hd149815149841%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149814149838%_)))
                              (_%tl149816149843%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149814149838%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149816149843%_))
                              (let ((_%e149817149846%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149816149843%_))))
                                (let ((_%hd149818149849%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149817149846%_)))
                                      (_%tl149819149851%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149817149846%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149819149851%_))
                                      (let ((_%e149820149854%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149819149851%_))))
                                        (let ((_%hd149821149857%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149820149854%_)))
                                              (_%tl149822149859%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149820149854%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl149822149859%_))
                                              (let ((_%e149823149862%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl149822149859%_))))
                                                (let ((_%hd149824149865%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e149823149862%_)))
                                                      (_%tl149825149867%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e149823149862%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl149825149867%_))
                                                      (let ((_%e149826149870%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl149825149867%_))))
                (let ((_%hd149827149873%_
                       (let () (declare (not safe)) (##car _%e149826149870%_)))
                      (_%tl149828149875%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e149826149870%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl149828149875%_))
                      ((lambda (_%L149878%_
                                _%L149879%_
                                _%L149880%_
                                _%L149881%_)
                         (cons '##direct-structure-set!
                               (cons (let ()
                                       (declare (not safe))
                                       (gxc#compile-e__1
                                        _%self149805%_
                                        _%L149879%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#compile-e__1
                                              _%self149805%_
                                              _%L149878%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gxc#compile-e__1
                                                    _%self149805%_
                                                    _%L149880%_))
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gxc#compile-e__1
                                                          _%self149805%_
                                                          _%L149881%_))
                                                       (cons ''#f '())))))))
                       _%hd149827149873%_
                       _%hd149824149865%_
                       _%hd149821149857%_
                       _%hd149818149849%_)
                      (_%g149808149833%_ _%g149809149836%_))))
              (_%g149808149833%_ _%g149809149836%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g149808149833%_
                                               _%g149809149836%_))))
                                      (_%g149808149833%_ _%g149809149836%_))))
                              (_%g149808149833%_ _%g149809149836%_))))
                      (_%g149808149833%_ _%g149809149836%_)))))
          (_%g149807149902%_ _%stx149806%_))))
    (define gxc#generate-runtime-struct-unchecked-ref%
      (lambda (_%self149600%_ _%stx149601%_)
        (let* ((_%g149603149624%_
                (lambda (_%g149604149621%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149604149621%_))))
               (_%g149602149802%_
                (lambda (_%g149604149627%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149604149627%_))
                      (let ((_%e149608149629%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149604149627%_))))
                        (let ((_%hd149609149632%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149608149629%_)))
                              (_%tl149610149634%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149608149629%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149610149634%_))
                              (let ((_%e149611149637%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149610149634%_))))
                                (let ((_%hd149612149640%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149611149637%_)))
                                      (_%tl149613149642%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149611149637%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149613149642%_))
                                      (let ((_%e149614149645%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149613149642%_))))
                                        (let ((_%hd149615149648%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149614149645%_)))
                                              (_%tl149616149650%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149614149645%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl149616149650%_))
                                              (let ((_%e149617149653%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl149616149650%_))))
                                                (let ((_%hd149618149656%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e149617149653%_)))
                                                      (_%tl149619149658%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e149617149653%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl149619149658%_))
                                                      ((lambda (_%L149661%_
                                                                _%L149662%_
                                                                _%L149663%_)
                                                         (if (gxc#current-compile-decls-unsafe?)
                                                             (cons '##unchecked-structure-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__1
                                    _%self149600%_
                                    _%L149661%_))
                                 (cons (let ()
                                         (declare (not safe))
                                         (gxc#compile-e__1
                                          _%self149600%_
                                          _%L149662%_))
                                       (cons ''#f (cons ''#f '())))))
                     (let _%lp149681%_ ((_%rest149684%_
                                         (cons _%L149662%_
                                               (cons _%L149661%_ '())))
                                        (_%bind149686%_ '())
                                        (_%args149687%_ '()))
                       (let* ((_%rest149688149696%_ _%rest149684%_)
                              (_%else149690149704%_
                               (lambda ()
                                 (cons 'let
                                       (cons _%bind149686%_
                                             (cons '(declare (not safe))
                                                   (cons (cons '##unchecked-structure-ref
                                                               (let ((__tmp157909
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons ''#f (cons ''#f '()))))
                         (declare (not safe))
                         (__foldr1 cons __tmp157909 _%args149687%_)))
                 '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%K149692149790%_
                               (lambda (_%rest149707%_ _%e149708%_)
                                 (let* ((_%__stx157546157547%_ _%e149708%_)
                                        (_%g149713149731%_
                                         (lambda ()
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%__stx157546157547%_)))))
                                   (let ((_%__kont157548157549%_
                                          (lambda ()
                                            (_%lp149681%_
                                             _%rest149707%_
                                             _%bind149686%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e149708%_))
                                                   _%args149687%_))))
                                         (_%__kont157550157551%_
                                          (lambda ()
                                            (_%lp149681%_
                                             _%rest149707%_
                                             _%bind149686%_
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__0
                                                      _%e149708%_))
                                                   _%args149687%_))))
                                         (_%__kont157552157553%_
                                          (lambda ()
                                            (let ((_%tmp149738%_
                                                   (let ((__tmp157910
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym
                                                             '__tmp))))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp157910))))
                                              (_%lp149681%_
                                               _%rest149707%_
                                               (cons (cons _%tmp149738%_
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gxc#compile-e__0 _%e149708%_))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind149686%_)
                                               (cons _%tmp149738%_
                                                     _%args149687%_))))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%__stx157546157547%_))
                                         (let ((_%e149715149769%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%__stx157546157547%_))))
                                           (let ((_%tl149717149774%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e149715149769%_)))
                                                 (_%hd149716149772%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e149715149769%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%hd149716149772%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#ref
                                                        _%hd149716149772%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%tl149717149774%_))
                                                         (let ((_%e149718149777%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%tl149717149774%_))))
                   (let ((_%tl149720149782%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e149718149777%_)))
                         (_%hd149719149780%_
                          (let ()
                            (declare (not safe))
                            (##car _%e149718149777%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl149720149782%_))
                         (_%__kont157548157549%_)
                         (_%__kont157552157553%_))))
                 (_%__kont157552157553%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-eq?
                                                            '%#quote
                                                            _%hd149716149772%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl149717149774%_))
                     (let ((_%e149724149754%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%tl149717149774%_))))
                       (let ((_%tl149726149759%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e149724149754%_)))
                             (_%hd149725149757%_
                              (let ()
                                (declare (not safe))
                                (##car _%e149724149754%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl149726149759%_))
                             (_%__kont157550157551%_)
                             (_%__kont157552157553%_))))
                     (_%__kont157552157553%_))
                 (_%__kont157552157553%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont157552157553%_))))
                                         (_%__kont157552157553%_)))))))
                         (if (pair? _%rest149688149696%_)
                             (let ((_%hd149693149793%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest149688149696%_)))
                                   (_%tl149694149795%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest149688149696%_))))
                               (let* ((_%e149798%_ _%hd149693149793%_)
                                      (_%rest149800%_ _%tl149694149795%_))
                                 (_%K149692149790%_
                                  _%rest149800%_
                                  _%e149798%_)))
                             (_%else149690149704%_))))))
               _%hd149618149656%_
               _%hd149615149648%_
               _%hd149612149640%_)
              (_%g149603149624%_ _%g149604149627%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g149603149624%_
                                               _%g149604149627%_))))
                                      (_%g149603149624%_ _%g149604149627%_))))
                              (_%g149603149624%_ _%g149604149627%_))))
                      (_%g149603149624%_ _%g149604149627%_)))))
          (_%g149602149802%_ _%stx149601%_))))
    (define gxc#generate-runtime-struct-unchecked-setq%
      (lambda (_%self149379%_ _%stx149380%_)
        (let* ((_%g149382149407%_
                (lambda (_%g149383149404%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g149383149404%_))))
               (_%g149381149597%_
                (lambda (_%g149383149410%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g149383149410%_))
                      (let ((_%e149388149412%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g149383149410%_))))
                        (let ((_%hd149389149415%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e149388149412%_)))
                              (_%tl149390149417%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e149388149412%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl149390149417%_))
                              (let ((_%e149391149420%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl149390149417%_))))
                                (let ((_%hd149392149423%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e149391149420%_)))
                                      (_%tl149393149425%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e149391149420%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl149393149425%_))
                                      (let ((_%e149394149428%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl149393149425%_))))
                                        (let ((_%hd149395149431%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e149394149428%_)))
                                              (_%tl149396149433%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e149394149428%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl149396149433%_))
                                              (let ((_%e149397149436%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl149396149433%_))))
                                                (let ((_%hd149398149439%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e149397149436%_)))
                                                      (_%tl149399149441%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e149397149436%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl149399149441%_))
                                                      (let ((_%e149400149444%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%tl149399149441%_))))
                (let ((_%hd149401149447%_
                       (let () (declare (not safe)) (##car _%e149400149444%_)))
                      (_%tl149402149449%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e149400149444%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl149402149449%_))
                      ((lambda (_%L149452%_
                                _%L149453%_
                                _%L149454%_
                                _%L149455%_)
                         (if (gxc#current-compile-decls-unsafe?)
                             (cons '##unchecked-structure-set!
                                   (cons (let ()
                                           (declare (not safe))
                                           (gxc#compile-e__1
                                            _%self149379%_
                                            _%L149453%_))
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gxc#compile-e__1
                                                  _%self149379%_
                                                  _%L149452%_))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gxc#compile-e__1
                                                        _%self149379%_
                                                        _%L149454%_))
                                                     (cons ''#f
                                                           (cons ''#f '()))))))
                             (let _%lp149476%_ ((_%rest149479%_
                                                 (cons _%L149454%_
                                                       (cons _%L149452%_
                                                             (cons _%L149453%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%bind149481%_ '())
                                                (_%args149482%_ '()))
                               (let* ((_%rest149483149491%_ _%rest149479%_)
                                      (_%else149485149499%_
                                       (lambda ()
                                         (cons 'let
                                               (cons _%bind149481%_
                                                     (cons '(declare
                                                              (not safe))
                                                           (cons (cons '##unchecked-structure-set!
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp157911 (cons ''#f (cons ''#f '()))))
                                 (declare (not safe))
                                 (__foldr1 cons __tmp157911 _%args149482%_)))
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%K149487149585%_
                                       (lambda (_%rest149502%_ _%e149503%_)
                                         (let* ((_%__stx157592157593%_
                                                 _%e149503%_)
                                                (_%g149508149526%_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%__stx157592157593%_)))))
                                           (let ((_%__kont157594157595%_
                                                  (lambda ()
                                                    (_%lp149476%_
                                                     _%rest149502%_
                                                     _%bind149481%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e149503%_))
                                                           _%args149482%_))))
                                                 (_%__kont157596157597%_
                                                  (lambda ()
                                                    (_%lp149476%_
                                                     _%rest149502%_
                                                     _%bind149481%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#compile-e__0
                                                              _%e149503%_))
                                                           _%args149482%_))))
                                                 (_%__kont157598157599%_
                                                  (lambda ()
                                                    (let ((_%tmp149533%_
                                                           (let ((__tmp157912
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (##gensym '__tmp))))
                     (declare (not safe))
                     (make-symbol__0 __tmp157912))))
              (_%lp149476%_
               _%rest149502%_
               (cons (cons _%tmp149533%_
                           (cons (let ()
                                   (declare (not safe))
                                   (gxc#compile-e__0 _%e149503%_))
                                 '()))
                     _%bind149481%_)
               (cons _%tmp149533%_ _%args149482%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%__stx157592157593%_))
                                                 (let ((_%e149510149564%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%__stx157592157593%_))))
                                                   (let ((_%tl149512149569%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e149510149564%_)))
                                                         (_%hd149511149567%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e149510149564%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#identifier?
                                                            _%hd149511149567%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-eq? '%#ref _%hd149511149567%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl149512149569%_))
                         (let ((_%e149513149572%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%tl149512149569%_))))
                           (let ((_%tl149515149577%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e149513149572%_)))
                                 (_%hd149514149575%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e149513149572%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%tl149515149577%_))
                                 (_%__kont157594157595%_)
                                 (_%__kont157598157599%_))))
                         (_%__kont157598157599%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-eq? '%#quote _%hd149511149567%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%tl149512149569%_))
                             (let ((_%e149519149549%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%tl149512149569%_))))
                               (let ((_%tl149521149554%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e149519149549%_)))
                                     (_%hd149520149552%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e149519149549%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%tl149521149554%_))
                                     (_%__kont157596157597%_)
                                     (_%__kont157598157599%_))))
                             (_%__kont157598157599%_))
                         (_%__kont157598157599%_)))
                 (_%__kont157598157599%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%__kont157598157599%_)))))))
                                 (if (pair? _%rest149483149491%_)
                                     (let ((_%hd149488149588%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%rest149483149491%_)))
                                           (_%tl149489149590%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%rest149483149491%_))))
                                       (let* ((_%e149593%_ _%hd149488149588%_)
                                              (_%rest149595%_
                                               _%tl149489149590%_))
                                         (_%K149487149585%_
                                          _%rest149595%_
                                          _%e149593%_)))
                                     (_%else149485149499%_))))))
                       _%hd149401149447%_
                       _%hd149398149439%_
                       _%hd149395149431%_
                       _%hd149392149423%_)
                      (_%g149382149407%_ _%g149383149410%_))))
              (_%g149382149407%_ _%g149383149410%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g149382149407%_
                                               _%g149383149410%_))))
                                      (_%g149382149407%_ _%g149383149410%_))))
                              (_%g149382149407%_ _%g149383149410%_))))
                      (_%g149382149407%_ _%g149383149410%_)))))
          (_%g149381149597%_ _%stx149380%_))))
    (define gxc#generate-runtime-loader-import%
      (lambda (_%self149218%_ _%stx149219%_)
        (letrec ((_%import-set-template149221%_
                  (lambda (_%in149324%_ _%phi149325%_)
                    (let ((_%iphi149327%_
                           (fx+ _%phi149325%_
                                (##direct-structure-ref
                                 _%in149324%_
                                 '2
                                 gx#import-set::t
                                 '#f)))
                          (_%imports149328%_
                           (##structure-ref
                            (##direct-structure-ref
                             _%in149324%_
                             '1
                             gx#import-set::t
                             '#f)
                            '8
                            gx#module-context::t
                            '#f)))
                      (let _%lp149330%_ ((_%rest149332%_ _%imports149328%_)
                                         (_%r149333%_ '()))
                        (let* ((_%rest149334149342%_ _%rest149332%_)
                               (_%else149336149350%_ (lambda () _%r149333%_))
                               (_%K149338149367%_
                                (lambda (_%rest149353%_ _%in149354%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%in149354%_
                                         'gx#module-context::t))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxzero? _%iphi149327%_))
                                          (_%lp149330%_
                                           _%rest149353%_
                                           (cons _%in149354%_ _%r149333%_))
                                          (_%lp149330%_
                                           _%rest149353%_
                                           _%r149333%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%in149354%_
                                             'gx#module-import::t))
                                          (let ((_%iphi149358%_
                                                 (fx+ _%phi149325%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%in149354%_
                                                         '3
                                                         '#f
                                                         '#f)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##fxzero? _%iphi149358%_))
                                                (_%lp149330%_
                                                 _%rest149353%_
                                                 (cons (##direct-structure-ref
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%in149354%_
                                                           '1
                                                           '#f
                                                           '#f))
                                                        '1
                                                        gx#module-export::t
                                                        '#f)
                                                       _%r149333%_))
                                                (_%lp149330%_
                                                 _%rest149353%_
                                                 _%r149333%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (##structure-direct-instance-of?
                                                 _%in149354%_
                                                 'gx#import-set::t))
                                              (let ((_%xphi149361%_
                                                     (fx+ _%iphi149327%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             _%in149354%_
                                                             '2
                                                             '#f
                                                             '#f)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##fxzero?
                                                       _%xphi149361%_))
                                                    (_%lp149330%_
                                                     _%rest149353%_
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in149354%_
                                                              '1
                                                              '#f
                                                              '#f))
                                                           _%r149333%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##fxpositive?
                                                           _%xphi149361%_))
                                                        (_%lp149330%_
                                                         _%rest149353%_
                                                         (let ((__tmp157913
                                                                (_%import-set-template149221%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%in149354%_
                         _%iphi149327%_)))
                   (declare (not safe))
                   (__foldl1 cons _%r149333%_ __tmp157913)))
                (_%lp149330%_ _%rest149353%_ _%r149333%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%lp149330%_
                                               _%rest149353%_
                                               _%r149333%_)))))))
                          (if (pair? _%rest149334149342%_)
                              (let ((_%hd149339149370%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest149334149342%_)))
                                    (_%tl149340149372%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest149334149342%_))))
                                (let* ((_%in149375%_ _%hd149339149370%_)
                                       (_%rest149377%_ _%tl149340149372%_))
                                  (_%K149338149367%_
                                   _%rest149377%_
                                   _%in149375%_)))
                              (_%else149336149350%_))))))))
          (let* ((_%g149223149233%_
                  (lambda (_%g149224149230%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g149224149230%_))))
                 (_%g149222149321%_
                  (lambda (_%g149224149236%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g149224149236%_))
                        (let ((_%e149226149238%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g149224149236%_))))
                          (let ((_%hd149227149241%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e149226149238%_)))
                                (_%tl149228149243%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e149226149238%_))))
                            ((lambda (_%L149246%_)
                               (let ((_%ht149257%_
                                      (let ()
                                        (declare (not safe))
                                        (make-hash-table-eq))))
                                 (let _%lp149259%_ ((_%rest149261%_
                                                     _%L149246%_)
                                                    (_%loads149262%_ '()))
                                   (letrec ((_%K149264%_
                                             (lambda (_%ctx149314%_
                                                      _%rest149315%_)
                                               (let ((_%id149317%_
                                                      (##structure-ref
                                                       _%ctx149314%_
                                                       '1
                                                       gx#expander-context::t
                                                       '#f)))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (__hash-get
                                                        _%ht149257%_
                                                        _%id149317%_))
                                                     (_%lp149259%_
                                                      _%rest149315%_
                                                      _%loads149262%_)
                                                     (let ((_%rt149319%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gxc#module-id->path-string
                                                               _%id149317%_))))
                                                       (let ()
                                                         (declare (not safe))
                                                         (__hash-put!
                                                          _%ht149257%_
                                                          _%id149317%_
                                                          _%rt149319%_))
                                                       (_%lp149259%_
                                                        _%rest149315%_
                                                        (cons _%rt149319%_
                                                              _%loads149262%_))))))))
                                     (let* ((_%rest149265149273%_
                                             _%rest149261%_)
                                            (_%else149267149285%_
                                             (lambda ()
                                               (cons 'begin
                                                     (let ((__tmp157915
                                                            (lambda (_%g149280149282%_)
                                                              (list 'load-module
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g149280149282%_)))
                   (__tmp157914 (reverse _%loads149262%_)))
               (declare (not safe))
               (##map __tmp157915 __tmp157914)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%K149269149302%_
                                             (lambda (_%rest149288%_
                                                      _%in149289%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-instance-of?
                                                      _%in149289%_
                                                      'gx#module-context::t))
                                                   (_%K149264%_
                                                    _%in149289%_
                                                    _%rest149288%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          _%in149289%_
                                                          'gx#module-import::t))
                                                       (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%in149289%_
                               '3
                               '#f
                               '#f)))
                   (_%K149264%_
                    (##direct-structure-ref
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%in149289%_ '1 '#f '#f))
                     '1
                     gx#module-export::t
                     '#f)
                    _%rest149288%_)
                   (_%lp149259%_ _%rest149288%_ _%loads149262%_))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%in149289%_
                      'gx#import-set::t))
                   (let ((_%phi149294%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%in149289%_
                             '2
                             '#f
                             '#f))))
                     (if (fxzero? _%phi149294%_)
                         (_%K149264%_
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%in149289%_
                             '1
                             '#f
                             '#f))
                          _%rest149288%_)
                         (if (fxpositive? _%phi149294%_)
                             (let ((_%deps149298%_
                                    (_%import-set-template149221%_
                                     _%in149289%_
                                     '0)))
                               (_%lp149259%_
                                (let ()
                                  (declare (not safe))
                                  (__foldl1
                                   cons
                                   _%rest149288%_
                                   _%deps149298%_))
                                _%loads149262%_))
                             (_%lp149259%_ _%rest149288%_ _%loads149262%_))))
                   (let ()
                     (declare (not safe))
                     (gxc#raise-compile-error
                      '"Unexpected import"
                      _%stx149219%_
                      _%in149289%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (pair? _%rest149265149273%_)
                                           (let ((_%hd149270149305%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%rest149265149273%_)))
                                                 (_%tl149271149307%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%rest149265149273%_))))
                                             (let* ((_%in149310%_
                                                     _%hd149270149305%_)
                                                    (_%rest149312%_
                                                     _%tl149271149307%_))
                                               (_%K149269149302%_
                                                _%rest149312%_
                                                _%in149310%_)))
                                           (_%else149267149285%_)))))))
                             _%tl149228149243%_)))
                        (_%g149223149233%_ _%g149224149236%_)))))
            (_%g149222149321%_ _%stx149219%_)))))
    (define gxc#generate-runtime-quote-syntax%
      (lambda (_%self149031%_ _%stx149032%_)
        (letrec ((_%add-lift!149034%_
                  (lambda (_%expr149216%_)
                    (set-box!
                     (let () (declare (not safe)) (gxc#current-compile-lift))
                     (cons _%expr149216%_
                           (unbox (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-lift)))))))
                 (_%generate-syntax-quote149035%_
                  (lambda (_%id149213%_ _%marks149214%_)
                    (cons '##structure
                          (cons 'gx#syntax-quote::t
                                (cons (cons 'quote (cons _%id149213%_ '()))
                                      (cons '#f
                                            (cons '(gx#current-expander-context)
                                                  (cons _%marks149214%_
                                                        '()))))))))
                 (_%generate-simple149036%_
                  (lambda (_%stxq149208%_)
                    (let ((_%gid149210%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-temporary__% '#t)))
                          (_%qid149211%_
                           (gxc#generate-runtime-identifier _%stxq149208%_)))
                      (_%add-lift!149034%_
                       (cons 'define
                             (cons _%gid149210%_
                                   (cons (_%generate-syntax-quote149035%_
                                          _%qid149211%_
                                          ''())
                                         '()))))
                      (let ((__tmp157916
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp157916 _%stxq149208%_ _%gid149210%_))
                      _%gid149210%_)))
                 (_%generate-serialized149037%_
                  (lambda (_%stxq149198%_ _%marks149199%_)
                    (let* ((_%mark-refs149201%_
                            (map _%generate-mark149038%_ _%marks149199%_))
                           (_%gid149203%_
                            (let ()
                              (declare (not safe))
                              (gxc#generate-runtime-temporary__% '#t)))
                           (_%qid149205%_
                            (gxc#generate-runtime-identifier _%stxq149198%_)))
                      (_%add-lift!149034%_
                       (cons 'define
                             (cons _%gid149203%_
                                   (cons (_%generate-syntax-quote149035%_
                                          _%qid149205%_
                                          (cons 'list _%mark-refs149201%_))
                                         '()))))
                      (let ((__tmp157917
                             (let ()
                               (declare (not safe))
                               (gxc#current-compile-identifiers))))
                        (declare (not safe))
                        (hash-put! __tmp157917 _%stxq149198%_ _%gid149203%_))
                      _%gid149203%_)))
                 (_%generate-mark149038%_
                  (lambda (_%mark149183%_)
                    (let ((_%$e149185%_
                           (let ((__tmp157918
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-marks))))
                             (declare (not safe))
                             (hash-get __tmp157918 _%mark149183%_))))
                      (if _%$e149185%_
                          _%$e149185%_
                          (let* ((_%gid149189%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#generate-runtime-temporary__% '#t)))
                                 (_%repr149191%_
                                  (_%serialize-mark149039%_ _%mark149183%_))
                                 (_%ctx149193%_
                                  (let ((__tmp157919
                                         (##structure-ref
                                          _%mark149183%_
                                          '2
                                          gx#expander-mark::t
                                          '#f)))
                                    (declare (not safe))
                                    (gx#core-context-top__1 __tmp157919)))
                                 (_%ctx-ref149195%_
                                  (if (eq? _%ctx149193%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#current-expander-context)))
                                      '(gx#current-expander-context)
                                      (cons 'gx#import-module
                                            (cons (cons 'quote
                                                        (cons (_%context-ref149040%_
                                                               _%ctx149193%_)
                                                              '()))
                                                  '())))))
                            (let ((__tmp157920
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-marks))))
                              (declare (not safe))
                              (hash-put!
                               __tmp157920
                               _%mark149183%_
                               _%gid149189%_))
                            (_%add-lift!149034%_
                             (cons 'define
                                   (cons _%gid149189%_
                                         (cons (cons 'gx#core-deserialize-mark
                                                     (cons (cons 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%repr149191%_ '()))
                   (cons _%ctx-ref149195%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                            _%gid149189%_)))))
                 (_%serialize-mark149039%_
                  (lambda (_%mark149130%_)
                    (letrec ((_%quote-e149132%_
                              (lambda (_%sym149181%_)
                                (if (let ()
                                      (declare (not safe))
                                      (interned-symbol? _%sym149181%_))
                                    _%sym149181%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#generate-runtime-gensym-reference__0
                                       _%sym149181%_))))))
                      (let* ((_%mark149133149142%_ _%mark149130%_)
                             (_%E149135149146%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%mark149133149142%_
                                         '((expander-mark
                                            subst
                                            ctx
                                            phi
                                            trace))))
                                '#!void))
                             (_%K149136149158%_
                              (lambda (_%trace149149%_
                                       _%phi149150%_
                                       _%ctx149151%_
                                       _%subst149152%_)
                                (let ((_%subs149154%_
                                       (if _%subst149152%_
                                           (let ()
                                             (declare (not safe))
                                             (hash->list _%subst149152%_))
                                           '())))
                                  (cons _%phi149150%_
                                        (let ((__tmp157921
                                               (lambda (_%pair149156%_)
                                                 (cons (_%quote-e149132%_
                                                        (car _%pair149156%_))
                                                       (_%quote-e149132%_
                                                        (cdr _%pair149156%_))))))
                                          (declare (not safe))
                                          (##map __tmp157921
                                                 _%subs149154%_)))))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%mark149133149142%_
                               'gx#expander-mark::t))
                            (let* ((_%e149137149161%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark149133149142%_
                                       '1
                                       '#f
                                       '#f)))
                                   (_%subst149164%_ _%e149137149161%_)
                                   (_%e149138149166%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark149133149142%_
                                       '2
                                       '#f
                                       '#f)))
                                   (_%ctx149169%_ _%e149138149166%_)
                                   (_%e149139149171%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark149133149142%_
                                       '3
                                       '#f
                                       '#f)))
                                   (_%phi149174%_ _%e149139149171%_)
                                   (_%e149140149176%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%mark149133149142%_
                                       '4
                                       '#f
                                       '#f)))
                                   (_%trace149179%_ _%e149140149176%_))
                              (_%K149136149158%_
                               _%trace149179%_
                               _%phi149174%_
                               _%ctx149169%_
                               _%subst149164%_))
                            (_%E149135149146%_))))))
                 (_%context-ref149040%_
                  (lambda (_%ctx149117%_)
                    (if (let ((__tmp157922
                               (##structure-ref
                                _%ctx149117%_
                                '3
                                gx#phi-context::t
                                '#f)))
                          (declare (not safe))
                          (##structure-instance-of?
                           __tmp157922
                           'gx#module-context::t))
                        (let ((_%ctx-ref149119%_
                               (_%context-ref-nested149042%_ _%ctx149117%_))
                              (_%ctx-origin149120%_
                               (_%context-ref-origin149041%_ _%ctx149117%_))
                              (_%origin149121%_
                               (_%context-ref-origin149041%_
                                (let ()
                                  (declare (not safe))
                                  (gx#current-expander-context)))))
                          (if (eq? _%origin149121%_ _%ctx-origin149120%_)
                              (let ((_%ref149123%_
                                     (_%context-ref-nested149042%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context)))))
                                (let _%lp149125%_ ((_%ref149127%_
                                                    (cdr _%ref149123%_))
                                                   (_%ctx-ref149128%_
                                                    (cdr _%ctx-ref149119%_)))
                                  (if (and (pair? _%ref149127%_)
                                           (eq? (let ()
                                                  (declare (not safe))
                                                  (##car _%ref149127%_))
                                                (car _%ctx-ref149128%_)))
                                      (_%lp149125%_
                                       (cdr _%ref149127%_)
                                       (cdr _%ctx-ref149128%_))
                                      (cons '#f _%ctx-ref149128%_))))
                              _%ctx-ref149119%_))
                        (let ((__tmp157923
                               (##structure-ref
                                _%ctx149117%_
                                '1
                                gx#expander-context::t
                                '#f)))
                          (declare (not safe))
                          (make-symbol__1 '":" __tmp157923)))))
                 (_%context-ref-origin149041%_
                  (lambda (_%ctx149109%_)
                    (let _%lp149111%_ ((_%ctx149113%_ _%ctx149109%_))
                      (let ((_%super149115%_
                             (##structure-ref
                              _%ctx149113%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super149115%_
                               'gx#module-context::t))
                            (_%lp149111%_ _%super149115%_)
                            _%ctx149113%_)))))
                 (_%context-ref-nested149042%_
                  (lambda (_%ctx149100%_)
                    (let _%lp149102%_ ((_%ctx149104%_ _%ctx149100%_)
                                       (_%r149105%_ '()))
                      (let ((_%super149107%_
                             (##structure-ref
                              _%ctx149104%_
                              '3
                              gx#phi-context::t
                              '#f)))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%super149107%_
                               'gx#module-context::t))
                            (_%lp149102%_
                             _%super149107%_
                             (cons (car (##structure-ref
                                         _%ctx149104%_
                                         '7
                                         gx#module-context::t
                                         '#f))
                                   _%r149105%_))
                            (cons (let ((__tmp157924
                                         (##structure-ref
                                          _%ctx149104%_
                                          '1
                                          gx#expander-context::t
                                          '#f)))
                                    (declare (not safe))
                                    (make-symbol__1 '":" __tmp157924))
                                  _%r149105%_)))))))
          (let* ((_%g149044149057%_
                  (lambda (_%g149045149054%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g149045149054%_))))
                 (_%g149043149097%_
                  (lambda (_%g149045149060%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g149045149060%_))
                        (let ((_%e149047149062%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g149045149060%_))))
                          (let ((_%hd149048149065%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e149047149062%_)))
                                (_%tl149049149067%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e149047149062%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl149049149067%_))
                                (let ((_%e149050149070%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl149049149067%_))))
                                  (let ((_%hd149051149073%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e149050149070%_)))
                                        (_%tl149052149075%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e149050149070%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl149052149075%_))
                                        ((lambda (_%L149078%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#identifier? _%L149078%_))
                                               (let ((_%$e149091%_
                                                      (let ((__tmp157925
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#current-compile-identifiers))))
                (declare (not safe))
                (hash-get __tmp157925 _%L149078%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e149091%_
                                                     _%$e149091%_
                                                     (let ((_%marks149095%_
                                                            (##direct-structure-ref
                                                             _%L149078%_
                                                             '4
                                                             gx#syntax-quote::t
                                                             '#f)))
                                                       (if (null? _%marks149095%_)
                                                           (_%generate-simple149036%_
                                                            _%L149078%_)
                                                           (_%generate-serialized149037%_
                                                            _%L149078%_
                                                            _%marks149095%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#raise-compile-error
                                                  '"Cannot quote non-identifier syntax"
                                                  _%L149078%_))))
                                         _%hd149051149073%_)
                                        (_%g149044149057%_
                                         _%g149045149060%_))))
                                (_%g149044149057%_ _%g149045149060%_))))
                        (_%g149044149057%_ _%g149045149060%_)))))
            (_%g149043149097%_ _%stx149032%_)))))
    (define gxc#generate-runtime-phi-define-runtime%
      (lambda (_%self148963%_ _%stx148964%_)
        (let* ((_%g148966148983%_
                (lambda (_%g148967148980%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148967148980%_))))
               (_%g148965149028%_
                (lambda (_%g148967148986%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148967148986%_))
                      (let ((_%e148970148988%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148967148986%_))))
                        (let ((_%hd148971148991%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148970148988%_)))
                              (_%tl148972148993%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148970148988%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148972148993%_))
                              (let ((_%e148973148996%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148972148993%_))))
                                (let ((_%hd148974148999%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148973148996%_)))
                                      (_%tl148975149001%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148973148996%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl148975149001%_))
                                      (let ((_%e148976149004%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl148975149001%_))))
                                        (let ((_%hd148977149007%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e148976149004%_)))
                                              (_%tl148978149009%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e148976149004%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl148978149009%_))
                                              ((lambda (_%L149012%_
                                                        _%L149013%_)
                                                 (cons 'define
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%L149013%_))
                     (cons (let ()
                             (declare (not safe))
                             (gxc#compile-e__1 _%self148963%_ _%L149012%_))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd148977149007%_
                                               _%hd148974148999%_)
                                              (_%g148966148983%_
                                               _%g148967148986%_))))
                                      (_%g148966148983%_ _%g148967148986%_))))
                              (_%g148966148983%_ _%g148967148986%_))))
                      (_%g148966148983%_ _%g148967148986%_)))))
          (_%g148965149028%_ _%stx148964%_))))
    (define gxc#generate-meta-begin%
      (lambda (_%self148912%_ _%stx148913%_)
        (let* ((_%g148915148925%_
                (lambda (_%g148916148922%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148916148922%_))))
               (_%g148914148960%_
                (lambda (_%g148916148928%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148916148928%_))
                      (let ((_%e148918148930%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148916148928%_))))
                        (let ((_%hd148919148933%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148918148930%_)))
                              (_%tl148920148935%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148918148930%_))))
                          ((lambda (_%L148938%_)
                             (let* ((_%c-body148952%_
                                     (map (lambda (_%g148947148949%_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self148912%_
                                               _%g148947148949%_)))
                                          _%L148938%_))
                                    (_%c-body148957%_
                                     (let ((__tmp157926
                                            (lambda (_%$obj148954%_)
                                              (not (eq? _%$obj148954%_
                                                        '#!void)))))
                                       (declare (not safe))
                                       (##filter
                                        __tmp157926
                                        _%c-body148952%_))))
                               (cons '%#begin _%c-body148957%_)))
                           _%tl148920148935%_)))
                      (_%g148915148925%_ _%g148916148928%_)))))
          (_%g148914148960%_ _%stx148913%_))))
    (define gxc#generate-meta-begin-syntax%
      (lambda (_%self148817%_ _%stx148818%_)
        (let* ((_%g148820148830%_
                (lambda (_%g148821148827%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148821148827%_))))
               (_%g148819148909%_
                (lambda (_%g148821148833%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148821148833%_))
                      (let ((_%e148823148835%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148821148833%_))))
                        (let ((_%hd148824148838%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148823148835%_)))
                              (_%tl148825148840%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148823148835%_))))
                          ((lambda (_%L148843%_)
                             (let* ((_%phi148853%_
                                     (let ((__tmp157927
                                            (let ()
                                              (declare (not safe))
                                              (gx#current-expander-phi))))
                                       (declare (not safe))
                                       (##fx+ __tmp157927 '1)))
                                    (_%block148855%_
                                     (gxc#meta-state-begin-phi!
                                      (let ()
                                        (declare (not safe))
                                        (slot-ref__0 _%self148817%_ 'state))
                                      _%phi148853%_))
                                    (_%compiled148858%_
                                     (let ((__tmp157928
                                            (lambda ()
                                              (gxc#apply-generate-meta-phi__%
                                               '#f
                                               (let ()
                                                 (declare (not safe))
                                                 (slot-ref__0
                                                  _%self148817%_
                                                  'state))
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        '%#begin))
                                                     _%L148843%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp157928
                                        gx#current-expander-phi
                                        _%phi148853%_)))
                                    (_%g148861148871%_
                                     (lambda (_%g148862148868%_)
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g148862148868%_))))
                                    (_%g148860148906%_
                                     (lambda (_%g148862148874%_)
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _%g148862148874%_))
                                           (let ((_%e148864148876%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%g148862148874%_))))
                                             (let ((_%hd148865148879%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e148864148876%_)))
                                                   (_%tl148866148881%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e148864148876%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _%hd148865148879%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-eq?
                                                          '%#begin
                                                          _%hd148865148879%_))
                                                       ((lambda (_%L148884%_)
                                                          (let ((_%c-body148901%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (filter (lambda (_%$obj148898%_)
                                   (not (eq? _%$obj148898%_ '#!void)))
                                 _%L148884%_)))
                    (if _%block148855%_
                        (cons '%#begin-syntax
                              (cons (cons '%#call
                                          (cons (cons '%#ref
                                                      (cons 'load-module '()))
                                                (cons (cons '%#quote
                                                            (cons _%block148855%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%c-body148901%_))
                        (if (null? _%c-body148901%_)
                            '#!void
                            (cons '%#begin-syntax _%c-body148901%_)))))
                _%tl148866148881%_)
               (_%g148861148871%_ _%g148862148874%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g148861148871%_
                                                    _%g148862148874%_))))
                                           (_%g148861148871%_
                                            _%g148862148874%_)))))
                               (_%g148860148906%_ _%compiled148858%_)))
                           _%tl148825148840%_)))
                      (_%g148820148830%_ _%g148821148833%_)))))
          (_%g148819148909%_ _%stx148818%_))))
    (define gxc#generate-meta-module%
      (lambda (_%self148748%_ _%stx148749%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self148748%_ 'state)))
        (let* ((_%g148751148765%_
                (lambda (_%g148752148762%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148752148762%_))))
               (_%g148750148814%_
                (lambda (_%g148752148768%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148752148768%_))
                      (let ((_%e148755148770%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148752148768%_))))
                        (let ((_%hd148756148773%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148755148770%_)))
                              (_%tl148757148775%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148755148770%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl148757148775%_))
                              (let ((_%e148758148778%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl148757148775%_))))
                                (let ((_%hd148759148781%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e148758148778%_)))
                                      (_%tl148760148783%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e148758148778%_))))
                                  ((lambda (_%L148786%_ _%L148787%_)
                                     (let ((_%key148800%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#core-identifier-key
                                               _%L148787%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (interned-symbol? _%key148800%_))
                                           '#!void
                                           (let ()
                                             (declare (not safe))
                                             (gxc#raise-compile-error
                                              '"Cannot compile module with uninterned id"
                                              _%stx148749%_
                                              _%L148787%_
                                              _%key148800%_)))
                                       (let* ((_%ctx148802%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-local-e__0
                                                  _%L148787%_)))
                                              (_%code148805%_
                                               (let ((__tmp157929
                                                      (lambda ()
                                                        (let ((__tmp157930
                                                               (##structure-ref
                                                                _%ctx148802%_
                                                                '11
                                                                gx#module-context::t
                                                                '#f)))
                                                          (declare (not safe))
                                                          (gxc#compile-e__1
                                                           _%self148748%_
                                                           __tmp157930)))))
                                                 (declare (not safe))
                                                 (call-with-parameters__1
                                                  __tmp157929
                                                  gx#current-expander-context
                                                  _%ctx148802%_)))
                                              (_%rt148807%_
                                               (let ((__tmp157931
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#current-compile-runtime-sections))))
                                                 (declare (not safe))
                                                 (hash-get
                                                  __tmp157931
                                                  _%ctx148802%_)))
                                              (_%loader148809%_
                                               (if _%rt148807%_
                                                   (cons (cons '%#call
                                                               (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons 'load-module '()))
                             (cons (cons '%#quote (cons _%rt148807%_ '()))
                                   '())))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))
                                              (_%modid148811%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _%L148787%_))))
                                         (gxc#meta-state-end-phi!
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self148748%_
                                             'state)))
                                         (cons '%#module
                                               (cons _%modid148811%_
                                                     (cons _%code148805%_
                                                           _%loader148809%_))))))
                                   _%tl148760148783%_
                                   _%hd148759148781%_)))
                              (_%g148751148765%_ _%g148752148768%_))))
                      (_%g148751148765%_ _%g148752148768%_)))))
          (_%g148750148814%_ _%stx148749%_))))
    (define gxc#generate-meta-import-path
      (lambda (_%ctx148735%_ _%context-chain148736%_)
        (let _%lp148738%_ ((_%ctx148740%_ _%ctx148735%_) (_%path148741%_ '()))
          (let ((_%super148743%_
                 (##structure-ref _%ctx148740%_ '3 gx#phi-context::t '#f)))
            (if (memq _%super148743%_ _%context-chain148736%_)
                (cons '#f
                      (cons (car (##structure-ref
                                  _%ctx148740%_
                                  '7
                                  gx#module-context::t
                                  '#f))
                            _%path148741%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%super148743%_
                       'gx#module-context::t))
                    (_%lp148738%_
                     _%super148743%_
                     (cons (car (##structure-ref
                                 _%ctx148740%_
                                 '7
                                 gx#module-context::t
                                 '#f))
                           _%path148741%_))
                    (cons (let ((__tmp157932
                                 (##structure-ref
                                  _%ctx148740%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (make-symbol__1 '":" __tmp157932))
                          _%path148741%_)))))))
    (define gxc#current-context-chain
      (lambda ()
        (let _%lp148728%_ ((_%ctx148730%_
                            (let ()
                              (declare (not safe))
                              (gx#current-expander-context)))
                           (_%r148731%_ '()))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%ctx148730%_ 'gx#module-context::t))
              (_%lp148728%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%ctx148730%_ '3 '#f '#f))
               (cons _%ctx148730%_ _%r148731%_))
              _%r148731%_))))
    (define gxc#generate-meta-import%
      (lambda (_%self148491%_ _%stx148492%_)
        (letrec* ((_%context-chain148494%_ (gxc#current-context-chain))
                  (_%make-import-spec148495%_
                   (lambda (_%in148664%_)
                     (let* ((_%in148665148677%_ _%in148664%_)
                            (_%E148667148681%_
                             (lambda ()
                               (let ()
                                 (declare (not safe))
                                 (error '"No clause matching"
                                        _%in148665148677%_
                                        '((module-import
                                           (module-export
                                            src-ctx
                                            src-key
                                            src-phi
                                            src-name)
                                           name
                                           phi))))
                               '#!void))
                            (_%K148668148691%_
                             (lambda (_%phi148684%_
                                      _%name148685%_
                                      _%src-name148686%_
                                      _%src-phi148687%_
                                      _%src-key148688%_
                                      _%src-ctx148689%_)
                               (cons _%phi148684%_
                                     (cons (gxc#generate-runtime-identifier-key
                                            _%name148685%_)
                                           (cons _%src-phi148687%_
                                                 (cons (gxc#generate-runtime-identifier-key
                                                        _%src-name148686%_)
                                                       '())))))))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              _%in148665148677%_
                              'gx#module-import::t))
                           (let ((_%e148669148694%_
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%in148665148677%_
                                     '1
                                     '#f
                                     '#f))))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    _%e148669148694%_
                                    'gx#module-export::t))
                                 (let* ((_%e148672148697%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e148669148694%_
                                            '1
                                            '#f
                                            '#f)))
                                        (_%src-ctx148700%_ _%e148672148697%_)
                                        (_%e148673148702%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e148669148694%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%src-key148705%_ _%e148673148702%_)
                                        (_%e148674148707%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e148669148694%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%src-phi148710%_ _%e148674148707%_)
                                        (_%e148675148712%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%e148669148694%_
                                            '4
                                            '#f
                                            '#f)))
                                        (_%src-name148715%_ _%e148675148712%_)
                                        (_%e148670148717%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in148665148677%_
                                            '2
                                            '#f
                                            '#f)))
                                        (_%name148720%_ _%e148670148717%_)
                                        (_%e148671148722%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%in148665148677%_
                                            '3
                                            '#f
                                            '#f)))
                                        (_%phi148725%_ _%e148671148722%_))
                                   (_%K148668148691%_
                                    _%phi148725%_
                                    _%name148720%_
                                    _%src-name148715%_
                                    _%src-phi148710%_
                                    _%src-key148705%_
                                    _%src-ctx148700%_))
                                 (_%E148667148681%_)))
                           (_%E148667148681%_)))))
                  (_%make-import-path148496%_
                   (lambda (_%ctx148662%_)
                     (gxc#generate-meta-import-path
                      _%ctx148662%_
                      _%context-chain148494%_)))
                  (_%make-import-spec-in148497%_
                   (lambda (_%ctx148659%_ _%in148660%_)
                     (cons 'spec:
                           (cons (_%make-import-path148496%_ _%ctx148659%_)
                                 (reverse _%in148660%_))))))
          (gxc#meta-state-end-phi!
           (let () (declare (not safe)) (slot-ref__0 _%self148491%_ 'state)))
          (let* ((_%g148499148509%_
                  (lambda (_%g148500148506%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g148500148506%_))))
                 (_%g148498148656%_
                  (lambda (_%g148500148512%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g148500148512%_))
                        (let ((_%e148502148514%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g148500148512%_))))
                          (let ((_%hd148503148517%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e148502148514%_)))
                                (_%tl148504148519%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e148502148514%_))))
                            ((lambda (_%L148522%_)
                               (let _%lp148533%_ ((_%rest148535%_ _%L148522%_)
                                                  (_%current-src148536%_ '#f)
                                                  (_%current-in148537%_ '())
                                                  (_%r148538%_ '()))
                                 (let* ((_%rest148539148547%_ _%rest148535%_)
                                        (_%else148541148557%_
                                         (lambda ()
                                           (let ((_%r148555%_
                                                  (if _%current-src148536%_
                                                      (cons (_%make-import-spec-in148497%_
                                                             _%current-src148536%_
                                                             _%current-in148537%_)
                                                            _%r148538%_)
                                                      _%r148538%_)))
                                             (cons '%#import
                                                   (reverse _%r148555%_)))))
                                        (_%K148543148644%_
                                         (lambda (_%rest148560%_ _%in148561%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in148561%_
                                                  'gx#module-import::t))
                                               (let* ((_%in148563148570%_
                                                       _%in148561%_)
                                                      (_%E148565148574%_
                                                       (lambda ()
                                                         (let ()
                                                           (declare (not safe))
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%in148563148570%_
                          '((module-import (module-export src-ctx)))))
                 '#!void))
              (_%K148566148582%_
               (lambda (_%src-ctx148577%_)
                 (if (eq? _%current-src148536%_ _%src-ctx148577%_)
                     (_%lp148533%_
                      _%rest148560%_
                      _%current-src148536%_
                      (cons (_%make-import-spec148495%_ _%in148561%_)
                            _%current-in148537%_)
                      _%r148538%_)
                     (if _%current-src148536%_
                         (_%lp148533%_
                          _%rest148560%_
                          _%src-ctx148577%_
                          (cons (_%make-import-spec148495%_ _%in148561%_) '())
                          (cons (_%make-import-spec-in148497%_
                                 _%current-src148536%_
                                 _%current-in148537%_)
                                _%r148538%_))
                         (_%lp148533%_
                          _%rest148560%_
                          _%src-ctx148577%_
                          (cons (_%make-import-spec148495%_ _%in148561%_) '())
                          _%r148538%_)))))
              (_%e148567148585%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%in148563148570%_ '1 '#f '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%e148567148585%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e148568148588%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%e148567148585%_
                        '1
                        '#f
                        '#f)))
                    (_%src-ctx148591%_ _%e148568148588%_))
               (_%K148566148582%_ _%src-ctx148591%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%E148565148574%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%in148561%_
                                                      'gx#import-set::t))
                                                   (let* ((_%phi148594%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in148561%_
                                                              '2
                                                              '#f
                                                              '#f)))
                                                          (_%src148596%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in148561%_
                                                              '1
                                                              '#f
                                                              '#f)))
                                                          (_%src-in148636%_
                                                           (let* ((_%g148597148606%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (_%make-import-path148496%_ _%src148596%_))
                          (_%E148600148610%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (error '"No clause matching"
                                      _%g148597148606%_
                                      '([path])
                                      '(path)))
                             '#!void)))
                     (let ((_%K148602148626%_
                            (lambda (_%path148624%_) _%path148624%_))
                           (_%K148601148616%_
                            (lambda (_%path148614%_)
                              (cons 'in: _%path148614%_))))
                       (if (pair? _%g148597148606%_)
                           (let ((_%tl148604148631%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%g148597148606%_)))
                                 (_%hd148603148629%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%g148597148606%_))))
                             (if (null? _%tl148604148631%_)
                                 (let ((_%path148634%_ _%hd148603148629%_))
                                   (_%K148602148626%_ _%path148634%_))
                                 (let ((_%path148619%_ _%g148597148606%_))
                                   (_%K148601148616%_ _%path148619%_))))
                           (let ((_%path148619%_ _%g148597148606%_))
                             (_%K148601148616%_ _%path148619%_))))))
                  (_%r148638%_
                   (if _%current-src148536%_
                       (cons (_%make-import-spec-in148497%_
                              _%current-src148536%_
                              _%current-in148537%_)
                             _%r148538%_)
                       _%r148538%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%lp148533%_
                                                      _%rest148560%_
                                                      '#f
                                                      '()
                                                      (cons (if (fxzero? _%phi148594%_)
                                                                _%src-in148636%_
                                                                (cons 'phi:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%phi148594%_
                                    (cons _%src-in148636%_ '()))))
                    _%r148638%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-instance-of?
                                                          _%in148561%_
                                                          'gx#module-context::t))
                                                       (let ((_%r148642%_
                                                              (if _%current-src148536%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (_%make-import-spec-in148497%_
                                 _%current-src148536%_
                                 _%current-in148537%_)
                                _%r148538%_)
                          _%r148538%_)))
                 (_%lp148533%_
                  _%rest148560%_
                  '#f
                  '()
                  (cons (cons 'runtime:
                              (_%make-import-path148496%_ _%in148561%_))
                        _%r148642%_)))
               '#!void))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (if (pair? _%rest148539148547%_)
                                       (let ((_%hd148544148647%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest148539148547%_)))
                                             (_%tl148545148649%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest148539148547%_))))
                                         (let* ((_%in148652%_
                                                 _%hd148544148647%_)
                                                (_%rest148654%_
                                                 _%tl148545148649%_))
                                           (_%K148543148644%_
                                            _%rest148654%_
                                            _%in148652%_)))
                                       (_%else148541148557%_)))))
                             _%tl148504148519%_)))
                        (_%g148499148509%_ _%g148500148512%_)))))
            (_%g148498148656%_ _%stx148492%_)))))
    (define gxc#generate-meta-export%
      (lambda (_%self148301%_ _%stx148302%_)
        (letrec* ((_%context-chain148304%_ (gxc#current-context-chain))
                  (_%make-import-path148305%_
                   (lambda (_%ctx148489%_)
                     (gxc#generate-meta-import-path
                      _%ctx148489%_
                      _%context-chain148304%_))))
          (let* ((_%g148307148317%_
                  (lambda (_%g148308148314%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g148308148314%_))))
                 (_%g148306148486%_
                  (lambda (_%g148308148320%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g148308148320%_))
                        (let ((_%e148310148322%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g148308148320%_))))
                          (let ((_%hd148311148325%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e148310148322%_)))
                                (_%tl148312148327%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e148310148322%_))))
                            ((lambda (_%L148330%_)
                               (let _%lp148341%_ ((_%rest148343%_ _%L148330%_)
                                                  (_%r148344%_ '()))
                                 (let* ((_%rest148345148353%_ _%rest148343%_)
                                        (_%else148347148361%_
                                         (lambda ()
                                           (cons '%#export
                                                 (reverse _%r148344%_))))
                                        (_%K148349148474%_
                                         (lambda (_%rest148364%_ _%out148365%_)
                                           (let* ((_%out148366148379%_
                                                   _%out148365%_)
                                                  (_%E148369148383%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%out148366148379%_
                                                              '((module-export
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _
                         key
                         phi
                         name))
                      '((export-set src phi))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '#!void)))
                                             (let ((_%K148373148453%_
                                                    (lambda (_%name148449%_
                                                             _%phi148450%_
                                                             _%key148451%_)
                                                      (_%lp148341%_
                                                       _%rest148364%_
                                                       (cons (cons 'spec:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%phi148450%_
                                 (cons (gxc#generate-runtime-identifier-key
                                        _%key148451%_)
                                       (cons (gxc#generate-runtime-identifier-key
                                              _%name148449%_)
                                             '()))))
                     _%r148344%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%K148370148433%_
                                                    (lambda (_%phi148387%_
                                                             _%src148388%_)
                                                      (let* ((_%out148428%_
                                                              (if _%src148388%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'import:
                                (cons (let* ((_%g148389148398%_
                                              (_%make-import-path148305%_
                                               _%src148388%_))
                                             (_%E148392148402%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (error '"No clause matching"
                                                         _%g148389148398%_
                                                         '([path])
                                                         '(path)))
                                                '#!void)))
                                        (let ((_%K148394148418%_
                                               (lambda (_%path148416%_)
                                                 _%path148416%_))
                                              (_%K148393148408%_
                                               (lambda (_%path148406%_)
                                                 (cons 'in: _%path148406%_))))
                                          (if (pair? _%g148389148398%_)
                                              (let ((_%tl148396148423%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%g148389148398%_)))
                                                    (_%hd148395148421%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%g148389148398%_))))
                                                (if (null? _%tl148396148423%_)
                                                    (let ((_%path148426%_
                                                           _%hd148395148421%_))
                                                      (_%K148394148418%_
                                                       _%path148426%_))
                                                    (let ((_%path148411%_
                                                           _%g148389148398%_))
                                                      (_%K148393148408%_
                                                       _%path148411%_))))
                                              (let ((_%path148411%_
                                                     _%g148389148398%_))
                                                (_%K148393148408%_
                                                 _%path148411%_)))))
                                      '()))
                          '#t))
                     (_%out148430%_
                      (if (fxzero? _%phi148387%_)
                          _%out148428%_
                          (cons 'phi:
                                (cons _%phi148387%_
                                      (cons _%out148428%_ '()))))))
                (_%lp148341%_
                 _%rest148364%_
                 (cons _%out148430%_ _%r148344%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_%try-match148368148446%_
                                                      (lambda ()
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (##structure-direct-instance-of?
                                                               _%out148366148379%_
                                                               'gx#export-set::t))
                                                            (let* ((_%e148371148436%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out148366148379%_
                               '1
                               '#f
                               '#f)))
                           (_%e148372148441%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%out148366148379%_
                               '2
                               '#f
                               '#f))))
                      (let ((_%src148439%_ _%e148371148436%_)
                            (_%phi148444%_ _%e148372148441%_))
                        (_%K148370148433%_ _%phi148444%_ _%src148439%_)))
                    (_%E148369148383%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##structure-direct-instance-of?
                                                        _%out148366148379%_
                                                        'gx#module-export::t))
                                                     (let* ((_%e148374148456%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##unchecked-structure-ref
                        _%out148366148379%_
                        '1
                        '#f
                        '#f)))
                    (_%e148375148459%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out148366148379%_
                        '2
                        '#f
                        '#f)))
                    (_%e148376148464%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out148366148379%_
                        '3
                        '#f
                        '#f)))
                    (_%e148377148469%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%out148366148379%_
                        '4
                        '#f
                        '#f))))
               (let ((_%key148462%_ _%e148375148459%_)
                     (_%phi148467%_ _%e148376148464%_)
                     (_%name148472%_ _%e148377148469%_))
                 (_%K148373148453%_
                  _%name148472%_
                  _%phi148467%_
                  _%key148462%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%try-match148368148446%_))))))))
                                   (if (pair? _%rest148345148353%_)
                                       (let ((_%hd148350148477%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest148345148353%_)))
                                             (_%tl148351148479%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest148345148353%_))))
                                         (let* ((_%out148482%_
                                                 _%hd148350148477%_)
                                                (_%rest148484%_
                                                 _%tl148351148479%_))
                                           (_%K148349148474%_
                                            _%rest148484%_
                                            _%out148482%_)))
                                       (_%else148347148361%_)))))
                             _%tl148312148327%_)))
                        (_%g148307148317%_ _%g148308148320%_)))))
            (_%g148306148486%_ _%stx148302%_)))))
    (define gxc#generate-meta-provide%
      (lambda (_%self148262%_ _%stx148263%_)
        (gxc#meta-state-end-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self148262%_ 'state)))
        (let* ((_%g148265148275%_
                (lambda (_%g148266148272%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g148266148272%_))))
               (_%g148264148298%_
                (lambda (_%g148266148278%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g148266148278%_))
                      (let ((_%e148268148280%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g148266148278%_))))
                        (let ((_%hd148269148283%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e148268148280%_)))
                              (_%tl148270148285%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e148268148280%_))))
                          ((lambda (_%L148288%_)
                             (cons '%#provide
                                   (map gxc#generate-runtime-identifier
                                        _%L148288%_)))
                           _%tl148270148285%_)))
                      (_%g148265148275%_ _%g148266148278%_)))))
          (_%g148264148298%_ _%stx148263%_))))
    (define gxc#generate-meta-extern%
      (lambda (_%self148133%_ _%stx148134%_)
        (letrec ((_%generate1148136%_
                  (lambda (_%id148257%_ _%eid148258%_)
                    (let ((_%eid148260%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%eid148258%_))))
                      (if (let ()
                            (declare (not safe))
                            (interned-symbol? _%eid148260%_))
                          '#!void
                          (let ()
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"Cannot compile extern reference"
                             _%stx148134%_
                             _%eid148260%_)))
                      (cons (gxc#generate-runtime-identifier _%id148257%_)
                            (cons _%eid148260%_ '()))))))
          (let* ((_%g148138148166%_
                  (lambda (_%g148139148163%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g148139148163%_))))
                 (_%g148137148254%_
                  (lambda (_%g148139148169%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g148139148169%_))
                        (let ((_%e148142148171%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g148139148169%_))))
                          (let ((_%hd148143148174%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e148142148171%_)))
                                (_%tl148144148176%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e148142148171%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair/null? _%tl148144148176%_))
                                (let ((_g157933_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-split-splice
                                          _%tl148144148176%_
                                          '0))))
                                  (begin
                                    (let ((_g157934_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g157933_)
                                                 (##values-length _g157933_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g157934_ 2)))
                                          (error "Context expects 2 values"
                                                 _g157934_)))
                                    (let ((_%target148145148179%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g157933_ 0)))
                                          (_%tl148147148181%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g157933_ 1))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl148147148181%_))
                                          (letrec ((_%loop148148148184%_
                                                    (lambda (_%hd148146148187%_
                                                             _%eid148152148189%_
                                                             _%id148153148191%_)
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd148146148187%_))
                                                          (let ((_%e148149148194%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%hd148146148187%_))))
                    (let ((_%lp-hd148150148197%_
                           (let ()
                             (declare (not safe))
                             (##car _%e148149148194%_)))
                          (_%lp-tl148151148199%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e148149148194%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%lp-hd148150148197%_))
                          (let ((_%e148156148202%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%lp-hd148150148197%_))))
                            (let ((_%hd148157148205%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e148156148202%_)))
                                  (_%tl148158148207%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e148156148202%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl148158148207%_))
                                  (let ((_%e148159148210%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%tl148158148207%_))))
                                    (let ((_%hd148160148213%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e148159148210%_)))
                                          (_%tl148161148215%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e148159148210%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl148161148215%_))
                                          (_%loop148148148184%_
                                           _%lp-tl148151148199%_
                                           (cons _%hd148160148213%_
                                                 _%eid148152148189%_)
                                           (cons _%hd148157148205%_
                                                 _%id148153148191%_))
                                          (_%g148138148166%_
                                           _%g148139148169%_))))
                                  (_%g148138148166%_ _%g148139148169%_))))
                          (_%g148138148166%_ _%g148139148169%_))))
                  (let ((_%eid148154148218%_ (reverse _%eid148152148189%_))
                        (_%id148155148220%_ (reverse _%id148153148191%_)))
                    ((lambda (_%L148223%_ _%L148224%_)
                       (cons '%#extern
                             (map _%generate1148136%_
                                  (let ((__tmp157935
                                         (lambda (_%g148239148242%_
                                                  _%g148240148244%_)
                                           (cons _%g148239148242%_
                                                 _%g148240148244%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp157935 '() _%L148224%_))
                                  (let ((__tmp157936
                                         (lambda (_%g148246148249%_
                                                  _%g148247148251%_)
                                           (cons _%g148246148249%_
                                                 _%g148247148251%_))))
                                    (declare (not safe))
                                    (__foldr1 __tmp157936 '() _%L148223%_)))))
                     _%eid148154148218%_
                     _%id148155148220%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop148148148184%_
                                             _%target148145148179%_
                                             '()
                                             '()))
                                          (_%g148138148166%_
                                           _%g148139148169%_)))))
                                (_%g148138148166%_ _%g148139148169%_))))
                        (_%g148138148166%_ _%g148139148169%_)))))
            (_%g148137148254%_ _%stx148134%_)))))
    (define gxc#generate-meta-define-values%
      (lambda (_%self147923%_ _%stx147924%_)
        (letrec ((_%generate1147926%_
                  (lambda (_%id148128%_)
                    (let ((_%eid148130%_
                           (let ()
                             (declare (not safe))
                             (gxc#generate-runtime-binding-id _%id148128%_)))
                          (_%ident148131%_
                           (gxc#generate-runtime-identifier _%id148128%_)))
                      (cons '%#define-runtime
                            (cons _%ident148131%_ (cons _%eid148130%_ '()))))))
                 (_%generate*147927%_
                  (lambda (_%all148096%_)
                    (let* ((_%all148097148105%_ _%all148096%_)
                           (_%else148099148113%_
                            (lambda () (cons '%#begin _%all148096%_)))
                           (_%K148101148118%_
                            (lambda (_%one148116%_) _%one148116%_)))
                      (if (pair? _%all148097148105%_)
                          (let ((_%hd148102148121%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all148097148105%_)))
                                (_%tl148103148123%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all148097148105%_))))
                            (let ((_%one148126%_ _%hd148102148121%_))
                              (if (null? _%tl148103148123%_)
                                  (_%K148101148118%_ _%one148126%_)
                                  (_%else148099148113%_))))
                          (_%else148099148113%_))))))
          (let* ((_%g147929147946%_
                  (lambda (_%g147930147943%_)
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%g147930147943%_))))
                 (_%g147928148093%_
                  (lambda (_%g147930147949%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%g147930147949%_))
                        (let ((_%e147933147951%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%g147930147949%_))))
                          (let ((_%hd147934147954%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e147933147951%_)))
                                (_%tl147935147956%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e147933147951%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl147935147956%_))
                                (let ((_%e147936147959%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%tl147935147956%_))))
                                  (let ((_%hd147937147962%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e147936147959%_)))
                                        (_%tl147938147964%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e147936147959%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl147938147964%_))
                                        (let ((_%e147939147967%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%tl147938147964%_))))
                                          (let ((_%hd147940147970%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e147939147967%_)))
                                                (_%tl147941147972%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e147939147967%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl147941147972%_))
                                                ((lambda (_%L147975%_
                                                          _%L147976%_)
                                                   (let _%lp147992%_ ((_%rest147994%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%L147976%_)
                              (_%r147995%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((_%__stx157671157672%_
                                                             _%rest147994%_)
                                                            (_%g148000148017%_
                                                             (lambda ()
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%__stx157671157672%_)))))
               (let ((_%__kont157673157674%_
                      (lambda (_%L148080%_)
                        (_%lp147992%_ _%L148080%_ _%r147995%_)))
                     (_%__kont157675157676%_
                      (lambda (_%L148053%_ _%L148054%_)
                        (_%lp147992%_
                         _%L148053%_
                         (cons (_%generate1147926%_ _%L148054%_)
                               _%r147995%_))))
                     (_%__kont157677157678%_
                      (lambda (_%L148029%_)
                        (_%generate*147927%_
                         (let ((__tmp157937
                                (cons (_%generate1147926%_ _%L148029%_) '())))
                           (declare (not safe))
                           (__foldl1 cons __tmp157937 _%r147995%_)))))
                     (_%__kont157679157680%_
                      (lambda () (_%generate*147927%_ (reverse _%r147995%_)))))
                 (let ((_%g147998148040%_
                        (lambda ()
                          (let ((_%L148029%_ _%__stx157671157672%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L148029%_))
                                (_%__kont157677157678%_ _%L148029%_)
                                (_%__kont157679157680%_))))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%__stx157671157672%_))
                       (let ((_%e148003148069%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%__stx157671157672%_))))
                         (let ((_%tl148005148074%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e148003148069%_)))
                               (_%hd148004148072%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e148003148069%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-datum? _%hd148004148072%_))
                               (let ((_%e148006148077%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%hd148004148072%_))))
                                 (if (equal? _%e148006148077%_ '#f)
                                     (_%__kont157673157674%_
                                      _%tl148005148074%_)
                                     (_%__kont157675157676%_
                                      _%tl148005148074%_
                                      _%hd148004148072%_)))
                               (_%__kont157675157676%_
                                _%tl148005148074%_
                                _%hd148004148072%_))))
                       (let () (declare (not safe)) (_%g147998148040%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%hd147940147970%_
                                                 _%hd147937147962%_)
                                                (_%g147929147946%_
                                                 _%g147930147949%_))))
                                        (_%g147929147946%_
                                         _%g147930147949%_))))
                                (_%g147929147946%_ _%g147930147949%_))))
                        (_%g147929147946%_ _%g147930147949%_)))))
            (_%g147928148093%_ _%stx147924%_)))))
    (define gxc#generate-meta-define-syntax%
      (lambda (_%self147820%_ _%stx147821%_)
        (let* ((_%g147823147840%_
                (lambda (_%g147824147837%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g147824147837%_))))
               (_%g147822147920%_
                (lambda (_%g147824147843%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g147824147843%_))
                      (let ((_%e147827147845%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g147824147843%_))))
                        (let ((_%hd147828147848%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e147827147845%_)))
                              (_%tl147829147850%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e147827147845%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl147829147850%_))
                              (let ((_%e147830147853%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl147829147850%_))))
                                (let ((_%hd147831147856%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e147830147853%_)))
                                      (_%tl147832147858%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e147830147853%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl147832147858%_))
                                      (let ((_%e147833147861%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl147832147858%_))))
                                        (let ((_%hd147834147864%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e147833147861%_)))
                                              (_%tl147835147866%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e147833147861%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl147835147866%_))
                                              ((lambda (_%L147869%_
                                                        _%L147870%_)
                                                 (let* ((_%eid147885%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#generate-runtime-binding-id
                                                            _%L147870%_)))
                                                        (_%phi147887%_
                                                         (let ((__tmp157938
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#current-expander-phi))))
                   (declare (not safe))
                   (##fx+ __tmp157938 '1)))
                (_%block147889%_
                 (gxc#meta-state-begin-phi!
                  (let ()
                    (declare (not safe))
                    (slot-ref__0 _%self147820%_ 'state))
                  _%phi147887%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%g147892147899%_
                                                           (lambda (_%g147893147896%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g147893147896%_))))
                  (_%g147891147917%_
                   (lambda (_%g147893147902%_)
                     ((lambda (_%L147904%_)
                        (gxc#meta-state-add-phi!
                         (let ()
                           (declare (not safe))
                           (slot-ref__0 _%self147820%_ 'state))
                         _%phi147887%_
                         (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '%#define-runtime))
                               (cons _%L147904%_ (cons _%L147869%_ '())))))
                      _%g147893147902%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g147891147917%_
                                                      _%eid147885%_))
                                                   (if _%block147889%_
                                                       (cons '%#begin
                                                             (cons (cons '%#begin-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons '%#call
                                             (cons (cons '%#ref
                                                         (cons 'load-module
                                                               '()))
                                                   (cons (cons '%#quote
                                                               (cons _%block147889%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           (cons (cons '%#define-syntax
                                       (cons (gxc#generate-runtime-identifier
                                              _%L147870%_)
                                             (cons _%eid147885%_ '())))
                                 '())))
               (cons '%#define-syntax
                     (cons (gxc#generate-runtime-identifier _%L147870%_)
                           (cons _%eid147885%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd147834147864%_
                                               _%hd147831147856%_)
                                              (_%g147823147840%_
                                               _%g147824147843%_))))
                                      (_%g147823147840%_ _%g147824147843%_))))
                              (_%g147823147840%_ _%g147824147843%_))))
                      (_%g147823147840%_ _%g147824147843%_)))))
          (_%g147822147920%_ _%stx147821%_))))
    (define gxc#generate-meta-define-alias%
      (lambda (_%self147752%_ _%stx147753%_)
        (let* ((_%g147755147772%_
                (lambda (_%g147756147769%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g147756147769%_))))
               (_%g147754147817%_
                (lambda (_%g147756147775%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g147756147775%_))
                      (let ((_%e147759147777%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g147756147775%_))))
                        (let ((_%hd147760147780%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e147759147777%_)))
                              (_%tl147761147782%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e147759147777%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl147761147782%_))
                              (let ((_%e147762147785%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl147761147782%_))))
                                (let ((_%hd147763147788%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e147762147785%_)))
                                      (_%tl147764147790%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e147762147785%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl147764147790%_))
                                      (let ((_%e147765147793%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl147764147790%_))))
                                        (let ((_%hd147766147796%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e147765147793%_)))
                                              (_%tl147767147798%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e147765147793%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl147767147798%_))
                                              ((lambda (_%L147801%_
                                                        _%L147802%_)
                                                 (cons '%#define-alias
                                                       (cons (gxc#generate-runtime-identifier
                                                              _%L147802%_)
                                                             (cons (gxc#generate-runtime-identifier
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%L147801%_)
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd147766147796%_
                                               _%hd147763147788%_)
                                              (_%g147755147772%_
                                               _%g147756147775%_))))
                                      (_%g147755147772%_ _%g147756147775%_))))
                              (_%g147755147772%_ _%g147756147775%_))))
                      (_%g147755147772%_ _%g147756147775%_)))))
          (_%g147754147817%_ _%stx147753%_))))
    (define gxc#generate-meta-phi-define-values%
      (lambda (_%self147749%_ _%stx147750%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self147749%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx147750%_)
        (gxc#generate-meta-define-values% _%self147749%_ _%stx147750%_)))
    (define gxc#generate-meta-phi-expr
      (lambda (_%self147746%_ _%stx147747%_)
        (gxc#meta-state-add-phi!
         (let () (declare (not safe)) (slot-ref__0 _%self147746%_ 'state))
         (let () (declare (not safe)) (gx#current-expander-phi))
         _%stx147747%_)
        '#!void))
    (define gxc#meta-state::t
      (let ((__tmp157940 (list)) (__tmp157939 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state::t
         'meta-state
         __tmp157940
         '(src n open blocks)
         __tmp157939
         ':init!)))
    (define gxc#meta-state?
      (let () (declare (not safe)) (__make-class-predicate gxc#meta-state::t)))
    (define gxc#make-meta-state
      (lambda _%$args147743%_
        (apply make-instance gxc#meta-state::t _%$args147743%_)))
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
      (lambda (_%self147729%_ _%ctx147730%_)
        (let ((_%self147733%_ _%self147729%_))
          (if (let ((__tmp157941
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self147733%_))))
                (declare (not safe))
                (##fx< '4 __tmp157941))
              (begin
                (let ((__tmp157942
                       (let ((__tmp157943
                              (##structure-ref
                               _%ctx147730%_
                               '1
                               gx#expander-context::t
                               '#f)))
                         (declare (not safe))
                         (gxc#module-id->path-string __tmp157943))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self147733%_
                   __tmp157942
                   '1
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self147733%_ '1 '2 '#f '#f))
                (let ((__tmp157944
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self147733%_
                   __tmp157944
                   '3
                   '#f
                   '#f))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set! _%self147733%_ '() '4 '#f '#f))
                '#!void)
              (let ((__tmp157945
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self147733%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self147733%_
                       '4
                       __tmp157945))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#meta-state::t ':init! gxc#meta-state:::init! '#f))
    (define gxc#meta-state-block::t
      (let ((__tmp157947 (list)) (__tmp157946 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#meta-state-block::t
         'meta-state-block
         __tmp157947
         '(ctx phi n code)
         __tmp157946
         '#f)))
    (define gxc#meta-state-block?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#meta-state-block::t)))
    (define gxc#make-meta-state-block
      (lambda _%$args147604%_
        (apply make-instance gxc#meta-state-block::t _%$args147604%_)))
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
      (lambda (_%state147563%_ _%phi147564%_)
        (let* ((_%state147565147573%_ _%state147563%_)
               (_%E147567147577%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%state147565147573%_
                           '((meta-state src n open))))
                  '#!void))
               (_%K147568147586%_
                (lambda (_%open147580%_ _%n147581%_ _%src147582%_)
                  (if (let ()
                        (declare (not safe))
                        (hash-get _%open147580%_ _%phi147564%_))
                      '#f
                      (let ((_%block-ref147584%_
                             (let ((__tmp157948 (number->string _%n147581%_)))
                               (declare (not safe))
                               (##string-append
                                _%src147582%_
                                '"~"
                                __tmp157948))))
                        (##structure-set!
                         _%state147563%_
                         (let () (declare (not safe)) (##fx+ _%n147581%_ '1))
                         '2
                         gxc#meta-state::t
                         '#f)
                        (let ((__tmp157949
                               (let ((__tmp157950
                                      (let ()
                                        (declare (not safe))
                                        (gx#current-expander-context))))
                                 (declare (not safe))
                                 (##structure
                                  gxc#meta-state-block::t
                                  __tmp157950
                                  _%phi147564%_
                                  _%n147581%_
                                  '()))))
                          (declare (not safe))
                          (hash-put! _%open147580%_ _%phi147564%_ __tmp157949))
                        _%block-ref147584%_)))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of?
                 _%state147565147573%_
                 'gxc#meta-state::t))
              (let* ((_%e147569147589%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state147565147573%_
                         '1
                         '#f
                         '#f)))
                     (_%src147592%_ _%e147569147589%_)
                     (_%e147570147594%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state147565147573%_
                         '2
                         '#f
                         '#f)))
                     (_%n147597%_ _%e147570147594%_)
                     (_%e147571147599%_
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%state147565147573%_
                         '3
                         '#f
                         '#f)))
                     (_%open147602%_ _%e147571147599%_))
                (_%K147568147586%_ _%open147602%_ _%n147597%_ _%src147592%_))
              (_%E147567147577%_)))))
    (define gxc#meta-state-add-phi!
      (lambda (_%state147557%_ _%phi147558%_ _%stx147559%_)
        (let ((_%block147561%_
               (let ((__tmp157951
                      (##structure-ref
                       _%state147557%_
                       '3
                       gxc#meta-state::t
                       '#f)))
                 (declare (not safe))
                 (hash-get __tmp157951 _%phi147558%_))))
          (##structure-set!
           _%block147561%_
           (cons _%stx147559%_
                 (##structure-ref
                  _%block147561%_
                  '4
                  gxc#meta-state-block::t
                  '#f))
           '4
           gxc#meta-state-block::t
           '#f))))
    (define gxc#meta-state-end-phi!
      (lambda (_%state147551%_)
        (##structure-set!
         _%state147551%_
         (let ((__tmp157954
                (lambda (_%_147553%_ _%block147554%_ _%r147555%_)
                  (cons _%block147554%_ _%r147555%_)))
               (__tmp157953
                (##structure-ref _%state147551%_ '4 gxc#meta-state::t '#f))
               (__tmp157952
                (##structure-ref _%state147551%_ '3 gxc#meta-state::t '#f)))
           (declare (not safe))
           (hash-fold __tmp157954 __tmp157953 __tmp157952))
         '4
         gxc#meta-state::t
         '#f)
        (##structure-set!
         _%state147551%_
         (let () (declare (not safe)) (make-hash-table-eq))
         '3
         gxc#meta-state::t
         '#f)))
    (define gxc#meta-state-end!
      (lambda (_%state147503%_)
        (gxc#meta-state-end-phi! _%state147503%_)
        (let ((__tmp157956
               (lambda (_%block147505%_ _%r147506%_)
                 (let* ((_%block147507147516%_ _%block147505%_)
                        (_%E147509147520%_
                         (lambda ()
                           (let ()
                             (declare (not safe))
                             (error '"No clause matching"
                                    _%block147507147516%_
                                    '((meta-state-block ctx phi n code))))
                           '#!void))
                        (_%K147510147528%_
                         (lambda (_%code147523%_
                                  _%n147524%_
                                  _%phi147525%_
                                  _%ctx147526%_)
                           (if (null? _%code147523%_)
                               _%r147506%_
                               (cons (cons _%ctx147526%_
                                           (cons _%phi147525%_
                                                 (cons _%n147524%_
                                                       (cons (cons '%#begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (reverse _%code147523%_))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%r147506%_)))))
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%block147507147516%_
                          'gxc#meta-state-block::t))
                       (let* ((_%e147511147531%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block147507147516%_
                                  '1
                                  '#f
                                  '#f)))
                              (_%ctx147534%_ _%e147511147531%_)
                              (_%e147512147536%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block147507147516%_
                                  '2
                                  '#f
                                  '#f)))
                              (_%phi147539%_ _%e147512147536%_)
                              (_%e147513147541%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block147507147516%_
                                  '3
                                  '#f
                                  '#f)))
                              (_%n147544%_ _%e147513147541%_)
                              (_%e147514147546%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%block147507147516%_
                                  '4
                                  '#f
                                  '#f)))
                              (_%code147549%_ _%e147514147546%_))
                         (_%K147510147528%_
                          _%code147549%_
                          _%n147544%_
                          _%phi147539%_
                          _%ctx147534%_))
                       (_%E147509147520%_)))))
              (__tmp157955
               (##structure-ref _%state147503%_ '4 gxc#meta-state::t '#f)))
          (declare (not safe))
          (__foldl1 __tmp157956 '() __tmp157955))))
    (define gxc#collect-expression-refs
      (lambda (_%stx147499%_)
        (let ((_%ht147501%_
               (let () (declare (not safe)) (make-hash-table-eq))))
          (gxc#apply-collect-expression-refs__% '#f _%ht147501%_ _%stx147499%_)
          _%ht147501%_)))
    (define gxc#collect-refs-ref%
      (lambda (_%self147442%_ _%stx147443%_)
        (let* ((_%g147445147458%_
                (lambda (_%g147446147455%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g147446147455%_))))
               (_%g147444147496%_
                (lambda (_%g147446147461%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g147446147461%_))
                      (let ((_%e147448147463%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g147446147461%_))))
                        (let ((_%hd147449147466%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e147448147463%_)))
                              (_%tl147450147468%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e147448147463%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl147450147468%_))
                              (let ((_%e147451147471%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl147450147468%_))))
                                (let ((_%hd147452147474%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e147451147471%_)))
                                      (_%tl147453147476%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e147451147471%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl147453147476%_))
                                      ((lambda (_%L147479%_)
                                         (let* ((_%bind147491%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#resolve-identifier__0
                                                    _%L147479%_)))
                                                (_%eid147493%_
                                                 (if _%bind147491%_
                                                     (##structure-ref
                                                      _%bind147491%_
                                                      '1
                                                      gx#binding::t
                                                      '#f)
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%L147479%_))))
                                                (__tmp157957
                                                 (let ()
                                                   (declare (not safe))
                                                   (slot-ref__0
                                                    _%self147442%_
                                                    'table))))
                                           (declare (not safe))
                                           (hash-put!
                                            __tmp157957
                                            _%eid147493%_
                                            _%eid147493%_)))
                                       _%hd147452147474%_)
                                      (_%g147445147458%_ _%g147446147461%_))))
                              (_%g147445147458%_ _%g147446147461%_))))
                      (_%g147445147458%_ _%g147446147461%_)))))
          (_%g147444147496%_ _%stx147443%_))))
    (define gxc#collect-refs-setq%
      (lambda (_%self147369%_ _%stx147370%_)
        (let* ((_%g147372147389%_
                (lambda (_%g147373147386%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g147373147386%_))))
               (_%g147371147439%_
                (lambda (_%g147373147392%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g147373147392%_))
                      (let ((_%e147376147394%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g147373147392%_))))
                        (let ((_%hd147377147397%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e147376147394%_)))
                              (_%tl147378147399%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e147376147394%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl147378147399%_))
                              (let ((_%e147379147402%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl147378147399%_))))
                                (let ((_%hd147380147405%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e147379147402%_)))
                                      (_%tl147381147407%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e147379147402%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl147381147407%_))
                                      (let ((_%e147382147410%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl147381147407%_))))
                                        (let ((_%hd147383147413%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e147382147410%_)))
                                              (_%tl147384147415%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e147382147410%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl147384147415%_))
                                              ((lambda (_%L147418%_
                                                        _%L147419%_)
                                                 (let* ((_%bind147434%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#resolve-identifier__0
                                                            _%L147419%_)))
                                                        (_%eid147436%_
                                                         (if _%bind147434%_
                                                             (##structure-ref
                                                              _%bind147434%_
                                                              '1
                                                              gx#binding::t
                                                              '#f)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%L147419%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp157958
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self147369%_
                                                             'table))))
                                                     (declare (not safe))
                                                     (hash-put!
                                                      __tmp157958
                                                      _%eid147436%_
                                                      _%eid147436%_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#compile-e__1
                                                      _%self147369%_
                                                      _%L147418%_))))
                                               _%hd147383147413%_
                                               _%hd147380147405%_)
                                              (_%g147372147389%_
                                               _%g147373147392%_))))
                                      (_%g147372147389%_ _%g147373147392%_))))
                              (_%g147372147389%_ _%g147373147392%_))))
                      (_%g147372147389%_ _%g147373147392%_)))))
          (_%g147371147439%_ _%stx147370%_))))
    (define gxc#find-runtime-begin%
      (lambda (_%self147326%_ _%stx147327%_)
        (let* ((_%g147329147339%_
                (lambda (_%g147330147336%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g147330147336%_))))
               (_%g147328147366%_
                (lambda (_%g147330147342%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g147330147342%_))
                      (let ((_%e147332147344%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g147330147342%_))))
                        (let ((_%hd147333147347%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e147332147344%_)))
                              (_%tl147334147349%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e147332147344%_))))
                          ((lambda (_%L147352%_)
                             (let ((__tmp157959
                                    (lambda (_%g147361147363%_)
                                      (let ()
                                        (declare (not safe))
                                        (gxc#compile-e__1
                                         _%self147326%_
                                         _%g147361147363%_)))))
                               (declare (not safe))
                               (__ormap1 __tmp157959 _%L147352%_)))
                           _%tl147334147349%_)))
                      (_%g147329147339%_ _%g147330147342%_)))))
          (_%g147328147366%_ _%stx147327%_))))
    (define gxc#count-values-single%
      (lambda (_%self147323%_ _%stx147324%_) '1))
    (define gxc#count-values-call%
      (lambda (_%self147189%_ _%stx147190%_)
        (let* ((_%__stx157701157702%_ _%stx147190%_)
               (_%g147193147222%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx157701157702%_)))))
          (let ((_%__kont157703157704%_
                 (lambda (_%L147290%_ _%L147291%_)
                   (length (let ((__tmp157960
                                  (lambda (_%g147312147315%_ _%g147313147317%_)
                                    (cons _%g147312147315%_
                                          _%g147313147317%_))))
                             (declare (not safe))
                             (__foldr1 __tmp157960 '() _%L147290%_)))))
                (_%__kont157707157708%_ (lambda () '#f)))
            (let ((_%__match157746157747%_
                   (lambda (_%e147197147234%_
                            _%hd147198147237%_
                            _%tl147199147239%_
                            _%e147200147242%_
                            _%hd147201147245%_
                            _%tl147202147247%_
                            _%e147203147250%_
                            _%hd147204147253%_
                            _%tl147205147255%_
                            _%e147206147258%_
                            _%hd147207147261%_
                            _%tl147208147263%_
                            _%__splice157705157706%_
                            _%target147209147266%_
                            _%tl147211147268%_)
                     (letrec ((_%loop147212147271%_
                               (lambda (_%hd147210147274%_
                                        _%rand147216147276%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd147210147274%_))
                                     (let ((_%e147213147279%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e _%hd147210147274%_))))
                                       (let ((_%lp-tl147215147284%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e147213147279%_)))
                                             (_%lp-hd147214147282%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e147213147279%_))))
                                         (_%loop147212147271%_
                                          _%lp-tl147215147284%_
                                          (cons _%lp-hd147214147282%_
                                                _%rand147216147276%_))))
                                     (let ((_%rand147217147287%_
                                            (reverse _%rand147216147276%_)))
                                       (let ((_%L147290%_ _%rand147217147287%_)
                                             (_%L147291%_ _%hd147207147261%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                _%L147291%_
                                                'values))
                                             (_%__kont157703157704%_
                                              _%L147290%_
                                              _%L147291%_)
                                             (_%__kont157707157708%_))))))))
                       (_%loop147212147271%_ _%target147209147266%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx157701157702%_))
                  (let ((_%e147197147234%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx157701157702%_))))
                    (let ((_%tl147199147239%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e147197147234%_)))
                          (_%hd147198147237%_
                           (let ()
                             (declare (not safe))
                             (##car _%e147197147234%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl147199147239%_))
                          (let ((_%e147200147242%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%tl147199147239%_))))
                            (let ((_%tl147202147247%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e147200147242%_)))
                                  (_%hd147201147245%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e147200147242%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%hd147201147245%_))
                                  (let ((_%e147203147250%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd147201147245%_))))
                                    (let ((_%tl147205147255%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e147203147250%_)))
                                          (_%hd147204147253%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e147203147250%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%hd147204147253%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%hd147204147253%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl147205147255%_))
                                                  (let ((_%e147206147258%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%tl147205147255%_))))
                                                    (let ((_%tl147208147263%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e147206147258%_)))
                                                          (_%hd147207147261%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e147206147258%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl147208147263%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _%tl147202147247%_))
                      (let ((_%__splice157705157706%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%tl147202147247%_
                                '0))))
                        (let ((_%tl147211147268%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice157705157706%_ '1)))
                              (_%target147209147266%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice157705157706%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl147211147268%_))
                              (_%__match157746157747%_
                               _%e147197147234%_
                               _%hd147198147237%_
                               _%tl147199147239%_
                               _%e147200147242%_
                               _%hd147201147245%_
                               _%tl147202147247%_
                               _%e147203147250%_
                               _%hd147204147253%_
                               _%tl147205147255%_
                               _%e147206147258%_
                               _%hd147207147261%_
                               _%tl147208147263%_
                               _%__splice157705157706%_
                               _%target147209147266%_
                               _%tl147211147268%_)
                              (_%__kont157707157708%_))))
                      (_%__kont157707157708%_))
                  (_%__kont157707157708%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont157707157708%_))
                                              (_%__kont157707157708%_))
                                          (_%__kont157707157708%_))))
                                  (_%__kont157707157708%_))))
                          (_%__kont157707157708%_))))
                  (_%__kont157707157708%_)))))))
    (define gxc#count-values-if%
      (lambda (_%self147092%_ _%stx147093%_)
        (let* ((_%g147095147116%_
                (lambda (_%g147096147113%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g147096147113%_))))
               (_%g147094147186%_
                (lambda (_%g147096147119%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g147096147119%_))
                      (let ((_%e147100147121%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%g147096147119%_))))
                        (let ((_%hd147101147124%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e147100147121%_)))
                              (_%tl147102147126%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e147100147121%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl147102147126%_))
                              (let ((_%e147103147129%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%tl147102147126%_))))
                                (let ((_%hd147104147132%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e147103147129%_)))
                                      (_%tl147105147134%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e147103147129%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl147105147134%_))
                                      (let ((_%e147106147137%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%tl147105147134%_))))
                                        (let ((_%hd147107147140%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e147106147137%_)))
                                              (_%tl147108147142%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e147106147137%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl147108147142%_))
                                              (let ((_%e147109147145%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%tl147108147142%_))))
                                                (let ((_%hd147110147148%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e147109147145%_)))
                                                      (_%tl147111147150%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e147109147145%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl147111147150%_))
                                                      ((lambda (_%L147153%_
                                                                _%L147154%_
                                                                _%L147155%_)
                                                         (let ((_%c1147172147174%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#compile-e__1 _%self147092%_ _%L147154%_))))
                   (if _%c1147172147174%_
                       (let* ((_%c1147177%_ _%c1147172147174%_)
                              (_%c2147178147180%_
                               (let ()
                                 (declare (not safe))
                                 (gxc#compile-e__1
                                  _%self147092%_
                                  _%L147153%_))))
                         (if _%c2147178147180%_
                             (let ((_%c2147183%_ _%c2147178147180%_))
                               (if (fx= _%c1147177%_ _%c2147183%_)
                                   _%c1147177%_
                                   '#f))
                             '#f))
                       '#f)))
               _%hd147110147148%_
               _%hd147107147140%_
               _%hd147104147132%_)
              (_%g147095147116%_ _%g147096147119%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g147095147116%_
                                               _%g147096147119%_))))
                                      (_%g147095147116%_ _%g147096147119%_))))
                              (_%g147095147116%_ _%g147096147119%_))))
                      (_%g147095147116%_ _%g147096147119%_)))))
          (_%g147094147186%_ _%stx147093%_))))))
